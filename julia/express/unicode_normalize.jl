# LEVEL: STD

println(Base.Unicode.normalize("é", :NFC) == "é" ? "equal" : "different")
