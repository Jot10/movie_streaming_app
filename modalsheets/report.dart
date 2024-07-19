import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming/const/style.dart';

class ReportSheet extends StatefulWidget {
  const ReportSheet({super.key});

  @override
  State<ReportSheet> createState() => _ReportSheetState();
}

class _ReportSheetState extends State<ReportSheet> {
  @override
  Widget build(BuildContext context) {
     var myheight= MediaQuery.of(context).size.height;
    var mywidth = MediaQuery.of(context).size.width;
    return Wrap(
                      children:<Widget> [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: Center(child: Text('REPORT', style: textstylegrey,))
                          ),
                        ),

                         Container(
                           child: Center(child: Text('Olaf Presents', style: textStyleW700.copyWith(fontSize: 20),))
                         ),


                         Padding(
                           padding: const EdgeInsets.only(left: 10,right: 10),
                           child: Container(width: mywidth,height: 50,
                           child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               Row(
                                children: [
                                  Container(height: 10,width: 10, color:Colors.amber),
                                  
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Video',style: textstylewhite,),
                                  )
                                ],
                               ),
                               Row(
                                children: [
                                  Container(height: 10,width: 10, color:Colors.amber ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Audio',style: textstylewhite,),
                                  )
                                ],
                               ),
                               Row(
                                children: [
                                  Container(height: 10,width: 10, color:Colors.amber),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Subtitle', style: textstylewhite,),
                                  )
                                ],
                               ),
                               Row(
                                children: [
                                  Container(height: 10,width: 10, color: Colors.amber),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Other',style: textstylewhite,),
                                  )
                                ],
                               ),
                             ],
                           ),),
                         ),
                       
                         Padding(
                           padding: const EdgeInsets.only(left: 20, right: 20),
                           child: Container(
                            height: myheight/8,
                            width: mywidth,
                            decoration: BoxDecoration(
                              boxShadow: [BoxShadow(color: Colors.grey,
                              spreadRadius: 3,
                              blurRadius: 6)],
                               borderRadius: BorderRadius.circular(2),
                                    color: const Color.fromARGB(255, 237, 213, 142)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Text('Describe the issue here(Optional)',)
                               ),
                                 
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
                             child: Text('Rate it', style: textstylewhite,),
                             ),
                           ),
                         )

                        

                         
                      ],
                    );
  }
}