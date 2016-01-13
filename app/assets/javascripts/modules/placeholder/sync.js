var Sync = Sync || {};

Sync.init = function() {

};

window['renderGoogleButton'] = function() {
  gapi.signin2.render('my-signin2', {
    'scope': 'https://www.googleapis.com/auth/plus.login',
    'width': 200,
    'height': 50,
    'longtitle': true,
    'theme': 'dark',
    'onsuccess': function(user) {
      console.debug(user);
      // TODO AJAX write this to db
    },
    'onfailure': function(error) {
      console.debug(error);
      // TODO render this
    }
  });
};
