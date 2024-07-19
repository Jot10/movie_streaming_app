import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_streaming/const/colors.dart';
import 'package:movie_streaming/const/style.dart';

class contactUs extends StatelessWidget {
  const contactUs({super.key});

  @override
  Widget build(BuildContext context) {
    var mywidth= MediaQuery.of(context).size.width;
   // var myheight= MediaQuery.of(context).size.height;
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
             Navigator.pop(context);
          },
          icon:Icon(Icons.arrow_back_ios), color: textcolor,),
        title: Text('Contact', style: textStyleW700,),
      ),
      body: Column(
        children: [
          Expanded(child: Container(width: mywidth,color: Colors.black,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/cinestream.png',scale: 2,),
              ),
              Text('Follow us via social',style: textStyleW700.copyWith(fontSize: 25),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 100,width: mywidth,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(height: 80,width: 80,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: const Color.fromARGB(255, 59, 59, 59)),
                        child: Icon(Icons.send,color: Colors.blue,),),
                        Text('Telegram',style: textstylewhite,)
                      ],
                    )
                  ],
                ),),
              )
            ],
          ),))
        ],
      ),
    );
  }
}