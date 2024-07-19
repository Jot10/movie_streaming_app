import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming/const/colors.dart';
import 'package:movie_streaming/const/style.dart';

class DownloadSheet extends StatelessWidget {
  const DownloadSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var myheight= MediaQuery.of(context).size.height;
    var mywidth = MediaQuery.of(context).size.width;
    return Wrap(
                      children:<Widget> [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: const Center(child: Text('Download "Olaf Presnts"', style: textstylegrey,))
                          ),
                        ),

                         Container(
                           child: Center(child: Text('Choose quality', style: textStyleW700.copyWith(fontSize: 20),))
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
                                        color: const Color.fromARGB(255, 176, 206, 230),
                                        child: Icon(Icons.download)),
                                    ),
                                
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Column(
                                       children: [
                                        SizedBox(height: 9,),
                                         Container(child: Text('SD 360P',style: textStyleW700.copyWith(fontSize: 16),)),
                                       Container(height: 20,width: 40,
                                        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                        child: Text(' MP4',style: textStyleW700.copyWith(color: Colors.grey),)),
                                       ],


                                     )
                                   ),
                                     
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.arrow_forward_ios,),
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
                                        color: const Color.fromARGB(255, 176, 206, 230),
                                        child: Icon(Icons.download)),
                                    ),
                                
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Column(
                                       children: [
                                        SizedBox(height: 9,),
                                         Container(child: Text('HD 720P',style: textStyleW700.copyWith(fontSize: 16),)),
                                       Container(height: 20,width: 40,
                                        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                        child: Text(' MP4',style: textStyleW700.copyWith(color: Colors.grey),)),
                                       ],


                                     )
                                   ),
                                     
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.arrow_forward_ios,),
                                )
                              ],
                            ),
                           ),
                         ),
                          Padding(
                           padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
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
                                        color: const Color.fromARGB(255, 176, 206, 230),
                                        child: Icon(Icons.download)),
                                    ),
                                
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Column(
                                       children: [
                                        SizedBox(height: 9,),
                                         Container(child: Text('FHD 1080P',style: textStyleW700.copyWith(fontSize: 16),)),
                                       Container(height: 20,width: 40,
                                        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                                        child: Text(' MP4',style: textStyleW700.copyWith(color: Colors.grey),)),
                                       ],


                                     )
                                   ),
                                     
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.arrow_forward_ios,),
                                )
                              ],
                            ),
                           ),
                         ),
                         



                        //  Padding(
                        //    padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 20),
                        //    child: Container( width: mywidth,
                        //      child: Row(
                        //        children: [

                        //       Container(width: 170,
                        //         child: MaterialButton(onPressed: () {
                                     
                        //            },
                        //            elevation: 10.0,
                        //            color: whitecolor,
                        //            child: Row(
                        //              children: [
                        //         SizedBox(width: 30,),
                        //               Icon(Icons.arrow_back_ios,),
                        //                Text('Back', style: textStyleW700.copyWith(color: Colors.black),),
                                
                        //              ],
                        //            ),
                        //            ),
                        //       ),
                        //       SizedBox(width: 10,),

                        //          Container(width: 170,
                        //            child: MaterialButton(onPressed: () {
                                     
                        //            },
                        //            color: Colors.blue,
                        //            child: Row(
                        //              children: [
                        //               SizedBox(width: 30,),
                        //                Text('Download', style: textstylewhite,),
                        //                Icon(Icons.arrow_downward, color: whitecolor,)
                        //              ],
                        //            ),
                        //            ),
                        //          ),
                        //        ],
                        //      ),
                        //    ),
                        //  )

                        

                         
                      ],
                    );
  }
}