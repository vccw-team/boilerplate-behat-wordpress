# A boilerplate for Testing WordPress with Behat

## How to try

You have to start VCCW before following steps.

Then `git clone` this repository and install dependencies.

```
$ git clone git@github.com:vccw-team/boilerplate-behat-wordpress.git
$ cd boilerplate-behat-wordpress
$ composer install
$ npm install
```

Finally run behat tests.

```
$ npm test
```

Then you can see the result like following.

```
$ npm test

> wordpress-behat@1.0.0 test /Users/miyauchi/Desktop/wordpress-behat
> /usr/bin/env node bin/run-tests.js

Feature: I login as the specfic role

  Scenario: Login as the "administrator" role # features/sample.feature:3
    When I login as the "administrator" role  # VCCW\Behat\Mink\WordPressExtension\Context\WordPressContext::login_as_the_role()
    Then I should see "Welcome to the VCCW"   # Behat\MinkExtension\Context\MinkContext::assertPageContainsText()

  Scenario: Take a screenshot                                          # features/sample.feature:8
    Given the screen size is 1440x900                                  # VCCW\Behat\Mink\WordPressExtension\Context\WordPressContext::set_window_size()
    And I login as the "administrator" role                            # VCCW\Behat\Mink\WordPressExtension\Context\WordPressContext::login_as_the_role()
    When I am on "/"                                                   # Behat\MinkExtension\Context\MinkContext::visit()
    Then take a screenshot and save it to "_out/1440x900.png"          # VCCW\Behat\Mink\WordPressExtension\Context\WordPressContext::take_a_screenshot()
    When I am on "/wp-admin/"                                          # Behat\MinkExtension\Context\MinkContext::visit()
    Then take a screenshot and save it to "_out/1440x900-wp-admin.png" # VCCW\Behat\Mink\WordPressExtension\Context\WordPressContext::take_a_screenshot()
    Given the screen size is 320x400                                   # VCCW\Behat\Mink\WordPressExtension\Context\WordPressContext::set_window_size()
    When I am on "/"                                                   # Behat\MinkExtension\Context\MinkContext::visit()
    Then take a screenshot and save it to "_out/320x400.png"           # VCCW\Behat\Mink\WordPressExtension\Context\WordPressContext::take_a_screenshot()
    When I am on "/wp-admin/"                                          # Behat\MinkExtension\Context\MinkContext::visit()
    Then take a screenshot and save it to "_out/320x400-wp-admin.png"  # VCCW\Behat\Mink\WordPressExtension\Context\WordPressContext::take_a_screenshot()

2 個のシナリオ (2 個成功)
13 個のステップ (13 個成功)
0m7.41s (10.81Mb)
```

And also, you can see the screenshot in the `_out` directory.
