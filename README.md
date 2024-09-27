# Morse Code Translator

A simple command-line Morse code translator implemented in Dart. This application allows users to convert text to Morse code and vice versa.

## Features

- Convert text to Morse code
- Convert Morse code to text
- Interactive command-line interface
- Support for letters (A-Z), numbers (0-9), and spaces
- Error handling for unsupported characters and invalid Morse code

## Prerequisites

To run this project, you need to have Dart SDK installed on your system. You can download it from [dart.dev](https://dart.dev/get-dart).

## Installation

1. Clone this repository or download the source code.
2. Navigate to the project directory.
3. Run the following command to get the dependencies:

```
dart pub get
```

## Usage

To run the Morse Code Translator:

```
dart run bin/morse_code_translator.dart
```

Follow the on-screen prompts to enter text or Morse code for translation.

- To translate text to Morse code, simply type the text and press Enter.
- To translate Morse code to text, enter the Morse code using dots (.) and dashes (-), with spaces between each letter and forward slashes (/) between words.
- To quit the application, enter 'q' or 'Q'.

## Examples

1. Text to Morse code:
   Input: SOS
   Output: ... --- ...

2. Morse code to text:
   Input: .... . .-.. .-.. --- / .-- --- .-. .-.. -..
   Output: HELLO WORLD

## Running Tests

To run the unit tests for this project:

```
dart test
```

## Project Structure

- `bin/morse_code_translator.dart`: Contains the main application logic and user interface.
- `lib/morse_code_translator.dart`: Implements the core functionality for Morse code translation.
- `test/morse_code_translator_test.dart`: Contains unit tests for the translator.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the [MIT License](https://github.com/Qharny/MicroLang/blob/main/licence).

## Contact

If you have any questions or feedback, please open an issue in the GitHub repository.