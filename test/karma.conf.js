// karma.conf.js
module.exports = function(config) {
  config.set({
    browsers: ['Chrome', 'Chrome_without_security'],

    // you can define custom flags
    customLaunchers: {
      Chrome_without_security: {
        base: 'Chrome',
        flags: ['--disable-web-security']
      }
    }
  });
};