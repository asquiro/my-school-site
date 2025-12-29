import 'dart:async';
import 'dart:io';

import 'user_file.dart';
import 'second.dart';

// // // // import 'dart:io';
// // // //
// // // void main() {
// // //   registerStudent();
// // // }
// // //
// // // void registerStudent() {
// // //   List<String> studentNames = [];
// // //   List<int> studentScores = [];
// // //   print('How many Number of Students do you want to Add:');
// // //   int? numberOfStudent = int.tryParse(stdin.readLineSync()!);
// // //   for (int i = 0; i < numberOfStudent!; i++) {
// // //     print('enter student ${i + 1} name:');
// // //     String name = stdin.readLineSync()!;
// // //     print('Enter Students ${i + 1} Scores:');
// // //     int? scores = int.tryParse(stdin.readLineSync()!);
// // //     studentNames.add(name);
// // //     studentScores.add(scores!);
// // //   }
// // //   print('Do you Want to Edit:');
// // //   String answer = stdin.readLineSync()!;
// // //
// // //   if (answer.toLowerCase() == 'Yes'.toLowerCase()) {
// // //     addNamesAndScores(nameList: studentNames);
// // //   } else if (answer.toLowerCase() == 'No'.toLowerCase()) {
// // //     displayNames(myList: studentNames);
// // //   } else {
// // //     print('Names doesnt exist');
// // //   }
// // // }
// // //
// // // void addNamesAndScores({required List<String> nameList}) {
// // //   if (nameList.isNotEmpty) {
// // //     print('What name do you intend to edit:');
// // //     String nameToEdit = stdin.readLineSync()!;
// // //     if (nameList.contains(nameToEdit)) {
// // //       final index = nameList.indexOf(nameToEdit);
// // //       print('Enter the new name to  replaced $index:');
// // //       String valueName = stdin.readLineSync()!;
// // //       //nameList.insert(index, valueName);
// // //       nameList[index] = valueName;
// // //     } else {
// // //       print("$nameToEdit is invalid");
// // //     }
// // //   }
// // // }
// // //
// // // void displayNames({required List<String> myList}) {
// // //   print(myList);
// // // }
// //
// // // import 'dart:io';
// // //
// // // enum MyAccount { accountCreation, deposit, withdrawal, transfer }
// // //
// // // List<dynamic> myAccountDetails = [];
// // // void main() {
// // // final myMultiplier = addMultiplier(4);
// // // print(myMultiplier(2));
// // // int sum = 0;
// // // for (var i = 0; i <= 5; i++) {
// // //   sum += i;
// // //   print(sum);
// // //
// // //   final myF = myFunc();
// // //   print(myF());
// // // const myUser = User(id: 4, name: 'Peter');
// // // // final user = User.anonymous();
// // // print(myUser);
// //
// // // final user = {'id': 20, 'name': "Basyxl"};
// // // final myUser = User.fromJson(user);
// // // print(myUser);
// //
// // // Student Record
// // //   final student1 = Student(lastName: 'Asuquo', firstName: "Matthew", grade: 85);
// // //   final student2 = Student(lastName: 'Berni', firstName: "Eni", grade: 95);
// // //   print(student1);
// // //   print(student2);
// // //
// // // print(isPositve(7));
// //
// // //   final user = User(id: 5, name: 'Okon');
// // //   print(user.name);
// // //   print(user.id);
// // //
// // //   // Email Setter
// // //   final email = Email();
// // //   email.value = 'matthewasuquo123@gmil.com';
// // //   final getValue = email.value;
// // //   print(getValue);
// // //
// // //   final room = {"id": 20, "name": "Matthew"};
// // //   final myRoom = Room.fromJson(room);
// // //   print(myRoom);
// // // }
// //
// // // final house = House(id: 8, name: 'Peter');
// // // print(house);
// //
// // // final user = User();
// // // user.name = 'Matthew Bassey';
// // // user.id = 28;
// // // print(user);
// //
// // // final password = Password();
// // // password.isValid('Mattheww');
// // // // password.value = ' Okon';
// // // print(password);
// //
// // //   final myMaker = Maker.anonymous();
// // //   myMaker.name;
// // //   myMaker.id;
// // //   print(myMaker);
// // //
// // //
// // //   print('Welcome to MIBV Company');
// // //   final int initialAmount = 1000;
// // //   print("1.Account Creation    2.Withdrawal    3.Deposit  4.Transfer:");
// // //   String? choice = stdin.readLineSync();
// // //   if (choice == '1') {
// // //     accountCreation();
// // //   } else if (choice == '2') {
// // //     withdrawal();
// // //   } else if (choice == '3') {
// // //     deposit();
// // //   } else if (choice == '4') {
// // //     transfer();
// // //   } else {
// // //     print('Invalid Selection');
// // //   }
// // // }
// // //
// // // void accountCreation(
// // //   // required String name,
// // //   // required int age,
// // //   // required int phoneNumber,
// // //   // required String sex,
// // // ) {
// // // //   print('Enter Your name:');
// // //   String name = stdin.readLineSync()!;
// // //   myAccountDetails.add(name);
// // //   print('Enter phone Number');
// // //   int? phoneNumber = int.tryParse(stdin.readLineSync()!);
// // //   myAccountDetails.add(phoneNumber);
// // //   print('Enter your Age:');
// // //   int? sex = int.tryParse(stdin.readLineSync()!);
// // //   myAccountDetails.add(sex);
// // //   print('Enter your NIN no:');
// // //   int? nin = int.tryParse(stdin.readLineSync()!);
// // //   myAccountDetails.add(nin);
// // //
// // //   print('Account Created Successfully with details');
// // //   myAccountDetails.forEach(print);
// // //   print('Do you want to proceed to withdraw your account Creation bonus:');
// // //   String enterWithdraw = stdin.readLineSync()!;
// // //   if (enterWithdraw.toLowerCase() == 'Yes'.toLowerCase()) {
// // //     withdrawal();
// // //   } else if (enterWithdraw.toLowerCase() == 'No'.toLowerCase()) {
// // //     deposit();
// // //   } else {
// // //     print('Invalid Selection');
// // //   }
// // // }
// // //
// // // void deposit() {
// // //   print('Enter amount to deposit:');
// // //   int? amount = int.tryParse(stdin.readLineSync()!);
// // //   final int initialDeposit = 1000;
// // //   final newAmount = amount! + initialDeposit;
// // //   print(newAmount);
// // // }
// // //
// // // void withdrawal() {
// // //   int myDeposit = 1000;
// // //   print('Enter amount to Withdraw:');
// // //   int? amount = int.tryParse(stdin.readLineSync()!);
// // //   if (amount! < myDeposit) {
// // //     print('invalid Amount');
// // //   } else if (amount >= myDeposit) {
// // //     print('Proceed to Withdrawal');
// // //   } else {
// // //     print('Not an Amount');
// // //   }
// // // }
// // //
// // // void transfer() {
// // //   int initialDeposit = 1000;
// // //   print('Please Enter An Amount to Transfer:');
// // //   int? amount = int.tryParse(stdin.readLineSync()!);
// // //   if (amount! < initialDeposit) {
// // //     print('Cant Initiate Transfer, Amount is Less that Balance');
// // //   } else if (amount >= initialDeposit) {
// // //     print('Proceed to Transfer');
// // //   }
// // // }
// // //
// // // Function addMultiplier(num multiplier) {
// // //   return (num value) {
// // //     return value * multiplier;
// // //   };
// // // }
// // //
// // // Function myFunc() {
// // //   var counter = 0;
// // //   final myFc = () {
// // //     counter += 1;
// // //     return counter;
// // //   };
// // //   return myFc;
// // // }
// //
// // // class User {
// // //   int id = 0;
// // //   String name = '';
// // //   @override
// // //   String toString() {
// // //     return 'User(id: $id, name: $name)';
// // //   }
// // // }
// //
// // // class Password {
// // //   String value = '';
// // //   @override
// // //   String toString() {
// // //     return 'Password(value: $value)';
// // //   }
// // //
// // //   bool isValid(String value) {
// // //     if (value.length > 8) {
// // //       return true;
// // //       //  value = 'true';
// // //     }
// // //     return false;
// // //   }
// // // }
// //
// // // class People {
// // //   People(int id, String name) {
// // //     this.name = name;
// // //     this.id = id;
// // //   }
// // //   String name = '';
// // //   int id = 0;
// // //
// // // }
// //
// // // class Maker{
// // //   Maker({this.id = 0, this.name = 'Matthew'});
// // //
// // //   Maker.anonymous(): this();
// // //   String name;
// // //   int id;
// // //   String toString(){
// // //     return 'Maker(id: $id, name: $name)';
// // //   }
// // // }
// // //
// // // class User {
// // //  const User({int id = 0, String name = 'Matthew'})
// // //     :
// // //       assert(id > 0),
// // //       _id = id,
// // //       _name = name;
// // //
// // //    const User.anonymous(): this ();
// // //   final String _name;
// // //   final int _id;
// // //   @override
// // //   String toString() {
// // //     return 'User(id: $_id, name: $_name)';
// // //   }
// // // }
// //
// // // class User {
// // //   int id;
// // //   String name;
// // //   User({required this.id, required this.name});
// // //
// // //   factory User.fromJson(Map<String, Object> json) {
// // //     final userId = json["id"] as int;
// // //     final userName = json["name"] as String;
// // //     return User(id: userId, name: userName);
// // //   }
// // //   @override
// // //   String toString() {
// // //     return 'User(id: $id, name: $name)';
// // //   }
// // // }
// //
// // // class User {
// // //   final String _name;
// // //   final int _id;
// // //
// // //   String get name => _name;
// // //   int get id => _id;
// // //   User({int id = 0, String name = 'Foxling'})
// // //     : assert(id > 1),
// // //       assert(name.isNotEmpty),
// // //       _id = id,
// // //       _name = name;
// // //   String toJson() {
// // //     return '{"id": $id, "name": $name}';
// // //   }
// // //
// // //   @override
// // //   String toString() {
// // //     return 'User(id: $id, name: $name)';
// // //   }
// // // }
// // //
// // // class Email {
// // //   var _emailAddress = '';
// // //   String get value => _emailAddress;
// // //   set value(String address) {
// // //     _emailAddress = address;
// // //   }
// // // }
// // //
// // // class Room {
// // //   int id;
// // //   String name;
// // //   Room({required this.id, required this.name});
// // //   static Room fromJson(Map<String, Object> json) {
// // //     final userId = json['id'] as int;
// // //     final userName = json['name'] as String;
// // //     return Room(name: userName, id: userId);
// // //   }
// // //
// // //   String toJson() {
// // //     return '{id: $id, name: $name}';
// // //   }
// // //
// // //   @override
// // //   String toString() {
// // //     return 'Room(id:$id, name:$name)';
// // //   }
// // // }
// // //
// // // class Student {
// // //    final String firstName;
// // //    final String lastName;
// // //   final int grade;
// // //   Student({
// // //     required this.lastName,
// // //     required this.firstName,
// // //     required this.grade,
// // //   });
// // //
// // //   String toJson() {
// // //     return 'Student{firstNam: $firstName, secondNam: $lastName, grade: $grade,}';
// // //   }
// // //
// // //   @override
// // //   String toString() {
// // //     return 'Student(firstNam: $firstName, lastNam: $lastName, grad: $grade,)';
// // //   }
// // // }
// // //
// // // bool isPositve(int anInteger){
// // //   return !anInteger.isNegative;
// // // }
// //
// // // import 'dart:io';
// // //
// // // void main() {
// // //   List<int> scoreList = myList();
// // //   aveScores(scoreList);
// // //   highestScore(scoreList);
// // //   lowestScore(scoreList);
// // // }
// // //
// // // List<int> myList() {
// // //   List<String> studData = [];
// // //   List<int> scoresList = [];
// // //   print('How many students do you want to add:');
// // //   int? noOfStud = int.tryParse(stdin.readLineSync()!);
// // //   for (var i = 0; i < noOfStud!; i++) {
// // //     print('Enter Student ${i + 1} Name:');
// // //     String name = stdin.readLineSync()!;
// // //     studData.add(name);
// // //     print('Enter Your Reg.No: ');
// // //     String regNo = stdin.readLineSync()!.toUpperCase();
// // //     studData.add(regNo);
// // //     print('Enter your Course');
// // //     String course = stdin.readLineSync()!;
// // //     studData.add(course);
// // //     print('Enter student Scores:');
// // //     int? score = int.tryParse(stdin.readLineSync()!);
// // //     scoresList.add(score!);
// // //   }
// // //   for (var studentData in studData) {
// // //     print(studentData);
// // //
// // //   }
// // //   return scoresList;
// // // }
// // //
// // // void aveScores(List<int> scoreList) {
// // //   int average = 0;
// // //   for (var score in scoreList) {
// // //     average += score;
// // //     double myAver = average / scoreList.length;
// // //     print('Average score is $myAver');
// // //   }
// // // }
// // //
// // // void highestScore(List<int> scoreList) {
// // //   int highest = scoreList[0];
// // //   for (var score in scoreList) {
// // //     if (score > highest) {
// // //       highest = score;
// // //     }
// // //   }
// // //   print('highest score is $highest');
// // // }
// // //
// // // void lowestScore(List<int> scoreList) {
// // //   int lowest = scoreList[0];
// // //   for (var score in scoreList) {
// // //     if (score < lowest) {
// // //       lowest = score;
// // //     }
// // //   }
// // //   print('lowest is $lowest');
// // // }
// // import 'dart:io';
// //
// // void main() {
// //   final myItem = addList();
// //   // print(myItem);
// //   print('Do you Have any services to perform?:');
// //   String answer = stdin.readLineSync()!;
// //   if (answer == 'yes'.toLowerCase()) {
// //     print(
// //       'Select the best option to make changes to your items: '
// //       '\n"1": addList, "2": editListItem, \n'
// //       '"3": updateList, "4": removeItem, "5": addItem,',
// //     );
// //   } else if (answer == 'No'.toLowerCase()) {
// //     print('Thank you for shopping with us');
// //   }
// //
// //   String itemMenu = stdin.readLineSync()!;
// //   if (itemMenu == '1') {
// //     addItem(myItem);
// //   } else if (itemMenu == '2') {
// //     editListItem(myItem);
// //   } else if (itemMenu == '3') {
// //     updateItem(myItem);
// //   } else if (itemMenu == '4') {
// //     removeItem(myItem);
// //   } else {
// //     print('invalid selection');
// //   }
// // }
// //
// // List<String> addList() {
// //   List<String> listItem = [];
// //
// //   for (int i = 0; i < 6; i++) {
// //     print('Enter  item ${i + 1} in your products list: ');
// //     String item = stdin.readLineSync()!.toLowerCase();
// //
// //     listItem.add(item);
// //   }
// //   print('Your items in the list are');
// //   for (var item in listItem) {
// //     print(item);
// //   }
// //   return listItem;
// // }
// //
// // void editListItem(List<String> listItem) {
// //   print('Enter item you want to to edit:');
// //   String item = stdin.readLineSync()!;
// //   int myItem = listItem.indexOf(item);
// //   if (myItem == -1) {
// //     print('invalid item selected');
// //     return;
// //   } else if (myItem == myItem) {
// //     print('Enter new name for the item:');
// //     String newName = stdin.readLineSync()!;
// //     listItem[myItem] = newName;
// //     print('your new items is:');
// //     for (var item in listItem) {
// //       print(item);
// //     }
// //   }
// //   print('is Your list up-to-date now:');
// //   String updatedList = stdin.readLineSync()!.toLowerCase();
// //   if (updatedList == 'Yes'.toLowerCase()) {
// //     updateItem(listItem);
// //   } else if (updatedList == 'no'.toLowerCase()) {
// //     print(
// //       'Select the best option to make changes to your items: '
// //       '\n"1": addItem, "2": editListItem, \n'
// //       '"3": updateList, "4": removeItem,',
// //     );
// //     String option = stdin.readLineSync()!;
// //     if (option == '1') {
// //       addItem(listItem);
// //     } else if (option == '2') {
// //       editListItem(listItem);
// //     } else if (option == '3') {
// //       updateItem(listItem);
// //     } else if (option == '4') {
// //       removeItem(listItem);
// //     } else {
// //       print('invalid selection');
// //     }
// //   } else {
// //     print('Thank you for shopping with us');
// //   }
// // }
// //
// // void updateItem(List<String> itemList) {
// //   print('Your new list is:');
// //   int item = itemList.length;
// //   if (item == itemList.length) {
// //     print(itemList);
// //   }
// // }
// //
// // void removeItem(List<String> itemList) {
// //   print('Enter item you want to remove');
// //   String items = stdin.readLineSync()!;
// //   if (itemList.contains(items)) {
// //     itemList.remove(items);
// //   } else {
// //     print('Item Not found, check your spelling:');
// //     String item = stdin.readLineSync()!;
// //     if (itemList.contains(item)) {
// //       print('');
// //       itemList.remove(item);
// //       print('your updated item is:');
// //       itemList.forEach(print);
// //
// //       print('');
// //     }
// //     print('Done editing the list?:');
// //     String doneEdit = stdin.readLineSync()!;
// //     if (doneEdit == 'yes'.toLowerCase()) {
// //       print(itemList);
// //     } else if (doneEdit == 'no'.toLowerCase()) {
// //       print(
// //         'You can still edit your list; click on the options below to make changes',
// //       );
// //       print(
// //         'Select the best option to make changes to your items: '
// //         '\n"1": addItem, "2": editListItem, \n'
// //         '"3": updateList, "4": removeItem,',
// //       );
// //     } else {
// //       print('Thank you for shopping with us');
// //     }
// //   }
// // }
// //
// // void addItem(List<String> itemList) {
// //   print('Enter new item to your list:');
// //   String newItem = stdin.readLineSync()!;
// //   if (itemList.contains(newItem)) {
// //     print('item already exist');
// //   } else {
// //     itemList.add(newItem);
// //     print('');
// //     print('new item added to the list is:');
// //   }
// //   itemList.forEach(print);
// // }
// //
// //
// //
// //
// // import 'dart:io';
// //
// // void main() {
// //   printDetails();
// // }
// //
// // class Students {
// //   String? name;
// //   String? regNo;
// //   num? cgpa;
// //
// //   Students({this.name, this.regNo, this.cgpa});
// //
// //   //   String toJson() {
// //   //     return '{name: $name, regNo: $regNo, cgpa: $cgpa}';
// //   //   }
// //   //
// //
// //   String displayStudents() {
// //     return 'name$name, regNo $regNo, cgpa $cgpa';
// //   }
// // }
// //
// // List<Students> studentDetails() {
// //   List<Students> studDetails = [];
// //   print('Welcome to Computer Science');
// //   for (int i = 0; i < 2; i++) {
// //     print('');
// //     print('Enter ${i + 1} students name:');
// //     String name = stdin.readLineSync()!;
// //     print('Enter student regNo:');
// //     String regNo = stdin.readLineSync()!;
// //     print('enter Student CGPA:');
// //     num? cgpa = num.tryParse(stdin.readLineSync()!);
// //     var student = Students(name: name, regNo: regNo, cgpa: cgpa);
// //     studDetails.add(student);
// //     student.displayStudents();
// //   }
// //   return studDetails;
// // }
// //
// //
// // void printDetails(){
// //   List<Students> studDetails = studentDetails();
// //   for(var student in studDetails){
// //     print('your student details are: ${student.displayStudents()}');
// //   }
// //
// // }
//
// import 'dart:io';
//
// List<User> userDetails = [];
// void main() {
//   print('Welcome to MIBV bank');
//   print('');
//   print('Select the menu to proceed');
//   print(
//     '"1": accountCreation,'
//     ' "2": withdrawal, '
//     '"3": checkBalance, '
//     '"4": deposit, '
//     '"5": transfer:',
//   );
//
//   String? input = (stdin.readLineSync()!);
//   final user = User();
//   if (input == '1') {
//     accountCreation();
//   } else if (input == '2') {
//     withdrawal(user.initialAmount);
//   } else if (input == '3') {
//     final user = User();
//     checkBalance(user.initialAmount);
//   } else if (input == '4') {
//     final user = User();
//     deposit(user.initialAmount);
//   } else if (input == '5') {
//     transfer();
//   } else {
//     print('invalid selection');
//   }
// }
//
// List<User> accountCreation() {
//   print('Enter full name:');
//   String userName = stdin.readLineSync()!;
//   print('enter age:');
//   int? userAge = int.tryParse(stdin.readLineSync()!);
//   print('enter BVN:');
//   String userBvn = stdin.readLineSync()!;
//   print('enter phone number:');
//   String userPhone = stdin.readLineSync()!;
//   print('enter NIN:');
//   String userNin = stdin.readLineSync()!;
//   print('create four digit pin');
//   int? userPin = int.tryParse(stdin.readLineSync()!);
//   final user = User(
//     name: userName,
//     age: userAge,
//     bvn: userBvn,
//     phoneNumber: userPhone,
//     nin: userNin,
//     pin: userPin,
//   );
//   userDetails.add(user);
//   print(user.outputUser());
//   print('');
//   print('Proceed to check your balance and make withdrawal if you wish');
//   print('');
//   print('select the options best suitable for you:');
//   print(
//     '"1": accountCreation,'
//     ' "2": withdrawal, '
//     '"3": checkBalance, '
//     '"4": deposit, '
//     '"5": transfer:',
//   );
//
//   String? input = (stdin.readLineSync()!);
//   if (input == '1') {
//     accountCreation();
//   } else if (input == '2') {
//     withdrawal(user.initialAmount);
//   } else if (input == '3') {
//     final user = User();
//     checkBalance(user.initialAmount);
//   } else if (input == '4') {
//     deposit(user.initialAmount);
//   } else if (input == '5') {
//     transfer();
//   } else {
//     print('invalid selection');
//   }
//   return userDetails;
// }
//
// void withdrawal(num amount) {
//   final user = User();
//   final myListDetails = userDetails;
//   List<num> myBalance = [];
//   print('enter your pin to withdraw:');
//   int? myPin = int.tryParse(stdin.readLineSync()!);
//   final userPin = userDetails.firstWhere(
//     (u) => u.pin == myPin,
//     orElse: () {
//       print('invalid pin');
//       throw Exception('invalid pin');
//     },
//   );
//   print('enter an amount you want to withdraw:');
//   int? inputAmount = int.tryParse(stdin.readLineSync()!);
//   if (inputAmount! < userPin.initialAmount) {
//     print('Enter destination account:');
//     String myAc = stdin.readLineSync()!;
//     print('you are about to initiate a transfer of $inputAmount to $myAc');
//     print('');
//     print('Enter you transfer pin to complete your transaction:');
//     print('');
//     int? transferPin = int.tryParse(stdin.readLineSync()!);
//     myListDetails.firstWhere(
//       (pinCode) => pinCode.pin == transferPin,
//       orElse: () {
//         print('invalid pin');
//         print('seems your pin is not correct, Reenter pin');
//         int? rePin = int.tryParse(stdin.readLineSync()!);
//         myListDetails.firstWhere((pin)=> pin.pin == rePin,);
//         print('transfer successful');
//         return user;
//       },
//     );
//   } else if (inputAmount > userPin.initialAmount) {
//     print('invalid amount');
//     print('please reenter a valid amount:');
//     int? inputAmoun = int.tryParse(stdin.readLineSync()!);
//     if (inputAmoun! < userPin.initialAmount) {
//       print('proceed to withdraw');
//     }
//   }
//   print('you have successfully withdrawn \$$inputAmount from your wallet');
//   final myUser = userPin.initialAmount - inputAmount;
//   myBalance.add(myUser);
//   print('Done withdrawing or Still want to continue?');
//   String answer = stdin.readLineSync()!;
//   if (answer == 'yes'.toLowerCase()) {
//     print('select the options that best suit your services:');
//     print(
//       '"1": accountCreation,'
//       ' "2": withdrawal, '
//       '"3": checkBalance, '
//       '"4": deposit, '
//       '"5": transfer:',
//     );
//
//     String? input = (stdin.readLineSync()!);
//     if (input == '1') {
//       accountCreation();
//     } else if (input == '2') {
//       withdrawal(userPin.initialAmount);
//     } else if (input == '3') {
//       final user = User();
//       checkBalance(user.initialAmount);
//     } else if (input == '4') {
//       deposit(userPin.initialAmount);
//     } else if (input == '5') {
//       transfer();
//     } else {
//       print('invalid selection');
//     }
//   } else if (answer == 'no'.toLowerCase()) {
//     print('thank you for using our services');
//   }
// }
//
// void checkBalance(num myBalance) {
//   final user = User();
//   print('Enter your pin to check balance');
//   int? myPin = int.tryParse(stdin.readLineSync()!);
//   final myBal = userDetails.firstWhere(
//     (u) => u.pin == myPin,
//     orElse: () {
//       print('invalid pin');
//
//       throw Exception('you don not have an account, kindly create account');
//     },
//   );
//   print('my balance is ${user.initialAmount}');
//   print('');
//   print('done using your bank services?');
//   String answer = stdin.readLineSync()!;
//   if (answer == 'Yes'.toLowerCase()) {
//     print('select the options that best suit your services:');
//     print(
//       '"1": accountCreation,'
//       ' "2": withdrawal, '
//       '"3": checkBalance, '
//       '"4": deposit, '
//       '"5": transfer:',
//     );
//
//     if (answer == '1') {
//       accountCreation();
//     } else if (answer == '2') {
//       withdrawal(myBal.initialAmount);
//     } else if (answer == '3') {
//       final user = User();
//       checkBalance(user.initialAmount);
//     } else if (answer == '4') {
//       deposit(myBal.initialAmount);
//     } else if (answer == '5') {
//       transfer();
//     } else {
//       print('invalid selection');
//     }
//   } else if (answer == 'no'.toLowerCase()) {
//     print('thank you for using our services');
//   }
// }
//
// void deposit(num deposit) {
//   final user = User();
//   print('Enter amount you want to deposit:');
//   int? depositAmount = int.tryParse(stdin.readLineSync()!);
//   var myDep = depositAmount!;
//   print('you have successfully added $myDep to your account');
//   print('your balance now is: ${user.initialAmount + myDep}');
// }
//
// void transfer() {
//   final user = User();
//   print('Enter amount you want to transfer:');
//   int? transferAmount = int.tryParse(stdin.readLineSync()!);
//
//   if (transferAmount! > user.initialAmount) {
//     print('Insufficient deposit');
//   } else if (transferAmount < user.initialAmount) {
//     print('enter your pin to transfer');
//     int? pinNo = int.tryParse(stdin.readLineSync()!);
//     final pin = userDetails.firstWhere(
//       (u) => u.pin == pinNo,
//       orElse: () {
//         print('invalid pin');
//         print('the pin you entered is not valid, kindly create an account:');
//         print('');
//         print('Do you want to create an account?');
//         String accAnswer = stdin.readLineSync()!;
//         if (accAnswer == 'Yes'.toLowerCase()) {
//           print('select the options that best suit your services:');
//           print(
//             '"1": accountCreation,'
//             ' "2": withdrawal, '
//             '"3": checkBalance, '
//             '"4": deposit, '
//             '"5": transfer:',
//           );
//           String myInput = stdin.readLineSync()!;
//           if (myInput == '1') {
//             accountCreation();
//           } else if (myInput == '2') {
//             withdrawal(user.initialAmount);
//           } else if (myInput == '3') {
//             deposit(user.initialAmount);
//           } else if (myInput == '4') {
//             transfer();
//           }
//         } else if (accAnswer == 'no'.toLowerCase()) {
//           print('thank you for using our services');
//         }
//         return user;
//       },
//     );
//     print('Enter destination account no:');
//     int? desAcc = int.tryParse(stdin.readLineSync()!);
//     print('you have successfully transfered \$$transferAmount to $desAcc');
//   } else {
//     print('invalid transfer amount');
//   }
// }
//
// class User {
//   String? name;
//   int? age;
//   String? bvn;
//   String? phoneNumber;
//   num initialAmount;
//   String? nin;
//   int? pin;
//   User({
//     this.name,
//     this.age,
//     this.bvn,
//     this.phoneNumber,
//     this.initialAmount = 1000,
//     this.nin,
//     this.pin,
//   });
//   String outputUser() {
//     return 'my details are: name: $name, age: $age, bvn: $bvn,\n'
//         ' phoneNo: $phoneNumber, initialDeposit: $initialAmount, nin: $nin,';
//   }
// }
// import 'dart:io';
// import 'dart:math';
//
// List<StudentDetails> myList = [];
// void main() {
//   print('how many number of student do you want:');
//   getStudDet();
// }
//
// class StudentDetails {
//   String? name;
//   String? clas;
//   int? age;
//   String? feeStatus;
//   StudentDetails({this.name, this.clas, this.age, this.feeStatus});
//
//   String outputStudent() {
//     return 'student details are: name: $name, age: $age, class: $clas and fees status: $feeStatus';
//   }
//
//   String displayStatus() {
//     return 'students fee status are: name: $name, feeStatus: $feeStatus';
//   }
// }
//
// List<StudentDetails> getStudDet() {
//   int? noOfStud = int.tryParse(stdin.readLineSync()!);
//
//   for (var i = 0; i < noOfStud!; i++) {
//     print('Enter student ${i + 1} name:');
//     String name = stdin.readLineSync()!;
//     print('Enter student age:');
//     int? age = int.tryParse(stdin.readLineSync()!);
//     print('Enter class of student:');
//     String clas = stdin.readLineSync()!;
//     print('your fees status?');
//     String? feeStat = stdin.readLineSync()!;
//
//     final studList = StudentDetails(
//       name: name,
//       age: age,
//       clas: clas,
//       feeStatus: feeStat,
//     );
//     myList.add(studList);
//   }
//   getList(myList);
//   print('');
//   print('want to see the list of unpaid student?');
//   print('');
//   String userInput = stdin.readLineSync()!;
//   if (userInput.toLowerCase() == 'yes') {
//     //  eligibleStud(myList);
//     print('');
//     printUnPaidNames(myList);
//     // elitVotz(myList);
//     print('');
//     print('do you need the list of paid students');
//     String paidStud = stdin.readLineSync()!;
//     if (paidStud == 'yes') {
//       printPaidNames(myList);
//     }
//     print('');
//     print(
//       'students who have paid can now vote while those who havent paid will not be allow to vote. '
//       '\ncheck to see the electoral guideline',
//     );
//   } else {
//     print('thank you for you answer');
//   }
//   return myList;
// }
//
// void getList(List<StudentDetails> studList) {
//   for (var student in studList) {
//     print(student.outputStudent());
//   }
// }
//
//
//
// List<StudentDetails> elitVotz(List<StudentDetails> studDetails) {
//   List<StudentDetails> elitList = studDetails
//       .where((fee) => fee.feeStatus == 'paid')
//       .toList();
//   return elitList;
// }
//
// // not paid function
// List<StudentDetails> unEligibleVt(List<StudentDetails> studDetails) {
//   List<StudentDetails> unPaidList = studDetails
//       .where((fee) => fee.feeStatus == 'not paid')
//       .toList();
//   return unPaidList;
// }
//
// void printPaidNames(List<StudentDetails> list){
//   final myNewList = unEligibleVt(list);
//   for(var newList in myNewList){
//     print((newList.displayStatus()));
//   }
// }
//
//
// void printUnPaidNames(List<StudentDetails> list){
//   final myUnPaidList = elitVotz(list);
//   for(var list in myUnPaidList){
//     print(list.displayStatus());
//   }
// }
List<Student> studentList = [];
List<Teacher> teacherList = [];

