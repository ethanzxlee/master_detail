import 'package:flutter/material.dart';
import 'package:master_detail/master_detail_utils.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key key, @required this.item}) : super(key: key);

  final String item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
        leading: isTablet(context) ? null : BackButton(
          color: Colors.white,
        ),
      ),
      body: Container(
        child: Center(
          child: Card(
            elevation: 10,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Text("Detail Page : ${item} "),
            )
          ),
        ),
      ),
    );
  }
}
