import pytest
import sys
import os
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '../work_dir')))
from hw2_debugging import merge_sort

def test_merge_sort_single_element():
    """Test merge_sort with a single-element list."""
    assert merge_sort([5]) == [5]

def test_merge_sort_multiple_elements():
    """Test merge_sort with multiple elements."""
    assert merge_sort([3, 1, 4, 1, 5, 99, 2, 66, 5, 3, 15]) == [1, 1, 2, 3, 3, 4, 5, 5, 15, 66, 99]
    
def test_merge_sort_negative():
    """Test merge_sort with an empty list."""
    assert merge_sort([3, 1, 4, 1, -5, 99, 2, 66, 5, 3, 15]) == [-5, 1, 1, 2, 3, 3, 4, 5, 15, 66, 99]   