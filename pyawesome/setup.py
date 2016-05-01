from setuptools import setup

setup(name='pypackage',
      version='0.1',
      description='An awesome python package',
      long_description='This is an awesome python package with long description.',
      classifiers=[],
      keywords='pypackage',
      url='http://github.com/eaudex/pyawesome',
      author='Guo-Xun Yuan',
      author_email='eaudex@gmail.com',
      license='MIT',
      packages=['pypackage'],
      install_requires=[],
      dependency_links=[],
      include_package_data=True,
      zip_safe=False,
      scripts=[
          'bin/script.sh',
          'bin/script.py',
      ],
)
