import requests

# res = requests.post('http://127.0.0.1:5000/users/1234', json={"user_name": "Shir"})
# #
res = requests.get('http://0.0.0.0:5000/users/4444')
#
# res = requests.put('http://127.0.0.1:5000/users/1234', json={"user_name": "george"})
#
# res = requests.delete('http://127.0.0.1:5000/users/1234')

print(res.json())

