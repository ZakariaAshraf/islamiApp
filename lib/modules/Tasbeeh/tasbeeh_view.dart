import 'package:flutter/material.dart';

class TasbeehView extends StatelessWidget {
  const TasbeehView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Tasbeeh View",
          style: TextStyle(
              fontSize: 50,
              fontWeight:FontWeight.bold
          )),
    );
  }
}
