class UserModel {
  final int id;
  final String name;

  UserModel(this.id, this.name);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(json['id'], json['name']);
  }
}
