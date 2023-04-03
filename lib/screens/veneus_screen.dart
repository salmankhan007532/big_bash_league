import 'package:big_bash_league/utils/app_color.dart';
import 'package:big_bash_league/widget/customAppbar.dart';
import 'package:flutter/material.dart';
import 'package:big_bash_league/widget/veneus_widget.dart';
class VeneusScreen extends StatefulWidget {
  const VeneusScreen({Key? key}) : super(key: key);

  @override
  State<VeneusScreen> createState() => _VeneusScreenState();
}

class _VeneusScreenState extends State<VeneusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const CustomAppBar(titleText: 'Veneus',),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: const [
            VeneusWidget(),
            SizedBox(height: 20,),

            VeneusWidget(),
            SizedBox(height: 20,),

            VeneusWidget(),
            SizedBox(height: 20,),

            VeneusWidget(),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
