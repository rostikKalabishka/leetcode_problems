import 'dart:math';

import 'package:test/test.dart';

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

// class Solution {
//   String reverseWords(String s) {
//     return s
//         .split(' ')
//         .map((word) => word.split('').reversed.join(''))
//         .join(' ');
//   }
// }

// 28. Find the Index of the First Occurrence in a String
// class Solution {
//   int strStr(String haystack, String needle) {
//     return haystack.indexOf(needle);
//   }
// }

//151. Reverse Words in a String

// class Solution {
//   String reverseWords(String s) {
//     List<String> words = s.split(' ').where((word) => word.isNotEmpty).toList();
//     return words.reversed.join(' ').trim();
//   }
// }

// 75. Sort Colors
// class Solution {
//   void sortColors(List<int> nums) {
//     nums.sort();
//   }
// }
// class Solution {
//   void sortColors(List<int> nums) {
//     for (int i = 0; i < nums.length - 1; i++) {
//       for (int j = i; j < nums.length; j++) {
//         if (nums[j] < nums[i]) {
//           int temp = nums[j];
//           nums[j] = nums[i];
//           nums[i] = temp;
//         }
//       }
//     }
//   }
// }

//383. Ransom Note

// class Solution {
//   bool canConstruct(String ransomNote, String magazine) {
//     var charCount = List<int>.filled(26, 0);

//     for (var char in magazine.runes) {
//       charCount[char - 'a'.runes.first]++;
//     }

//     for (var char in ransomNote.runes) {
//       if (charCount[char - 'a'.runes.first] == 0) {
//         return false;
//       }
//       charCount[char - 'a'.runes.first]--;
//     }

//     return true;
//   }
// }

//125. Valid Palindrome
// class Solution {
//   bool isPalindrome(String s) {
//     String cleanStr = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();

//     String reversed = cleanStr.split('').reversed.join('');

//     return cleanStr == reversed;
//   }
// }

//504. Base 7

// class Solution {
//   String convertToBase7(int num) {
//     if (num == 0) {
//       return "0";
//     }

//     bool isNegative = num < 0;
//     num = isNegative ? -num : num;

//     String result = "";
//     while (num > 0) {
//       int remainder = num % 7;
//       result = "$remainder$result";
//       num ~/= 7;
//     }

//     if (isNegative) {
//       result = "-$result";
//     }

//     return result;
//   }
// }

//258. Add Digits

// class Solution {
//   int addDigits(int num) {
//     var b = num.toString().split('').map((e) => int.parse(e)).toList();
//     var sum = b.reduce((value, element) => value + element);

//     while (sum >= 10) {
//       b = sum.toString().split('').map((e) => int.parse(e)).toList();
//       sum = b.reduce((value, element) => value + element);
//     }

//     return sum;
//   }
// }
//136. Single Number

// class Solution {
//   int singleNumber(List<int> nums) {
//     int result = 0;
//     for (int num in nums) {
//       result ^= num; //xor
//     }
//     return result;
//   }
// }

// 338. Counting Bits

// class Solution {
//   List<int> countBits(int n) {
//     List<int> result = [];
//     for (int i = 0; i <= n; i++) {
//       result.add(countOnesInBinary(i));
//     }
//     return result;
//   }

//   int countOnesInBinary(int number) {
//     int count = 0;
//     while (number > 0) {
//       if (number % 2 == 1) {
//         count++;
//       }
//       number = number ~/ 2;
//     }
//     return count;
//   }
// }

// 268. Missing Number

// class Solution {
//   int missingNumber(List<int> nums) {
//     nums.sort();
//     int max = nums.last;

//     for (int i = 0; i <= max; i++) {
//       if (i >= nums.length || nums[i] != i) {
//         return i;
//       }
//     }

//     return max + 1;
//   }
// }

// class Solution {
//   minExtraChar(String s, List<String> dictionary) {
//     var foundWords = <String>[];

//     for (var i = 0; i < dictionary.length; i++) {
//       if (s.contains(dictionary[i])) {
//         foundWords.add(dictionary[i]);
//       }
//     }
//     return s.length - foundWords.join().length;
//   }
// }
//448. Find All Numbers Disappeared in an Array

class Solution {
  List<int> findDisappearedNumbers(List<int> nums) {
    nums.sort();

    List<int> list = [];
    List<int> res = [];

    for (var i = 1; i <= nums.length; i++) {
      list.add(i);
    }

    int i = 0;
    int j = 0;

    while (i < list.length && j < nums.length) {
      if (list[i] < nums[j]) {
        res.add(list[i]);
        i++;
      } else if (list[i] > nums[j]) {
        j++;
      } else {
        i++;
        j++;
      }
    }

    while (i < list.length) {
      res.add(list[i]);
      i++;
    }

    return res;
  }
}

void main() {
  final solution = Solution();

  print(solution.findDisappearedNumbers([4, 3, 2, 7, 8, 2, 3, 1]));
  print(solution.findDisappearedNumbers([1, 1]));
}
