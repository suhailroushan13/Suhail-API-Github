owner=("suhailroushan13")
token=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

curl \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: token ${token}" \
  https://api.github.com/users/${owner}/repos > getallrepo.txt
