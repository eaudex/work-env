from unittest import TestCase

import pypackage

class TestA(TestCase):
    def test_classname(self):
        a = pypackage.A()
        self.assertTrue(a.classname is not None and len(a.classname)>0)

