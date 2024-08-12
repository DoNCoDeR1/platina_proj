import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:platina/provider/my_provider.dart';
import 'package:platina/widgets/sidebar/drawer_widget.dart';
import 'package:platina/widgets/top/quyi.dart';
import 'package:platina/widgets/top/weather_info.dart';
import '../widgets/top/yuqori.dart';

class Asosiy extends ConsumerStatefulWidget {
  const Asosiy({super.key});

  @override
  ConsumerState<Asosiy> createState() => _AsosiyState();
}

class _AsosiyState extends ConsumerState<Asosiy> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final sss = ref.watch(stateProvider);
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 1),
          child: Container(
            height: 1,
            color: Colors.grey,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            if (!_scaffoldKey.currentState!.isDrawerOpen) {
              _scaffoldKey.currentState!.openDrawer();
            } else {
              _scaffoldKey.currentState!.closeDrawer();
            }
          },
          child: Image.asset("assets/images/drawer.png"),
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/bio.png",
              width: 32,
            ),
            const SizedBox(width: 4),
            const Text(
              " platina",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1D3068),
              ),
            )
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Color(0xFF1D3068),
              size: 28,
            ),
          ),
        ],
      ),
      body: Scaffold(
        key: _scaffoldKey,
        drawer: const DrawerWidget(),
        body: Container(
          color: Colors.blue.withOpacity(0.05),
          child: Column(
            children: [
              const Yuqori(),
              if (ref.read(stateProvider.notifier).state == 1) const Quyi(),
              if (ref.read(stateProvider.notifier).state == 2)
                const WeatherInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
