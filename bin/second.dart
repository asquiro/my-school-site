class Person extends WishList {
  String? name;
  int? age;
  String? userListName;
  List<WishList>? myList = [];
  Person({this.name, this.age, this.userListName, this.myList});
  String itemDetails() {
    return 'Details: username: $userListName, age: $age, wishList: $myList';
  }
}

class WishList {
  String? itemName;
  num? itemPrice;
  int? itemQuantity;
  WishList({this.itemName, this.itemPrice, this.itemQuantity});

  @override
  String toString() {
    return 'itemName $itemName, itemPrice $itemPrice, itemQuantity: $itemQuantity';
  }
}
