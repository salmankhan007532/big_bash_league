import 'package:big_bash_league/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  var image;
  var text;
  var ontap;
   CustomContainer({Key? key,required this.image,required this.text,this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
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
                child: Image(image: AssetImage(image.toString()),)),
             Text(text.toString(),style: const TextStyle(fontSize:25 ,fontWeight: FontWeight.w700,color: AppColors.blue),),
          ],
        ),
      ),
    );
  }
}
