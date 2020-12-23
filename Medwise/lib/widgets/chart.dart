import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {
  // List<Map<String,Object>> get recentTasks {
  //   return List.generate(7, (index) {
  //     final weekDay = DateTime.now().subtract(
  //       Duration(days: index),
  //     );

  //     return {
  //       'date': DateFormat.E().format(weekDay).substring(0, 1),
  //     };
  //   }).reversed.toList();
  // }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              //6 days back
              children: [
                Text('S'),
                SizedBox(height: 4),
                Container(
                  height: 60,
                  width: 10,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          color: Color.fromRGBO(220, 220, 220, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      FractionallySizedBox(
                        heightFactor: 0.8,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffB83F87),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              //5 days back
              children: [
                Text('S'),
                SizedBox(height: 4),
                Container(
                  height: 60,
                  width: 10,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          color: Color.fromRGBO(220, 220, 220, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      FractionallySizedBox(
                        heightFactor: 0.9,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffB83F87),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              //4 days back
              children: [
                Text('M'),
                SizedBox(height: 4),
                Container(
                  height: 60,
                  width: 10,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          color: Color.fromRGBO(220, 220, 220, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      FractionallySizedBox(
                        heightFactor: 0.8,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffB83F87),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              //3 days back
              children: [
                Text('T'),
                SizedBox(height: 4),
                Container(
                  height: 60,
                  width: 10,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          color: Color.fromRGBO(220, 220, 220, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      FractionallySizedBox(
                        heightFactor: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffB83F87),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              //2 days back
              children: [
                Text('W'),
                SizedBox(height: 4),
                Container(
                  height: 60,
                  width: 10,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          color: Color.fromRGBO(220, 220, 220, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      FractionallySizedBox(
                        heightFactor: 0.85,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffB83F87),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              //1 day back
              children: [
                Text('T'),
                SizedBox(height: 4),
                Container(
                  height: 60,
                  width: 10,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          color: Color.fromRGBO(220, 220, 220, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      FractionallySizedBox(
                        heightFactor: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffB83F87),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              //Today
              children: [
                Text('F'),
                SizedBox(height: 4),
                Container(
                  height: 60,
                  width: 10,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          color: Color.fromRGBO(220, 220, 220, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      FractionallySizedBox(
                        heightFactor: 0.2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffB83F87),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
