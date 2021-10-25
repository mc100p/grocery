class Food {
  List id;
  String tag;
  String name;
  String imgUrl;
  double price;

  Food({
    required this.id,
    required this.tag,
    required this.name,
    required this.imgUrl,
    required this.price,
  });
}

final fruitItems = Food(
  id: [0, 1],
  tag: "Fruit",
  name: "Orange Fruit",
  imgUrl: "assets/oranges.jpg",
  price: 14.99,
);

final vegetableItems = Food(
  id: [0, 2],
  tag: "Vegetable",
  name: "Broccolie Vegetable",
  imgUrl: "assets/broccoli.jpg",
  price: 29.99,
);

final meatItems = Food(
    id: [0, 3],
    tag: "meat",
    name: "Chicken",
    imgUrl: "assets/chicken.jpg",
    price: 56.99);

final dairyCategory = Food(
  id: [0, 4],
  tag: "diary",
  name: "Milk",
  imgUrl: "assets/milk.jpg",
  price: 6.99,
);

List foodItems = [fruitItems, vegetableItems, meatItems, dairyCategory];
