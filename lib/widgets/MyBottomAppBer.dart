
import 'package:flutter/material.dart';

class MyBottomAppBar extends StatelessWidget {
  const MyBottomAppBar({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 20.0,
      color: Colors.white,
      elevation: 20,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                size: 28,
                color: Color(0xFF00B2B6),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.calendar_today_rounded,
                size: 28,
                color: Colors.grey.shade600,
              ),
            ),
            SizedBox(
              width: width * 0.12,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.description_outlined,
                size: 28,
                color: Colors.grey.shade600,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person_outline_rounded,
                size: 28,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
