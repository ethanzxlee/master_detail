import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:master_detail/master_detail_container.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
        title: 'Welcome to Flutter',
        home: MasterDetailContainer(),
        theme: ThemeData.light()
    );
  }
}
