import '../../../domain/entities/entities.dart';

class UserModel {
  late String id, name, email, phoneNumber, role, createdAt, updatedAt;
  String? profileImageUrl, deviceId;
  bool? active;
  late bool isEmailConfirmed;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.role,
    required this.createdAt,
    required this.updatedAt,
    this.profileImageUrl,
    this.deviceId,
    this.active,
    required this.isEmailConfirmed,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    profileImageUrl = json['profile_image_url'];
    role = json['role'];
    active = json['active'];
    deviceId = json['deviceId'];
    isEmailConfirmed = json['is_email_confirmed'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['phone_number'] = phoneNumber;
    data['profile_image_url'] = profileImageUrl;
    data['role'] = role;
    data['active'] = active;
    data['deviceId'] = deviceId;
    data['is_email_confirmed'] = isEmailConfirmed;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }

  UserEntity toEntity() => UserEntity(
        id: id,
        name: name,
        email: email,
        phoneNumber: phoneNumber,
        profileImageUrl: profileImageUrl,
        role: role,
        active: active,
        deviceId: deviceId,
        createdAt: createdAt,
        updatedAt: updatedAt,
        isEmailConfirmed: isEmailConfirmed,
      );
}
