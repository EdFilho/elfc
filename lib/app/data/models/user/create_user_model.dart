class CreateUserModel {
  late String name, email, phoneNumber, password, confirmPassword;

  CreateUserModel({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.confirmPassword,
  });

  CreateUserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    password = json['password'];
    confirmPassword = json['confirm_password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['phone_number'] = phoneNumber;
    data['password'] = password;
    data['confirm_password'] = confirmPassword;
    return data;
  }
}
