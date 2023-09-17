import unittest
import lib


class LibTest(unittest.TestCase):
    def test_string(self):
        a = 'some'
        b = 'some'
        self.assertEqual(a, b)

    def test_lib(self):
        python_version = lib.python_version()
        self.assertTrue(python_version.startswith('3.11'))

if __name__ == '__main__':
    unittest.main()