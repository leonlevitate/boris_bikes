# Boris Bikes

This simple program emulates some of the elements of the Boris Bikes Cycle Hire Scheme, for example docking stations, and releasing bikes.

## Approach

For this onsite project at Makers, I have used TDD to build my program in Ruby, using RSpec as my testing framework. To separate the concerns, I created two main classes: bike & docking_station.

## How to install

```
git clone {URL}
```

```
bundle install
```

## Run Tests

```
rspec
```

## My TDD Process

1. From the list of **requirements**, I build out user stories. These are user-centric, with a clear statement of value that this feature will provide.

2. I create a **domain model** by extracting all of the nouns (these are assigned to Objects) and verbs (these are assigned to Messages of Methods which we send to the Object)

3. I create a table to map the Objects and Methods:

| Objects        | Methods      |
| :------------- | :----------- |
| Person         |              |
| Bike           | working?     |
| DockingStation | release_bike |

4. I create a diagram for how the objects use messages to communicate/interact with one another:

Bike <----------working?---------> true/false
DockingStation <---release_bike---> a bike

5. I build a **feature test** for the first user story, and use a REPL such as **IRB** to understand how to interact with the program, classes, methods etc.

6. Read the stack trace, identify the error message. Refer to official documentation and look up _exception_.

7. I build my unit test with RSpec to replicate the error message that the feature test produces. I consider the following when writing tests:

- **Arrange** - the arrangement/structure of the test code
- **Act** - the action/behaviour we expect to happen
- **Assert** - what is the expectation?

8. I write the minimum amount of code to pass the tests.

9. I refactor the code and the tests:
   a) Improve the code without changing behaviour e.g. variable names, DRY. b) one-liner syntax

10. I regularly run IRB or feature tests to check expected behaviour.

11. Repeat process for next requirement.
