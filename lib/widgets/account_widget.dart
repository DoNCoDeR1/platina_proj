import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AccountWidget extends StatelessWidget {
  final String title;
  final String icon;
  final String link;
  final Function(String) onPressed;

  const AccountWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.link,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      height: 37,
      width: 107,
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8FF),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/images/$icon.svg"
          ),
          const SizedBox(width: 7),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF1D3068),
              fontSize: 13, // 17 real size
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
