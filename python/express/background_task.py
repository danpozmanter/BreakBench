# LEVEL: STD

import asyncio


async def slow():
    await asyncio.sleep(0.05)
    return 7


async def main():
    task = asyncio.create_task(slow())
    print("started")
    print(await task)


asyncio.run(main())
