import requests
import json

token = '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'
headers = {
    'Authorization': f'token {token}',
    'Accept': 'application/vnd.github.v3+json'
}

data = {
    'name': 'pet666',
    'description': 'Senior Dog Health Hub - AI-powered health assessment for senior dogs',
    'private': False,
    'auto_init': False
}

response = requests.post('https://api.github.com/user/repos', headers=headers, json=data)

if response.status_code == 201:
    print('Repository created successfully!')
    print(json.dumps(response.json(), indent=2))
else:
    print(f'Error: {response.status_code}')
    print(response.text)
