import 'dart:io';

import 'second.dart';

void main() {
// final myChar = 'abc';
// final codee = encode(myChar);
// print(codee);
//
//
// final myBird = Robins();
// myBird.fly();
// myBird.layEgg();
  getPersonDetails();


}

void getPersonDetails() {
  List<Person> myPersonDetails = [];
  print('your list details');
  int i = 0;
  while (i < 3) {
    print('Enter your name ${i + 1}:');
    String userName = stdin.readLineSync()!;
    print('Enter your age:');
    int? userAge = int.tryParse(stdin.readLineSync()!);
    print('Enter userName:');
    String userListName = stdin.readLineSync()!;
    print('how many no of products do you need?:');
    int? productNo = int.tryParse(stdin.readLineSync()!);
    List<WishList> myProduct = [];
    for (var j = 0; j < productNo!; j++) {
      print('enter product ${j + 1} name:');
      String itemName = stdin.readLineSync()!;
      print('enter product price:');
      num? itemPrice = num.tryParse(stdin.readLineSync()!);
      print('enter quantity needed:');
      int? itemQuantity = int.tryParse(stdin.readLineSync()!);
      myProduct.add(
        WishList(
          itemName: itemName,
          itemPrice: itemPrice,
          itemQuantity: itemQuantity,
        ),
      );
      myPersonDetails.add(
        Person(
          name: userName,
          age: userAge,
          userListName: userListName,
          myList: myProduct,
        ),
      );
    }
    i++;
  }
  for (var list in myPersonDetails) {
    print(list.itemDetails());
  }

  editList(myPersonDetails);
}

void editList(List<Person> personList) {
  print('do you want to edit your list?:');
  String input = stdin.readLineSync()!;
  if (input.toLowerCase() == 'yes') {
    Person? person;
    try {
      print('enter the username to edit product:');
      String myUserName = stdin.readLineSync()!;
       person = personList.firstWhere((u) => u.userListName == myUserName);
    } catch (e) {
      print('invalid username');
      return;
    }
    editProductList(personList);
  }
}

void editProductList(List<WishList> wishList) {
  if(wishList.isEmpty){
    print('wish list is empty');
    return;
  }
  print('enter the product name you want to edit:');
  String productName = stdin.readLineSync()!.trim().toLowerCase();
  int index = wishList.indexWhere((product) => product.itemName == productName);
  if (index != -1) {
    print('invalid product name');
    return;
  }
  print('product entered is $productName');
  for(var p in wishList){
    print('store product ${p.itemName}');
  }
  print('enter the new name your want:');
  String itemName = stdin.readLineSync()!;
  print('enter the new price you want:');
  num? itemPrice = int.tryParse(stdin.readLineSync()!);
  print('enter the new quantity you want:');
  int? itemQuantity = int.tryParse(stdin.readLineSync()!);
  if(itemQuantity == null){
    print('invalid quantity');
    return;
  }
  wishList[index].itemName = itemName;
  wishList[index].itemPrice = itemPrice;
  wishList[index].itemQuantity = itemQuantity;
  print('List successfully updated');
}
