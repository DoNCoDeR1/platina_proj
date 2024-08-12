import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewsButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final int index;
  final ValueChanged<int> onChanged;

  const NewsButton({
    super.key,
    required this.title,
    required this.isSelected,
    required this.index,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(index),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isSelected ? const Color(0x192DA85B) : Colors.white,
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/images/hexagon.svg",
              color: isSelected
                  ? const Color(0xff2DA85B)
                  : const Color.fromRGBO(213, 221, 243, 1),
            ),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFF1D3068),
                fontSize: 17,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
