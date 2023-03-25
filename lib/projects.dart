import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: _desktopProjectPage,
    );
  }
}

Widget _desktopProjectPage(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
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
              'Projects',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Sriracha',
                  fontSize: 30,
                  decoration: TextDecoration.none),
            ),
          ],
        ),
        SizedBox(
          height: 80,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 30,
              ),
              _projectContainer(context, 'T-turban India',
                  'An application made using flutter which is used for letting user experience a virtual museum of Turbans.'),
              SizedBox(
                width: 30,
              ),
              _projectContainer(context, 'Electrician App',
                  'An application made using flutter which is used for electric services / house services.'),
              SizedBox(
                width: 30,
              ),
              _projectContainer(context, 'Portfolio Website',
                  'A Website made using flutter.(A freelancing project )'),
              SizedBox(
                width: 30,
              ),
            ],
          ),
        ),
        Spacer(),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 60,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xff7C46FF), Color(0xffFF449B)],
          )),
          child: Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text(
                '+91-9136882733',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Courgette',
                    decoration: TextDecoration.none,
                    color: Colors.white),
              ),
              Spacer(),
              Text(
                'abhineyabeduru@gmail.com',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Courgette',
                    decoration: TextDecoration.none,
                    color: Colors.white),
              ),
              SizedBox(
                width: 30,
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget _projectContainer(BuildContext context, String title, String content) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      width: 370,
      height: 250,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Sriracha',
                  decoration: TextDecoration.none,
                  color: Colors.black),
            ),
            Text(
              content,
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Sriracha',
                  decoration: TextDecoration.none,
                  color: Colors.black),
            )
          ],
        ),
      ),
    ),
  );
}
