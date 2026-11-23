import asyncio

balance = 100


async def withdraw(amount: int) -> None:
    global balance
    if balance >= amount:
        await asyncio.sleep(0.01)
        balance -= amount


async def main() -> None:
    await asyncio.gather(withdraw(80), withdraw(80))
    print(balance)


asyncio.run(main())
