import 'package:flutter/material.dart';

class DayInfo extends StatelessWidget {
  final String sana;
  final String kun;
  final String path;
  final List<int> haroratlar;

  const DayInfo({
    super.key,
    required this.sana,
    required this.kun,
    required this.path,
    required this.haroratlar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Text(
            sana,
            style: const TextStyle(
              color: Color(0xFFA9AABC),
              fontSize: 12,
              fontFamily: "SF Pro Display",
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            kun,
            style: const TextStyle(
              color: Color(0xFF1D3068),
              fontSize: 14,
              fontFamily: "SF Pro Display",
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 2),
          Image.asset(
            "assets/images/$path.png",
            width: 30,
          ),
          const SizedBox(height: 4),
          Text(
            "${haroratlar[0].toString()}\u00B0 ${haroratlar[1].toString()}\u00B0",
            style: const TextStyle(
              color: Color(0xFF1D3068),
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: "SF Pro Display",
            ),
          ),
        ],
      ),
    );
  }
}
