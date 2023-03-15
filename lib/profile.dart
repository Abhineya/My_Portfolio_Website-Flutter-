import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flip_card/flip_card.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) {
        return _desktopProfile();
      },
    );
  }
}

Widget iconContainer(String url) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Container(
      height: 40,
      width: 40,
      child: Image(image: AssetImage(url)),
    ),
  );
}

Widget _desktopProfile() {
  return Container(
    // color: Color(0xff0C0C0C),
    child: Row(
      children: [
        SizedBox(
          width: 100,
        ),
        Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Text(
                    'Hi,',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Sriracha',
                        fontSize: 50,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Text(
                    'I Am Abhineya Beduru,',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Sriracha',
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.none),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Text(
                    'I am a Flutter Developer',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Sriracha',
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.none),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 80,
                    ),
                    iconContainer('assets/images/linkedin.png'),
                    SizedBox(
                      width: 30,
                    ),
                    iconContainer('assets/images/github.png'),
                    SizedBox(
                      width: 30,
                    ),
                    iconContainer('assets/images/instagram.png'),
                    SizedBox(
                      width: 30,
                    ),
                    iconContainer('assets/images/twitter.png'),
                    SizedBox(
                      width: 30,
                    ),
                    iconContainer('assets/images/hashnode.png'),
                    SizedBox(
                      width: 200,
                    ),
                  ],
                )
              ]),
        ),
        Spacer(),
        FlipCard(
          front: Container(
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.black),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(31, 216, 206, 206),
                  blurRadius: 10.0,
                  spreadRadius: 10.0,
                ), //
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            height: 400,
            width: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: AssetImage('assets/images/profilepic.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          back: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(31, 216, 206, 206),
                  blurRadius: 10.0,
                  spreadRadius: 10.0,
                ),
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            height: 400,
            width: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: AssetImage('assets/images/profilepic.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 170,
        )
      ],
    ),
  );
}
