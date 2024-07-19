import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:movie_streaming/const/colors.dart';
//import 'package:movie_streaming/const/colors.dart';
import 'package:movie_streaming/const/style.dart';
import 'package:movie_streaming/custom/settings.dart';
// import 'package:movie_streaming/pages/home/signin.dart';
// import 'package:movie_streaming/pages/profile/contact.dart';
// import 'package:movie_streaming/pages/profile/general.dart';
import 'package:movie_streaming/routes.dart';

class profilepage
 extends StatelessWidget {
  const profilepage
  ({super.key});

  @override
  Widget build(BuildContext context) {
     var mywidth= MediaQuery.of(context).size.width;
     var myheight= MediaQuery.of(context).size.height;
    return Scaffold(
    appBar: AppBar(title: Text('Settings',style: textStyleW700,),
    backgroundColor: Colors.black,),
    body:Column(
      children: [
        Expanded(
          child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height:myheight/5 ,width: mywidth,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color.fromARGB(255, 46, 46, 46)
                  ),
                  child: Column(
                    children: [
                      Container(height: 50,width: mywidth,child: Padding(
                        padding: const EdgeInsets.only(left: 30, top: 10),
                        child: Text('My profile', style: textStyleW700.copyWith(fontSize: 20),),
                      ),),
                      Container(height: 40,width: mywidth,child: Padding(
                        padding: const EdgeInsets.only(left: 30,),
                        child: Text('Sign in to syncronize your movies and series', style: textstylewhite,),
                      ),),
                      Container(height: 50,width: mywidth,child: Padding(
                        padding: const EdgeInsets.only(left: 30, ),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                router.go('/navigation/signin');
                                //Navigator.push(context, MaterialPageRoute(builder: (context) => signIn(),));
                              },
                              child: Container(height: 50,width: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.amber),
                              child: Center(child: Text('Continue', style: textStyleW700.copyWith(color: Colors.black),)),),
                            ),
                          ],
                        )
                      ),)
                    ],
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: CircleAvatar(radius: 50,
              //   backgroundColor: appcolor,
              //   child: Icon(Icons.person,size: 90),),
              // ),

              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Text('Guest', style: textStyleW700.copyWith(fontSize: 20),),
              // ),

              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.push(context, MaterialPageRoute(builder: (context) => signIn(),));
              //     },
              //     child: Container(height: 40,width: 100,
              //                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.amber),
              //                     child: Center(child: Text('Login', style: textStyleW700,)),),
              //   ),
              // ),
              
              InkWell(
                onTap: () {
                  router.go('/navigation/general');
                //  Navigator.push(context, MaterialPageRoute(builder: (context) =>generalSettings() ,));
                },
                child: settingscont(text: 'General',iconData: Icons.settings_outlined, )),
             // settingscont(text: 'User interface', iconData:Icons.edit_outlined),
              InkWell(
                onTap: () {
                  router.go('/navigation/contact');
                 // Navigator.push(context, MaterialPageRoute(builder: (context) => contactUs(),));
                },
                child: settingscont(text: 'Contact', iconData: Icons.mail_outline))
            ],
          ),
          
                ),
        )
        ],
    ) ,
    );
  }
}