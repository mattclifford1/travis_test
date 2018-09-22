''' script for testing purposes '''


def times(x, y_2):
    ''' times together '''
    return x_1*y_2


def test_pass():
    ''' designed to pass '''
    assert times(1, 2) == 2


# def test_fail():
    ''' designed to fail '''
#   assert times(1, 2) == 3


def main():
    ''' run fucntions '''
    test_pass()


# test coverage
if __name__ == '__main__':
    main()
