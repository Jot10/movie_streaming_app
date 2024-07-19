// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:movie_streaming/const/colors.dart';
// import 'package:movie_streaming/const/style.dart';
// import 'package:movie_streaming/custom/button.dart';
// import 'package:movie_streaming/modalsheets/download.dart';
// import 'package:movie_streaming/modalsheets/report.dart';
// import 'package:movie_streaming/modalsheets/share.dart';
// import 'package:movie_streaming/modalsheets/watchsheet.dart';


// class hello extends StatefulWidget {
//   const hello({super.key});

//   @override
//   State<hello> createState() => _helloState();
// }

// class _helloState extends State<hello> {

//   List shareicons= ['assets/Isolation_Mode.png','assets/gmail (1) 1.png','assets/google-maps 1.png','assets/Isolation_Mode (1).png','assets/Group.png','assets/email 1.png','assets/logo.png','assets/meet 1.png'];
//   List iconnames=['WhatsApp','Gmail','Maps','Facebook','Direct','Messages', 'Chats','Meet'];
//   List x =['Hopi Grace','Abdlekarim','Alison Halstead','Abdelaziz Boumane','Hassanin','Sebastian Faure','Laura Mizere','Xavier Alba Rovo','Hopi Grace','Abdlekarim','Alison Halstead','Abdelaziz Boumane','Hassanin','Sebastian Faure',];
//   List y =['A Viking Saga','Alien Showdown: The Day the Old West..','Counterpunch','Real Play Game', 'Barely Lethal','Big Game'];
//   @override
//   Widget build(BuildContext context) {
//   var myheight = MediaQuery.of(context).size.height;
//   var mywidth = MediaQuery.of(context).size.width;

//     return SafeArea(
//       child: 
//       Scaffold(
       
//        body:DefaultTabController(
//        length: 3,
//        child: NestedScrollView(
//         headerSliverBuilder:  (BuildContext context, bool innerBoxIsScrolled){
//           return<Widget> [
//             SliverAppBar(
//             leading: GestureDetector(
//               onTap:() {
//                 Navigator.pop(context);
//               },
//               child: Icon(Icons.arrow_back_ios, color: whitecolor,)),
//             backgroundColor: Colors.transparent,
//              pinned: false,
//              expandedHeight: 433,
//              flexibleSpace: FlexibleSpaceBar(
//               background: Column(
//                 children: [
//                   Container(
//                  height: myheight/2,
//                  width: mywidth,
//                 child: Column(
//                 children: [
//               Container(
//              height: myheight/2,
//              width : mywidth,
//             //  decoration: BoxDecoration(
//             //   image: DecorationImage(
//             //   image:AssetImage('assets/Duke2.jpg'),
//             //   fit: BoxFit.fill,                    
//             //   ),
//             //  ),
//             child:Container(
//               height: 410,
//               width: 400,
//               decoration: BoxDecoration(
//               gradient:LinearGradient(colors: [Colors.transparent, Colors.black],
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter) 
//               ),
//               child: Padding(
//               padding: const EdgeInsets.only(top: 146),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(15),
//                         child: Container(
//                         height: 130,
//                         width: 100,
//                         color: Colors.yellow,
//                         // decoration: BoxDecoration(
//                         // image: DecorationImage(
//                         // image:AssetImage('assets/Duke1.jpg'),
//                         // fit: BoxFit.cover,               
//                         //             ),
//                         //            ),
//                         ),
//                       ),
                       
//                         Column(
//                            children: [
//                              Container(
//                               height: 90,
//                               width: 200,
//                               child: Padding(
//                                 padding: const EdgeInsets.only(top: 60),
//                                 child: Text('Movie Name/Series Name', style: TextStyle(color: Colors.white, fontSize: 22)),
//                               )
//                                ),
//                               Container(
//                               height: 90,
//                               width: 220,
//                               child: Column(
//                                 children: [
//                                 Row(
//                                   children: [
//                                     Container(
//                                       height: 80 ,
//                                       width: 220,
//                                       child:Column(
//                                       children: [
//                                         Row(
//                                           children: [
//                                             Center(
//                                               child: Container(
//                                                 height: 40,
//                                                 width: 30,
//                                                 child:Icon(Icons.star,color: Colors.yellow, size: 18,),
//                                               ),
//                                             ),
//                                             Container(
//                                               height: 40,
//                                               width: 60,
//                                               child:Center(child: Text('Ratings',style: TextStyle(color: Colors.yellow, fontSize: 16),)),
//                                             ),
//                                              Container(
//                                              height: 40,
//                                         width: 80,
//                                       child: Center(child: Text("(votes)", style: TextStyle(color: Colors.grey),)),
//                                     ),
//                                      Container(
//                                       height:40 ,
//                                       width: 50,
//                                       child: Center(child: Text('Year',style: TextStyle(color: Colors.white),)),
//                                     ),
//                                           ],
//                                         ),
                                    
