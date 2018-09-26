''' script for testing python 2 '''
from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import sys


def test_print(capsys):
    ''' testing print function '''
    print('test print')
    sys.stderr.write("world\n")
    captured = capsys.readouterr()
    assert captured.out == 'test print\n'


def test_division():
    ''' test division operator '''
    assert 1/2 == 0.5
