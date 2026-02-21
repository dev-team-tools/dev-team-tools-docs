---
sidebar_position: 5
slug: /api-tokens
---
# API Tokens

You can create an API token from the [Settings page](https://dev-team-tools.com/users/settings). These tokens will be used to authenticate your requests against the API.

Most of the API requests need authorisation. To do so, you need to ge

All tokens must be set as a Bearer token in the `Authorization` header. An example token would be `1a757149-bc61-48e6-a8a4-86e8ae7bea60`, it'll need to be set as:
```http
Authorization: Bearer 1a757149-bc61-48e6-a8a4-86e8ae7bea60
```

Once a token has been created

![Create API token screenshot](./img/api-token-screenshot.png)
