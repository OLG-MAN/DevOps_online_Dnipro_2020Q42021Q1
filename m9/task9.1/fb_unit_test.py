import unittest
import fizzbuzz


class TestFizzBuzz(unittest.TestCase):

    def test_even(self):

        for i in range(3, 4):
            with self.subTest(i=i):
                self.assertEqual(i % 3, 0)
        for i in range(10, 11):
            with self.subTest(i=i):
                self.assertEqual(i % 5, 0)
        for i in range(45, 46):
            with self.subTest(i=i):
                self.assertEqual(i % 15, 0)


if __name__ == '__main__':
    unittest.main()
