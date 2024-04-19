class Category {
  final String name;
  final String image;

  Category({
    required this.name,
    required this.image,
  });
}

List<Category> categoryComponents = [
  Category(name: "Beach", image: "image/beach.png"),
  Category(name: "Boat", image: "image/boat.png"),
  Category(name: "Museum", image: "image/museum.png"),
  Category(name: "Lake", image: "image/lake.png"),
  Category(name: "Tricycle", image: "image/tricycle.png"),
];
