void main() {
  final solution = Solution();
  print(solution.reverse(123));
  print(solution.reverse(-321));
}

//349. Intersection of Two Arrays
// class Solution {
//   List<int> intersection(List<int> nums1, List<int> nums2) {
//     Set<int> res = Set<int>();

//     for (var i = 0; i < nums1.length; i++) {
//       for (var j = 0; j < nums2.length; j++) {
//         if (nums1[i] == nums2[j]) {
//           res.add(nums1[i]);
//         }
//       }
//     }

//     return res.toSet().toList();
//   }
// }

//7. Reverse Integer
class Solution {
  int reverse(int x) {
    if (x == 0) return 0;

    bool isNegative = false;
    if (x < 0) {
      isNegative = true;
      x = -x;
    }

    BigInt reversed = BigInt.from(0);

    while (x > 0) {
      int digit = x % 10;
      reversed = reversed * BigInt.from(10) + BigInt.from(digit);
      x ~/= 10;
    }

    if (isNegative) {
      reversed = -reversed;
    }

    if (reversed < BigInt.from(-2147483648) ||
        reversed > BigInt.from(2147483647)) {
      return 0;
    }

    return reversed.toInt();
  }
}
