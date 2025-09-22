+++
title = 'Advance usage'
weight = 30
+++

# Advance usage
In this doc, we'll go over some of the more advance usages of feature switches within dev-team-tools.

## Percentage rollout
Binary switches are great to blanket enable or disable features. But on some occasions its good to slowly release the feature to your users. You may do this to ensure things are working as expected for a small number of users before enabling it for everyone.

### Setting up the SDK
Percentage Rollout relies on each requester having a consistent, unique ID. This might be a user id, a session id, or some other unique identifier. We need this to ensure that a second request gets the same result.

For example; user A logs into the site. They have an id of "123". We send this when getting our feature switch value, and dev-team-tools will bucket the user into either `true` or `false`. All subsequent requests will return the same response, until the percentage of the rollout is changed to a point where it also includes this user.

Below is the Node SDK example of how to request a switch with a user id attached.
```JavaScript

const request = {
  userId: "123"
}

const result = await manager.getSwitchValue("photoUploadEnabled", request);

if(result.value) {
  // switch is on
} else {
  // switch is off
}
```

### The UI
Once our BE is set up and is sending consistent and unique ids, we need to set the switch to Percentage Rollout.

1. Navigate to the environment and switch you wish to change
2. Under Default, click `Switch to percentage rollout`
3. Select the percentage (0% being false for all, and 100% being true for all)
4. Click Save; the switch should now be in the percentage rollout mode


![percentage rollout](/percentage-rollout-screenshot.png)


## Rules

###
