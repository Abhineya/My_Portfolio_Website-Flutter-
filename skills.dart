import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_builder/responsive_builder.dart';



  // 'https://www.linkedin.com/feed/update/urn:li:activity:7021745270048571392/'
  // 'https://www.linkedin.com/feed/update/urn:li:activity:7041853585868873728/'
  // 'https://www.linkedin.com/feed/update/urn:li:activity:7044647845575991297/'
  // 'https://www.linkedin.com/feed/update/urn:li:activity:7007744191459930112/'
  // 'https://www.linkedin.com/feed/update/urn:li:activity:6970007847774433280/'


class SkillPage extends StatelessWidget {
  const SkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: _desktopSkillPage,
    );
  }
}

Widget _desktopSkillPage(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    child: Column(children: [
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
            'SKILLS',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Sriracha',
                fontSize: 30,
                decoration: TextDecoration.none),
          ),
        ],
      ),
      SizedBox(
        width: 80,
      ),
      Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _skillContainer('assets/images/flutter.png'),
                _skillContainer('assets/images/firebase.png'),
                _skillContainer('assets/images/java.png'),
                _skillContainer('assets/images/cpp.png'),
                _skillContainer('assets/images/html.png'),
               
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 _skillContainer('assets/images/javascript.png'),
                _skillContainer('assets/images/figma.png'),
                _skillContainer('assets/images/github.png'),
                _skillContainer('assets/images/git.png'),
                _skillContainer('assets/images/canva.png'),
              ],
            ),
          ],
        ),
      )
    ]),
  );
}

Widget _skillContainer(String url) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Container(
      height: 150,
      width: 150,
      child: Image(
        image: AssetImage(url),
        fit: BoxFit.cover,
      ),
    ),
  );
}
