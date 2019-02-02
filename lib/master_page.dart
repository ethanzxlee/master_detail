import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:master_detail/detail_page.dart';
import 'package:master_detail/detail_route.dart';

class MasterPage extends StatefulWidget {
  @override
  MasterPageState createState() => MasterPageState();
}

class MasterPageState extends State<MasterPage> {
  final items = List<String>.generate(10000, (i) => "Item $i");
  String selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Master'),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                selected: items[index] == selectedItem,
                title: Text(items[index]),
                onTap: () {
                  setState(() {
                    selectedItem = items[index];

                    // To remove the previously selected detail page
                    while (Navigator.of(context).canPop()) {
                      Navigator.of(context).pop();
                    }

                    Navigator.of(context)
                        .push(DetailRoute(builder: (context) {
                      return DetailPage(item: selectedItem);
                    }));
                  });
                });
            }));
  }
}
