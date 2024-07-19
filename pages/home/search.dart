import 'package:flutter/material.dart';
import 'package:movie_streaming/const/colors.dart';
import 'package:movie_streaming/const/style.dart';

class searchPage extends StatelessWidget {
  const searchPage({super.key});

  @override
  Widget build(BuildContext context) {
   // var myheight= MediaQuery.of(context).size.height;
    var mywidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Row(
        children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: InkWell(
              onTap: () {
                 Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios, color: textcolor,)),
           ),
              
        ],
      ),
      title: Container(
                height: 40,width: mywidth/1.3,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'search',
                    hintStyle: textstylegrey,
                    suffixIcon: Icon(Icons.search, color: appcolor,size: 15,),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))
                  ),
                ),
              ),
      ),
      body: Column(
        children: [Expanded(child: Container(
          width: mywidth,
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Top search', style: textStyleW700.copyWith(fontSize: 17),),
          ),
        )),
        ],
      ),
    );
  }
}