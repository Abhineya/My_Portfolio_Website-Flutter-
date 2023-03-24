import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

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
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 80,
            ),
            Text(
              'ACHIEVEMENTS',
              style: TextStyle(
                  color: Colors.black87,
                  fontFamily: 'Sriracha',
                  fontSize: 30,
                  decoration: TextDecoration.none),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  launchUrl(Uri.parse(
                      'https://www.linkedin.com/feed/update/urn:li:activity:7021745270048571392/'));
                },
                child: achievementContainer('assets/images/mlsa.png',
                    ' I have been selected as Microsoft Learn Student Ambassador.'),
              ),
              GestureDetector(
                onTap: () {
                  launchUrl(Uri.parse(
                      'https://www.linkedin.com/feed/update/urn:li:activity:7041853585868873728/'));
                },
                child: achievementContainer(
                    'assets/images/flutterbootcamp.png',
                    ' I conducted Bootcamp on Flutter under GDSC BSIOTR.'),
              ),
              GestureDetector(
                onTap: () {
                  launchUrl(Uri.parse(
                      'https://www.linkedin.com/feed/update/urn:li:activity:7044647845575991297/'));
                },
                child: achievementContainer('assets/images/reckon.png',
                    ' I have recently participated in RECKON 4.0 with my team at Jodhpur, Rajasthan.'),
              ),
              GestureDetector(
                onTap: () {
                  launchUrl(Uri.parse(
                      'https://www.linkedin.com/feed/update/urn:li:activity:7007744191459930112/'));
                },
                child: achievementContainer('assets/images/devfest.png',
                    ' I have won ticket to Devfest\'22 Pune in blog writing competition. '),
              ),
              GestureDetector(
                onTap: () {
                  launchUrl(Uri.parse(
                      'https://www.linkedin.com/feed/update/urn:li:activity:6970007847774433280/'));
                },
                child: achievementContainer('assets/images/sih.png',
                    ' Our team got selected as Grand Finalist for SIH\'22'),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget achievementContainer(String imageurl, String content) {
  return Container(
    child: Column(
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
                            image: AssetImage(imageurl),
                            fit: BoxFit.fill,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 0, left: 40, right: 30, bottom: 0),
                    child: Center(
                      child: Text(
                        content,
                        style: TextStyle(
                            fontFamily: 'Sriracha',
                            color: Colors.white,
                            fontSize: 20,
                            decoration: TextDecoration.none),
                      ),
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
    ),
  );
}
