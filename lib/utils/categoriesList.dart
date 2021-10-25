class Category {
  List id;
  String name;
  String imgUrl;

  Category({required this.id, required this.name, required this.imgUrl});
}

final vegetableCategory =
    Category(id: [0, 1], name: "Vegetables", imgUrl: "images/vegetables.svg");

final fruitsCategory =
    Category(id: [0, 2], name: "Fruits", imgUrl: "images/fruits.svg");

final meatCategory =
    Category(id: [0, 3], name: "Meat", imgUrl: "images/meat.svg");

final beverageCategory =
    Category(id: [0, 4], name: "Drinks", imgUrl: "images/soft-drink.svg");

final seaFoodCategory =
    Category(id: [0, 5], name: "Sea Food", imgUrl: "images/shrimp.svg");

final snackCategory =
    Category(id: [0, 6], name: "Snack", imgUrl: "images/snacks.svg");

List categoryItems = [
  vegetableCategory,
  fruitsCategory,
  meatCategory,
  beverageCategory,
  seaFoodCategory,
  snackCategory
];
