module.exports = {
  env: {
    node: true,
  },
  settings: {
    'import/resolver': {
      node: {
        extensions: ['.mjs', '.js', '.json'],
      },
    },
  },
};
