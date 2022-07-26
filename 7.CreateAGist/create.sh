owner=("suhailroushan13")
token=("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")

#Readmd.md is a filetype with extension
#Content is Content in a file 
#for public set to true
#for private set to false


curl \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: token ${token}" \
  https://api.github.com/gists \
  -d '{"description":"YOUR-DESCRIPITION","public":false,"files":{"1.js":{"content":"console.log(Hello World)"}}}' > output.txt