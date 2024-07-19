import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_streaming/const/style.dart';

class ShareSheet extends StatefulWidget {
  const ShareSheet({super.key});

  @override
  State<ShareSheet> createState() => _ShareSheetState();
}

class _ShareSheetState extends State<ShareSheet> {
List shareicons= ['assets/Isolation_Mode.png','assets/gmail (1) 1.png','assets/google-maps 1.png','assets/Isolation_Mode (1).png','assets/Group.png','assets/email 1.png','assets/logo.png','assets/meet 1.png'];
  List iconnames=['WhatsApp','Gmail','Maps','Facebook','Direct','Messages', 'Chats','Meet'];

  @override
  Widget build(BuildContext context) {
     var myheight= MediaQuery.of(context).size.height;
    var mywidth = MediaQuery.of(context).size.width;
    return Wrap(
                      children:<Widget> [
                        Container(
                          child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: IconButton(onPressed: () {
                                      
                                    }, icon: Icon(Icons.arrow_back_ios)),
                                  ),
                                  Text('Share via', style: textStyleW700.copyWith(color: Colors.black, fontSize: 20),)
                                ],
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.cancel, color: Colors.grey,),
                              )
                            ],
                          ),
                        ),
                       
                         Padding(
                           padding: const EdgeInsets.only(left: 20, right: 20),
                           child: Container(
                            height: myheight/8,
                            width: mywidth,
                            decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(2),
                                    color: const Color.fromARGB(255, 199, 199, 199)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Text('url of the movie/series', style: textStyleW700.copyWith(fontSize: 13, color: Colors.black),),
                               ),
                                 Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.copy),
                                      )
                              ],
                            ),
                           ),
                         ),

                          Padding(
                           padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                           child: Container(
                            height: myheight/6,
                            width: mywidth,
                           
                            child: Column(
                              children: [
                                Container(
                                  height: 60,
                                  width: mywidth,
                                 
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: CircleAvatar(backgroundColor: Colors.blue,
                                        radius: 25,child: Icon(Icons.link, color: Colors.white,),)
                                      ),
                                      SizedBox(width: 10,),
                                      Column(
                                        children: [
                                          Container(
                                            width: 200,
                                            child: Text('Link Sharing',style: textStyleW700.copyWith(fontSize: 13, color: Colors.black))),
                                             Container(
                                            width: 200,
                                            child: Text('Share large files up to 2GB per day', style: textStyleW700.copyWith(fontSize: 13, color: Colors.grey))),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  width: mywidth,
                                  color: Colors.grey,
                                ),

                                Container(
                                  height: 53,
                                  width: mywidth,
                                 
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(6.0),
                                        child: CircleAvatar(backgroundColor: Colors.blue,
                                        radius: 25,child: Icon(Icons.ios_share, color: Colors.white,),)
                                      ),
                                      SizedBox(width: 10,),
                                      Column(
                                        children: [
                                          SizedBox(height: 5,),
                                          Container(
                                            width: 200,
                                            child: Text('Share to device',style: textStyleW700.copyWith(fontSize: 13, color: Colors.black))),
                                             Container(
                                            width: 200,
                                            child: Text('Share with smart view', style: textStyleW700.copyWith(fontSize: 13, color: Colors.grey))),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                           ),
                         ),

                          Padding(
                           padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                           child: Container(
                            height: myheight/3.8,
                            width: mywidth,
                            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 10),
                            itemCount: shareicons.length,
                            itemBuilder: (context, index) {
                              return Container(height: 60,width: 60, 
                              child: Column(
                                children: [
                                  Container(height: 50,width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    image: DecorationImage(image: AssetImage(shareicons[index]))
                                  ),),
                                  Text(iconnames[index], style: textStyleW700.copyWith(color: Colors.black),)
                                ],
                              ),
                              );
                            },),
                            
                           ),
                         )
                      ],
                    );
  }
}