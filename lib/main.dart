import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const LoginPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.menu_outlined),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Image(
                    image: AssetImage('assets/glue.jpeg'),
                    width: 30,
                    height: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 16, 16, 16),
                  child: Text(
                    'GLUE',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Icon(Icons.search)
          ],
        )),
        body: ListView(children: <Widget>[
          Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                const Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.black,
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: const SizedBox(
                                        height: 30.0,
                                        width: 30.0,
                                        child: Image(
                                          image: AssetImage(
                                              'assets/starBucks.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )),
                                const Padding(
                                  padding: EdgeInsets.all(4),
                                  child: Text(
                                    'Starbucks',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 70,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(24)),
                                      border: Border.all(
                                        color: Colors.redAccent,
                                      )),
                                  child: TextButton(
                                      // ignore: avoid_print
                                      onPressed: () => print('ddd'),
                                      child: const Text(
                                        'Invite',
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                const Icon(
                                  Icons.more_vert,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                const Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.black,
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: const SizedBox(
                                        height: 30.0,
                                        width: 30.0,
                                        child: Image(
                                          image: AssetImage(
                                              'assets/starBucks.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )),
                                const Padding(
                                  padding: EdgeInsets.all(4),
                                  child: Text(
                                    'Starbucks',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 70,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(24)),
                                      border: Border.all(
                                        color: Colors.redAccent,
                                      )),
                                  child: TextButton(
                                      // ignore: avoid_print
                                      onPressed: () => print('ddd'),
                                      child: const Text(
                                        'Invite',
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                const Icon(
                                  Icons.more_vert,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.all(2),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromARGB(
                                        255, 231, 232, 234),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8),
                                    child:
                                        // Column(
                                        //   children: [

                                        Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 8),
                                          child: Icon(
                                            Icons.info_outlined,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Highlights will appear after 30 days of posting',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ),
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
                                      border: Border.all(
                                          color: const Color.fromARGB(
                                              255, 238, 238, 238)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Expanded(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: const Image(
                                                image: AssetImage(
                                                    'assets/ice.jpg'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.all(8),
                                              child: RichText(
                                                text: const TextSpan(
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                    ),
                                                    text:
                                                        'We have special offer exclusively for our community members. Use the code ',
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                          text:
                                                              '"SUMMERDELIGHTS"',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.blue))
                                                    ]),
                                              )
                                              // RichText(
                                              //     text: const TextSpan(
                                              //         text:
                                              //             'We have special offer exclusively for our community members. Use the code ',
                                              //         children: <TextSpan>[
                                              //       TextSpan(
                                              //           text: '"SUMMERDELIGHTS"',
                                              //           style: TextStyle(
                                              //               fontWeight:
                                              //                   FontWeight.bold))
                                              //     ])),
                                              ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //],
                            //  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}
