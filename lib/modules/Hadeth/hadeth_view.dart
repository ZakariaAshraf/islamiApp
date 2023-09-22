import 'package:flutter/material.dart';

class HadethView extends StatelessWidget {
  const HadethView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text("Hadeth View",
          style: TextStyle(
              fontSize: 50,
              fontWeight:FontWeight.bold
          )),
    );
  }
}
