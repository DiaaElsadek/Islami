import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../manager/settings_provider.dart';

class SebhaScreen extends StatefulWidget {
  SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {

  static int sebh = 0;
  static double turns = 0.0;
  static List<String> azkar = [
    "سبحان الله",
    "الحمدلله",
    "الله اكبر",
    "لا اله الا الله"
  ];
  static int index = 0;
  static int number = 0;
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Center(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              SizedBox(height: 150,),
              Container(
                height: 105,
                width: 73,
                decoration: BoxDecoration(
                  // color: Colors.yellow,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: provider.isLight ? AssetImage("assets/images/head_sebha_logo.png") : AssetImage("assets/images/head_sebha_dark.png"),
                    )
                ),
              ),
              Positioned(
                top: 78,
                child: AnimatedRotation(
                  turns: turns,
                  duration: const Duration(milliseconds: 500),
                  child: Container(
                    height: 290,
                    width: 290,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: provider.isLight ? AssetImage("assets/images/body_sebha_logo.png") : AssetImage("assets/images/body_sebha_dark.png"),
                        )
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 180,
                child: InkWell(
                  onLongPress: (){
                    index = 0;
                    sebh = 0;
                    number = 0;
                  },
                  child: Container(
                    height: 91,
                    width: 79,
                    child: Center(child: Text("${number != 0? number : ""}", style: TextStyle(fontSize: 30),),),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white60, width: 2),
                      color: provider.isLight ? Color(0xffB7935F) : Color(0xffFACC1D),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 250,),
          Text("عدد التسبيحات", style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500
          ),),
          SizedBox(height: 20,),
          Container(
            height: 91,
            width: 79,
            child: Center(child: Text("${sebh != 0? sebh : ""}", style: TextStyle(fontSize: 30),),),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white60, width: 2),
              color: provider.isLight ? Color(0xffB7935F) : Color(0xffFACC1D),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
          ),
          SizedBox(height: 30,),
          InkWell(
            onTap: () {
              sebh++;
              setState(() {});
              turns += 0.0317;
              if(sebh == 34){
                index++;
                sebh = 0;
              }
              if(index == azkar.length || (index == 3 && sebh == 2)){
                index = 0;
                sebh = 0;
                number++;
              }
            },
            child: Container(
              child: Center(
                child: Text("${azkar[index]}", style: TextStyle(
                    fontSize: 25,
                    color: Colors.white
                ),),
              ),
              width: 157,
              height: 50,
              decoration: BoxDecoration(
                  color: provider.isLight ? Color(0xffB7935F) : Color(0xffFACC1D),
                  borderRadius: BorderRadius.all(Radius.circular(40))
              ),
            ),
          ),
        ],
      ),
    );
  }
}
