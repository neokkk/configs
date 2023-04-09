module.exports = {
  extends: ['plugin:react/recommended'],
  plugins: ['react'],
  rules: {
    'react/react-in-jsx-scope': 'off',
  },
  settings: {
    react: {
      version: '18',
    },
  },
};
