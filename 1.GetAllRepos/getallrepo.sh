owner=("suhailroushan13")
token=("ADD-YOUR-KEY-HERE")

curl \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: token ${token}" \
  https://api.github.com/users/${owner}/repos > getallrepo.txt
