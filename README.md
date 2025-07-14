# String Calculator

A simple web application that calculates the sum of numbers from text input.

## What it does

Enter numbers separated by commas, line breaks, or other characters, and get their total sum.

### Examples:

- `1,2,3` - 6
- `1\n2\n3` - 6
- `1,2\n3` - 6
- `//;\n1;2` - 3

## Features

- Uses a form to calculate the sum
- Handles commas, newlines, and custom separators
- Shows error message for negative numbers
- Contains test suite for testing the functionality

## How to use

1. Open the application in browser
2. Root path will redirect to the string calculator page
3. Type numbers in the text box (use any delimiters)
4. Click "Calculate" and the results will be visible
5. Sum can be calculated again

## Technical details

- Built with Ruby on Rails
- Uses Tailwind CSS for styling
- Includes test suite (11 tests)
- Follows MVC architecture

## Running the app

```bash
rails s
```

Then visit `http://localhost:3000`

## Running tests

```bash
bundle exec rspec
```
