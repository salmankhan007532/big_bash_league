import 'package:big_bash_league/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String titleText;

  const CustomAppBar({Key? key, required this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.blue,
      title: Center(child: Text(titleText,style: TextStyle(fontSize:25,fontWeight: FontWeight.w900 ),)),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)
          )
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
