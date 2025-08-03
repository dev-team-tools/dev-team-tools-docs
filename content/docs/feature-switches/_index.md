+++
draft = false
title = 'Feature-Switches'
weight = 100
+++

# Feature Switches
Feature Switches (sometimes called Feature Toggles or Feature Flags) have been around for a while now. If you're not familier with them, we very much recommend reading [Feature Toggles (aka Feature Flags)](https://martinfowler.com/articles/feature-toggles.html), as it does a great job of outlining the _why_.

The TL;DR is:

> Feature Switches enable your team to deliver new features safely and quickly. They help enable teams that are doing Continuous Delivery. They can also be used by the Product Team with A/B testing and experimentation

If you'd like to know more, contact us and see how we can help use Feature Switches within your team and products.

Right now, dev-team-tools feature-switches are based around "Release switches". They enable features to be rolled out to everyone, selected users, or a percentage of users, at the teams descretion. By doing so, this enables continous delivery by separating the concepts of a deployment and a release.

### Release vs Deployment
Before we go further, it's worth discussing the difference between a "Release" and a "Deployment".
For the example, we're going to say that your team has been tasked with building a new User Profile page.
On this page has a number of features, like the ability to set a user name, or update their password. it can't "go live" until all of these features are ready.

One option is to code, build, and test all of these requirements in one go, and release it to your users once it's ready.

So, a **Release** is:
> A feature, service, or any other kind of change that a 3rd party can access

However, this has some drawbacks. If the feature is large, like a whole new page that has multiple sub-features, releasing it in one go comes with much more risk. What happens if the email update doesn't work? Then a roll back might be required.

Another option is to write small bits of code, and deploy it often.
1. Continuous integration - to ensure what you're building works with the rest of the system
2. Short lived branches / trunk based developemnt - as code ages like fine milk. The longer its left on your machine, the worse it gets.

So a **Deployment** is:
> A chunk of code being deployed to an environment

This code doesn't need to be finished (though, it shouldn't stop the application from performing it's current duties and tasks), but it doesn't actually have to work yet.


But how do you stop a user from seeing or experiencing half finished code / features / products?

That's where Feature Switches come in. By allowing you to control the code flow via dev-team-tools, you can decide which users get to experience your new feature, and which ones don't.

## Updating a feature switch
You can edit lots of aspects about a switch, from it's description to how it behaves based on a number of factors.
![Edit a feature switch](/edit-feature-switch-screenshot.png)

### Description
You can edit the description of a Feature Switch here. As stated above, the **key** cannot be updated.
![Edit a description](/edit-description-feature-switch-screenshot.png)

### Context rules

![Finished context rule](/add-context-rule-feature-switches-screenshot.png)
![Finished context rule](/create-context-rule-feature-switches-screenshot.png)
![Finished context rule](/finished-context-rule-feature-switch-screenshot.png)

### Default rule & Percentage rollout

![Default rule](/edit-default-rule-feature-switch-screenshot.png)
![Percetnage roll out](/edit-percentage-rollout-default-rule-feature-switch-screenshot.png)


## Copying a Feature Switch
You can copy a feature switch to another environment. This is useful when you're working with multiple environments.
![Copy a feature switch](/copy-feature-switch-screenshot.png)

## Deleting a Feature Switch
Once you're finished with a feature switch, you can delete it. This action cannot be undone.
![Delete a feature switch dialog](/delete-feature-switch-screenshot.png)
