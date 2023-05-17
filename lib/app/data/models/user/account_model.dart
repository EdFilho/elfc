import '../../../domain/entities/entities.dart';

class AccountModel {
  late String id;
  late String name;
  late String email;
  late String phoneNumber;
  late String role;
  String? profileImageUrl;
  late bool isEmailConfirmed;

  AccountModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.role,
    this.profileImageUrl,
    required this.isEmailConfirmed,
  });

  AccountModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    profileImageUrl = json['profile_image_url'];
    role = json['role'];
    isEmailConfirmed = json['is_email_confirmed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['phone_number'] = phoneNumber;
    data['profile_image_url'] = profileImageUrl;
    data['role'] = role;
    data['is_email_confirmed'] = isEmailConfirmed;
    return data;
  }

  AccountEntity toEntity() => AccountEntity(
        id: id,
        name: name,
        email: email,
        phoneNumber: phoneNumber,
        role: role,
        isEmailConfirmed: isEmailConfirmed,
      );
}
