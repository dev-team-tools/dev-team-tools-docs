+++
title = 'Frontend Feature Switches'
+++
# Frontend Feature Switches
## Single Page Apps

If you have a [Single Page App (SPA)](https://en.wikipedia.org/wiki/Single-page_application) you should **avoid directly access deav-team-tools feature switches** from your front end application. The main reason being you'd expose your API key to the world.

Instead, we recommend you **proxy** your request to dev-team-tools, and return to your Frontend only what you need.

### Proxying requests
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
