collab=("adnanali-in" "ruqayyahsara" "yashsabal-b")
owner=("suhailroushan13")
token=("ADD-YOUR-KEY-HERE")
repo_name=("Suhail-API-Test-REPO")

for i in "${collab[@]}"
do
curl \
  -X PUT \
  -H "Accept: application/vnd.github+json"   \
  -H "Authorization: token ${token}" \
  https://api.github.com/repos/${owner}/${repo_name}/collaborators/${i} \
  -d '{"permission":"admin"}'

done > output.txt
