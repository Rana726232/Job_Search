import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 40.0, 12.0, 20.0),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome Home",
                  style: TextStyle(
                    fontSize: height * 0.03,
                    color: Color(0xFF9c9c9d),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 05.0,
                ),
                Text(
                  "Annie Bryant",
                  style: TextStyle(
                    fontSize: height * 0.05,
                    color: Color(0xFF2e2e30),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  transform: Matrix4.rotationZ(100.0),
                  child: Stack(
                    children: [
                      Icon(
                        Icons.notifications_none_rounded,
                        size: 40.0,
                        color: Color(0xFF9c9c9d),
                      ),
                      Positioned(
                        right: 0,
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: Color(0xFFde6462),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                CircleAvatar(
                  radius: width * 0.08,
                  backgroundColor: Colors.white,
                  backgroundImage:
                  AssetImage("assets/images/avatar.png"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
