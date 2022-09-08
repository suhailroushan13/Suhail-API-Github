usernames=("adnanali-in" "yashsabal-b" "RuqayyahSara" "ishaankaushik91" "suhailroushan13")
owner=("OWNER-USERNAME")
repos=("REPO-NAME")
token=("YOUR-TOKEN")



echo "+++++++++++++++++++"
echo "Creating Repository"
echo "+++++++++++++++++++"

#  Here 1 token and 1 num1

curl --location --request POST 'https://api.github.com/user/repos' \
--header "Authorization: Bearer ${token}" \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "'${repos}'",
    "description": "This is Your ClassWork Repository for MAT-10 CS21",
    "homepage": "https://github.com",
    "private": true,
    "has_issues": true,
    "has_projects": true,
    "has_wiki": true
}'

echo "+++++++++++++++++++"
echo "Adding Readme"
echo "+++++++++++++++++++"

# Here 1 owner and 2 num1


git clone git@github.com:${owner}/${repos}.git
cd ${repos}
touch README.md
echo "This Repository has been created Successfully using GitHub API of POST Method" >> README.md
git add .
git commit -m "Initial commit"
git push origin master



for i in "${usernames[@]}"
do
curl \
  -X PUT \
  -H "Accept: application/vnd.github+json"   \
  -H "Authorization: token ${token}" \
  https://api.github.com/repos/${owner}/${repos}/collaborators/${i} \
  -d '{"permission":"admin"}'

done



set -e


export user="${owner}":"${token}"
export branch="master"

declare -a repositories=(
    "repo-scripts"
    "sbt-dependency-updates-action"
)

JSON=$(cat << 'EOF'
    {
        "required_status_checks": null,
        "enforce_admins": false,
        "required_pull_request_reviews": {
            "required_approving_review_count": 1
        },
        "restrictions": null
    }
EOF
)

for i in "${repositories[@]}"; do
    echo "========"
    echo "=======> cs21_MAT9_ClassWork "
    echo "========"

    curl \
        --silent \
        --user $user \
        --header "Accept: application/vnd.github.v3+json" \
        --request PUT \
        https://api.github.com/repos/${owner}/${repos}/branches/master/protection \
        --data "$JSON"

done
