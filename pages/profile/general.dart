import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_streaming/const/colors.dart';
import 'package:movie_streaming/const/style.dart';

class generalSettings extends StatelessWidget {
  const generalSettings({super.key});

  @override
  Widget build(BuildContext context) {
    var mywidth= MediaQuery.of(context).size.width;
    var myheight= MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon:Icon(Icons.arrow_back_ios), color: textcolor,),
        title: Text('General', style: textStyleW700,),
      ),
      body: Column(
        children: [
          Expanded(child: Container(width: mywidth,color: Colors.black,
          child: Column(
            children: [
              Container(height: myheight/19,width: mywidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Download Quality',style: textStyleW700,),
                ),
                Row(children: [
                  Text('Always ask', style: textstylegrey,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward_ios, color: textcolor,size: 16,),
                  )
                ],)
              ],),),
              Container(height: myheight/19,width: mywidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Download on Wi-Fi Only',style: textStyleW700,),
                  
                ),
                Icon(Icons.toggle_off_outlined, color: textcolor,size: 40,)
              ],),),
              Divider(height: 1,color: appcolor,)
            ],
          ),))
        ],
      ),
    );
  }
}