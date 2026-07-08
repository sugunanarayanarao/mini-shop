from json_utils import pretty_print, compact_print


def test_pretty_print():

    data = {
        "price": 100,
        "tax": 18,
    }

    result = pretty_print(data)

    assert '"price": 100' in result
    assert '"tax": 18' in result
    assert result.startswith("{")

def test_compact_print():
    data = {
        "price": 100,
        "tax": 18,
    }

    output = compact_print(data)

    assert output == '{"price":100,"tax":18}'