//                                       ],
//                                       ) ,
//                                     ),
                                                                 
//                                   ],
//                                 )
//                                 ],
//                               ),
                             
//                                ),       
      
//                            ],
//                          ),
//                     ],
//                   ),
//              Container(
//               height: myheight/19,
//               width: mywidth,
//               color: blackcolor,
//               child: Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Container(
//                                 height: 40,
//                                 width: 150,
//                                 child: InkWell(

//                                   onTap: () {
//                   showModalBottomSheet(context: context,
//                   backgroundColor: Colors.black,
//                  //barrierColor: Colors.transparent,
//                   isScrollControlled: true,
//                   useSafeArea: true,
//                   enableDrag: false,
//                   showDragHandle: false,
//                    builder:(context) => WatchSheet(),);
//                 },
//                                   child: button(
//                                     mylabel: 'Watch', mycolor: Colors.yellow, icon: Icons.arrow_right_sharp,
//                                     iconColor: whitecolor, Textcolor: blackcolor),
//                                 ),
//                                   decoration:  BoxDecoration(
//                                   border: Border.all(color: const Color.fromARGB(255, 208, 201, 201)),
//                                   borderRadius: BorderRadius.circular(10),
//                                   color: Colors.yellow
//                                  ),
                                
//                                   ),
//                                   Container(
//                                 height: 40,
//                                 width: 150,
//                                 child: InkWell(
//                                    onTap: () {
//                   showModalBottomSheet(context: context,
//                   backgroundColor: Colors.white,
//                  //barrierColor: Colors.transparent,
//                   isScrollControlled: true,
//                   useSafeArea: true,
//                   enableDrag: false,
//                   showDragHandle: false,
//                    builder:(context)=> DownloadSheet(),);
//                 },
//                                   child: button(
//                                     mylabel: 'Download',
//                                      icon: Icons.arrow_downward,
//                                     iconColor: whitecolor, Textcolor:whitecolor),
//                                 ),
//                                  decoration: BoxDecoration(
//                                   border: Border.all(color: const Color.fromARGB(255, 208, 201, 201)),
//                                   borderRadius: BorderRadius.circular(10)
//                                  ),
//                                   ),
//                             ],
//                           )
//                         ],
//                        ),
//              ),
//                 ],
//               ),
//             ),
//             ),     
//              ),
//           ],
//           ),
         
