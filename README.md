## System Check Two Notes

### Learning Goals
* Generate a dynamic web page in response to a `GET` request.
* Persist information (to a CSV file) from a user submitted via a `POST` request.
* Implement code based on (pre-written) acceptance tests.

### Building a Bucket List App

Building a bucket list app with Sinatra with dynamic web pages and saves information to a file.

Our app should satisfy the following requirements:

* Visiting `GET /bucket-list` should display our bucket list as well as a form for adding a new item to the list.
* Visiting `GET /` should redirect the user to `GET /bucket-list`.
* The "thing" listed must be in html list element.
* The form requires a bucket list goal to be specified.
* The list of goals is read from the `bucket_list.csv` file which stores each item on a new line.
* The form submits to `POST /bucket-list` which saves the new goal to the `bucket_list.csv` file.
* Submitting an empty form does not modify the `bucket_list.csv` file.

## To use this as a practice:

* Run this in your terminal: `git clone git@github.com:mlg-/launcher-bucket-list.git`
* Then go into the directory `cd launcher-bucket-list`
* `bundle` then `rspec`
* Work through the test errors, one by one.

##### When finished it you would like to push this to your github do the following:

* In the terminal: `git remote rm origin`
* Go to Github and set up your own repo (or use the hub gem and run `hub create repo-name`)
* Terminal: `git remote add origin <your-remote-repo-url>`
* Then add and push your own work.
  - `git add .`
  - `git commit -m "initial commit"`
  - `git push origin master`
