class User {
  final int id;
  final String username;
  final String password;
  final String name;
  final String lastname;
  final String birthday;
  final String email;
  final String phone;
  final String address;
  final bool active;

  const User(
      {required this.id,
        required this.username,
        required this.password,
        required this.name,
        required this.lastname,
        required this.birthday,
        required this.email,
        required this.phone,
        required this.address,
        required this.active});
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        username: json['username'],
        password: json['password'],
        name: json['name'],
        lastname: json['lastname'],
        birthday: json['birthday'],
        email: json['email'],
        phone: json['phone'],
        address: json['address'],
        active: json['active']);
  }
}