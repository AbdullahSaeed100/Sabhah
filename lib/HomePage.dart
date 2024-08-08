import 'dart:math';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late Random random;
  int randomNumber = 0;

  @override
  void initState() {
    super.initState();
    random = Random(); // Initialize Random here
    generateRandomNumber(); // Optionally generate a random number on init
  }

  void generateRandomNumber() {
    setState(() {
      randomNumber = random.nextInt(ayat.length); // Generate a random number between 0 and 99
    });
  }
  int counter = 0;
  increaseCounter() {
    setState(() {
      if(counter!=9999) {
        counter++;
      }
    });
  }

  resetCounter() {
    setState(() {
      counter = 0;
    });
  }
  List <String> ayat=[
    "وَمَن يَعْمَلْ سُوءًا أَوْ يَظْلِمْ نَفْسَهُ ثُمَّ يَسْتَغْفِرِ اللَّهَ يَجِدِ اللَّهَ غَفُورًا رَّحِيمًا",
    "الصَّابِرِينَ وَالصَّادِقِينَ وَالْقَانِتِينَ وَالْمُنفِقِينَ وَالْمُسْتَغْفِرِينَ بِالْأَسْحَارِ",
    "وَاسْتَغْفِرِ اللَّهَ ۖ إِنَّ اللَّهَ كَانَ غَفُورًا رَّحِيمًا",
    "أَفَلَا يَتُوبُونَ إِلَى اللَّهِ وَيَسْتَغْفِرُونَهُ ۚ وَاللَّهُ غَفُورٌ رَّحِيمٌ",
    "وَمَا كَانَ اللَّهُ لِيُعَذِّبَهُمْ وَأَنتَ فِيهِمْ ۚ وَمَا كَانَ اللَّهُ مُعَذِّبَهُمْ وَهُمْ يَسْتَغْفِرُونَ",
    "وَاسْتَغْفِرُوا رَبَّكُمْ ثُمَّ تُوبُوا إِلَيْهِ ۚ إِنَّ رَبِّي رَحِيمٌ وَدُودٌ ",
];
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ayat[randomNumber],
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 70, 35, 22),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                color:Color.fromARGB(255, 196, 178, 157),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 70, 35, 22),
                      offset: Offset(10, 10),
                      blurRadius: 40),
                  BoxShadow(
                      color: Color.fromARGB(255, 70, 35, 22),
                      offset: Offset(-10, -10),
                      blurRadius: 40),
                ],
                shape: BoxShape.circle,
              ),
              child: Center(
                  child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Center(
                        child: Text(
                          "$counter",
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 40),
                          
                        ),
                      ))),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
              child: Container(
            height: 160,
            width: 160,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Container(
                        width: 90,
                        height: 90,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 215, 220, 224),
                            shape: BoxShape.circle),
                        child: IconButton(
                          onPressed: () {
                            increaseCounter();
                          },
                          icon: const Icon(
                            Icons.circle,
                            color: Color.fromARGB(255, 196, 178, 157),
                          ),
                          iconSize: 40,
                        ))),
                const SizedBox(
                  height: 5,
                ),
                Center(
                    child: Container(
                  width: 100,
                  height: 40,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 215, 220, 224),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: IconButton(onPressed: (){
                        resetCounter();
                      }, icon: Icon(Icons.wifi_protected_setup,color: Color.fromARGB(255, 70, 35, 22),) ),
                )),
                
              ],
            ),
          ))
        ],
      ),
      backgroundColor:Color.fromARGB(255, 90, 45, 29),
    );
  }
}
