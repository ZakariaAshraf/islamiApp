import 'package:flutter/material.dart';
import 'package:islami_app/core/app_theme.dart';
import 'package:islami_app/modules/Quran/quran_details_view.dart';
import 'package:islami_app/modules/Quran/widget/quran_item.dart';

class QuranView extends StatelessWidget {
  const QuranView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = AppTheme.lightAppTheme.primaryColor;
    List<String> SuraNames = [
      "الفاتحه",
      "البقرة",
      "آل عمران",
      "النساء",
      "المائدة",
      "الأنعام",
      "الأعراف",
      "الأنفال",
      "التوبة",
      "يونس",
      "هود",
      "يوسف",
      "الرعد",
      "إبراهيم",
      "الحجر",
      "النحل",
      "الإسراء",
      "الكهف",
      "مريم",
      "طه",
      "الأنبياء",
      "الحج",
      "المؤمنون",
      "النّور",
      "الفرقان",
      "الشعراء",
      "النّمل",
      "القصص",
      "العنكبوت",
      "الرّوم",
      "لقمان",
      "السجدة",
      "الأحزاب",
      "سبأ",
      "فاطر",
      "يس",
      "الصافات",
      "ص",
      "الزمر",
      "غافر",
      "فصّلت",
      "الشورى",
      "الزخرف",
      "الدّخان",
      "الجاثية",
      "الأحقاف",
      "محمد",
      "الفتح",
      "الحجرات",
      "ق",
      "الذاريات",
      "الطور",
      "النجم",
      "القمر",
      "الرحمن",
      "الواقعة",
      "الحديد",
      "المجادلة",
      "الحشر",
      "الممتحنة",
      "الصف",
      "الجمعة",
      "المنافقون",
      "التغابن",
      "الطلاق",
      "التحريم",
      "الملك",
      "القلم",
      "الحاقة",
      "المعارج",
      "نوح",
      "الجن",
      "المزّمّل",
      "المدّثر",
      "القيامة",
      "الإنسان",
      "المرسلات",
      "النبأ",
      "النازعات",
      "عبس",
      "التكوير",
      "الإنفطار",
      "المطفّفين",
      "الإنشقاق",
      "البروج",
      "الطارق",
      "الأعلى",
      "الغاشية",
      "الفجر",
      "البلد",
      "الشمس",
      "الليل",
      "الضحى",
      "الشرح",
      "التين",
      "العلق",
      "القدر",
      "البينة",
      "الزلزلة",
      "العاديات",
      "القارعة",
      "التكاثر",
      "العصر",
      "الهمزة",
      "الفيل",
      "قريش",
      "الماعون",
      "الكوثر",
      "الكافرون",
      "النصر",
      "المسد",
      "الإخلاص",
      "الفلق",
      "الناس"
    ];
    return Column(
      children: [
        Image(image: AssetImage("assets/images/Screenshot (1).png")),
        Divider(
          thickness: 2.2,
          color: theme,
          endIndent: 15,
          indent: 15,
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                textAlign: TextAlign.center,
                "رقم السورة",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 1.2,
              height: 45,
              color: theme,
            ),
            Expanded(
              child: Text(
                textAlign: TextAlign.center,
                "اسم السورة",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Divider(
          thickness: 2.2,
          color: theme,
          endIndent: 15,
          indent: 15,
        ),
        Expanded(
            child: ListView.builder(
          itemCount: 114,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, QuranDetailsView.routeName,
                  arguments: SuraDetails(
                      suraName: SuraNames[index],
                      suraNumber: "${index + 1}"));
            },
            child: QuranItem(
              SuraName: SuraNames[index],
              SuraNumber: "${index + 1}",
            ),
          ),
        ))
      ],
    );
  }
}

class SuraDetails {
  final String suraName;
  final String suraNumber;
  SuraDetails({required this.suraName, required this.suraNumber});
}
