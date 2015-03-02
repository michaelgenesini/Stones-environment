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
    
    app.js                        --> app config
    package.json                  --> for npm
    bin/
      www                         --> middleware's provider
    development/                          --> all of the PRECOMPILED files (Sass, Jade, Coffee ...)
      
      views/                      --> jade partials

      images/                     --> images folder

      fonts/                      --> fonts folder

      styles/
        style.sass                --> sass files

      scripts/
        app.coffee                --> declare top-level app module
        controllers/              --> Angular Controllers files
        directives/               --> Angular Directives files
        filters/                  --> Angular Filters files
        services/                 --> Angular Services files

    public/                       --> all of the COMPILED files to be used in on the client side
                                  --> NOTE: this folder is completely managed by Grunt, so don't do anything to these files
    routes/
      index.js                    --> route for serving HTML page
    views/
      index.jade                  --> main page for app
      layout.jade                 --> doctype, title, head boilerplate
      partials/                   --> angular view partials (partial jade templates) these will be rendered by Gunt in public views



## Author Michael Genesini