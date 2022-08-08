
import 'package:flutter/material.dart';
import 'package:work_24/components/appBackground.dart';
import 'package:work_24/pages/home_Page_Content.dart';
import 'package:work_24/widgets/MyBottomAppBer.dart';
import 'package:work_24/widgets/list_Container.dart';
import 'package:work_24/widgets/myActionButton.dart';
import 'package:work_24/widgets/search_Box_Container.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF6F6F6),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: MyActionButton(),

        bottomNavigationBar: MyBottomAppBar(width: width),
        body: Container(
          height: height,
          width: width,
          child: Stack(
            children: [
              AppBackground(width: width, height: height),
              HomePageContents(height: height, width: width),
            ],
          ),
        ),
      ),
    );
  }
}