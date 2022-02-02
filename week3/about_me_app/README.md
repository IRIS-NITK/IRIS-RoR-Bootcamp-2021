# Task for Week 3

Hello! You'll start building a proper Rails app in this week's workshop. The basic template is provided, so just `cd` into the directory and start coding!

## Tasks

- Create four routes - `/about`, `/about_form`, `/about_json`, and a root route.
- Create a AboutPageController to handle all the routes.
- Create appropriate views.
    - The root URL should display a page with a link to the form page.
    - The `about_form` view should render a form to collect the user's name and email address.
    - Display the output of the form in the `about` view. Fill in the details collected from the form.
    - The `about_json` should reply with the following JSON data: `{'status': '200', 'message': 'Hello World'}`
- Create a partial for the form, and render it.

## Setup
Run `bundle install` so that you can install all the dependencies

## Requirements
Your assignment will be judged by GitHub Actions. For the test to run, you'll need to make sure that a few names are same as those in the test files.

- Make sure your branch is of the format `week3_<YOUR-NAME>`

- The routes should be `about_page`, `about_form` and `about_json`.
- The controller should be `AboutPageController`, and the file name should be `about_page_controller.rb`.
- There should be a partial called `_form.html.erb` in the `app/views/about_page` directory.