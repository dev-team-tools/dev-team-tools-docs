+++
title='Environments'
weight = 50
+++

# Environments
## Creating
Before you can use some products in the system, you will need to [create an environment](https://dev-team-tools.com/apps/environments/create).
An environment in dev-team-tools should map 1:1 to your defined environments within your system, e.g. stage to stage, and prod to prod.
So for each environment you have, there should be a corrisponding dev-team-tool's environment defined.

These must have a unique name within your system, and will be used with the SDK / rest requests so we recommend making them human readable.

### Setting a default
On top of this, you can define a `default` environment, which is the one you'll load into automatically when navigating to a product.
For example if you have defined a `stage` environment and set it to default, this will be the environment that loads when you initially view your feature switches.

![Create an environment](/create-environment-screenshot.png)

### Colours
Setting a colour has no real effect on the system, except making it easier to tell which environment you're currently acting within. It's recomended you pick different colours for each environment.

## Managing

You can [manage your environments](https://dev-team-tools.com/apps/environments) at any time.

![List of environments](/list-environments-screenshot.png)

You can:
- edit the colour
- set if it's the default environment

![List of environments](/edit-environment-screenshot.png)

### Deleting an evironment
Sometimes, you might wish to delete an environment.
Doing so will remove all of the assoicated items with it, like feature switches.

![List of environments](/delete-environment-screenshot.png)
