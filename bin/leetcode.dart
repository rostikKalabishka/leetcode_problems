import 'dart:math';

void main() {
  final solution = Solution();
  print(solution.search([2, 5, 6, 0, 0, 1, 2], 0));
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
// class Solution {
//   int reverse(int x) {
//     if (x == 0) return 0;

//     bool isNegative = false;
//     if (x < 0) {
//       isNegative = true;
//       x = -x;
//     }

//     BigInt reversed = BigInt.from(0);

//     while (x > 0) {
//       int digit = x % 10;
//       reversed = reversed * BigInt.from(10) + BigInt.from(digit);
//       x ~/= 10;
//     }

//     if (isNegative) {
//       reversed = -reversed;
//     }

//     if (reversed < BigInt.from(-2147483648) ||
//         reversed > BigInt.from(2147483647)) {
//       return 0;
//     }

//     return reversed.toInt();
//   }
// }

//9. Palindrome Number
// class Solution {
//   bool isPalindrome(int x) =>
//       x.toString().split('').reversed.join() == x.toString() ? true : false;
// }

// 33. Search in Rotated Sorted Array

// class Solution {
//   int search(List<int> nums, int target) => nums.indexOf(target);
// }

//35. Search Insert Position
// class Solution {
//   int searchInsert(List<int> nums, int target) {
//     int low = 0;
//     int h = nums.length - 1;
//     int res;

//     while (low <= h) {
//       int mid = (low + h);
//       if (nums[mid] == target) {
//         return mid;
//       } else if (nums[mid] < target) {
//         low = mid + 1;
//       } else {
//         h = mid - 1;
//       }
//     }

//     nums.add(target);
//     nums.sort();
//     return nums.indexOf(target);
//   }
// }

//50. Pow(x, n)
// class Solution {
//   double myPow(double x, int n) => pow(x, n).toDouble();
// }

//58. Length of Last Word
// class Solution {
//   lengthOfLastWord(String s) => s.trim().split(' ').last.length;
// }

//66. Plus One
// class Solution {
//   List<int> plusOne(List<int> digits) {
//     BigInt num = BigInt.parse(digits.join(''));
//     num += BigInt.one;

//     List<int> res = num.toString().split('').map((e) => int.parse(e)).toList();
//     return res;
//   }
// }

//67. Add Binary
// class Solution {
//   addBinary(String a, String b) =>
//       (BigInt.parse(a, radix: 2) + BigInt.parse(b, radix: 2)).toRadixString(2);
// }

//69. Sqrt(x)
// class Solution {
//   int mySqrt(int x) => sqrt(x).floor();
// }

//81. Search in Rotated Sorted Array II
class Solution {
  bool search(List<int> nums, int target) {
    nums.sort();
    int low = 0;
    int high = nums.length - 1;
    while (low <= high) {
      int mid = (low + high);
      if (nums[mid] == target) {
        return true;
      } else if (nums[mid] < target) {
        low = mid + 1;
      } else {
        high = mid - 1;
      }
    }
    return false;
  }
}
