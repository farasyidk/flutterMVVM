class User {
  String id, name, avatar, email;

  User({this.id, this.name, this.avatar, this.email});

  factory User.fromJson(Map<String, dynamic> object) {
    return User(
        id: object['id'].toString(),
        name: object['first_name'] + ' ' + object['last_name'],
        email: object['email'],
        avatar: object['avatar'],
      );
  }
}