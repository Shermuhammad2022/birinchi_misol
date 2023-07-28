class Words {
  
  late String _word;

  factory Words({required String word}) {
    if(word.isEmpty){
      throw ArgumentError.notNull(
        "Satr bo'sh bo'lmasligi kerak!"
      );
    } else
    if(RegExp(r"[a-z]").hasMatch(word)){
      throw FormatException(
        "Satr faqat lotin kichik harflaridan iborat bo'lsin!"
      );
    }
    return Words(word: word);
  }


  set word(String w){
    if(w.isNotEmpty) {
      _word = w;
    }
  }
  String get word => _word;

  @override
  String toString() {
    return "$runtimeType {word: $_word}";
  }

  Words copeWith({String? word}) {
    return Words(
      word: word ?? this.word,
    );
  }
  
  
  @override
  int get hashCode => Object.hashAll({word});

  @override
  bool operator == (Object other) => other is Words && other.word == word;
}
