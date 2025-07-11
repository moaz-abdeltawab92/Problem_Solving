class Solution {
  int romanToInt(String s) {
    Map<String, int> roman = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };

    int result = 0;

    for (int i = 0; i < s.length; i++) {
      int current = roman[s[i]]!;
      int next = (i + 1 < s.length) ? roman[s[i + 1]]! : 0;

      if (current < next) {
        result -= current;
      } else {
        result += current;
      }
    }

    return result;
  }
}