//         ),
//          Container(
//               height: myheight/19,
//               width: mywidth,
//               color: Colors.black,
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Container(
//                           height: myheight/19,
//                           width: mywidth/7,
//                           color: Colors.black,
//                           child: Column(
//                             children: [
//                               Icon(Icons.bookmark_border, color: whitecolor,size: 20,),
//                               Text('Add List',style:TextStyle(color: whitecolor,fontSize: 10))
//                             ],
//                           ),
//                           ),
//                           Container(
//                           height: myheight/19,
//                           width: mywidth/7,
//                           color: Colors.black,
//                           child: Column(
//                             children: [
//                               Icon(Icons.play_arrow, color: whitecolor,size: 20),
//                               Text('Trailer',style:TextStyle(color: whitecolor,fontSize: 10))
//                             ],
//                           ),
//                           ),
//                           Container(
//                           height: myheight/19,
//                           width: mywidth/7,
//                           color: Colors.black,
//                           child: Column(
//                             children: [
//                               InkWell(

//                                   onTap: () {
//                   showModalBottomSheet(context: context,
//                   backgroundColor: Colors.white,
//                  //barrierColor: Colors.transparent,
//                   isScrollControlled: true,
//                   useSafeArea: true,
//                   enableDrag: false,
//                   showDragHandle: false,
//                    builder:(context)=> ShareSheet()
                   
//                   ,);
//                 },
                      
//                               child: Icon(Icons.share, color:whitecolor,size: 20)),
//                               Text('Share',style:TextStyle(color:whitecolor,fontSize: 10))
//                             ],
//                           ),
//                           ),
                                      
//                         ],    
//                       ),
//                        Column(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               Row(
//                                 children: [
//                                   Container(
//                                   height: myheight/19,
//                                   width: mywidth/7,
//                                   color: Colors.black,
//                                   child: Column(
//                                   children: [
//                                   InkWell(
//                                     onTap: () {
//                   showModalBottomSheet(context: context,
//                   backgroundColor: Colors.white,
//                  //barrierColor: Colors.transparent,
//                   isScrollControlled: true,
//                   useSafeArea: true,
//                   enableDrag: false,
//                   showDragHandle: false,
//                    builder:(context) => ReportSheet()
                    
//                   ,);
//                 },
//                                     child: Icon(Icons.flag, color: whitecolor,size: 20)),
//                                   Text('Report',style:TextStyle(color: whitecolor,fontSize: 10))
//                                                     ],
//                                                   ),
//                                   ),
                                  
//                                 ],
//                               ),
//                             ]
//                        )  
//                     ],
//                   ),
                    
//                 ],
//               ),
//             )
//                 ],
//               ),
//              ),
//             )
//           ];
//         }, 
//         body:
//         Column(
//           children: [
//             Container(
//               width: mywidth,
//               color: Colors.black,
//               child: TabBar(
//                 dividerHeight: 0,
//                 isScrollable: true,
//                 tabAlignment: TabAlignment.start,
//                 indicatorColor: Colors.yellow,
//                 labelColor: Colors.yellow,
//                 unselectedLabelColor: Colors.white,
//                 tabs: [
//                 Tab(text: 'Overview'),
//                 Tab(text: 'Casts'),
//                 Tab(text: 'Related')
//               ]
//               ),  
//             ),
//             Expanded(
//               child: TabBarView(
//                 children:[
//                   SingleChildScrollView(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Container(
//                         color: blackcolor,  
//                         width: mywidth, 
//                         child:Column(
//                           children: [
//                           Padding(
//                           padding: const EdgeInsets.all(15),
//                          // child: Text('Follow the mythic journey of Paul Atreides as he unites with Chani and the Fremen while on a path of revenge against the conspirators who destroyed his family. Facing a choice between the love of his life and the fate of the known universe, Paul endeavors to prevent a terrible future only he can foresee.',style: TextStyle(fontSize: 11, color: Colors.grey),),
//                         ),
//                         Container(
//                           color: blackcolor,
//                           width: mywidth,
//                           height: myheight,
//                           child: 
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Container(
//                                 width: mywidth,
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(left: 15),
//                                   child: Text('Genre',style: TextStyle(fontSize: 13, color:whitecolor, fontWeight: FontWeight.bold),),
//                                 ),
//                               ),
//                                 // Container(
//                                 //   width: mywidth,
//                                 //   child: Padding(
//                                 //   padding: const EdgeInsets.all(15),
//                                 //   child: Text('Science Fiction, Adventure',style: TextStyle(fontSize: 11, color: Colors.grey),),
//                                 //                                 ),
//                                 // ),
//                                 Container(
//                                 width: mywidth,
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(15),
//                                   child: Text('Casts',style: TextStyle(fontSize: 13, color: whitecolor, fontWeight: FontWeight.bold),),
//                                 ),
//                               ),
//                               Container(
//                                   width: mywidth,
//                                   child: Padding(
//                                   padding: const EdgeInsets.only(left: 15),
//                                 //s  child: Text('Josh Brolin, Dave Bautista, Tony Cook, Italo Amerighi, Stellan Skarsgärd, Javier Bardem, Cat Simmons, Anya Taylor-Joy, Christopher Walken, Rebecca Ferguson, Stephen Henderson, Léa Seydoux, Florence Pugh, Fouad Humaidan, Kincsö Pethö, Zendaya, Marcia Tucker, Abdellah Echahbi, Ana Cilas, Austin Butler, Rex Adams, Tracy Coogan, Anton Saunders, Tim Hilborne, Timothée Chalamet, Leon Herbert, Roger Yuan, Tara Breathnach, Joseph Charles, Hassan Najib, Rand Faris, Omar Elbooz, Babs Olusanmokun, Charlotte Rampling, Zouhair Elakkari, Cecile Sinclair, Rachid Abbad, Jasper Ryan-Carter, Giusi Merli, Molly Mcowan, Burt Caesar, Affif Ben Badra, Souhella Yacoub, Joseph Beddelem, Yvonne Campbell, Mohamed Mouraoui, Dylan Baldwin, Hajiyeva Pakiza, Vic Zander, Tim Blake Nelson, Alison Adnet, Tedroy Newell, Noureddine Hajoujou, Kathy Owen, Oxa Hazel, Hamza Sayd, Hamza Baissa, Alan Mehdizadeh, Kait Tenison, Havin Fathi, Akiko Hitomi, Botond Bóta, Sima Rostami, Imola Gaspar, Nicola Brome, Adil Achraf Sayd, Remi Fadare, Amer El-Erwadi, Hopi Grace, Abdelkarim Hussein Seli Mohamed, Alison Halstead, Abdelaziz Boumane, Hassanin, Sebastian Faure, Laura Mizere,Xavier Alba Royo',style: TextStyle(fontSize: 11, color: Colors.grey),),
//                                                                 ),
//                                 ),   
//                                  Container(
//                                 width: mywidth,
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(left: 15),
//                                   child: Text('Production',style: TextStyle(fontSize: 13, color: whitecolor, fontWeight: FontWeight.bold),),
//                                 ),
//                               ),
//                                 // Container(
//                                 //   width: mywidth,
//                                 //   child: Padding(
//                                 //   padding: const EdgeInsets.only(left:15),
//                                 //   child: Text('Legendary Pictures, Legendary Entertainment',style: TextStyle(fontSize: 11, color: Colors.grey),),
//                                 //                                 ),
//                                 // ),
//                             ],
//                           )
//                           )
                        
//                           ],
//                         )
                        
//                         )
                        
//                     ],
//                   ),
//                   ),
//                   Container(
//                     color: blackcolor,
//                     child: ListView.builder(
//                       itemCount: x.length,
//                       itemBuilder:(context, index) {
//                       return    ListTile(
//                      leading: CircleAvatar(child: Icon(Icons.image),),
//                      title: Text('Artist Name',style: TextStyle(color:whitecolor),),
//                      subtitle: Text('No of movies'),
//                      onTap: () { 
//                      },
//                                    );
//                     },),
//                   ),
//                   Container(
//                     color: blackcolor,
//                     child: ListView.builder(
//                       itemCount: y.length,
//                       itemBuilder:(context, index) {
//                       return   Container(
                        
//                         width: mywidth,
//                         child: ListTile(
//                         leading: Container( 
//                        height: 120,
//                         width: 100,
//                         color: Colors.yellow,
//                         // decoration: BoxDecoration(
//                         // image: DecorationImage(
//                         // image:AssetImage('assets/Duke1.jpg'),
//                         // fit: BoxFit.cover,               
//                         //             ),
//                         //            ),
//                                    ),
//                                                title: Text('Movies/Series',style: TextStyle(color: whitecolor, fontSize: 14),),
//                                                subtitle: Column(
//                          children: [
//                           Container(
//                             width: mywidth,
                         
//                             child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                Container(
//                             constraints: BoxConstraints(maxWidth: double.infinity),
//                             child: Text('Movie/Series',style: TextStyle(fontSize: 11, color: Colors.grey),),
//                            ),
                          
//                             Container(
//                             width: 50,
//                             child: Text('year',style: TextStyle(fontSize: 11, color: Colors.grey),),
//                            ),
//                             Container(
//                             width: 100,
//                             child: Text('Place',style: TextStyle(fontSize: 11, color: Colors.grey),),
//                            ),
//                             ],),
//                           ),
//                            Container(
//                             width: 300,
//                             child: Text('Genre',style: TextStyle(fontSize: 11, color: Colors.grey),),
//                            ),
//                          ],
//                                                ),
//                                                onTap: () { 
//                                                },
//                                      ),
//                       );
//                     },),
//                   )


//                 ]
//               )
//               )
//           ],
//         )
//         ),
//       ),
//       ),
//     );
//   }
// }


