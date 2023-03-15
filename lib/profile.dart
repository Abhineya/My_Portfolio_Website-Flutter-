import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flip_card/flip_card.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
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
                    fontFamily: 'Kalam',
                    fontSize: 50,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: Text(
                      'I Am Abhineya Beduru',
                      style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Kalam',
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    child: Text(
                      'I am a Flutter Developer',
                      style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Kalam',
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    child: Text(
                      'Alpha-MLSA',
                      style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Kalam',
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.none),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    child: Text(
                      'Tech-Executive at GDSC BSIOTR',
                      style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Kalam',
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.none),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    child: Text(
                      'Tech-Associate at MLSC BSIOTR',
                      style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Kalam',
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.none),
                    ),
                  ),
                ]),
          ),
          Spacer(),
          FlipCard(
            front: Container(
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.black),
                boxShadow: [],
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
                // border: Border.all(color: Colors.black),
                boxShadow: [],
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
         SizedBox(width: 170,)
        ],
      ),
    );
  }
}
