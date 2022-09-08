owner=("suhailroushan13")
token=("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")

num1=("Suhail_MAT10_CS21")
u1=("suhailroushan13")

num2=("Adnan_MAT10_CS21")
u2=("adnanali-in")

num3=("Sara_MAT10_CS21")
u3=("RuqayyahSara")

num4=("Yash_MAT10_CS21")
u4=("yashsabal-b")

num5=("Ishaan_MAT10_CS21")
u5=("ishaankaushik91")


echo ${owner}
echo ${token}

# Total 3 Tokens
# Total 6 num1
# Total 4 owner
# Total 1 u1


# --------------------------------------------------#

# SUHAIL

echo "+++++++++++++++++++"
echo "Creating Repository"
echo "+++++++++++++++++++"

#  Here 1 token and 1 num1

curl --location --request POST 'https://api.github.com/user/repos' \
--header "Authorization: Bearer ${token}" \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "'${num1}'",
    "description": "This is Your Private Repository for MAT-10 CS21",
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

git clone git@github.com:${owner}/${num1}.git
cd ${num1}
touch README.md
echo "This Repository has been created Successfully using GitHub API of POST Method" >> README.md
git add .
git commit -m "Initial commit"
git push origin master
cd ..

echo "+++++++++++++++++++"
echo "Adding Collaborator"
echo "+++++++++++++++++++"

# here 1 token and 1 owner and 1 num1 and 1 u1

curl \
  -X PUT \
  -H "Accept: application/vnd.github+json"   \
  -H "Authorization: token ${token}" \
  https://api.github.com/repos/${owner}/${num1}/collaborators/${u1} \
  -d '{"permission":"admin"}'


echo "+++++++++++++++++++"
echo "Branch Protection Rules"
echo "+++++++++++++++++++"

# Here 2 owner , 1 token , 2 num1

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

for rep in "${repositories[@]}"; do
    echo "========"
    echo "=======> ${num1}"
    echo "========"

    curl \
        --silent \
        --user $user \
        --header "Accept: application/vnd.github.v3+json" \
        --request PUT \
        https://api.github.com/repos/${owner}/${num1}/branches/master/protection \
        --data "$JSON"

done


# --------------------------------------------------#

# --------------------------------------------------#

# Adnan

echo "+++++++++++++++++++"
echo "Creating Repository"
echo "+++++++++++++++++++"

#  Here 1 token and 1 num2

curl --location --request POST 'https://api.github.com/user/repos' \
--header "Authorization: Bearer ${token}" \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "'${num2}'",
    "description": "This is Your Private Repository for MAT-10 CS21",
    "homepage": "https://github.com",
    "private": true,
    "has_issues": true,
    "has_projects": true,
    "has_wiki": true
}'

echo "+++++++++++++++++++"
echo "Adding Readme"
echo "+++++++++++++++++++"

# Here 1 owner and 2 num2

git clone git@github.com:${owner}/${num2}.git
cd ${num2}
touch README.md
echo "This Repository has been created Successfully using GitHub API of POST Method" >> README.md
git add .
git commit -m "Initial commit"
git push origin master
cd ..

echo "+++++++++++++++++++"
echo "Adding Collaborator"
echo "+++++++++++++++++++"

# here 1 token and 1 owner and 1 num2 and 1 u2

curl \
  -X PUT \
  -H "Accept: application/vnd.github+json"   \
  -H "Authorization: token ${token}" \
  https://api.github.com/repos/${owner}/${num2}/collaborators/${u2} \
  -d '{"permission":"admin"}'


echo "+++++++++++++++++++"
echo "Branch Protection Rules"
echo "+++++++++++++++++++"

# Here 2 owner , 1 token , 2 num2

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

for rep in "${repositories[@]}"; do
    echo "========"
    echo "=======> ${num2}"
    echo "========"

    curl \
        --silent \
        --user $user \
        --header "Accept: application/vnd.github.v3+json" \
        --request PUT \
        https://api.github.com/repos/${owner}/${num2}/branches/master/protection \
        --data "$JSON"

done


# --------------------------------------------------#
# --------------------------------------------------#

# Sara

echo "+++++++++++++++++++"
echo "Creating Repository"
echo "+++++++++++++++++++"

#  Here 1 token and 1 num3

curl --location --request POST 'https://api.github.com/user/repos' \
--header "Authorization: Bearer ${token}" \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "'${num3}'",
    "description": "This is Your Private Repository for MAT-10 CS21",
    "homepage": "https://github.com",
    "private": true,
    "has_issues": true,
    "has_projects": true,
    "has_wiki": true
}'

echo "+++++++++++++++++++"
echo "Adding Readme"
echo "+++++++++++++++++++"

# Here 1 owner and 2 num3

git clone git@github.com:${owner}/${num3}.git
cd ${num3}
touch README.md
echo "This Repository has been created Successfully using GitHub API of POST Method" >> README.md
git add .
git commit -m "Initial commit"
git push origin master
cd ..

