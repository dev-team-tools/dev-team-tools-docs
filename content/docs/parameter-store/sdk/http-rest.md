# HTTP / ReST
Backing the SDK is our ReST API.

## Authentication
Set an `authorization` header with your API token.

Ensure your API token has both the `Read Parameters` permission.

You can generate an [Api Token]({{<ref "../../api-tokens.md">}}) from the [Settings page](https://dev-team-tools.com/users/settings).

## Get Parameters for a service
Once you've created some parameters for a service, you can get them by sending simple `GET` request:

`GET https://parameter-store.harry-9ce.workers.dev/{env}/{service_id}`.

Where `{env}` should be replaced with the name of your environment, like `stage`.
`{service_id}` should be replaced with the ID of a service. You can find the id of a service on their individual pages.

You can choose the response type via the `Content-Type` HTTP Header. 

### Example responses

#### Standard JSON
If you **don't** set any Content-Type header, you'll get our JSON response.

Example respone:
```json
[
  {
    "key": "some.example.key",
    "value": "hello"
  }
]
```

#### JSON
You can also request the response as a nested JSON. 

Header:
`Content-Type: application/json`

Example response:
```json
[
  {
    "some":{
      "json": {
        "key": "hello"
      }
    }
  }
]
```

#### YAML
You can request your parameters as YAML by:

Header:
`Content-Type: application/yaml`

Example respone:
```yaml
some:
  json:
    key: hello
```

#### Properties
Properties files are a well known form of configuation. You can request properties by:

Header:
`Content-Type: application/properties`

Example respone:
```properties
some.json.key=hello
some.other.key=true
```
