import 'dart:math';

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
// class Solution {
//   bool search(List<int> nums, int target) {
//     nums.sort();
//     int low = 0;
//     int high = nums.length - 1;
//     while (low <= high) {
//       int mid = (low + high);
//       if (nums[mid] == target) {
//         return true;
//       } else if (nums[mid] < target) {
//         low = mid + 1;
//       } else {
//         high = mid - 1;
//       }
//     }
//     return false;
//   }
// }

// 153. Find Minimum in Rotated Sorted Array
// class Solution {
//   int findMin(List<int> nums) {
//     nums.sort();
//     return nums[0];
//   }
// }

//154. Find Minimum in Rotated Sorted Array II
// class Solution {
//   int findMin(List<int> nums) {
//     nums.sort();
//     return nums[0];
//   }
// }

//217. Contains Duplicate
// class Solution {
//   containsDuplicate(List<int> nums) {
//     var setList = nums.toSet();

//     return setList.length != nums.length;
//   }
// }

//415. Add Strings
// class Solution {
//   String addStrings(String num1, String num2) =>
//       (BigInt.parse(num1) + BigInt.parse(num2)).toString();
// }

//704. Binary Search
// class Solution {
//   int search(List<int> sortedList, int target) {
//     int low = 0;
//     int high = sortedList.length - 1;
//     while (low <= high) {
//       int mid = (low + high);
//       if (sortedList[mid] == target) {
//         return mid;
//       } else if (sortedList[mid] < target) {
//         low = mid + 1;
//       } else {
//         high = mid - 1;
//       }
//     }
//     return -1;
//   }
// }

//709. To Lower Case
// class Solution {
//   String toLowerCase(String s) => s.toLowerCase();
// }

//977. Squares of a Sorted Array

// class Solution {
//   List<int> sortedSquares(List<int> nums) {
//     List<int> res = [];
//     res = nums.map((el) => el * el).toList();
//     res.sort();
//     return res;
//   }
// }

//1108. Defanging an IP Address (JS)
// var defangIPaddr = function(address) {
//     return address.replaceAll('.', '[.]');
// };

// 2235. Add Two Integers
// class Solution {
//   int sum(int num1, int num2) => num1 + num2;
// }

// 2469. Convert the Temperature
// class Solution {
//   List<double> convertTemperature(double celsius) {
//     List<double> arr = [];
//     double kelvin = celsius + 273.15;
//     double fahrenheit = celsius * 1.8 + 32.00;
//     arr.add(kelvin);
//     arr.add(fahrenheit);
//     return arr;
//   }
// }

//1. Two Sum
// class Solution {
//   List<int> twoSum(List<int> nums, int target) {
//     for (var i = 0; i < nums.length - 1; i++) {
//       for (var j = i + 1; j < nums.length; j++) {
//         if (nums[i] + nums[j] == target) {
//           return [i, j];
//         }
//       }
//     }

//     return [];
//   }
// }

//26. Remove Duplicates from Sorted Array

// class Solution {
//   removeDuplicates(List<int> nums) {
//     final set = nums.toSet().toList();
//     nums.length = 0;
//     nums.addAll(set);
//     return nums.length;
//   }
//   //or
//   //nums.toSet().toList().length;
// }

// 242. Valid Anagram
// class Solution {
//   isAnagram(String s, String t) {
//     var s1 = s.split('');
//     s1.sort();
//     var t1 = t.split('');
//     t1.sort();
//     if (t1.length != s1.length) return false;

//     for (var i = 0; i < s1.length; i++) {
//       if (s1[i] != t1[i]) {
//         return false;
//       }
//     }
//     return true;
//   }
// }

// 27. Remove Element
// class Solution {
//   int removeElement(List<int> nums, int val) {
//     int k = 0;
//     for (int i = 0; i < nums.length; i++) {
//       if (nums[i] != val) {
//         nums[k] = nums[i];
//         k++;
//       }
//     }

//     return k;
//   }
// }

//852. Peak Index in a Mountain Array
// class Solution {
//   peakIndexInMountainArray(List<int> arr) {
//     var arr2 = List<int>.from(arr);
//     arr2.sort();
//     var max = arr2.last;

//     for (var i = 0; i < arr.length; i++) {
//       if (arr[i] == max) {
//         return i;
//       }
//     }
//   }
// }

//283. Move Zeroes

// class Solution {
//   void moveZeroes(List<int> nums) {
//     int nonZeroIndex = 0;

//     for (var i = 0; i < nums.length; i++) {
//       if (nums[i] != 0) {
//         nums[nonZeroIndex] = nums[i];
//         nonZeroIndex++;
//       }
//     }

//     for (var i = nonZeroIndex; i < nums.length; i++) {
//       nums[i] = 0;
//     }
//   }
// }

//557. Reverse Words in a String III

class Solution {
  String reverseWords(String s) {
    return s
        .split(' ')
        .map((word) => word.split('').reversed.join(''))
        .join(' ');
  }
}

void main() {
  final solution = Solution();

  print(solution.reverseWords("Let's take LeetCode contest"));
  print(solution.reverseWords("God Ding"));
}
