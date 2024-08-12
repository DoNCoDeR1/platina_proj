import 'package:flutter/material.dart';

class Quyi extends StatelessWidget {
  const Quyi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      child: Container(
        margin: const EdgeInsets.all(12),
        child: Row(
          children: [
            const SizedBox(width: 4),
            Image.asset("assets/images/euro.png"),
            const SizedBox(width: 6),
            const Text(
              "EUR",
              style: TextStyle(
                color: Color(0xFF1D3068),
                fontSize: 17,
              ),
            ),
            const SizedBox(width: 6),
            const Text(
              "12242.35",
              style: TextStyle(
                color: Colors.red,
                fontSize: 17,
              ),
            ),
            Image.asset(
              "assets/images/down.png",
              width: 16,
            ),
            const Spacer(),
            const SizedBox(width: 4),
            Image.asset("assets/images/rus.png"),
            const SizedBox(width: 6),
            const Text(
              "RUB",
              style: TextStyle(
                color: Color(0xFF1D3068),
                fontSize: 17,
              ),
            ),
            const SizedBox(width: 6),
            const Text(
              "164.94",
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
    );
  }
}
