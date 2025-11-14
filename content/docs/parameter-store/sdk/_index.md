+++
title = 'SDK'
weight= 100
+++
# Parameter Store SDK
In these pages you'll find how to access the Parameter Store programatically.

We currently have two implementations of the SDK:
- [JavaScript & Node]({{< relref "./javascript & node.md" >}})
- [Http / ReST]({{< relref "./http-rest.md" >}})

If you'd like to create an SDK for Parameter Store that isn't already listed above, please get in [contact]({{< relref "contact" >}}) with is. We'd love to sponsor you in doing so.

## Prerequisites
You'll need a few things before you can access your parameters programatically. Before anything else, make sure a parameter exists against a service in an environment.

### Authentication
Regardless as to how you request parameters, you'll need a valid token.
You can create an [Api Token]({{<ref "../../api-tokens.md">}}) from the [Settings page](https://dev-team-tools.com/users/settings). It **must** have `Read Parameters` permission.
