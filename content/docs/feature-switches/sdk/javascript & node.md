# JavaScript & Node
You can find the [Node SDK on npm](https://www.npmjs.com/package/@dev-team-tool/feature-switches).
Implementation details can be found on the libraries [GitHub](https://github.com/dev-team-tools/feature-switches-node).

### Example
```javascript
const manager = new FeatureSwitchManager("some-api-key", "stage");

const result = await manager.getSwitchValue("devToolsEnabled");

if(result.value) {
  // switch is on
} else {
  // switch is off
}

const switches = await manager.getSwitches();

const found = switches.find(fs => fs.key === 'devToolsEnabled');

if(found && found.value) {
  // switch is on
}
```
