from app import add

def test_add_success():
    assert add(2, 2) == 4

# Uncomment to make tests fail
def test_add_failure():
    assert add(2, 2) == 5
