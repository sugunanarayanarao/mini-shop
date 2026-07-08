import bootstrap

from json_utils import pretty_print

TAX_PERCENT = 18


def calculate_tax(price: int) -> int:
    return int(price * TAX_PERCENT / 100)


def calculate_total(price: int) -> int:
    return price + calculate_tax(price)


def create_invoice(price: int) -> dict:

    return {
        "price": price,
        "tax": calculate_tax(price),
        "total": calculate_total(price),
    }


def main():

    invoice = create_invoice(100)

    print(pretty_print(invoice))


if __name__ == "__main__":
    main()
