import '../model/account_model.dart';

class AccountDatas {
  static const List<AccountModel> accounts = [
    telegram,
    facebook,
    twitter,
    instagram,
    youtube,
    tiktok,
  ];

  static const telegram = AccountModel(
    title: "platinauzb",
    icon: "telegram",
    link: "",
  );

  static const instagram = AccountModel(
    title: "platianuzb",
    icon: "instagram",
    link: "",
  );

  static const twitter = AccountModel(
    title: 'platinauz',
    icon: 'twitter',
    link: '',
  );
  static const tiktok = AccountModel(
    title: 'platinauz',
    icon: 'tiktok',
    link: '',
  );
  static const youtube = AccountModel(
    title: 'platinauz',
    icon: 'youtube',
    link: '',
  );
  static const facebook = AccountModel(
    title: 'platinauz',
    icon: 'facebook',
    link: '',
  );
}
