import 'package:flutter/material.dart';
import 'package:work_24/widgets/list_Container.dart';
import 'package:work_24/widgets/my_AppBar.dart';
import 'package:work_24/widgets/search_Box_Container.dart';
class HomePageContents extends StatelessWidget {
  const HomePageContents({Key? key,required this.width,required this.height}) : super(key: key);
final double height;
final double width;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            MyAppBar(height: height, width: width),
             SearchBoxContainer(width: width, height: height),
            ListContainer(width: width),
          ],
        ),
      ),
    );
  }
}
