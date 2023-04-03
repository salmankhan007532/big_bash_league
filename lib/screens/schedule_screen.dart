import 'package:big_bash_league/utils/app_color.dart';
import 'package:big_bash_league/utils/data_api.dart';
import 'package:big_bash_league/widget/customAppbar.dart';
import 'package:big_bash_league/widget/schedule_widget.dart';
import 'package:flutter/material.dart';
import '../modulse/matchs.dart';


class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const CustomAppBar(titleText: 'Schedule',),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: FutureBuilder<List<Match>>(
          future: DataApi.getAllMatches(context),
          builder: (BuildContext context, AsyncSnapshot snapshot){
            if(snapshot.hasData){
              List<Match> matches =snapshot.data;

              return ListView.builder(
                  itemCount: matches.length,
                  itemBuilder: (context, index){
                    return ScheduleWidget(match: matches[index],);

                  });
            }else{
              return const Center(child: CircularProgressIndicator(color: Colors.blue,),);
            }

          },
        )
      ),
    );

  }
}
