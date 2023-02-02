extension FindPalindromExt on String {
  findPalindrom() {
    String result = "";
    for (int i = length - 1; i >= 0; i--) {
      result += this[i];
    }
    if (result.toString() == toLowerCase()) {
      return true;
    } else {
      return false;
    }
  }
}
