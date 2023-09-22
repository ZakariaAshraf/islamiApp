import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Radio View",
          style: TextStyle(
              fontSize: 50,
              fontWeight:FontWeight.bold
          )),
    );
  }
}
