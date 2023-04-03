import 'package:big_bash_league/utils/app_color.dart';
import 'package:flutter/material.dart';

class VeneusWidget extends StatelessWidget {
  const VeneusWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shadowColor: Colors.grey,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: double.infinity,
        height: 252,

        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height:196 ,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/veneus/Carrara Oval, Queensland.jpg'),fit: BoxFit.cover,
                      )
                  ),
                ),
                Opacity(
                  opacity: 0.7,
                  child: Container(
                    height: 31,
                    width: 79,
                    decoration: const BoxDecoration(
                        color: AppColors.backgroundColor,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                    ),
                    child: Center(child: Text('Pakistan',style: TextStyle(fontSize:13 ,fontWeight: FontWeight.w600 ,),)),
                  ),
                )
              ],
            ),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Stadium : Arbab niaz Cricket Stadium',style: TextStyle(fontSize:13 ,fontWeight: FontWeight.w600 ,),),
                    Text('City : Peshawar',style: TextStyle(fontSize:13 ,fontWeight: FontWeight.w600 ,),),
                  ],
                ))

          ],
        ),
      ),
    );
  }
}
