owner=("suhailroushan13")
token=("ADD-YOUR-KEY-HERE")
#Update your repo name
old_repo_name=("Hello")
new_repo_name=("Suhail-API-Github")

#Update Descripition
description=("")

#if private repo then make it true
#if public repo then make it false

curl \
  -X PATCH \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: token ${token}" \
  https://api.github.com/repos/suhailroushan13/${old_repo_name} \
  -d '{"name":"'${new_repo_name}'","description":"'${description}'","homepage":"https://github.com","private":true,"has_issues":true,"has_projects":true,"has_wiki":true}' > output.txt