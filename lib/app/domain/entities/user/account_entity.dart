import 'package:equatable/equatable.dart';

class AccountEntity extends Equatable {
  const AccountEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.role,
    required this.isEmailConfirmed,
    this.profileImageUrl,
  });

  final String id, name, email, phoneNumber, role;
  final String? profileImageUrl;
  final bool isEmailConfirmed;

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        phoneNumber,
        role,
        isEmailConfirmed,
        profileImageUrl,
      ];
}
