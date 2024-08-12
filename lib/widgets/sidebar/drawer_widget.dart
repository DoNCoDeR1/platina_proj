import 'package:flutter/material.dart';
import 'package:platina/dummy_data/account_datas.dart';
import 'package:platina/model/account_model.dart';
import 'package:platina/widgets/account_widget.dart';
import 'package:platina/widgets/sidebar/language_button.dart';
import 'package:platina/widgets/sidebar/news_button.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  int selectedNew = 0;
  int selectedLanguage = 0;

  List<AccountModel> accounts = AccountDatas.accounts;

  List<String> typesOfNews = [
    "Siyosat",
    "Iqtisod",
    "Jahon",
    "Jamiyat",
    "Tahlil",
    "Sport",
    "Davlat Haridlar",
    "Maqola",
  ];

  final List<String> languages = [
    'Ўзб',
    'O\'zb',
    'Рус',
    'Eng',
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 257,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      backgroundColor: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 387,
              child: ListView.builder(
                itemCount: typesOfNews.length,
                itemBuilder: (context, index) {
                  return NewsButton(
                    title: typesOfNews[index],
                    index: index,
                    isSelected: index == selectedNew,
                    onChanged: selectTypeOfNew,
                  );
                },
              ),
            ),
            const Divider(
              thickness: 1 / 2,
              color: Color(0xFFD5DDF3),
            ),
            SizedBox(
              height: 41,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: languages.length,
                itemBuilder: (context, index) {
                  return LanguageButton(
                    title: languages[index],
                    index: index,
                    isSelected: index == selectedLanguage,
                    onChanged: selectLanguage,
                  );
                },
              ),
            ),
            const Divider(
              thickness: 1 / 2,
              color: Color(0xFFD5DDF3),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AccountWidget(
                      title: accounts[0].title,
                      icon: accounts[0].icon,
                      link: accounts[0].link,
                      onPressed: (s) {},
                    ),
                    AccountWidget(
                      title: accounts[1].title,
                      icon: accounts[1].icon,
                      link: accounts[1].link,
                      onPressed: (s) {},
                    ),
                    AccountWidget(
                      title: accounts[2].title,
                      icon: accounts[2].icon,
                      link: accounts[2].link,
                      onPressed: (s) {},
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AccountWidget(
                      title: accounts[3].title,
                      icon: accounts[3].icon,
                      link: accounts[3].link,
                      onPressed: (s) {},
                    ),
                    AccountWidget(
                      title: accounts[4].title,
                      icon: accounts[4].icon,
                      link: accounts[4].link,
                      onPressed: (s) {},
                    ),
                    AccountWidget(
                      title: accounts[5].title,
                      icon: accounts[5].icon,
                      link: accounts[5].link,
                      onPressed: (s) {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void selectTypeOfNew(int ind) {
    setState(() {
      selectedNew = ind;
    });
  }

  void selectLanguage(int ind) {
    setState(() {
      selectedLanguage = ind;
    });
  }
}
