import 'package:big_bash_league/screens/histoy_screen.dart';
import 'package:big_bash_league/screens/schedule_screen.dart';
import 'package:big_bash_league/screens/teams_screen.dart';
import 'package:big_bash_league/screens/veneus_screen.dart';
import 'package:big_bash_league/utils/app_color.dart';
import 'package:big_bash_league/widget/customAppbar.dart';
import 'package:big_bash_league/widget/custome_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
        titleText: 'Home',
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 20),
          children: [
            CustomContainer(
              image: 'assets/images/icons/Schedule.png',
              text: 'Schedule',
              ontap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                     return ScheduleScreen();
                    },
                  ),
                );
              },
            ),
            CustomContainer(
              image: 'assets/images/icons/venues.png',
              text: 'Venues',
              ontap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return VeneusScreen();
                    },
                  ),
                );
              },
            ),
            CustomContainer(
              image: 'assets/images/icons/history.png',
              text: 'History',
              ontap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return HistoryScreen();
                    },
                  ),
                );
              },
            ),
            CustomContainer(
              image: 'assets/images/icons/teams.png',
              text: 'Teams',
              ontap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return TeamsScreen();
                    },
                  ),
                );
              },
            ),
            CustomContainer(
              image: 'assets/images/icons/liveScore.png',
              text: 'Live Score',

            ),
            CustomContainer(
              image: 'assets/images/icons/highlights.png',
              text: 'Highlights',
            ),
          ],
        ),
      ),
    );
  }
}
