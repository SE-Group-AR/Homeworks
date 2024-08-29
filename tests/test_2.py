import sys
import os
sys.path.append((os.path.join(os.path.dirname(__file__), '..')))
from myfile import multiply

def test_multiply_failure():
    assert multiply(2, 3) == 7  # This should fail
