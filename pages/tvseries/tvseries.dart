import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_streaming/const/colors.dart';
import 'package:movie_streaming/const/style.dart';
// import 'package:movie_streaming/custom/movie.dart';
// import 'package:movie_streaming/custom/previewpage.dart';
// import 'package:movie_streaming/pages/home/search.dart';
import 'package:movie_streaming/routes.dart';

class tvseries
 extends StatefulWidget {
  const tvseries
  ({super.key});

  @override
  State<tvseries> createState() => _tvseriesState();
}

class _tvseriesState extends State<tvseries> {
  List series=['assets/s1.jpeg','assets/s2.jpeg','assets/s3.jpeg','assets/s4.jpeg','assets/s5.jpeg','assets/s6.jpeg','assets/s7.jpeg','assets/s8.jpeg','assets/s9.jpeg'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('TV Series',style: textStyleW700,),
        actions: [
           IconButton(onPressed: () {
             router.go('/navigation/search');
            //Navigator.push(context, MaterialPageRoute(builder: (context) => searchPage(),));
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
                          Tab(text: 'Latest',),
                          Tab(text: 'Trending',),
                          Tab(text: 'Popular',),
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
        ),),
        body:  TabBarView(children: [
                  Container(padding: EdgeInsets.all(2),color: Colors.black,
                  child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    
                    crossAxisCount: 3,
                    crossAxisSpacing: 4,
                    childAspectRatio: 1/1.4,
                    mainAxisSpacing: 4), itemCount: series.length,
                    itemBuilder:(context, index) {
                      return InkWell(
                         onTap: () {
                          router.go('/navigation/streaming');
                              //Navigator.push(context, MaterialPageRoute(builder: (context) => Streaming(),));
                            },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: AssetImage(series[index]))
                          )
                          ),
                      );
                    },),),
                  Container(padding: EdgeInsets.all(4),color: Colors.black,
                  child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    
                    crossAxisCount: 3,
                    crossAxisSpacing: 4,
                    childAspectRatio: 1/1.4,
                    mainAxisSpacing: 4), itemCount: series.length,
                    itemBuilder:(context, index) {
                      return InkWell(
                         onTap: () {
                          router.go('/navigation/streaming');
                             // Navigator.push(context, MaterialPageRoute(builder: (context) => Streaming(),));
                            },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: AssetImage(series[index]))),
                          ),
                      );
                    },),),
                    Container(padding: EdgeInsets.all(4),color: Colors.black,
                  child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    
                    crossAxisCount: 3,
                    crossAxisSpacing: 4,
                    childAspectRatio: 1/1.4,
                    mainAxisSpacing: 4), itemCount:series.length,
                    itemBuilder:(context, index) {
                      return InkWell(
                         onTap: () {
                          router.go('/navigation/streaming');
                             // Navigator.push(context, MaterialPageRoute(builder: (context) => Streaming(),));
                            },
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: AssetImage(series[index]))),
                          ),
                      );
                    },),)
                  ])
      ),
    );
  }
}