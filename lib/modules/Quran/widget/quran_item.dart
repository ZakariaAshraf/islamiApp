import 'package:flutter/material.dart';

import '../../../core/app_theme.dart';

class QuranItem extends StatelessWidget {
  final String SuraName;
  final String SuraNumber;

  const QuranItem({Key? key, required this.SuraName, required this.SuraNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme=AppTheme.lightAppTheme.primaryColor;
    return  Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              textAlign: TextAlign.center,
              SuraNumber,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            width:1.2,
            height: 45,
            color:theme,

          ),
          Expanded(
            child: Text(
              textAlign: TextAlign.center,
              SuraName,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),

        ],
      );
  }
}
