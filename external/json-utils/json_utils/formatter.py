import json


def pretty_print(data: dict) -> str:
    """
    Convert dictionary into readable JSON.
    """

    return json.dumps(
        data,
        indent=4,
        sort_keys=True,
    )

def compact_print(data: dict) -> str:
    return json.dumps(data, separators=(",", ":"))
