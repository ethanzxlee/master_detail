import 'package:flutter/material.dart';
import 'package:master_detail/master_page.dart';
import 'package:master_detail/master_detail_utils.dart';

class MasterDetailContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
                width: isTablet(context) ? kTabletMasterContainerWidth : MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: MasterPage())
          ],
        ));
  }
}
