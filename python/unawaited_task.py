import asyncio


async def save(store: list[int]) -> None:
    await asyncio.sleep(0.05)
    store.append(1)


async def main() -> None:
    store: list[int] = []
    save(store)  # CONTROL! await save(store)
    print(len(store))


asyncio.run(main())
