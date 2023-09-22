import 'package:flutter/material.dart';
import 'package:islami_app/modules/Hadeth/hadeth_view.dart';
import 'package:islami_app/modules/Quran/quran_view.dart';
import 'package:islami_app/modules/Radio/radio_view.dart';
import 'package:islami_app/modules/Setting/setting_view.dart';
import 'package:islami_app/modules/Tasbeeh/tasbeeh_view.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home-Screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;
  List<Widget>Screens=[
    QuranView(),
    HadethView(),
    TasbeehView(),
    RadioView(),
    SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/bg3.png"),
        fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("اسلامي"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (int index) {
            setState(() {
              selectedIndex=index;
            });
          },
          items:const [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/quran.png")),label: "Quran",),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/quran-quran-svgrepo-com.png")),label: "Hadeth"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha.png")),label: "Tasbeh"),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/radio.png")),label: "Radio"),
            BottomNavigationBarItem(icon:Icon(Icons.settings),label: "Setting"),



          ]),
        body: Screens[selectedIndex],

      ),
    );
  }
}
