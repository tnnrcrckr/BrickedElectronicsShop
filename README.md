Ruby on Rails Sample Application

Created as part of CSCI 450. An example of an online store website.


I edited this a little bit after submitting the project; I noticed a admin-privilege bug, which has been fixed. If you want to see the project as it was when it was presented, use the submitted_project branch.



## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
