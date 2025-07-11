class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) return 0;

    int i = 1;

    for (int j = 1; j < nums.length; j++) {
      if (nums[j] != nums[i - 1]) {
        nums[i] = nums[j];
        i++;
      }
    }

    return i;
  }
}
