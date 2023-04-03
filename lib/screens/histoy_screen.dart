import 'package:big_bash_league/utils/app_color.dart';
import 'package:big_bash_league/widget/customAppbar.dart';
import 'package:big_bash_league/widget/history_widget.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        titleText: 'History',
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:18 ,right: 20,top: 30,bottom:21 ),
        child: ListView(
          children: const [
            HistoryWidget(),
            SizedBox(height: 20,),

            HistoryWidget(),
            SizedBox(height: 20,),

            HistoryWidget(),
            SizedBox(height: 20,),

            HistoryWidget(),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
