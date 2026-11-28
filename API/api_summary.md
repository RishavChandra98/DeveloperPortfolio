# REST API Summary

**Author:** Rishav Chandra Prasad

## What is a REST API?

A REST API allows applications to communicate with
each other over the internet using HTTP requests.
It allows developers to retrieve and exchange data
in formats such as JSON.

## HTTP Status Codes

- 200 OK: The request was successful.
- 404 Not Found: The requested resource does not exist.

## GitHub API

Endpoint:
https://api.github.com/users/RishavChandra98

## jq Filter Used

{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}

- name: Extracts the GitHub profile name.
- repos: Extracts the public repository count.
- followers: Extracts the number of followers.
- joined: Extracts the account creation date.

## JSONPlaceholder API

Endpoint:
https://jsonplaceholder.typicode.com/posts

Total posts retrieved: 100
