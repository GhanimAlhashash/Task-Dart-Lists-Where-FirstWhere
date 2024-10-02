void main() {
  ////these are the where and first where functions
  List<int> filterVisitors(List<int> ages, int minAge) {
    return ages.where((age) => age > minAge).toList();
  }

  int firstOdd(List<int> number) {
    return number.firstWhere(
      (number) => number.isOdd,
      orElse: () => 0,
    );
  }

  ///All variables used

  List<int> numbers = [5, 3, 15, 4, 1];
  List<int> listOfAges = [25, 23, 21, 6, 16];
  int sumOfNumbers = 0;
  int largestNum = numbers[0];
  int minimumAge = 18;
  List<int> allowedVisitors = filterVisitors(listOfAges, minimumAge);

  ///for each that adds all numbers together
  numbers.forEach((number) {
    sumOfNumbers = number + sumOfNumbers;
  });

  ///for each that checks the difference and takes the largest number adn prints it
  numbers.forEach((largest) {
    if (largestNum < largest) {
      print("largest number is $largest");
    } else {
      return;
    }
  });

  ///print results of all functions in the tasks
  print(sumOfNumbers);
  print("people who are allowed $allowedVisitors");
  print(firstOdd([2, 4, 6, 8, 10]));
}
