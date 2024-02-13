import 'package:caleb_g/app/core/manager/models/FoodModel.dart';

class UserModel {
  final String name;
  final String email;
  final String image;
  final String id;
   List<FoodModel>? favourite;
   List<FoodModel>? cart;
   List<FoodModel>? history;
  UserModel(
      {required this.email,
      required this.id,
      required this.image,
      required this.name,
      this.favourite,
      this.cart,
      this.history,});

  factory UserModel.fromjason(jsonData) {
    return UserModel(
        email: jsonData['email'],
        id: jsonData['id'],
        image: jsonData['image'],
        name: jsonData['name'],
        );
  }
}