class User {
  String name;
  String password;

  User({required this.name, required this.password});

  @override
  String toString() {
    return "name: $name, password";
  }
}


/*/**/
class UserModel {
  String username;
  String email;
  List<ProductModel> products = [];
  List<ProductModel> favorites = [];
}

 */