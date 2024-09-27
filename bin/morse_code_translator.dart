import 'dart:io';
import 'package:morse_code_translator/morse_code_translator.dart';

void main(List<String> arguments) {
  final translator = MorseTranslator();

  while (true) {
    stdout.write('Enter text to translate (or "q" to quit): ');
    final input = stdin.readLineSync();

    if (input == null || input.toLowerCase() == 'q') {
      print('Goodbye!');
      break;
    }

    try {
      final isMorse = input.split(' ').every((char) => char == '.' || char == '-' || char == '/');
      final result = isMorse
          ? translator.morseToText(input)
          : translator.textToMorse(input);
      print('Translated: $result');
    } catch (e) {
      print('Error: ${e.toString()}');
    }
  }
}