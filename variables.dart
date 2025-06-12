// main function is the entry point of every Dart program.
void main() {
  print("--- Part 1: Data Types Implementation ---\n");

  // 1.1 Define Variables
  print("1.1) Defining Variables:");
  int myInteger = 42;
  double myDouble = 3.14159;
  String myString = "Hello, Dart!";
  bool isDartFun = true;
  List<String> fruitList = ["Apple", "Banana", "Cherry"];

  print("Integer: $myInteger");
  print("Double: $myDouble");
  print("String: '$myString'");
  print("Boolean: $isDartFun");
  print("List: $fruitList\n");

  // 1.2 Type Conversion
  print("1.2) Type Conversion Examples:");
  String stringNum = "123";
  int sampleInt = 25;

  // Convert String to int and double
  // We use tryParse which returns null on failure, it's safer than parse().
  int? parsedInt = int.tryParse(stringNum);
  double? parsedDoubleFromString = double.tryParse(stringNum);
  print("String '$stringNum' converted to int: $parsedInt");
  print("String '$stringNum' converted to double: $parsedDoubleFromString");

  // Convert int to String and double
  String intAsString = sampleInt.toString();
  double intAsDouble = sampleInt.toDouble();
  print("Int $sampleInt converted to String: '$intAsString'");
  print("Int $sampleInt converted to double: $intAsDouble\n");

  // 1.3 Function for Conversion
  print("1.3) Function for Conversion:");
  convertAndDisplay("2024");
  convertAndDisplay("99.9");
  convertAndDisplay("not a number"); // Example with invalid input
  
  print("\n--- Part 2: Control Flow ---\n");

  // 2.1 If-Else Statements
  print("2.1) If-Else Statements:");
  // Check if a number is positive, negative, or zero
  int numberToCheck = -10;
  if (numberToCheck > 0) {
    print("$numberToCheck is positive.");
  } else if (numberToCheck < 0) {
    print("$numberToCheck is negative.");
  } else {
    print("$numberToCheck is zero.");
  }
  
  // Check if a person is eligible to vote
  int age = 18;
  if (age >= 18) {
    print("A person of age $age is eligible to vote.");
  } else {
    print("A person of age $age is NOT eligible to vote.");
  }
  print(""); // for spacing

  // 2.2 Switch Case
  print("2.2) Switch Case Statement:");
  int dayOfWeek = 4;
  switch (dayOfWeek) {
    case 1:
      print("Day $dayOfWeek is Monday.");
      break;
    case 2:
      print("Day $dayOfWeek is Tuesday.");
      break;
    case 3:
      print("Day $dayOfWeek is Wednesday.");
      break;
    case 4:
      print("Day $dayOfWeek is Thursday.");
      break;
    case 5:
      print("Day $dayOfWeek is Friday.");
      break;
    case 6:
      print("Day $dayOfWeek is Saturday.");
      break;
    case 7:
      print("Day $dayOfWeek is Sunday.");
      break;
    default:
      print("Day $dayOfWeek is an invalid day of the week.");
  }
  print(""); // for spacing

  // 2.3 Loops
  print("2.3) Loops:");
  // For loop from 1 to 10
  print("For loop (1 to 10):");
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
  print("");

  // While loop from 10 to 1
  print("While loop (10 to 1):");
  int j = 10;
  while (j >= 1) {
    print(j);
    j--; // Decrement the counter
  }
  print("");

  // Do-While loop from 1 to 5
  print("Do-While loop (1 to 5):");
  int k = 1;
  do {
    print(k);
    k++; // Increment the counter
  } while (k <= 5);
  
  print("\n--- Part 3: Combining Data Types and Control Flow ---\n");
  
  // 3.1 Complex Example
  print("3.1) Complex Example:");
  List<int> numbersList = [5, 12, 99, 1, 150, 8, 75, 200];

  // Use a for-in loop to iterate through the list
  for (int number in numbersList) {
    print("\nProcessing number: $number");

    // Use if-else to check if the number is even or odd
    if (number % 2 == 0) {
      print("  - It is an even number.");
    } else {
      print("  - It is an odd number.");
    }

    // Use if-else if-else to determine the category for the switch
    // This is a common pattern when a switch needs to handle ranges.
    String category;
    if (number >= 1 && number <= 10) {
      category = "small";
    } else if (number >= 11 && number <= 100) {
      category = "medium";
    } else if (number > 100) {
      category = "large";
    } else {
      category = "uncategorized";
    }
    
    // Use a switch statement to print the determined category
    switch (category) {
      case "small":
        print("  - Category: Small (1-10)");
        break;
      case "medium":
        print("  - Category: Medium (11-100)");
        break;
      case "large":
        print("  - Category: Large (101+)");
        break;
      default:
        print("  - Category: Uncategorized");
    }
  }
}

/// Function that takes a String, converts it to an int and double, and prints the results.
/// This function demonstrates safe parsing using `tryParse`.
void convertAndDisplay(String numberString) {
  print("Attempting to convert '$numberString':");

  // Attempt to convert to an integer
  int? intValue = int.tryParse(numberString);
  if (intValue != null) {
    print("  - As integer: $intValue");
  } else {
    print("  - Could not be converted to an integer.");
  }

  // Attempt to convert to a double
  double? doubleValue = double.tryParse(numberString);
  if (doubleValue != null) {
    print("  - As double: $doubleValue");
  } else {
    print("  - Could not be converted to a double.");
  }
}
