+++
title = 'Frontend Feature Switches'
weight = 40
+++
# Frontend Feature Switches

If you have a [Single Page App (SPA)](https://en.wikipedia.org/wiki/Single-page_application) you should **avoid directly accessing** deav-team-tools feature switches from your front end application. In doing so, you'll explose your API key, which isn't recommended for security reasons.

Instead, we recommend you **proxy** your request to dev-team-tools, and return to your Frontend only what you need.

To effectively proxy feature switches, we recommend you create a new API controller within your web application.
You could send a list of switches the SPA is interested in, or it could just return all switches available.
You can also send any additional context you'd like to be sent on to dev-team-tools.

![Proxying a feature switch](/proxying-feature-switches.png)

An example ExpressJS controller:
```JavaScript
const manager = new FeatureSwitchManager("{your key}", "stage");

app.get('/user/feature-switches', async (req, res) => {
    const switches = await manager.getSwitches();
    res.json(switches)
})
```

We also recommend you **cache** this request where possible.