void main() {
  print('select your options to get started:');
  print('');
  print('1: Register Student, 2: Enrol teachers, 3: vote your best teacher:');
  String input = stdin.readLineSync()!;
  if (input == '1') {
    print('What no of student do you need for the vote?:');
    print('');
    studDetails(studentList);
  } else if (input == '2') {
    teacherReg(teacherList);
  } else if (input == '3') {
    //
  }

  studDetails(studentList);
}

List<Person> studDetails(List<Student> studentDetails) {
  int? input = int.tryParse(stdin.readLineSync()!);
  for (var i = 0; i < input!; i++) {
    final student = Student();
    print('enter student ${i + 1} name:');
    String? studName = stdin.readLineSync()!;
    student.name = studName;
    print('enter RegNo:');
    String? regNo = stdin.readLineSync()!;
    student.regN = regNo;
    print('enter Age:');
    int? studAge = int.tryParse(stdin.readLineSync()!);
    student.age = studAge!;
    print('enter religion');
    String religion = stdin.readLineSync()!;
    student.religion = religion;
    print('enter sex');
    String studSex = stdin.readLineSync()!;
    student.sex = studSex;
    print('enter faculty:');
    String faculty = stdin.readLineSync()!;
    student.faculty = faculty;
    print('enter your course of study:');
    String course = stdin.readLineSync()!;
    student.course = course;
    studentDetails.add(student);
  }
  outPutStud(studentDetails);
  print('');
  print('2: Register teachers');
  String answer = stdin.readLineSync()!;
  if (answer == '2') {
    teacherReg(teacherList);
  } else {
    print('invalid selection');
  }
  print('enter 3: vote your best teacher:');
  String data = stdin.readLineSync()!;
  if (data == '3') {
    voteTeachers(teacherList, studentList);
  }
  return studentList;
}

