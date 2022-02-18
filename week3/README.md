# Task for Week 3

Hello! You'll start building a Rails app in this week's workshop. You've been provided with the rails app, you just need to add some code.

Before you begin, make sure you're in the right directory ([`IRIS-RoR-Bootcamp-2021/week3/about_me_app`](./about_me_app))

## Tasks

- Generate an `AboutPageController` to handle all the routes.
- Create four routes - `/about_page`, `/about_form`, `/about_json`, and a root route.
- Create appropriate views.
    - Create a partial for the form, and render it.
    - Use Bootstrap Forms (Using the `bootstrap_form_with` helper)
- Create the necessary controller actions
    - The root URL should display a page with a link to the `/about_form` route.
    - The `about_form` view should render a form to collect the user's name and email address.
        - Call the parameters `name` and `email` respectively.
    - Display details taken as input from the form in the `/about_page` route.
        - **Make sure to use an appropriate HTTP Method for the same.**
        - Users shouldn't be able to go to this route without submitting the form.
        - Add a "Back" button so the user can go back to the `/about_form` route **or** add a button to go to the root route.
    - The `/about_json` should respond to JSON requests.
        - A `message` parameter should be passed to te JSON (as a query parameter).
        - If the `params[:message]` is `nil`, it should return a response with the status "Bad Request" (Look for status codes).
        - If the request format is HTML, the user must be redirected to "/" (`root_path`)
        - If the request format is **not** JSON or HTML, respond with the status "Bad Request", and plain text - `"Invalid Request Format"`.
        - However, if the request is valid (format JSON and `params[:message]` exists), respond with the message and status 200 (OK). For example:
        ```js
        // GET /about_json.json?message="Hello World!"
        response = { "message": "Hello World!" }
        ```

## Setup
- Make sure you're in the right directory ([`IRIS-RoR-Bootcamp-2021/week3/about_me_app`](./about_me_app)).
- Run the following commands 
```bash
bundle install # To install all dependencies
rails server   # To start the server
```

## Submitting your Assignment
Your assignment will be judged by GitHub Actions. For the test to run, you'll need to make sure that a few names are same as those in the test files.

- Make sure your branch is of the format `week3_<YOUR-NAME>`.
- The routes should be `about_page`, `about_form` and `about_json`.
- The controller should be `AboutPageController`, and the file name should be `about_page_controller.rb`.
- There should be a partial called `_form.html.erb` in the `app/views/about_page` directory.
- Add screenshots of your `about_form` and `/about_page` routes to the PR description.
- Create a PR to the `week3_assignment` branch.

## Running Tests Locally
You can test your code locally before making a PR to make sure you've completed all your tasks successfully.
- Make sure you're in the right directory ([`IRIS-RoR-Bootcamp-2021/week3/about_me_app`](./about_me_app)).
- Run the following command
```bash
rails test
```
## Doubts
Feel free to ask doubts on the [**#doubts**](https://teams.microsoft.com/l/channel/19%3a6e5ce5031c594c34927026726a750f12%40thread.tacv2/%255BRuby%2520on%2520Rails%255D%2520Doubts?groupId=ebcdbf1c-6b25-48f4-9dfc-9f5e3666cc00&tenantId=36e917dc-1abe-43f4-b189-f92196a6b4ad) channel in the MS Team.
