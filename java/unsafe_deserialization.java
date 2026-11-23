import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInputFilter;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serial;
import java.io.Serializable;

public class Main {
    record Session(String user) implements Serializable {
        @Serial
        private static final long serialVersionUID = 1L;
    }

    static class Cleanup implements Serializable {
        @Serial
        private static final long serialVersionUID = 1L;
        String path = "/tmp/bb_cache";

        @Serial
        private void readObject(ObjectInputStream in) throws IOException, ClassNotFoundException {
            in.defaultReadObject();
            System.out.println("cleanup ran");
        }
    }

    public static void main(String[] args) throws IOException {
        ByteArrayOutputStream bytes = new ByteArrayOutputStream();
        try (ObjectOutputStream out = new ObjectOutputStream(bytes)) {
            out.writeObject(new Cleanup());
        }
        byte[] attacker = bytes.toByteArray();
        try (ObjectInputStream in = new ObjectInputStream(new ByteArrayInputStream(attacker))) {
            // ObjectInputStream's documentation sends untrusted data through a serialization filter.
            in.setObjectInputFilter(ObjectInputFilter.Config.createFilter("Main$Session;java.base/*;!*"));
            Session session = (Session) in.readObject();
            System.out.println(session.user());
        } catch (ClassCastException | ClassNotFoundException | InvalidClassException e) {
            System.out.println("rejected");
        }
    }
}
