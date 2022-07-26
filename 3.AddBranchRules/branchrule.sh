owner=("suhailroushan13")
token=("ADD-YOUR-KEY-HERE")
repo_name=("Suhail-API-TEST-REPO")

#!/bin/bash
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
            "required_approving_review_count": 0
        },
        "restrictions": null
    }
EOF
)

for i in "${repositories[@]}"; do
    echo "========"
    echo "=======> ${repo_name} "
    echo "========"

    curl \
        --silent \
        --user $user \
        --header "Accept: application/vnd.github.v3+json" \
        --request PUT \
        https://api.github.com/repos/${owner}/${repo_name}/branches/master/protection \
        --data "$JSON"

done > output.txt
