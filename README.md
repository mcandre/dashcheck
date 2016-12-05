# dashcheck - a D port of the QuickCheck unit test framework

# EXAMPLE

```
$ rdmd example.d
*** Failed!
163
+++ OK, passed 100 tests.
+++ OK, passed 100 tests.
```

See [example.d](https://github.com/mcandre/dashcheck/blob/master/example.d) for more information.

# INSTALL

```
$ make install
```

# REQUIREMENTS

* `make`
* [dmd](http://dlang.org/) 2+

## Optional

* [ruby](https://www.ruby-lang.org/) 2+
* [Cucumber](http://cukes.info/)
* [aspelllint](https://github.com/mcandre/aspelllint)
* [pargs](https://github.com/mcandre/pargs)
* [editorconfig-tools](https://www.npmjs.com/package/editorconfig-tools)

# DEVELOPMENT

## Testing

Ensure the example script works as expected:

```
$ bundle
$ cucumber
Feature: Run example tests

  Scenario: Running example tests            # features/run_example_tests.feature:3
    Given the program has finished           # features/step_definitions/steps.rb:1
    Then the output is correct for each test # features/step_definitions/steps.rb:5

1 scenario (1 passed)
2 steps (2 passed)
0m0.016s
```

## Spell Check

```
$ aspelllint
...
```
