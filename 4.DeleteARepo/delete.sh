owner=("suhailroushan13")
token=("ADD-YOUR-KEY-HERE")
repo_name=("testsss")

curl \
  -X DELETE \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: token ${token}" \
  https://api.github.com/repos/${owner}/${repo_name} > delete.txt