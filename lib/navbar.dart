import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:portfolio/achievement.dart';
import 'package:portfolio/main.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) {
        return _desktopNavbar(context);
      },
    );
  }
}

Widget _desktopNavbar(BuildContext context) {
  LinearGradient color = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [Color(0xff7C46FF), Color(0xffFF449B)],
  );
  return Container(
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              gradient: color,
            ),
            child: Center(
              child: Text(
                'RESUME',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Sriracha',
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.none),
              ),
            ),
          ),
        ),
        Spacer(),
        Row(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AchievementPage();
                  }));
                },
                child: navButton('HOME')),
            navButton('ACHIEVEMENTS'),
            navButton('SKILLS'),
            navButton('PROJECTS'),
          ],
        ),
        SizedBox(
          width: 30,
        )
      ],
    ),
  );
}

Widget navButton(String text) {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Sriracha',
                fontSize: 20,
                fontWeight: FontWeight.w300,
                decoration: TextDecoration.none),
          )));
}
   // Padding(
                  //   padding: const EdgeInsets.only(
                  //     top: 15,
                  //   ),
                  //   child: Text(
                  //     'Alpha-MLSA',
                  //     style: TextStyle(
                  //   color: Colors.white,
                  //   fontFamily: 'Kalam',
                  //   fontSize: 25,
                  //   fontWeight: FontWeight.w300,
                  //   decoration: TextDecoration.none),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //     top: 15,
                  //   ),
                  //   child: Text(
                  //     'Tech-Executive at GDSC BSIOTR',
                  //     style: TextStyle(
                  //   color: Colors.white,
                  //   fontFamily: 'Kalam',
                  //   fontSize: 25,
                  //   fontWeight: FontWeight.w300,
                  //   decoration: TextDecoration.none),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //     top: 15,
                  //   ),
                  //   child: Text(
                  //     'Tech-Associate at MLSC BSIOTR',
                  //     style: TextStyle(
                  //   color: Colors.white,
                  //   fontFamily: 'Kalam',
                  //   fontSize: 25,
                  //   fontWeight: FontWeight.w300,
                  //   decoration: TextDecoration.none),
                  //   ),
                  // ),