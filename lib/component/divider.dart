//divider line  between two widgets
import 'package:flutter/material.dart';

class DividerLine extends StatelessWidget {
  const DividerLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Divider(
        thickness: 2,
        color: Colors.deepPurple.shade300,
      ),
    );
  }
}
