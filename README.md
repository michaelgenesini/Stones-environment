# AngularJS App provided by Express

Clone repo

'''
npm install
'''
'''
bower install
'''

DEBUG=client:* ./bin/www


## Directory Layout
    
    app.js              --> app config
    package.json        --> for npm
    bin/
      www               --> middleware's provider
    public/             --> all of the files to be used in on the client side
      bootstrap/        --> all bootstrap files
        css/
        img/
        js/
      css/              --> css files
        app.css         --> default stylesheet
      img/              --> image files
      js/               --> javascript files
        app.js          --> declare top-level app module
        controllers.js  --> application controllers
        directives.js   --> custom angular directives
        filters.js      --> custom angular filters
        services.js     --> custom angular services
        lib/            --> angular and 3rd party JavaScript libraries
          angular/
            angular.js            --> the latest angular js
            angular.min.js        --> the latest minified angular js
            angular-*.js          --> angular add-on modules
            version.txt           --> version number
    routes/
      api.js            --> route for serving JSON
      index.js          --> route for serving HTML pages and partials
    views/
      index.jade        --> main page for app
      layout.jade       --> doctype, title, head boilerplate
      partials/         --> angular view partials (partial jade templates)
        partial1.jade
        partial2.jade



## Author Michael Genesini