echo "+++++++++++++++++++"
echo "Adding Collaborator"
echo "+++++++++++++++++++"

# here 1 token and 1 owner and 1 num3 and 1 u3

curl \
  -X PUT \
  -H "Accept: application/vnd.github+json"   \
  -H "Authorization: token ${token}" \
  https://api.github.com/repos/${owner}/${num3}/collaborators/${u3} \
  -d '{"permission":"admin"}'


echo "+++++++++++++++++++"
echo "Branch Protection Rules"
echo "+++++++++++++++++++"

# Here 2 owner , 1 token , 2 num3

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

for rep in "${repositories[@]}"; do
    echo "========"
    echo "=======> ${num3}"
    echo "========"

    curl \
        --silent \
        --user $user \
        --header "Accept: application/vnd.github.v3+json" \
        --request PUT \
        https://api.github.com/repos/${owner}/${num3}/branches/master/protection \
        --data "$JSON"

done


# --------------------------------------------------#

# --------------------------------------------------#

# Yash

echo "+++++++++++++++++++"
echo "Creating Repository"
echo "+++++++++++++++++++"

#  Here 1 token and 1 num4

curl --location --request POST 'https://api.github.com/user/repos' \
--header "Authorization: Bearer ${token}" \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "'${num4}'",
    "description": "This is Your Private Repository for MAT-10 CS21",
    "homepage": "https://github.com",
    "private": true,
    "has_issues": true,
    "has_projects": true,
    "has_wiki": true
}'

echo "+++++++++++++++++++"
echo "Adding Readme"
echo "+++++++++++++++++++"

# Here 1 owner and 2 num4

git clone git@github.com:${owner}/${num4}.git
cd ${num4}
touch README.md
echo "This Repository has been created Successfully using GitHub API of POST Method" >> README.md
git add .
git commit -m "Initial commit"
git push origin master
cd ..

echo "+++++++++++++++++++"
echo "Adding Collaborator"
echo "+++++++++++++++++++"

# here 1 token and 1 owner and 1 num4 and 1 u4

curl \
  -X PUT \
  -H "Accept: application/vnd.github+json"   \
  -H "Authorization: token ${token}" \
  https://api.github.com/repos/${owner}/${num4}/collaborators/${u4} \
  -d '{"permission":"admin"}'


echo "+++++++++++++++++++"
echo "Branch Protection Rules"
echo "+++++++++++++++++++"

# Here 2 owner , 1 token , 2 num4

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

for rep in "${repositories[@]}"; do
    echo "========"
    echo "=======> ${num4}"
    echo "========"

    curl \
        --silent \
        --user $user \
        --header "Accept: application/vnd.github.v3+json" \
        --request PUT \
        https://api.github.com/repos/${owner}/${num4}/branches/master/protection \
        --data "$JSON"

done


# --------------------------------------------------#
# --------------------------------------------------#

# Ishaan

echo "+++++++++++++++++++"
echo "Creating Repository"
echo "+++++++++++++++++++"

#  Here 1 token and 1 num5

curl --location --request POST 'https://api.github.com/user/repos' \
--header "Authorization: Bearer ${token}" \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "'${num5}'",
    "description": "This is Your Private Repository for MAT-10 CS21",
    "homepage": "https://github.com",
    "private": true,
    "has_issues": true,
    "has_projects": true,
    "has_wiki": true
}'

echo "+++++++++++++++++++"
echo "Adding Readme"
echo "+++++++++++++++++++"

# Here 1 owner and 2 num5

git clone git@github.com:${owner}/${num5}.git
cd ${num5}
touch README.md
echo "This Repository has been created Successfully using GitHub API of POST Method" >> README.md
git add .
git commit -m "Initial commit"
git push origin master
cd ..

echo "+++++++++++++++++++"
echo "Adding Collaborator"
echo "+++++++++++++++++++"

# here 1 token and 1 owner and 1 num5 and 1 u5

curl \
  -X PUT \
  -H "Accept: application/vnd.github+json"   \
  -H "Authorization: token ${token}" \
  https://api.github.com/repos/${owner}/${num5}/collaborators/${u5} \
  -d '{"permission":"admin"}'


echo "+++++++++++++++++++"
echo "Branch Protection Rules"
echo "+++++++++++++++++++"git@github.com:suhailroushan13/Suhail-API-Github.git

# Here 2 owner , 1 token , 2 num5

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

for rep in "${repositories[@]}"; do
    echo "========"
    echo "=======> ${num5}"
    echo "========"

    curl \
        --silent \
        --user $user \
        --header "Accept: application/vnd.github.v3+json" \
        --request PUT \
        https://api.github.com/repos/${owner}/${num5}/branches/master/protection \
        --data "$JSON"

done


# --------------------------------------------------#
