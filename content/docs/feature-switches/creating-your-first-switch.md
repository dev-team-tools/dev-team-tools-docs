# Creating your first switch

In this tutorial, we're going to create a basic feature switch and use it in a project.
In this example, we'll be using NodeJS.

## The scenario
We've decided to implement a new User profile photo upload feature. But we want to make sure we can build, test, iterate, and show stake holders before progressively rolling out the feature to the general public.

## Prerequisite
To create your first switch, first you must ensure you've created an [environment](https://docs.dev-team-tools.com/docs/getting-started/environments/#creating).

For this example, we're going to use an environment called `stage`.

### Creating an API token
First, we'll need to get hold of an API key. Head to [Settings](https://dev-team-tools.com/users/settings) and scroll down to "API tokens".

Create a new token, with both `Read Switch` and `List Switches` enabled and give it a name. For the sake of this tutorial, lets call it "Test Token".

Take a copy of the token, as we'll need it to authenticate the library.

![Create API token screenshot](/api-token-screenshot.png)

## Creating the switch

![Creating a Feature Switch](/create-feature-switch-screenshot.png)

There are then 4 sections that need to be filled out:
1. **Switch Name**: the human readble name for a switch. We tend to go for something like "{product name} - Enable {feature name}" e.g. "User Profile Page - Enable profile photo upload".
2. **Switch Key**: this key must be unique, and will be used within your code base. We recommend making it a positive name, so something like "profilePhotoUploadEnabled", so in your code it flows better - `if(profilePhotoUploadEnabled)`. _**This cannot be changed**_.
3. **Description**: a short description of the switch. Purely to help your team understand what this switch is for.
4. **Default value**: A boolean value of the switch.

For this example, we're going to create a switch around a fake new feature - being able to upload a photo.
Lets create our first switch by:
1. Setting the **Switch Name** to "User Profile Page - Enable profile photo upload"
2. Setting the **Switch Key** to `profilePhotoUploadEnabled`
3. Setting the **Description** to "Enables a user to upload a photo", or leave it blank
4. Setting the **Default value** to `false`. We'll be changing this later.

![A single feature switch](/a-feature-switch-screenshot.png)

## Using it in code - the Backend
There are a number of ways to request your switches value. Check out the SDK section for more specific implementation details for different languages.

Now we've created the switch, we need to reference it in our code

```JavaScript
const manager = new FeatureSwitchManager("{your-api-key-here}", "stage");

export const uploadUserPhoto = async (request: UserPhotoRequest) => {

  const result = await manager.getSwitchValue("profilePhotoUploadEnabled");

  if(result.value) {
    // Fill in with photo upload code
    console.log("This feature is still in the works, and currently does nothing");
  }
}
```

As you can see, we've created the manager (create one of these, and reuse it throughout your code), and then used it to get the `profilePhotoUploadEnabled` switch.
Then, if that switch returns `true`, we then handle the upload. If it's set to `false`, it does nothing.

We can now "ship" this code, as the switch is `false` for every user.
Once we're happy with the code, we can set it to `true`, and it'll suddenly becomes available to everyone.

## Front end feature switches
The above is a pretty simple example of a feature switch grounded in reality. However, a feature like this wouldn't really work without a Front End aspect.

To find out more about how to access your Feature Switches via the Frontend, check out these documents.
