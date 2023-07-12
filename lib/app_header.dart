import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
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
    );
  }
}
