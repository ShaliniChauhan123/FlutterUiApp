import 'package:flutter/material.dart';
import 'package:flutter_ui_app/type_class.dart';

class ListViewHome extends StatelessWidget {
  final List<RenderList> articles = List.generate(
    20,
    (index) => RenderList(
        id: index,
        image: Image.asset('assets/ice.jpg'),
        title:
            'We have special offer exclusively for our community members. Use the code '),
  );

  ListViewHome({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
          itemCount: articles.length,
          itemBuilder: (context, index) {
            return Padding(
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
                                color: const Color.fromARGB(255, 231, 232, 234),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8),
                                child: Row(
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
                                        'Highlights will disappear after 30 days of posting',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ),
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
                                      Container(
                                        height: 10,
                                        decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 35, 48, 227),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10))),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: const Image(
                                            image: AssetImage('assets/ice.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: RichText(
                                            text: TextSpan(
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                ),
                                                text: articles[index].title,
                                                children: const <TextSpan>[
                                                  TextSpan(
                                                      text: '"SUMMERDELIGHTS"',
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 76, 162, 79),
                                                          fontWeight:
                                                              FontWeight.bold))
                                                ]),
                                          )),
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
                ],
              ),
            );
          }),
    );
  }
}
