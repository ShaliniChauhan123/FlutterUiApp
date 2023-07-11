import 'package:flutter/material.dart';

class RenderList {
  final int _id;
  final Image _image;
  final String _title;

  RenderList({
    @required id,
    @required image,
    @required title,
    // @required content,
  })  : _id = id,
        _image = image,
        _title = title;

  String get title => _title;

  Image get image => _image;

  int get id => _id;
}
