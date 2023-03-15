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
        return _desktopAchievement();
      },
    );
  }
}

Widget _desktopAchievement() {
  LinearGradient color = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [Color(0xff7C46FF), Color(0xffFF449B)],
  );
  return Container(
    decoration: BoxDecoration(
      gradient: color,
    ),
    child: Row(
      children: [
        
      ],
    ),
  );
}
