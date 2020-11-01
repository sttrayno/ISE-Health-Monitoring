import requests
import base64
import sys
import json

host = sys.argv[1]
user = sys.argv[2]
password = sys.argv[3]
endpoint = sys.argv[4]

creds = str.encode(':'.join((user, password)))

encodedAuth = bytes.decode(base64.b64encode(creds))
url = host + endpoint

headers = {
    'authorization': " ".join(("Basic",encodedAuth)),
    }

r = requests.get(url, headers=headers, verify=False)

response = r.text

import xml.etree.ElementTree as ET
from xml.etree.ElementTree import fromstring, ElementTree
tree = ET.fromstring(response)


count = tree.find('count').text

print(count)
