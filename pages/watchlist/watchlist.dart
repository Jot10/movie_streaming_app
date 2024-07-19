import 'package:flutter/material.dart';
import 'package:movie_streaming/const/colors.dart';
import 'package:movie_streaming/const/style.dart';
// import 'package:movie_streaming/custom/movie.dart';
// import 'package:movie_streaming/custom/previewpage.dart';
// import 'package:movie_streaming/pages/home/search.dart';
import 'package:movie_streaming/routes.dart';

class watchpage
 extends StatefulWidget {
  const watchpage
  ({super.key});

  @override
  State<watchpage> createState() => _watchpageState();
}

class _watchpageState extends State<watchpage> {
  List watchlistm=['assets/dunef6.jpeg','assets/f9.jpeg'];
  List watchlists=['assets/s5.jpeg','assets/s3.jpeg'];
  @override
  Widget build(BuildContext context) {
    var mywidth= MediaQuery.of(context).size.width;
    var myheight= MediaQuery.of(context).size.height;
    return DefaultTabController(length: 2, child:
    Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Watch List',style: textStyleW700,),
        actions: [
           IconButton(onPressed: () {
             router.go('/navigation/search');
           // Navigator.push(context, MaterialPageRoute(builder: (context) => searchPage(),));
          }, icon: Icon(Icons.search, color: textcolor,))
          //Icon(Icons.search, color: Colors.white,)
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  indicatorColor: Colors.transparent,
                  dividerHeight: 0,
                  unselectedLabelColor: Colors.white,
                  labelColor: Colors.yellow,
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  tabs: [
                          Tab(text: 'Movie',),
                          Tab(text: 'TV Series',),
                         
                        ],
                        
                        ),
              ),
              // Positioned(
              //   right: 4,top: 4,
              //   child: Container(height: 40,width: 80,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Text('Filter', style: textstylewhite),
              //       SizedBox(width: 8,),
              //       Icon(Icons.filter_alt_outlined, color:textcolor,size: 20,)
              //     ],
              //   ),))
            ],
          ),
        ),
        ),
        body: TabBarView(children: [
          Container(color: Colors.black,
          child: ListView.builder(
          itemCount: watchlistm.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                 onTap: () {
                  router.go('/navigation/streaming');
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => Streaming(),));
                            },
                child: Container(
                  height: myheight/6,width: mywidth,
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: myheight/6.6,width: 80,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),image: DecorationImage(image: AssetImage(watchlistm[index])))),
                    ),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(height: 20,width: mywidth/1.7,child: Text('movie name', style: textStyleW700,),),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(height: 20,width: mywidth/1.7,child: Text('movie ', style: textstylegrey,),)
                      ),
                       Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(height: 20,width: mywidth/1.7,child: Text('genre', style: textstylegrey,),)
                      )
                    ],)
                  ],),
                ),
              ),
            );
          },),
          ),
          Container(color: Colors.black,
           child: ListView.builder(
          itemCount: watchlists.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                 onTap: () {
                  router.go('/navigation/streaming');
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => Streaming(),));
                            },
                child: Container(
                  height: myheight/6,width: mywidth,
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: myheight/6.6,width: 80,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), image: DecorationImage(image: AssetImage(watchlists[index])))),
                    ),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(height: 20,width: mywidth/1.7,child: Text('Series name', style: textStyleW700,),),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(height: 20,width: mywidth/1.7,child: Text('TV Series ', style: textstylegrey,),)
                      ),
                       Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(height: 20,width: mywidth/1.7,child: Text('genre', style: textstylegrey,),)
                      )
                    ],)
                  ],),
                ),
              ),
            );
          },),)
        ]
        ),
    ));
  }
}