String allWordsCapitilize(String str) {
  if (str.isEmpty) return '';

  return str.toLowerCase().split(' ').map((word) {
    String leftText = (word.length > 1) ? word.substring(1, word.length) : '';
    return word.isEmpty ? "" : word[0].toUpperCase() + leftText;
  }).join(' ');
}
