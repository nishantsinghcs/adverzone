<body>
      <div id="fb-root"></div>
      <script>
        window.fbAsyncInit = function() {
          FB.init({
            appId      : '1578817592390549',
            status     : true, 
            cookie     : true,
            xfbml      : true,
            oauth      : true,
          });
        };
        (function(d){
           var js, id = 'facebook-jssdk'; if (d.getElementById(id)) {return;}
           js = d.createElement('script'); js.id = id; js.async = true;
           js.src = "//connect.facebook.net/en_US/all.js";
           d.getElementsByTagName('head')[0].appendChild(js);
         }(document));

       //LOGIN FUNCTION 
       function login() {
        FB.login(function(response) {
            if (response.authResponse) {
                alert('Success!');
            }else{
                alert('Login Failed!');
            }
        }, {scope: 'email'});
     }
      </script>
      <div onclick="login();">Login with Facebook</div>
    </body>