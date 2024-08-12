import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platina/provider/my_provider.dart';

class Yuqori extends ConsumerWidget {
  const Yuqori({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.blue.withOpacity(0.05),
      width: double.infinity,
      height: 48,
      child: Container(
        margin: const EdgeInsets.all(12),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                if(ref.read(stateProvider.notifier).state == 1){
                  ref.read(stateProvider.notifier).state = 0;
                }
                else {
                  ref.read(stateProvider.notifier).state = 1;
                }
              },
              child: Row(
                children: [
                  const SizedBox(width: 4),
                  Image.asset("assets/images/usa.png"),
                  const SizedBox(width: 6),
                  const Text(
                    "USD",
                    style: TextStyle(
                      color: Color(0xFF1D3068),
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(width: 6),
                  const Text(
                    "11318.74",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 17,
                    ),
                  ),
                  Image.asset(
                    "assets/images/down.png",
                    width: 16,
                  ),
                ],
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                if(ref.read(stateProvider.notifier).state == 2){
                  ref.read(stateProvider.notifier).state = 0;
                }
                else{
                  ref.read(stateProvider.notifier).state = 2;
                }
              },
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/weather.png",
                    width: 28,
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    "+9\u00B0C ",
                    style: TextStyle(
                      color: Color(0xFF1D3068),
                      fontSize: 17,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
