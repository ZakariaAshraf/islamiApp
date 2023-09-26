import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/app_theme.dart';
import 'package:islami_app/modules/Hadeth/hadeth_view.dart';
import 'package:islami_app/modules/Quran/quran_view.dart';
import 'package:islami_app/modules/Quran/widget/quran_item.dart';

class HadethDetailsView extends StatefulWidget {
  static String routeName = "Hdeth_details_view";

  @override
  State<HadethDetailsView> createState() => _HadethDetailsViewState();
}

class _HadethDetailsViewState extends State<HadethDetailsView> {
  var theme = AppTheme.lightAppTheme.primaryColor;
  String content = "";
  List<String> allVerses = [];

  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethCotent;


    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg3.png"), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("اسلامي"),
        ),
        body: Container(
          margin: EdgeInsets.only(
            bottom: 90,
            left: 30,
            right: 30,
            top: 30,
          ),
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xffF8F8F8).withOpacity(0.8)),
          child: Column(
            children: [
              Text(
                textAlign: TextAlign.center,
                  args.title,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                indent: 50,
                endIndent: 50,
                color: theme,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    textAlign: TextAlign.center,
                    args.content,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
