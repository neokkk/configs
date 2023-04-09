module.exports = {
  extends: ['plugin:import/recommended'],
  plugins: ['import'],
  rules: {
    'import/no-named-as-default': 'off',
    'import/no-unresolved': [
      'error',
      {
        caseSensitive: true,
        commonjs: true,
        ignore: ['\\?', '^node:'],
      },
    ],
    'import/order': [
      'error',
      {
        alphabetize: { caseInsensitive: true, order: 'asc' },
        groups: [
          ['builtin', 'external'],
          ['index', 'internal', 'parent', 'sibling', 'unknown'],
          ['object'],
        ],
      },
    ],
  },
};
