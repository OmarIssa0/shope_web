
import 'package:flutter/material.dart';

class HotWidgets extends StatelessWidget {
  const HotWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 26,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: ShapeDecoration(
        color: const Color(0xFFEE5858),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      ),
      child: const FittedBox(
        child: Row(
          children: [
            Text(
              'HOT',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontFamily: 'Public Sans',
                fontWeight: FontWeight.w600,
                height: 0.11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
