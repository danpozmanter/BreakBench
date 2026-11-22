import asyncio
import time


async def job():
    time.sleep(0.5)


async def main():
    start = time.monotonic()
    await asyncio.gather(job(), job())
    print("concurrent" if time.monotonic() - start < 0.8 else "serial")


asyncio.run(main())
