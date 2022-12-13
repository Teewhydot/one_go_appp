class User {
  final String name;
  final String email;
  final String phone_number;

  User({ required this.name,required this.email,required this.phone_number});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      email: json['email'],
      phone_number: json['password'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'password': phone_number,
      };
}