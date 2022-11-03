class User {
  final String image;
  final String name;
  final String lastName;
  final String login;

  const User(
      {required this.image,
      required this.name,
      required this.lastName,
      required this.login});
  Map<String, dynamic> toJson() => {
        'image': image,
        'name': name,
        'lastName': lastName,
        'login': login,
      };
  static User fromJson(Map<String, dynamic> json) => User(
        image: json['image'],
        name: json['name'],
        lastName: json['lastName'],
        login: json['login'],
      );
  User copy({
    String? image,
    String? name,
    String? lastName,
    String? login,
  }) =>
      User(
        image: image ?? this.image,
        name: name ?? this.name,
        lastName: lastName ?? this.lastName,
        login: login ?? this.login,
      );
}
