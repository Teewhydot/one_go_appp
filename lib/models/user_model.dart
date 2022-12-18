class User {
  final String name;
  final String email;
  final String phoneNumber;

  User({ required this.name,required this.email,required this.phoneNumber});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      email: json['email'],
      phoneNumber: json['password'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'password': phoneNumber,
      };
}