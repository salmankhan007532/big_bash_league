import 'package:big_bash_league/utils/app_color.dart';
import 'package:big_bash_league/widget/customAppbar.dart';
import 'package:flutter/material.dart';

import '../widget/team_widget.dart';

class TeamsScreen extends StatefulWidget {
  const TeamsScreen({Key? key}) : super(key: key);

  @override
  State<TeamsScreen> createState() => _TeamsScreenState();
}

class _TeamsScreenState extends State<TeamsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(titleText: 'Teams',),
      backgroundColor: AppColors.backgroundColor,

      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: GridView(gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          
          crossAxisSpacing: 22,
          mainAxisSpacing: 14, maxCrossAxisExtent: 200
        ),
          children: const [
            TeamWidget(),
            TeamWidget(),
            TeamWidget(),
            TeamWidget(),
            TeamWidget(),
            TeamWidget(),
            TeamWidget(),
            TeamWidget(),
          ],

        ),
      ),
    );
  }
}
