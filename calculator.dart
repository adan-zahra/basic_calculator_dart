//This is a basic calculator code for dart language
//import library for dart

import'dart:io';

//operations to perform on data 1 to 4
//add
double add(double a, double b)=>a+b;
//subtract
double subtract(double a, double b)=>a-b;
//multiply
double multiply(double a, double b)=>a*b;
//divide
double divide(double a, double b){
if (b == 0) {
//It will throw error as its part of exception handling
throw Exception("Division by zero (0) is not allowed!");
  }
return a / b;
}

//can also use this method if we won't use throw statements and condition of if above
//double divide(double a, double b)=>a/b;

//main function
void main() {

stdout.write("#-------CALCULATOR-------#");

stdout.write("\nEnter first number = ");
double num1 = double.parse(stdin.readLineSync()!);

stdout.write("Enter second number = ");
double num2 = double.parse(stdin.readLineSync()!);

print("\n#---Choose an operation:---#");
print("1. -Addition operation-");
print("2. -Subtraction operation-");
print("3. -Multiplication operation-");
print("4. -Division operation-");

stdout.write("\nEnter your choice of operation from (1 to 4): ");
int choice = int.parse(stdin.readLineSync()!);

double result;

// for exception handling use try catch throw
//#********-----try,catch,throw-----********#
// syntax with switch inside try

try {
    switch (choice) {
      case 1:
        result = add(num1, num2);
        print("\nResult: The *Addition* of two numbers is = $result");
        break;
      case 2:
        result = subtract(num1, num2);
        print("\nResult: The *Subtraction* of two numbers is = $result");
        break;
      case 3:
        result = multiply(num1, num2);
        print("\nResullt: The *Multiplication* of two numbers is = $result");
        break;
      case 4:
        result = divide(num1, num2);
        print("\nResult: The *Division* of two numbers is = $result");
        break;
      //default (it will show the default answer if it doesn't match any case)
      default:
        print("\n*Invalid choice entered! Please select choice from 1 to 4 options.*");
    }
}

  //using catch for exception handling
   catch (e) {
    //error handling
    print(e);
  }
}










