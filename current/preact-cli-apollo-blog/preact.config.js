// prevents https://github.com/developit/preact-cli/issues/244
export default config => {
  config.node.process = 'mock';
}