# HTTP / ReST
Backing the SDK is our ReST API.

## Authentication
Set an `authorization` header with your API token.

Ensure your API token has both the `List Switches` and `Read Switch` permissions.

You can generate an [Api Token](../../api-tokens) from the [Settings page](https://dev-team-tools.com/users/settings).

## Simple
The below examples work for getting the Default Value of a switch or switches. This doesn't not work for Percentage Rollouts or Rules.

### Get Switch value
To get the default value of a switch you can send a GET request to:

`GET https://feature-switches.harry-9ce.workers.dev/$env/$key`.

For example:

`GET https://feature-switches.harry-9ce.workers.dev/stage/enableMyFeature`

```json
{
  "key": "enableMyFeature",
  "value": true
}
```

### List switch values
To get the default value of all of your switches by requesting:

`GET https://feature-switches.harry-9ce.workers.dev/env`.

For example:

`GET https://feature-switches.harry-9ce.workers.dev/stage`

```json
[
  {
    "key": "enableMyFeature",
    "value": true
  },
  {
    "key": "enableMyOtherFeature",
    "value": false
  }
]
```

## Advanced
The below examples are for use with Rules and Percentage Rollout. You can find out more about these features in the [advance usage](../advanced-usage.md) documentation.

### Get Switch value
You can get a switch value but send along additional context. This context is used to enable both Rules and Percentage Rollout.

`POST https://feature-switches.harry-9ce.workers.dev/$env/$key`.
With a body of:
```json
{
  "userId": "example-uuid",
  "context": [
    {
      "key": "companyId",
      "value": "some-company-id"
    },
    // more context here
  ]
}
```

The given `userId` is used to determine the percentage rollout. You'll need to ensure that each user of your system has a unique user id. This can be done via a session id or, if the user is signed in, their ID within your system.

The `userId` can also be matched against a Rule, so you can explicitly set a switch value against a known user.

`context` is for any additional information you might wish to use to match against a Rule.
The values of a context object don't have to be unique. This can be useful if you want to set a Rule for a group of users, such as returning `true` for one company, but `false` for everyone else.

For example:

`POST https://feature-switches.harry-9ce.workers.dev/stage/enableMyFeature`
With body:
```json
{
  "userId": "685a7c3e-5274-4cb1-908b-16a6deb5e6f1",
  "context": [
    {
      "key": "companyId",
      "value": "01998669-7566-73f2-a0e7-e79fbbe5c39f"
    },
    {
      "key": "colour",
      "value": "blue"
    },
  ]
}
```

```json
{
  "key": "enableMyFeature",
  "value": false
}
```

### List switch values
As with the Simple use, you can send context along to get a list of your switches and their derived values.

`POST https://feature-switches.harry-9ce.workers.dev/{env}`.
With a body of:
```json
{
  "userId": "example-uuid",
  "context": [
    {
      "key": "companyId",
      "value": "some-company-id"
    },
    // more context here
  ]
}
```

For example:
`POST https://feature-switches.harry-9ce.workers.dev/stage/enableMyFeature`
With body:
```json
{
  "userId": "685a7c3e-5274-4cb1-908b-16a6deb5e6f1",
  "context": [
    {
      "key": "companyId",
      "value": "01998669-7566-73f2-a0e7-e79fbbe5c39f"
    },
    {
      "key": "colour",
      "value": "blue"
    },
  ]
}
```

```json
[
  {
    "key": "enableMyFeature",
    "value": false
  },
  {
    "key": "enableMyOtherFeature",
    "value": true
  }
]
```
