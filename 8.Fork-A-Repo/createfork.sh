forking_owner=("ip11")
token=("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")
forking_repo_name=("cs21_MAT9_ClassWork")

curl \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: token ${token}" \
  https://api.github.com/repos/ip11/cs21_MAT9_ClassWork/forks > output.txt