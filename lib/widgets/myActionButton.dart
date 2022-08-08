
import 'package:flutter/material.dart';

class MyActionButton extends StatelessWidget {
  const MyActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          color: Color.fromARGB(87, 0, 179, 182), shape: BoxShape.circle),
      child: FloatingActionButton(

        backgroundColor: Color(0xFFFED40A),
        child: const Icon(
          Icons.add,
          size: 30.0,
        ),
        onPressed: () {},
      ),
    );
  }
}
