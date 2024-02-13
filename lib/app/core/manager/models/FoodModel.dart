class FoodModel {
  final String name;
  final double price;
  final String category;
  final String image;
  final String id;
  FoodModel(
      {required this.category,
      required this.id,
      required this.image,
      required this.price,
      required this.name});

  factory FoodModel.fromjason(jsonData) {
    return FoodModel(
        category: jsonData['category'],
        id: jsonData['id'],
        image: jsonData['image'],
        price: jsonData['price'],
        name: jsonData['name']);
  }
}