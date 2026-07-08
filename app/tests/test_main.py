from app.src.main import calculate_tax
from app.src.main import calculate_total


def test_tax():
    assert calculate_tax(100) == 18


def test_total():
    assert calculate_total(100) == 118
