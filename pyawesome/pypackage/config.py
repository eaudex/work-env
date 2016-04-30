import pkgutil
from StringIO import StringIO
import yaml

class Config:

    def __init__(self, mode):
        rawdata = pkgutil.get_data(__package__, 'resource/config.yaml')
        fp = StringIO(rawdata)
        config_yaml = yaml.load(fp)
        fp.close()
        self.config = config_yaml.get(mode, None)

    def get_config(self):
        return self.config

    def show_config(self):
        print self.config

