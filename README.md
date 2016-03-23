# Docker jq

This is a tiny Docker image that lets you run an always-updated jq 1.3, 1.4 or 1.5

```
docker run -i --rm kamermans/docker-jq
```

By default, jq 1.5 is used, but you can also use 1.3 or 1.4:

```
docker run -i --rm -e "JQ_VERSION=1.4" kamermans/docker-jq
```

You can pass things to it from outside of Docker like this:

```
# Show the last 5 commit messages to the jq project
curl -sSL 'https://api.github.com/repos/stedolan/jq/commits?per_page=5' | docker run -i --rm kamermans/docker-jq '.[].commit.message'
"Disable appveyor build for now"
"Remove David from maintainers"
"Travis-CI build for OSX (fix #1083)"
"Always test sort_by/group_by post-#1082"
"Make jv_sort stable regardless of qsort details."
```
