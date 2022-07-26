owner=("suhailroushan13")
token=("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")
repo_name=("testsss")

curl \
  -X DELETE \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: token ${token}" \
  https://api.github.com/repos/${owner}/${repo_name} > delete.txt