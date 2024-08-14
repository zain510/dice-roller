# Dice Roller
## Overview
This project is a simple Ruby-based dice-rolling simulator that supports rolling multiple dice with varying numbers of sides. The simulator includes both a Command Line Interface (CLI) and a web-based User Interface (UI) built with Sinatra. The solution showcases clean code practices, object-oriented design, and comprehensive unit testing using RSpec.

## Features
- Roll a set of dice with any combination of sides (e.g., 6-sided, 8-sided, etc.).
- Get detailed results showing the value from each die and the total value of the roll.
- Includes both a CLI and a web-based UI for interaction.
- Well-tested with RSpec to ensure correctness and robustness.

## Installation
### Prerequisites
Ensure you have the following installed:
Ruby (version 2.5+)
Bundler (optional but recommended)
Sinatra gem
RSpec gem
Setup
Clone the repository:

```sh
git clone https://github.com/zain510/dice-roller.git
cd dice-roller
```

### Install dependencies:
```sh
bundle install
```

### Usage

#### Command Line Interface (CLI)
##### Run the CLI version:

```sh
ruby cli.rb
```

###### Follow the prompts:
- Enter the number of dice you want to roll.
- Enter the number of sides for each die.
- The result will be displayed in the terminal.

#### Web-Based Interface (Sinatra)
##### Run the web application:
```sh
ruby app.rb
```

###### Access the application:
- Open your browser and navigate to http://localhost:4567.
- Input the number of sides for each die and click "Roll".
- The result will be displayed on the webpage.

### Testing
This project includes unit tests using RSpec to ensure the correctness of the core functionality.
#### Run the tests:
```sh
rspec
```
The tests cover the dice rolling functionality, ensuring that values fall within the expected range, and verify that the result object calculates totals and descriptions correctly.

### Project Structure
- `dice_roller.rb`, `result.rb` : Contains the DiceRoller and Result classes that implement the core logic of the dice-rolling simulator.
- `cli.rb` : Implements the CLI for interacting with the dice-rolling simulator.
- `app.rb` : Contains the Sinatra application that provides a web-based UI.
- `views/` : Contains the ERB templates for rendering the web pages.
- `layout.erb` : Contains layout template for consistent styling.
- `index.erb` : The main page where users can input dice details.
- `result.erb` : The result page displaying the dice roll outcome.
- `spec/` : Contains the RSpec tests.
- `dice_roller_spec.rb`, `result_spec.rb` : Unit tests for the DiceRoller and Result classes.
- `Gemfile` : Contain Dependencies


### Future Improvements
- Add more UI features: Enhancements such as history of past rolls or graphical representations of dice.
- Expand functionality: Support for more complex dice-rolling scenarios, like rolling with modifiers or advantage/disadvantage rolls.
- Enhanced test coverage: Increase test coverage, including edge cases and additional randomness tests.
