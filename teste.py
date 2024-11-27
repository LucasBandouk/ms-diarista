# test_app.py

import unittest
from ex import soma

class TestApp(unittest.TestCase):

    def test_soma(self):
        self.assertEqual(soma(2, 3), 5)
        self.assertEqual(soma(-1, 1), 0)
        self.assertEqual(soma(-1, -1), -2)

if __name__ == '__main__':
    unittest.main()
