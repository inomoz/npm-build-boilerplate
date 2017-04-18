module.exports = {
  plugins: [
    require('postcss-pxtorem')(
      {
        rootValue: 16,
        unitPrecision: 5,
        propList: [
          'font',
          'font-size',
          'line-height',
          'letter-spacing',
          'margin',
          'padding',
          'margin-top',
          'margin-right',
          'margin-bottom',
          'margin-left',
          'padding-top',
          'padding-right',
          'padding-bottom',
          'padding-left'
        ],
        selectorBlackList: [],
        replace: true,
        mediaQuery: true,
        minPixelValue: 0
      }
    ),
    require('autoprefixer')()
  ]
};
