class Solution {
  String addBinary(String a, String b) {
    int i = a.length - 1;
    int j = b.length - 1;
    int carry = 0;
    StringBuffer result = StringBuffer();

    while (i >= 0 || j >= 0 || carry > 0) {
      int bitA = (i >= 0) ? int.parse(a[i]) : 0;
      int bitB = (j >= 0) ? int.parse(b[j]) : 0;

      int sum = bitA + bitB + carry;
      result.write(sum % 2); 
      carry = sum ~/ 2;

      i--;
      j--;
    }

    return result.toString().split('').reversed.join();
  }
}
