class Solution {
  bool isValid(String s) {
    List<String> stack = [];
    Map<String, String> brackets = {
      ')': '(',
      ']': '[',
      '}': '{',
    };

    for (int i = 0; i < s.length; i++) {
      String char = s[i];

      if (brackets.containsValue(char)) {
        stack.add(char);
      } else if (brackets.containsKey(char)) {
        if (stack.isEmpty || stack.removeLast() != brackets[char]) {
          return false;
        }
      }
    }

    return stack.isEmpty;
  }
}
