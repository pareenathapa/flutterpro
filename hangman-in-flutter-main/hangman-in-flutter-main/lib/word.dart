class Word {
  String toGuess;
  int toGuessLength;
  List<String> words = ["éléphant", "ordinateur", "radio"];

  Word({
    this.toGuess = "",
    this.toGuessLength = 0,
});

  setLength() {
    toGuessLength = toGuess.length;
  }



}
