import asyncio


async def save(store):
    await asyncio.sleep(0.05)
    store.append(1)


async def main():
    store = []
    save(store)  # CONTROL! await save(store)
    print(len(store))


asyncio.run(main())
