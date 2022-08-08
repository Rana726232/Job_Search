import 'package:flutter/material.dart';
import 'package:work_24/widgets/job_Details.dart';
import 'package:work_24/widgets/job_List.dart';

class ListContainer extends StatefulWidget {
  ListContainer({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;
  final myList = Job.generatedJobList();

  @override
  State<ListContainer> createState() => _ListContainerState();
}

class _ListContainerState extends State<ListContainer> {
  var selectedMenu = 0;

  final _tagList = [
    'All',
    '⚡ Popular',
    '⭐ Featured',
    'All',
    'Popular',
    'Featured',
    'All',
    'Popular',
    'Featured'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        width: widget.width,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 10.0, 0.0, 10.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _tagList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedMenu = index;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 0.8),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: selectedMenu == index
                                ? Color.fromARGB(172, 62, 235, 238)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: selectedMenu == index
                                  ? Color(0xFFD8F3F3).withOpacity(0.8)
                                  : Color.fromARGB(172, 62, 235, 238),
                            ),
                          ),
                          child: Text('${_tagList[index]}'),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: ListView.separated(
                    separatorBuilder: (_, index) => SizedBox(
                          width: 5,
                        ),
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.myList.length,
                    itemBuilder: (contex, index) {
                      return GestureDetector(
                        onTap: (){

                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft:Radius.circular(20),
                                topRight:Radius.circular(20),
                              )
                            ),
                              context: context,
                              builder: (contex)=>JobDetails(widget.myList[index]));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            // border:Border.all(color: Colors.black26,width: 1),
                            borderRadius: BorderRadius.circular(32),
                          ),
                          margin: EdgeInsets.only(left: 20),
                          width: 300,
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 70,
                                            decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(20),
                                              ),
                                            ),
                                            child: Image.asset(
                                              widget.myList.first.logoURL,
                                              height: 50,
                                              width: 50,
                                            ),
                                          ),
                                        ),
                                        Text(widget.myList.first.title),
                                      ],
                                    ),
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Icon(Icons.bookmark),
                                     ),

                                  ],
                                ),
                              ),
                              Text(widget.myList.first.company),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
