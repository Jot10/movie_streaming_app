import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:movie_streaming/const/colors.dart';
// import 'package:movie_streaming/custom/movie.dart';
// import 'package:movie_streaming/custom/previewpage.dart';
import 'package:movie_streaming/modalsheets/watchsheet.dart';
// import 'package:movie_streaming/pages/home/popular.dart';
// import 'package:movie_streaming/pages/home/search.dart';
// import 'package:movie_streaming/pages/home/signin.dart';
// import 'package:movie_streaming/pages/home/trending.dart';
import 'package:movie_streaming/routes.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List movies=['assets/snowvalleyf1.jpeg','assets/goodonef3.jpeg','assets/driftf4.jpeg','assets/perfassistantf5.jpeg',
  'assets/dunef6.jpeg','assets/f7.jpeg','assets/f8.jpeg','assets/f9.jpeg','assets/f10.jpeg'];
  List carmovies=['assets/snowvalleyf1.jpeg','assets/goodonef3.jpeg','assets/driftf4.jpeg'];


  @override
  Widget build(BuildContext context) {
   // var myheight= MediaQuery.of(context).size.height;
    var mywidth = MediaQuery.of(context).size.width;
   // var myheight = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/cinestreamappbar.png'),
          ),
          leadingWidth: 160,
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  router.go('/navigation/search');
                 // Navigator.push(context, MaterialPageRoute(builder: (context) => searchPage(),));
                },
                child: Icon(Icons.search, color: Colors.white,)),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: InkWell(
                  onTap: () {
                    router.go('/navigation/signin');
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => signIn(),));
                  },
                  child: Icon(Icons.person, color: Colors.black,)),
                radius: 13,
              ),
            ),

            IconButton(onPressed: () async{
              await GoogleSignIn().signOut();
              FirebaseAuth.instance.signOut();
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('logout Successful')));
            }, icon: Icon(Icons.power_settings_new))
          ],
        ),  
        body: Column(
          children: [
            Container(
            height: 60,
            width: mywidth,
            color: Colors.black,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    width: 60,
                    child: Center(child: 
                    InkWell(
                      onTap: () {
                        router.go('/navigation/trending');
                       // Navigator.push(context, MaterialPageRoute(builder: (context) => trending(),));
                      },
                      child: Text('Trending', style: TextStyle(fontWeight:FontWeight.bold, color: Colors.white),))),
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                    height: 80,
                    width: 60,
                    child: Center(child: 
                    
                    InkWell(
                       onTap: () {
                        router.go('/navigation/popular');
                       // Navigator.push(context, MaterialPageRoute(builder: (context) => popular(),));
                      },
                      child: Text('Popular',style: TextStyle(fontWeight:FontWeight.bold, color: Colors.white),))),
                    ),
                  ),
              ],
            ),
            ),
            Expanded(
             // height: myheight/1.334,
              //height: 587.2,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        router.go('/navigation/streaming');
                        //Navigator.push(context,MaterialPageRoute(builder: (context) => Streaming(),));
                      },
                      child: Container(
                        height: 380,
                        width: mywidth,
                        color: Colors.black,
                        child: ListView(
                          children: [
                            CarouselSlider(
                            items:[
                            Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                   height: 300,
                                   width: 220,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(10),
                                     image: DecorationImage(image: AssetImage('assets/perfassistantf5.jpeg',),fit: BoxFit.fill)
                                   ),
                             
                                 ),
                               ),
                                Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                   height: 300,
                                   width: 220,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(10),
                                     image: DecorationImage(image: AssetImage('assets/goodonef3.jpeg',),fit: BoxFit.fill)
                                   ),
                             
                                 ),
                               ),
                                Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                   height: 300,
                                   width: 220,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(10),
                                     image: DecorationImage(image: AssetImage('assets/driftf4.jpeg',),fit: BoxFit.fill)
                                   ),
                             
                                 ),
                               )
                          
                            ],   
                            options: CarouselOptions(
                                height: 350.0, 
                                enlargeCenterPage: true, 
                                autoPlay: true, 
                                aspectRatio: 2.0, 
                                autoPlayCurve: Curves.fastOutSlowIn, 
                                enableInfiniteScroll: true, 
                                autoPlayAnimationDuration: Duration(milliseconds: 800), 
                                viewportFraction: 0.5, 
                            ))
                          ],
                        ),
                        ),
                    ),
                    // Container(
                    //   height: 380,
                    //   width: mywidth,
                    //   color: Colors.black,
                    //   child: ListView(
                    //     children: [
                    //       CarouselSlider(
                    //       items:[
                    //        ListView.builder(
                    //          itemCount: movies.length,
                    //          itemBuilder: (context, index) {
                    //            return Padding(
                    //            padding: const EdgeInsets.all(8.0),
                    //            child: Container(
                    //              height: 300,
                    //              width: 190,
                    //              decoration: BoxDecoration(
                    //                borderRadius: BorderRadius.circular(10),
                    //                image: DecorationImage(image: AssetImage(carmovies[index],),fit: BoxFit.fill)
                    //              ),
                           
                    //            ),
                    //          );
                    //          },
                    //          scrollDirection: Axis.horizontal,
                                                    
                    //        )
                        
                    //       ],   
                    //       options: CarouselOptions(
                    //           height: 350.0, 
                    //           enlargeCenterPage: true, 
                    //           autoPlay: true, 
                    //           aspectRatio: 2.0, 
                    //           autoPlayCurve: Curves.fastOutSlowIn, 
                    //           enableInfiniteScroll: true, 
                    //           autoPlayAnimationDuration: Duration(milliseconds: 800), 
                    //           viewportFraction: 0.5, 
                    //       ))
                    //     ],
                    //   ),
                    //   ),
                    // Container(
                    // height: 380,
                    // width: mywidth,
                    // color: Colors.black,
                    // ),
                    Container(
                    height: 60,
                    width: mywidth,
                    color: Colors.black,
                    child: Row(
                      children: [
                          Container(
                            height: 80,
                            width: 90,
                            child: Column(
                              children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: InkWell(
                                onTap: () {
                                  router.go('/navigation/streaming');
                                },
                                child: Icon(Icons.info_outline, color: Colors.white,size: 25,)),
                            ),
                            Container(
                              height: 20,
                              width: 80,
                              child: Center(child: Text('Detail',style: TextStyle(color: Colors.white,  fontSize: 12),)),
                            )                         
                              ],
                            ),
                          ),
                          Container(
                            height:48,
                            width: 220,
                            child: MaterialButton(
                              
                              onPressed: (){
                                 showModalBottomSheet(context: context,
                  backgroundColor: Colors.black,
                 //barrierColor: Colors.transparent,
                  isScrollControlled: true,
                  useSafeArea: true,
                  enableDrag: false,
                  showDragHandle: false,
                   builder:(context) => WatchSheet(),);
                              }, child: Text('WATCH NOW',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),color:Colors.yellow,shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),),
                          ),
                           Container(
                            height: 80,
                            width: 80,
                            child: Column(
                              children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(Icons.bookmark_border_outlined, color: Colors.white,size: 25,),
                            ),
                            Container(
                              height: 20,
                              width: 80,
                              child: Center(child: Text('Add List',style: TextStyle(color:textcolor, fontSize: 12),)),
                            )                         
                              ],
                            ),
                          ),
                    ],),
                    ),
                    Container(
                      height: 220,
                      width: mywidth,
                      color: Colors.black,
                      child: Column(
                        children: [
                          Row(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Trending',style: TextStyle(color: textcolor),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 240),
                              child: Text('View all',style: TextStyle(color: textcolor),),
                            )                     
                          ],),
                          InkWell(
                            onTap: () {
                              router.go('/navigation/streaming');
                              //Navigator.push(context, MaterialPageRoute(builder: (context) => Streaming(),));
                            },
                            child: Container(
                              height: 180,
                              width: mywidth,
                              child: ListView.builder(
                                itemCount: movies.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 180,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(image: AssetImage(movies[index],),fit: BoxFit.fill)
                                    ),
                            
                                  ),
                                );
                                },
                                scrollDirection: Axis.horizontal,
                                                     
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                                       Container(
                      height: 220,
                      width: mywidth,
                      color: Colors.black,
                      child: Column(
                        children: [
                          Row(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Latest',style: TextStyle(color: textcolor),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 240),
                              child: Text('View all',style: TextStyle(color: textcolor),),
                            )                     
                          ],),
                             InkWell(
                              onTap: () {
                                router.go('/navigation/streaming');
                              //Navigator.push(context, MaterialPageRoute(builder: (context) => Streaming(),));
                            },
                               child: Container(
                                                           height: 180,
                                                           width: mywidth,
                                                           child: ListView.builder(
                                itemCount: movies.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 180,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(image: AssetImage(movies[index],),fit: BoxFit.fill)
                                    ),
                               
                                  ),
                                );
                                },
                                scrollDirection: Axis.horizontal,
                                                        
                                                           ),
                                                         ),
                             )
                        ],
                      ),
                    ),
                                        Container(
                      height: 220,
                      width: mywidth,
                      color: Colors.black,
                      child: Column(
                        children: [
                          Row(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Popular',style: TextStyle(color:textcolor),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 240),
                              child: Text('View all',style: TextStyle(color: textcolor),),
                            )                     
                          ],),
                           InkWell(
                             onTap: () {
                              router.go('/navigation/streaming');
                              //Navigator.push(context, MaterialPageRoute(builder: (context) => Streaming(),));
                            },
                          
                             child: Container(
                              height: 180,
                              width: mywidth,
                              child: ListView.builder(
                                itemCount: movies.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 180,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(image: AssetImage(movies[index],),fit: BoxFit.fill)
                                    ),
                             
                                  ),
                                );
                                },
                                scrollDirection: Axis.horizontal,
                                                      
                              ),
                                                       ),
                           )
                        ],
                      ),
                    ),
                  ],
                )
              ),
            )
          ],
        ), 
      ),
    );
  }
}