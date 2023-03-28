owner=("viz-nu")
token=("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")
repo_name=("Suhail-API-Test-REPO")
description=("")
#if private repo then make it true
#if public repo then make it false


curl --location --request POST 'https://api.github.com/user/repos' \
    --header 'Authorization: Bearer '${token}'' \
    --header 'Content-Type: application/json' \
    --data-raw '{
    "name" : "'${repo_name}'",
    "description" : "'${description}'",
    "homepage":"https://github.com",
    "private": true,
    "has_issues":true,
    "has_projects":true,
    "has_wiki":true
 }' > createrepo.txt

# Adding a README to the repository using GitHub API of POST Method
# Empty GitHub Repository cannot has branch Rule

git clone git@github.com:${owner}/${repo_name}.git
cd ${repo_name}
touch README.md
echo "This Repository has been created Successfully using GitHub API of POST Method" >> README.md
git add .
git commit -m "Initial commit"
git push origin master
cd ..
