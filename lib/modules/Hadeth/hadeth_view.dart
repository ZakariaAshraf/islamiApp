import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/app_theme.dart';
import 'package:islami_app/modules/Hadeth/hadeth_details.dart';

class HadethView extends StatefulWidget {
  HadethView({Key? key}) : super(key: key);

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethCotent> allHadethContent = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethContent.isEmpty) readFile();
    var theme = AppTheme.lightAppTheme.primaryColor;
    return Column(
      children: [
        Image(image: AssetImage("assets/images/ahadeth_image.png")),
        Divider(
          thickness: 2.2,
          color: theme,
          endIndent: 15,
          indent: 15,
        ),
        Text(
          textAlign: TextAlign.center,
          "الاحاديث",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Divider(
          thickness: 2.2,
          color: theme,
          endIndent: 15,
          indent: 15,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              thickness: 2.2,
              color: theme,
              endIndent: 80,
              indent: 80,
            ),
            itemCount: allHadethContent.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, HadethDetailsView.routeName,
                    arguments: HadethCotent(
                        title: allHadethContent[index].title,
                        content: allHadethContent[index].content));
              },
              child: Text(
                textAlign: TextAlign.center,
                allHadethContent[index].title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  readFile() async {
    String text = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadeth = text.split("#");

    for (int i = 0; i < allHadeth.length; i++) {
      String singleHadeeth = allHadeth[i].trim();
      int indexOfFirstLine = singleHadeeth.indexOf("\n");
      String title = singleHadeeth.substring(0, indexOfFirstLine);
      String content = singleHadeeth.substring(indexOfFirstLine + 1);
      HadethCotent hadethCotent = HadethCotent(title: title, content: content);
      allHadethContent.add(hadethCotent);
      setState(() {});
    }
  }
}

class HadethCotent {
  final String title;
  final String content;
  HadethCotent({required this.title, required this.content});
}
