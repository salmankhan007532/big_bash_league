import 'package:big_bash_league/utils/app_color.dart';
import 'package:flutter/material.dart';

class TeamWidget extends StatelessWidget {
  const TeamWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(10),
        //border: Border.all(color: Colors.black,width: 3)
      ),
      child: Column(
        children: [

          Container(
            // height: 108,
            // width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
              // border: Border.all(color: Colors.black,width: 2),
              // image: DecorationImage(
              //   image: AssetImage('assets/images/ms.png'),fit: BoxFit.cover
              // )
            ),
            child: Image.asset('assets/images/teamLogo/Sydney Sixers flag.png',fit: BoxFit.cover,),
          ),
          const SizedBox(height: 11,),
          Container(
            // height:40,
             width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
              // border: Border.all(color: Colors.black,width: 2)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text('Teame name',style: TextStyle(fontSize:12,fontWeight: FontWeight.w900 ),),
                Text('Captain name',style: TextStyle(fontSize:12,fontWeight: FontWeight.w900 ),),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
