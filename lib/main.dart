import 'package:flutter/material.dart';
import 'package:flutter_ui_app/app_header.dart';
import 'package:flutter_ui_app/horizontal_scroll_header.dart';
import 'package:flutter_ui_app/listview_home.dart';
import 'package:flutter_ui_app/space_header.dart';

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
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const AppHeader()),
        body: ListView(children: <Widget>[
          Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
            child: Column(
              children: [
                const SpaceHeader(),
                const SizedBox(height: 4),
                const HorizontalScrollHeader(),
                const SizedBox(height: 4),
                ListViewHome()
              ],
            ),
          )
        ]));
  }
}
