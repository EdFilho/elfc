import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  const UserEntity({
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

  final String id, name, email, phoneNumber, role, createdAt, updatedAt;
  final String? profileImageUrl, deviceId;
  final bool? active;
  final bool isEmailConfirmed;

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        phoneNumber,
        role,
        createdAt,
        updatedAt,
        profileImageUrl,
        deviceId,
        active,
        isEmailConfirmed,
      ];
}
