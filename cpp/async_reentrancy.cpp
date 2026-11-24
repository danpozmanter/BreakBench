// CANNOT-EXPRESS: std::async runs each task on a thread and C++20 coroutines come with no task type or executor, so nothing suspends at an await; the threaded form of this race is check_then_act
