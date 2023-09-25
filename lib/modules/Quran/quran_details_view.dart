import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/app_theme.dart';
import 'package:islami_app/modules/Quran/quran_view.dart';
import 'package:islami_app/modules/Quran/widget/quran_item.dart';

class QuranDetailsView extends StatefulWidget {
  static String routeName = "Quran_details_view";

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  var theme = AppTheme.lightAppTheme.primaryColor;
  String content = "";
  List<String> allVerses = [];

  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    if (content.isEmpty)readFile(args.suraNumber);



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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("سورة${args.suraName}"),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.play_circle,
                    size: 32,
                  ),
                ],
              ),
              Divider(
                indent: 50,
                endIndent: 50,
                color: theme,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: allVerses.length,
                  itemBuilder: (context, index) => Text(
                    allVerses[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  readFile(String suraNumber) async {
    print(suraNumber);
    String text = await rootBundle.loadString("assets/files/$suraNumber.txt");
    content = text;

    setState(() {
      allVerses = content.split("\n");
    });
    print(text);
  }
}
