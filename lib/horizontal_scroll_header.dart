import 'package:flutter/material.dart';

class HorizontalScrollHeader extends StatelessWidget {
  const HorizontalScrollHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: ListTile(
          title: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 255, 214, 201),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(right: 8),
                              child: Text(
                                '#',
                                style: TextStyle(color: Colors.redAccent),
                              )),

                          Text(
                            'Add channel',
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                          //  ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: Text('#',
                                style: TextStyle(color: Colors.blue))),
                        Text(
                          'highlights',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                              fontWeight: FontWeight.normal),
                        ),
                        //  ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: Text(
                              '#',
                              style: TextStyle(color: Colors.blue),
                            )),
                        // Expanded(
                        //  child:
                        Text(
                          'mojis',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 12.0,
                              fontWeight: FontWeight.normal),
                        ),
                        //  ),
                      ],
                    ),

                    //   ],
                    // ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 231, 232, 234),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(right: 8),
                              child: Text('#')),
                          // Expanded(
                          //  child:
                          Text(
                            'Highlights',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 12.0,
                                fontWeight: FontWeight.normal),
                          ),
                          //  ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
