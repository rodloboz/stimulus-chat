module.exports = {
  theme: {
    extend: {},
    colors: {
      transparent: 'transparent',
      black: '#000000',
      white: '#FFFFFF',

      crimson: {
        100: '#C51431',
        200: '#b1122c',
        300: '#9d1027',
        400: '#890e22',
        500: '#760c1d',
        600: '#620a18',
        700: '#4e0813',
        800: '#3b060e',
        900: '#130204'
      },

      gray: {
        100: '#fafafa',
        200: '#edf2f7',
        300: '#e2e8f0',
        400: '#dbdbdb',
        500: '#a0aec0',
        600: '#a5a7aa',
        700: '#4a5568',
        800: '#2d3748',
        900: '#1a202c',
      }
    },
  },
  variants: {
    borderColors: ['responsive', 'hover', 'focus', 'group-hover'],
    visibility: ['responsive', 'group-hover'],
  },
  plugins: [],
}
