"""
Mini Shop Demo Application

This application will later demonstrate:
- Monorepo
- Git Submodule
- Git Subtree
"""

TAX_PERCENT = 18


def calculate_tax(price: int) -> int:
    return int(price * TAX_PERCENT / 100)


def calculate_total(price: int) -> int:
    return price + calculate_tax(price)


def main():

    price = 100

    total = calculate_total(price)

    print(f"Price : {price}")
    print(f"Tax   : {calculate_tax(price)}")
    print(f"Total : {total}")


if __name__ == "__main__":
    main()
