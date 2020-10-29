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
    'accept': "application/json",
    'authorization': " ".join(("Basic",encodedAuth)),
    'cache-control': "no-cache",
    }

r = requests.get(url, headers=headers, verify=False)

response = r.json()

print(r.text)

print(response['SearchResult']['total'])
