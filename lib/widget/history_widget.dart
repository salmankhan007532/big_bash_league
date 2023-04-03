import 'package:big_bash_league/utils/app_color.dart';
import 'package:flutter/material.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shadowColor: Colors.grey,
      child: Container(

        width: 392,
        height: 222,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white
        ),
        child: Column(
          children: [
            Container(
              height: 50.17,
              width: 392.46,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10) ),

                color: AppColors.blue,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text('session 1',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,fontFamily: 'Roboto',color: Colors.white),),
                  Text('stadium name',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,fontFamily: 'Roboto',color: Colors.white),),
                ],
              ),
            ),
            Expanded(
              child:Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Winner team',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400 ,),),
                        Text('team name',style: TextStyle(fontSize: 13,fontWeight: FontWeight. w600,),),
                        Text('team Score',style: TextStyle(fontSize:12 ,fontWeight: FontWeight. w400,),),
                        SizedBox(
                          height: 91,
                          width: 135,
                          child: Image(
                            image: AssetImage('assets/images/ms.png'),
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('BBL',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700 ,),),
                        Text('2020-2021',style: TextStyle(fontSize: 14,fontWeight: FontWeight. w700,),),
                        SizedBox(height: 58,),
                        SizedBox(
                          height: 61,
                          width: 40,
                          child: Image(
                            image: AssetImage('assets/images/ms.png'),
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Runner team',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400 ,),),
                        Text('team name',style: TextStyle(fontSize: 13,fontWeight: FontWeight. w600,),),
                        Text('team Score',style: TextStyle(fontSize:12 ,fontWeight: FontWeight. w400,),),
                        SizedBox(
                          height: 91,
                          width: 135,
                          child: Image(
                            image: AssetImage('assets/images/ms.png'),
                          ),
                        )
                      ],
                    ),
                  ]
              ),

            ),

          ],
        ),
      ),
    );
  }
}
