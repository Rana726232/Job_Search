import 'package:flutter/material.dart';
import 'package:work_24/widgets/job_List.dart';
class JobDetails extends StatelessWidget {

  Job _job;
  JobDetails(this._job);



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          height: 600,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 5,
                      width: 50,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              height: 50,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                'images/google_logo.png',
                                height: 20,
                                width: 20,
                              )),
                          Text(_job.company),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.bookmark, color: Colors.grey),
                          Icon(
                            Icons.more_horiz,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Text(
                    _job.title,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_job.location),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 20),
                      child: Row(
                        children: [
                          Icon(Icons.timer),
                          Text('Full time'),
                        ],
                      ),
                    ),
                  ],
                ),
                Text("Requrment",style: TextStyle(color: ),),
                ..._job.req.map((e) => Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 5,
                        width: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                        ),
                      ),
                      ConstrainedBox(constraints: BoxConstraints(maxWidth: 300),
                        child: Text(e),),

                    ],
                  ),

                )).toList()

              ],
            ),
          )),
    );
  }
}
