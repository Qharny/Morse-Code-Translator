class MorseTranslator {
  static const Map<String, String> _textToMorse = {
    'A': '.-', 'B': '-...', 'C': '-.-.', 'D': '-..', 'E': '.', 'F': '..-.',
    'G': '--.', 'H': '....', 'I': '..', 'J': '.---', 'K': '-.-', 'L': '.-..',
    'M': '--', 'N': '-.', 'O': '---', 'P': '.--.', 'Q': '--.-', 'R': '.-.',
    'S': '...', 'T': '-', 'U': '..-', 'V': '...-', 'W': '.--', 'X': '-..-',
    'Y': '-.--', 'Z': '--..', '0': '-----', '1': '.----', '2': '..---',
    '3': '...--', '4': '....-', '5': '.....', '6': '-....', '7': '--...',
    '8': '---..', '9': '----.', ' ': '/'
  };

  static final Map<String, String> _morseToText = 
      Map.fromEntries(_textToMorse.entries.map((e) => MapEntry(e.value, e.key)));

  String textToMorse(String text) {
    return text.toUpperCase().split('').map((char) {
      if (!_textToMorse.containsKey(char)) {
        throw FormatException('Unsupported character: $char');
      }
      return _textToMorse[char];
    }).join(' ');
  }

  String morseToText(String morse) {
    return morse.split(' ').map((code) {
      if (code == '/') return ' ';
      if (!_morseToText.containsKey(code)) {
        throw FormatException('Invalid Morse code: $code');
      }
      return _morseToText[code];
    }).join('');
  }
}