import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {
  final String title;
  final int index;
  final bool isSelected;
  final ValueChanged<int> onChanged;

  const LanguageButton({
    super.key,
    required this.title,
    required this.index,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(index),
      child: Container(
        alignment: Alignment.center,
        height: 41,
        width: 56.25,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFF8F8FF) : Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Color(0xFF1D3068),
            fontSize: 14,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
