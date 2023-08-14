void main() {
  final solution = Solution();
  print(solution.intersection([1, 2, 2, 1], [2, 2]));
}

//349. Intersection of Two Arrays
class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    Set<int> res = Set<int>();

    for (var i = 0; i < nums1.length; i++) {
      for (var j = 0; j < nums2.length; j++) {
        if (nums1[i] == nums2[j]) {
          res.add(nums1[i]);
        }
      }
    }

    return res.toSet().toList();
  }
}
