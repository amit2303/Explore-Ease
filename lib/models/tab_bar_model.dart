class TabBarModel {
  final String title;
  final String location;
  final String image;
  final int price;

  TabBarModel(
      {required this.title,
      required this.location,
      required this.image,
      required this.price});
}

List<TabBarModel> places = [
  TabBarModel(
      title: "South Island",
      location: "New Zealand",
      image: "image/New_Zealand.jpg",
      price: 320),
  TabBarModel(
      title: "Eiffel Tower",
      location: "Paris",
      image: "image/paris.jpg",
      price: 262),
  TabBarModel(
      title: "Tahiti",
      location: "Island in French Polynesia",
      image: "image/Tahiti.jpg",
      price: 221)
];
List<TabBarModel> inspiration = [
  TabBarModel(
      title: "Unguja",
      location: "Island in Tanzania",
      image: "image/download.jpeg",
      price: 543),
  TabBarModel(
      title: "Baja Peninsula",
      location: "Mexico",
      image: "image/images.jpeg",
      price: 238),
  TabBarModel(
      title: "Sossusvlei",
      location: "Salt pan in Namibia",
      image: "image/Sossusvlei.jpg",
      price: 124)
];
List<TabBarModel> popular = [
  TabBarModel(
      title: "Dubai",
      location: "United Arab Emirates",
      image: "image/607d0368488549e7b9179724b0db4940.jpg",
      price: 756),
  TabBarModel(
      title: "Cancún",
      location: "Mexico",
      image:
          "image/22bab5ad4b9aa1027ad00a84ea7493d2c0c5e666d43d3b9413e332bdbd3f1780.jpg",
      price: 321),
  TabBarModel(
      title: "Crete",
      location: "Greece",
      image: "image/shutterstock_436817194.jpg",
      price: 340),
];
