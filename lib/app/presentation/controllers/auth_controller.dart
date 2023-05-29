import 'dart:convert';

import 'package:get/get.dart';

import '../../data/infra/cache/cache.dart';
import '../../data/models/user/account_model.dart';
import '../../domain/entities/entities.dart';

class AuthController extends GetxController {
  @override
  Future<void> onInit() async {
    await getUser();
    super.onInit();
  }

  Rx<AccountEntity> account = const AccountEntity(
    id: '',
    name: '',
    email: '',
    phoneNumber: '',
    role: '',
    isEmailConfirmed: false,
  ).obs;

  Future<void> setAccount(AccountEntity newUser) async {
    AccountModel accountModel = AccountModel(
      id: newUser.id,
      email: newUser.email,
      name: newUser.name,
      phoneNumber: newUser.phoneNumber,
      isEmailConfirmed: newUser.isEmailConfirmed,
      role: newUser.role,
      profileImageUrl: newUser.profileImageUrl,
    );
    await CacheAdapter().writeStorage(
      CacheString.accountKey,
      jsonEncode(accountModel.toJson()),
    );
  }

  Future<void> getUser() async {
    String? accountJson = await CacheAdapter().read(CacheString.accountKey);
    if (accountJson != null) {
      AccountModel modelAccount = AccountModel.fromJson(json.decode(accountJson));
      account.value = modelAccount.toEntity();
    }
  }
}
