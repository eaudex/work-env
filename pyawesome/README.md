# PYAWESOME #
## What is PYAWESOME ##
This is a working template for packaging your python code.

## How to use PYAWESOME ##
You simply clone everything under pyawesome.
Then you can start a python project.

* `python setup install`    # install the pkg
* `python setup develop`    # install the pkg as a symlink
* `python setup test`       # run unit tests under the pkg thru nose2
* `python setup register`   # register the pkg in PyPI server (reserve name, upload meta data, create a webpage)
* `python setup sdist`      # build a source distribution
* `python setup upload`     # upload the src dist to PyPI server
* `pip install pypackage`   # install the pkg thru pip

## Featuers ##
* unittest
* non-code files
* command-line tools

- - - - 

## References ##
* https://python-packaging.readthedocs.org/en/latest/minimal.html
* https://github.com/nose-devs/nose2/blob/master/docs/usage.rst
