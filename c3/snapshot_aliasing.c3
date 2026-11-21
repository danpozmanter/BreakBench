import std::io;
import std::collections::list;

fn void apply_update(List{int}* weights)
{
	weights.set(1, 5);
	weights.set(3, 0);
}

fn int main(String[] args)
{
	List{int} weights;
	weights.push_all({ 3, 3, 3, 3 });
	List{int} before = weights;
	apply_update(&weights);
	int changes = 0;
	for (sz i = 0; i < weights.len(); i++)
	{
		if (before[i] != weights[i]) changes++;
	}
	io::printfn("%d", changes);
	return 0;
}
