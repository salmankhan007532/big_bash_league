import 'package:big_bash_league/utils/app_color.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 170,

      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Container(
              width: 120,
              height: 118,
              child: const Image(image: AssetImage('assets/images/icons/teams.png'),)),
          const Text('Venues',style: TextStyle(fontSize:25 ,fontWeight: FontWeight.w700,color: AppColors.blue),),
        ],
      ),
    );
  }
}
