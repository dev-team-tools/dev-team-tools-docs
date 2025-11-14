+++
draft = false
title = 'Parameter Store'
weight = 110
collapsed=true
+++
# Parameter Store
Parameter store can contain all of the configuration required for a service to run. Things like port numbers, database connection string, or URLs. This replaces configuring specific environments, or hard coding directly. 

If you're using a framework, you might already be familier with the concept of parameters. Parameter Store exteralises them, making them easier to change, update, and remove. 

## Creating a Parameter
You'll first need a [Service]({{<ref "../services">}}) to attach parameters to.

Select the service and environment you wish to add a parameter to via the drop downs. 

Using the input boxes, write a key like `test.paraeter.key` with a value of `true`

> Note: `true/false`, 123, hello will be represented as the correct types; boolean, number, and string.

Press the `+` button, and it'll be added to the table. Once a key is set, it cannot be changed. However, it can be deleted and reset. 

Once happy, click the `Save` button at the bottom of the page. This will make the parameters available to use.

## Output formats
Because there are lots of languages and frameworks out there, we're trying to support as many types as possible. 
We currently support:
1. Our own JSON key/value style
2. A JSON nested style
3. YAML
4. Properties

Some example of the formats:


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
