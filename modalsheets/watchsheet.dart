import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming/const/colors.dart';
import 'package:movie_streaming/const/style.dart';

class WatchSheet extends StatelessWidget {
  const WatchSheet({super.key});

  @override
  Widget build(BuildContext context) {

       var myheight= MediaQuery.of(context).size.height;
    var mywidth = MediaQuery.of(context).size.width;
    return
    Wrap(
                      children:<Widget> [
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: const Center(child: Text('play "the movie"', style: textstylegrey,))
                          ),
                        ),

                         Container(
                           child: Center(child: Text('Choose quality', style: textStyleW700.copyWith(color: Colors.white,fontSize: 20),))
                         ),

                         Padding(
                           padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                           child: Container(
                            height: myheight/10,
                            width: mywidth,
                            decoration: BoxDecoration(
                              // boxShadow: [BoxShadow(color: Colors.grey,
                              // spreadRadius: 3,
                              // blurRadius: 6)],
                               borderRadius: BorderRadius.circular(2),
                                    color: blackcolor,
                                    border: Border.all(color: Colors.grey)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 40,width: 40,
                                        //color: const Color.fromARGB(255, 176, 206, 230),
                                        child:Image.asset('assets/cinestream.png')),
                                    ),
                                
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Column(
                                       children: [
                                        SizedBox(height: 9,),
                                         Container(child: Text('CineStream',style: textStyleW700.copyWith(fontSize: 16),)),
                                       Container(height: 20,width: 40,
                                       // decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                        child: Text('FREE',style: textStyleW700.copyWith(color: Colors.grey),)),
                                       ],


                                     )
                                   ),
                                     
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.radio_button_checked, color: Colors.blue,),
                                )
                              ],
                            ),
                           ),
                         ),

                          Padding(
                           padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                           child: Container(
                            height: myheight/10,
                            width: mywidth,
                            decoration: BoxDecoration(
                            //   boxShadow: [BoxShadow(color: Colors.grey,
                            //   spreadRadius: 3,
                            //   blurRadius: 6)],
                               borderRadius: BorderRadius.circular(2),
                                    color: blackcolor,
                                    border: Border.all(color: Colors.grey)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 40,width: 40,
                                        //color: const Color.fromARGB(255, 176, 206, 230),
                                        child: Image.asset('assets/download 9.png')),
                                    ),
                                
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Column(
                                       children: [
                                        SizedBox(height: 9,),
                                         Container(child: Text('SPlayer',style: textStyleW700.copyWith(fontSize: 16),)),
                                       Container(height: 20,width: 40,
                                       // decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                        child: Text('FREE',style: textStyleW700.copyWith(color: Colors.grey),)),
                                       ],


                                     )
                                   ),
                                     
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.radio_button_unchecked,),
                                )
                              ],
                            ),
                           ),
                         ),
                          Padding(
                           padding: const EdgeInsets.only(left: 20, right: 20, top: 10,),
                           child: Container(
                            height: myheight/10,
                            width: mywidth,
                            decoration: BoxDecoration(
                              // boxShadow: [BoxShadow(color: Colors.grey,
                              // spreadRadius: 3,
                              // blurRadius: 6)],
                               borderRadius: BorderRadius.circular(2),
                                    color: blackcolor,
                                    border: Border.all(color: Colors.grey)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 40,width: 40,
                                       // color: const Color.fromARGB(255, 176, 206, 230),
                                        child: Image.asset('assets/download 8.png')),
                                    ),
                                
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Column(
                                       children: [
                                        SizedBox(height: 9,),
                                         Container(child: Text('MX Player',style: textStyleW700.copyWith(fontSize: 16),)),
                                       Container(height: 20,width: 40,
                                        //decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                        child: Text('FREE',style: textStyleW700.copyWith(color: Colors.grey),)),
                                       ],


                                     )
                                   ),
                                     
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.radio_button_unchecked,),
                                )
                              ],
                            ),
                           ),
                         ),

                         Padding(
                           padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 20),
                           child: Container( width: mywidth,
                             child: MaterialButton(onPressed: () {
                               
                             },
                             color: Colors.amber,
                             child: Text('Select and Play', style: textstylewhite,),
                             ),
                           ),
                         )
                
                      ],
                    );
  }
}