import 'package:flutter/material.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({super.key});

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  static bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 80,),
          Image.asset("assets/images/radio_image.png"),
          const SizedBox(height: 40,),
          const Text("إذاعة القران الكريم", style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 30
          ),),
          const SizedBox(height: 70,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.skip_previous, size: 50,),
              const SizedBox(width: 50,),
              InkWell(onTap: (){setState(() {flag = !flag;});}, child: flag? const Icon(Icons.play_arrow, size: 50,) : const Icon(Icons.pause, size: 50,)),
              const SizedBox(width: 50,),
              const Icon(Icons.skip_next, size: 50,)
            ],
          ),
        ],
      ),
    );
  }
}
