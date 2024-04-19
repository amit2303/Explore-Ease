class PeopleAlsoLikeModel {
  final String title;
  final String location;
  final int day;
  final String image;
  final int price;

  PeopleAlsoLikeModel(
      {required this.title,
      required this.location,
      required this.day,
      required this.image,
      required this.price});
}

List<PeopleAlsoLikeModel> peopleAlsoLikeModel = [
  PeopleAlsoLikeModel(
      title: "Eiffel Tower",
      location: "Paris",
      image: "image/paris.jpg",
      day: 5,
      price: 430),
  PeopleAlsoLikeModel(
      title: "Baja Peninsula",
      location: "Mexico",
      image: "image/images.jpeg",
      day: 7,
      price: 233),
  PeopleAlsoLikeModel(
      title: "Sossusvlei",
      location: "Salt pan in Namibia",
      image: "image/Sossusvlei.jpg",
      day: 9,
      price: 550),
  PeopleAlsoLikeModel(
      title: "Cancún",
      location: "Mexico",
      image:
          "image/22bab5ad4b9aa1027ad00a84ea7493d2c0c5e666d43d3b9413e332bdbd3f1780.jpg",
      day: 3,
      price: 546),
];
