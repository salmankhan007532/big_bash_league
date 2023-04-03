import 'package:big_bash_league/utils/app_color.dart';
import 'package:flutter/material.dart';

import '../modulse/matchs.dart';

class ScheduleWidget extends StatelessWidget {

  Match match;
  ScheduleWidget({Key? key, required this.match}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      elevation: 4,
      shadowColor: Colors.grey,
      child: Container(

        width: double.infinity,
        height: 222,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white
        ),
        child: Column(
          children: [
            Container(
                height: 50.17,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10) ),

                  color: AppColors.blue,
                ),
                child: const Center(
                  child: Text('MATCH 1',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),),
                )
            ),
            Expanded(
              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(9.83),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text(match.date,style: const TextStyle(fontSize:14 ,fontWeight: FontWeight.w700),),
                        Text(match.time,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
                      ],
                    ),
                  ),
                  const Divider(thickness: 1.11,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  [
                      const SizedBox(
                        height: 68,
                        width: 68,
                        child: CircleAvatar(
                          child: Image(
                            image:  AssetImage('assets/images/ms.png'),fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          Text(match.teamOne,style: const TextStyle(fontSize:17 ,fontWeight: FontWeight.w700),),
                          const Text('VS',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700,color: Colors.red),),
                          Text(match.teamTwo,style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                        ],
                      ),
                      const SizedBox(
                        height: 68,
                        width: 68,
                        child: CircleAvatar(
                          child: Image(
                            image:  AssetImage('assets/images/ms.png'),fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),

            ),
            Container(
              height: 50.17,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10) ),
                color: AppColors.lightred,
              ),
              child:  Center(
                child: Text(match.venue,style: const TextStyle(fontWeight: FontWeight.w700,fontSize: 18,fontFamily: 'Roboto',color: AppColors.blue),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
