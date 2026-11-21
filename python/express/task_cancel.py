# LEVEL: STD

import asyncio


async def spin():
    while True:
        await asyncio.sleep(0.001)


async def main():
    task = asyncio.create_task(spin())
    await asyncio.sleep(0.02)
    task.cancel()
    try:
        await task
    except asyncio.CancelledError:
        print("stopped")


asyncio.run(main())
