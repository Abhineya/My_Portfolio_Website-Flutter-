import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flip_card/flip_card.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

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
        return _desktopProfile(context);
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

Widget _desktopProfile(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    // color: Color(0xff0C0C0C),
    child: Row(
      children: [
        SizedBox(
          width: 100,
        ),
        Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                Material(
                  child: InkWell(
                      onTap: () {
                        launchUrl(Uri.parse(
                            'https://www.linkedin.com/in/abhineya-beduru/'));
                      },
                      child: iconContainer('assets/images/linkedin.png')),
                ),
                SizedBox(
                  width: 30,
                ),
                Material(
                  child: InkWell(
                      onTap: () {
                        launchUrl(Uri.parse('https://github.com/Abhineya'));
                      },
                      child: iconContainer('assets/images/github.png')),
                ),
                SizedBox(
                  width: 30,
                ),
                Material(
                  child: InkWell(
                      onTap: () {
                        launchUrl(
                            Uri.parse('https://www.instagram.com/abhineyaaa/'));
                      },
                      child: iconContainer('assets/images/instagram.png')),
                ),
                SizedBox(
                  width: 30,
                ),
                Material(
                  child: InkWell(
                      onTap: () {
                        launchUrl(
                            Uri.parse('https://twitter.com/abhineya_beduru'));
                      },
                      child: iconContainer('assets/images/twitter.png')),
                ),
                SizedBox(
                  width: 30,
                ),
                Material(
                  child: InkWell(
                      onTap: () {
                        launchUrl(
                            Uri.parse('https://hashnode.com/@AbhineyaBeduru'));
                      },
                      child: iconContainer('assets/images/hashnode.png')),
                ),
                SizedBox(
                  width: 30,
                ),
                Material(
                  child: InkWell(
                      onTap: () {
                        launchUrl(Uri.parse(
                                'https://developers.google.com/profile/u/Abhineya')
                            // 'https://developers.google.com/profile/u/Abhineya'
                            //     as Uri
                            );
                      },
                      child: iconContainer('assets/images/gdsc.png')),
                ),
              ],
            )
          ]),
        ),
        Spacer(),
        Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
        ]),
        SizedBox(
          width: 100,
        )
      ],
    ),
  );
}
