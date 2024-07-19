import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_streaming/const/colors.dart';
import 'package:movie_streaming/const/style.dart';
// import 'package:movie_streaming/custom/previewpage.dart';
// import 'package:movie_streaming/pages/home/search.dart';
import 'package:movie_streaming/routes.dart';

class popular
 extends StatefulWidget {
  const popular
  ({super.key});

  @override
  State<popular> createState() => _popularState();
}

class _popularState extends State<popular> {
   List movies=['assets/snowvalleyf1.jpeg','assets/goodonef3.jpeg','assets/driftf4.jpeg','assets/perfassistantf5.jpeg',
  'assets/dunef6.jpeg','assets/f7.jpeg','assets/f8.jpeg','assets/f9.jpeg','assets/f10.jpeg'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
           Navigator.pop(context);
        }, icon:Icon(Icons.arrow_back_ios,color: whitecolor,)),
        backgroundColor: Colors.black,
        title: Text('Popular',style: textStyleW700,),
        actions: [
          IconButton(onPressed: () {
            router.go('/navigation/search');
            // Navigator.push(context, MaterialPageRoute(builder: (context) => searchPage(),));
          }, icon: Icon(Icons.search, color: textcolor,))
          //Ico(Icons.search, color: Colors.white,)
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
                          Tab(text: 'Movies',),
                          Tab(text: 'Tv Series',),
                        
                        ],
                        
                        ),
              ),
              Positioned(
                right: 4,top: 4,
                child: Container(height: 40,width: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Filter', style: textstylewhite),
                    SizedBox(width: 8,),
                    Icon(Icons.filter_alt_outlined, color:textcolor,size: 20,)
                  ],
                ),))
            ],
          ),
        ),),
        body:  TabBarView(children: [
                  InkWell(
                     onTap: () {
                       router.go('/navigation/streaming');
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => Streaming(),));
                            },
                    child: Container(padding: EdgeInsets.all(2),color: Colors.black,
                    child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      
                      crossAxisCount: 3,
                      crossAxisSpacing: 4,
                      childAspectRatio: 1/1.4,
                      mainAxisSpacing: 4), itemCount: movies.length,
                      itemBuilder:(context, index) {
                        return Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: AssetImage(movies[index]))),
                          );
                      },),),
                  ),
                  InkWell(
                     onTap: () {
                       router.go('/navigation/streaming');
                             // Navigator.push(context, MaterialPageRoute(builder: (context) => Streaming(),));
                            },
                    child: Container(padding: EdgeInsets.all(4),color: Colors.black,
                    child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      
                      crossAxisCount: 3,
                      crossAxisSpacing: 4,
                      childAspectRatio: 1/1.4,
                      mainAxisSpacing: 4), itemCount: movies.length,
                      itemBuilder:(context, index) {
                        return Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                           image: DecorationImage(image: AssetImage(movies[index]))),
                          );
                      },),),
                  ),
                  ])
      ),
    );
  }
}