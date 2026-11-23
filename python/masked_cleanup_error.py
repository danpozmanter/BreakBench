from types import TracebackType


class Report:
    def __enter__(self) -> "Report":
        return self

    def __exit__(
        self,
        kind: type[BaseException] | None,
        value: BaseException | None,
        traceback: TracebackType | None,
    ) -> None:
        raise OSError("close failed")

    def write(self, text: str) -> None:
        raise OSError("disk full")


def save() -> None:
    with Report() as report:
        report.write("totals")


try:
    save()
except OSError as error:
    print(error)
