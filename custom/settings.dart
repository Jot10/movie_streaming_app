import 'package:flutter/material.dart';
import 'package:movie_streaming/const/colors.dart';
import 'package:movie_streaming/const/style.dart';

class settingscont extends StatelessWidget {
   settingscont({super.key, required this.text, required this.iconData});
   final IconData iconData;
  final String text;
  

  @override
  Widget build(BuildContext context) {
    var mywidth= MediaQuery.of(context).size.width;
    return Padding(
                padding: const EdgeInsets.only(right: 20,left: 20),
                child: Container(height: 50,width: mywidth,
                //color: Colors.green,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                       Icon(iconData, color: textcolor,),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text(text, style: textstylewhite,),
                       )],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward_ios,color: textcolor,size: 12,),
                  )
                ],),),
              );
  }
}