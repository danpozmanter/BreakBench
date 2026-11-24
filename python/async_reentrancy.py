import asyncio

balance = 100


async def withdraw(amount: int) -> None:
    global balance
    if balance >= amount:
        await asyncio.sleep(0.01) # CONTROL! balance -= amount
        balance -= amount # CONTROL! await asyncio.sleep(0.01)


async def main() -> None:
    await asyncio.gather(withdraw(80), withdraw(80))
    print(balance)


asyncio.run(main())
