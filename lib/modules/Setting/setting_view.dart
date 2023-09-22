import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Setting View",
          style: TextStyle(
              fontSize: 50,
              fontWeight:FontWeight.bold
          )),
    );
  }
}