void outPutStud(List<Student> studentList) {
  for (var student in studentList) {
    print(student.displayStud());
  }
}

List<Teacher> teacherReg(List<Teacher> teachDetails) {
  for (var i = 0; i < 4; i++) {
    print('');
    final teacher = Teacher();
    print('teacher ${i + 1} enter your  name:');
    String teacName = stdin.readLineSync()!;
    teacher.name = teacName;
    print('enter age:');
    int? teacAge = int.tryParse(stdin.readLineSync()!);
    teacher.age = teacAge!;
    print('What is your gender?');
    String teacGend = stdin.readLineSync()!;
    teacher.sex = teacGend;
    print('enter religion:');
    String teachRel = stdin.readLineSync()!;
    teacher.religion = teachRel;
    print('enter course taught by teacher:');
    String teacCour = stdin.readLineSync()!;
    teacher.courseAllocation = teacCour;
    print('enter your academic qualification');
    String teachQual = stdin.readLineSync()!;
    teacher.academicQual = teachQual;
    teacherList.add(teacher);
  }
  displayTeacher(teacherList);
  print('');

  print('');
  return teacherList;
}

void displayTeacher(List<Teacher> teacherList) {
  for (var teacher in teacherList) {
    print(teacher.displayTeacher());
  }
}

List<Teacher> voteTeachers(
  List<Teacher> teacherList,
  List<Student> studentList,
) {
  List<Teacher> votedTeacher = [];
  List<int> studentVote = [];
  for (var i = 0; i < 5; i++) {
    print('Enter your name as student to vote:');
    String? studName = stdin.readLineSync()!.trim();
    Student? student;
    try {
      student = studentList.firstWhere((s) {
        return s.name == studName;
      });
      if (student.voted == true) {
        print('${student.name} has voted already}');
      }
    } catch (e) {
      print('invalid student name');
    }
    print("Enter you favourite teacher's name");
    String? teacherName = stdin.readLineSync()!;
    Teacher? teacher;
    try {
      teacher = teacherList.firstWhere((t) {
        return t.name == teacherName;
      });
      teacher.vote += 1;
      studentVote.add(teacher.vote);
    } catch (e) {
      print('invalid teacher name');
      return votedTeacher;
    }
    votedTeacher.add(teacher);
    print('${student?.name} has voted for ${teacher.name}');
    student?.voted = true;
  }
  electionResult(teacherList);
  return votedTeacher;
}

void electionResult(List<Teacher> teacherList) {
  if (teacherList.isEmpty) {
    print('no teacher is available');
  }
  voteCount(teacherList);
}

void voteCount(List<Teacher> teacherList) {
  teacherList.sort((a, b) => b.vote.compareTo(a.vote));
  final sortedTeacherList = teacherList.take(3).toList();
  for (var vote in sortedTeacherList) {
    print(vote.voteResult());
  }
}

