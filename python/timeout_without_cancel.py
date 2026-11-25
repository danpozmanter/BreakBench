import asyncio

balance = 100


async def charge(gate: asyncio.Event) -> None:
    global balance
    await gate.wait()
    balance -= 30


async def main() -> None:
    gate = asyncio.Event()
    try:
        await asyncio.wait_for(charge(gate), 0.1)
    except TimeoutError:
        gate.set()
        await charge(gate)
    print(balance)


asyncio.run(main())
