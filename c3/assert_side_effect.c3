import std::io, std::collections::list;

fn int main(String[] args)
{
	List{int} jobs;
	jobs.push(1);
	jobs.push(2);
	jobs.push(3);
	assert(jobs.pop()!! == 3); // CONTROL! int last = jobs.pop()!!; assert(last == 3);
	io::printn(jobs.len());
	return 0;
}
