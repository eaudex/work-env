import pkgutil
from StringIO import StringIO
import json

class Data:
    @staticmethod
    def get_data():
        raw_data = pkgutil.get_data(__package__, 'resource/data.json')
        fp = StringIO(raw_data)
        output = []
        for line in fp:
            d = json.loads(line.rstrip('\n'))
            output.append(d)
        fp.close()
        return output
