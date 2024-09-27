import 'package:morse_code_translator/morse_code_translator.dart';
import 'package:test/test.dart';

void main() {
  late MorseTranslator translator;

  setUp(() {
    translator = MorseTranslator();
  });

  group('Text to Morse', () {
    test('converts simple text to Morse code', () {
      expect(translator.textToMorse('SOS'), '... --- ...');
    });

    test('converts text with spaces', () {
      expect(translator.textToMorse('HELLO WORLD'), '.... . .-.. .-.. --- / .-- --- .-. .-.. -..');
    });

    test('throws exception for unsupported characters', () {
      expect(() => translator.textToMorse('Hello!'), throwsFormatException);
    });
  });

  group('Morse to Text', () {
    test('converts simple Morse code to text', () {
      expect(translator.morseToText('... --- ...'), 'SOS');
    });

    test('converts Morse code with word separators', () {
      expect(translator.morseToText('.... . .-.. .-.. --- / .-- --- .-. .-.. -..'), 'HELLO WORLD');
    });

    test('throws exception for invalid Morse code', () {
      expect(() => translator.morseToText('.... . .-.. .-.. --- !'), throwsFormatException);
    });
  });
}