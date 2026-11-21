# LEVEL: STD

import asyncio


async def main():
    try:
        await asyncio.wait_for(asyncio.sleep(5), timeout=0.1)
        print("done")
    except TimeoutError:
        print("timed out")


asyncio.run(main())
