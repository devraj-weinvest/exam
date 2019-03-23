# README

Steps to run the application

* clone the application
  git clone https://github.com/devraj-weinvest/exam.git
 
* go to application folder
  cd exam && bundle install
* create the database `rake db:create`

* run the migration `rake db:migrate`

* run the specs `rspec spec/

* start the server `rails s`

* Generate the authentication headers by using following API
   http://localhost:3000/auth/sign_in
   {
    "email": "max@nomail.com",
    "password": "Admin@123"
   }
   
   ```content-type:
      application/json; charset=utf-8
      access-token:
      SOe8bt6UySx_fKzrhHot_A
      token-type:
      Bearer
      client:
      7wvnttJgWP4MLKuwbmsBlA
      expiry:
      1554535709
      uid:
      max@nomail.com
      etag:
      W/"d86048e7d859ce0a415e300e7b338781"
      cache-control:
      max-age=0, private, must-revalidate
      x-request-id:
      d79e99ab-b77a-4f12-a6b0-2d9d55c4df5b
      x-runtime:
      10.426448
      transfer-encoding:
      chunked```
 * Use the above headers to call the API
 * for API documentation open apidoc-onepage.html file
