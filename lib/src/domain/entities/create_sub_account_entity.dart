import 'package:hundred_pay_wrapper/src/domain/entities/sub_accounts_entity.dart';

class CreateSubAccountEntity {
  final String? message;
  final List<SubAccountsEntity>? accounts;

  CreateSubAccountEntity({this.message, this.accounts});
}
