import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AchievementPage extends StatefulWidget {
  const AchievementPage({super.key});

  @override
  State<AchievementPage> createState() => _AchievementPageState();
}

class _AchievementPageState extends State<AchievementPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) {
        return _desktopAchievement(context);
      },
    );
  }
}

Widget _desktopAchievement(BuildContext context) {
  List<String> imageurl = [
    'assets/images/instagram.png',
    'assets/images/instagram.png',
    'assets/images/instagram.png',
    'assets/images/instagram.png',
    'assets/images/instagram.png',
    'assets/images/instagram.png',
    'assets/images/instagram.png',
  ];
  LinearGradient color = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [Color(0xff7C46FF), Color(0xffFF449B)],
  );
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    decoration: BoxDecoration(
      gradient: color,
    ),
    child: Column(
      children: [
        SizedBox(height: 40,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 80,),
            Text('ACHIEVEMENTS', style: TextStyle(
              color: Colors.black87,
              fontFamily: 'Sriracha',
                  fontSize: 30,
                  decoration: TextDecoration.none
                ),),
          ],
        ),
        Expanded(
          child: ListView.builder(
            // shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: imageurl.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Container(
                          height: 400,
                          width: 350,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Colors.black87, Colors.black12],
                          )),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 10, right: 10, bottom: 20),
                                child: Container(
                                    height: 220,
                                    width: 300,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image(
                                        image: AssetImage(imageurl[index]),
                                        fit: BoxFit.fill,
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 0, left: 10, right: 10, bottom: 0),
                                child: Text(
                                  'gshgfsugfhjsbshkfuiwfkjsbfuisrhf',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 20,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 30,
                    // ),
                  ],
                );
              }),
        ),
      ],
    ),
  );
}
