# Sam & Ellen

This is our little website. Enjoy.

### Personalization Instructions

The following instructions require basic level of knowledge setting up a development environment.

1. Setup Ruby on Rails. 
    * `3.1` and `3.2` from http://guides.rubyonrails.org/getting_started.html
    * or http://installrails.com/
    > On Mac OS X 10.10, Ruby is already installed. So installing Rails is as easy as running this command: `gem install rails`

2. Install bundler gem.
    ```
    gem install bundler
    ```

3. To install dependencies (from Gemfile) in the project, run the following in project directory
    ```
    bundle install
    ```

4. Start the web application on localhost
    ```
    bundle exec rackup -p 9292 config.ru
    ```

5. Your web application is live on `localhost:9292`. Open your web browser and go to `localhost:9292`

6. Modify the following files
    * `views/index.erb`
    * `views/layout.erb` 
        * `Facebook application id` used for comment box.
        > Get your own code from https://developers.facebook.com/docs/plugins/comments
        * `Google analytics code`
    * `assets/images`
    * `assets/stylesheets/application.css/scss`
        * variables used in the stylesheet are defined in `assets/stylesheets/global/variables.scss`

7. You can create offline mirror copy of the web application using wget if your hosting provider doesn't support Ruby on Rails.
    * Run the following command in a new empty directory.
    ```
    wget --page-requisites --convert-links http://URL-to-Start
    ```
    * Upload the static content generated to your host.