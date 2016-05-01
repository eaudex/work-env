#!/usr/local/bin/python

import pypackage

prod_config = pypackage.Config('PROD')
prod_config.show_config()

stg_config = pypackage.Config('STG')
stg_config.show_config()

qa_config = pypackage.Config('QA')
qa_config.show_config()

qq_config = pypackage.Config('QQ')
qq_config.show_config()
