import 'package:atlas/index.dart';
import 'package:atlas/post_ad.dart';
import 'package:atlas/search.dart';
import 'package:atlas/settings.dart';
import 'package:flutter/material.dart';

import 'base_location.dart';
import 'home.dart';
import 'my_shop.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff2161b22),
      appBar: AppBar(
        backgroundColor: const Color(0xff21262d ),
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: false,
        titleSpacing: 5,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BaseLocaltionSetter()),
                );
              },
              child: Icon(Icons.location_on_rounded, size:28,color: const Color(0xff9146FF)),
              // child: Image.asset(
              //   'assets/images/home-zone-icon.png',
              //   width: 18,
              // ),
            ),
            // Container( padding: const EdgeInsets.all(0.0), child: IconButton(onPressed: (){}, icon: Image.asset('assets/images/home-zone-icon.png', width: 18,))),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 10, 0),
                  child: Text(
                    'Home',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Lato'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 10, 0),
                  child: Text(
                    'Chittethukara, Kakkanad',
                    style: TextStyle(
                        color: Colors.white54,
                        fontSize: 12,
                        //fontWeight: FontWeight.w600,
                        fontFamily: 'Lato'),
                  ),
                ),
              ],
            ),
          ],
        ),

        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Search()),
                );
              },
              // icon: Image.asset(
              //   'assets/images/search-icon.png',
              //   width: 18,
              // ),
            icon: Icon(Icons.search_rounded     , size:24),
          )
        ],
      ),
      body: Container(
    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
    child: SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Column(
      children: [
      Card(
        color: const Color(0xff1D2531),

     elevation: 10,
     // clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Image.asset('assets/images/sample1.jpeg'),
          ListTile(
            contentPadding: const EdgeInsets.fromLTRB(5,5,15,5),
            dense: true,
                          horizontalTitleGap: 10.0,
                          minLeadingWidth : 0,
           leading:  Container(
            width: 50,
            height: 50,
            child: CircleAvatar(
              child: ClipOval(
                child: Image(
                  height: 50,
                 // width: 50,
                  image: AssetImage(
                      'assets/images/default-user.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
                          title: Text('Shavarma Daddy\n(@shavarma_daddy)', style: TextStyle(fontSize: 12),),
                          subtitle: Align(
                              alignment: Alignment.centerLeft,
                              child: Image.asset('assets/images/rating.png', height: 12,)),
                                      trailing: SizedBox(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  color: const Color(0xff9146FF),
                                  size: 24,
                                ),
                                Icon(
                                  Icons.bookmark_border_outlined,
                                  color: const Color(0xff9146FF),
                                  size: 24,
                                ),
                                Padding(
                                    padding: EdgeInsets.only(bottom: 5),
                                    child: Icon(
                                      Icons.ios_share_rounded,
                                      color: const Color(0xff9146FF),
                                      size: 24,
                                    )),
                                // Image.asset('assets/images/like.png', width: 24, height: 24,),
                                // Image.asset('assets/images/bookmark.png', width: 24, height: 22,),
                                // Image.asset('assets/images/share.png', width: 24,),
                              ],
                            ),
                          ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5,0,5,20),
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
              // style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          // ButtonBar(
          //   alignment: MainAxisAlignment.start,
          //   children: [
          //     FlatButton(
          //       textColor: const Color(0xFF6200EE),
          //       onPressed: () {
          //         // Perform some action
          //       },
          //       child: const Text('ACTION 1'),
          //     ),
          //     FlatButton(
          //       textColor: const Color(0xFF6200EE),
          //       onPressed: () {
          //         // Perform some action
          //       },
          //       child: const Text('ACTION 2'),
          //     ),
          //   ],
          // ),

        ],
      ),
      ),
        Card(
          color: const Color(0xff1D2531),

          elevation: 10,
          // clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              Image.asset('assets/images/sample2.jpeg'),
              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(5,5,15,5),
                dense: true,
                horizontalTitleGap: 10.0,
                minLeadingWidth : 0,
                leading:  Container(
                  width: 50,
                  height: 50,
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Image(
                        height: 50,
                        // width: 50,
                        image: AssetImage(
                            'assets/images/default-user.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                title: Text('Shavarma Daddy\n(@shavarma_daddy)', style: TextStyle(fontSize: 12),),
                subtitle: Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset('assets/images/rating.png', height: 12,)),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite_border,
                        color: const Color(0xff9146FF),
                        size: 24,
                      ),
                      Icon(
                        Icons.bookmark_border_outlined,
                        color: const Color(0xff9146FF),
                        size: 24,
                      ),
                      Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Icon(
                            Icons.ios_share_rounded,
                            color: const Color(0xff9146FF),
                            size: 24,
                          )),
                      // Image.asset('assets/images/like.png', width: 24, height: 24,),
                      // Image.asset('assets/images/bookmark.png', width: 24, height: 22,),
                      // Image.asset('assets/images/share.png', width: 24,),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5,0,5,20),
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                  // style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              // ButtonBar(
              //   alignment: MainAxisAlignment.start,
              //   children: [
              //     FlatButton(
              //       textColor: const Color(0xFF6200EE),
              //       onPressed: () {
              //         // Perform some action
              //       },
              //       child: const Text('ACTION 1'),
              //     ),
              //     FlatButton(
              //       textColor: const Color(0xFF6200EE),
              //       onPressed: () {
              //         // Perform some action
              //       },
              //       child: const Text('ACTION 2'),
              //     ),
              //   ],
              // ),

            ],
          ),
        ),
        Card(
          color: const Color(0xff1D2531),

          elevation: 10,
          // clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              Image.asset('assets/images/sample1.jpeg'),
              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(5,5,15,5),
                dense: true,
                horizontalTitleGap: 10.0,
                minLeadingWidth : 0,
                leading:  Container(
                  width: 50,
                  height: 50,
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Image(
                        height: 50,
                        // width: 50,
                        image: AssetImage(
                            'assets/images/default-user.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                title: Text('Shavarma Daddy\n(@shavarma_daddy)', style: TextStyle(fontSize: 12),),
                subtitle: Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset('assets/images/rating.png', height: 12,)),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite_border,
                        color: const Color(0xff9146FF),
                        size: 24,
                      ),
                      Icon(
                        Icons.bookmark_border_outlined,
                        color: const Color(0xff9146FF),
                        size: 24,
                      ),
                      Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Icon(
                            Icons.ios_share_rounded,
                            color: const Color(0xff9146FF),
                            size: 24,
                          )),
                      // Image.asset('assets/images/like.png', width: 24, height: 24,),
                      // Image.asset('assets/images/bookmark.png', width: 24, height: 22,),
                      // Image.asset('assets/images/share.png', width: 24,),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5,0,5,20),
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                  // style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              // ButtonBar(
              //   alignment: MainAxisAlignment.start,
              //   children: [
              //     FlatButton(
              //       textColor: const Color(0xFF6200EE),
              //       onPressed: () {
              //         // Perform some action
              //       },
              //       child: const Text('ACTION 1'),
              //     ),
              //     FlatButton(
              //       textColor: const Color(0xFF6200EE),
              //       onPressed: () {
              //         // Perform some action
              //       },
              //       child: const Text('ACTION 2'),
              //     ),
              //   ],
              // ),

            ],
          ),
        ),
      ],
    )
    ),

      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color(0xff21262d),
          type: BottomNavigationBarType.fixed,
          // elevation:24,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (value) {
            if (value == 0)
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            if (value == 1)
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Index()),
              );
            if (value == 2)
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PostAd()),
              );
            if (value == 3)
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyShop()),
              );
            if (value == 4)
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              );
            setState(() => _currentIndex = value);
          },

          items: [
            BottomNavigationBarItem(

              activeIcon: Image.asset(
                'assets/images/home-selected-icon.png',
                width: 22,
              ),
              icon: Image.asset(
                'assets/images/home-unselected-icon.png',
                width: 22,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.only(bottom: 2),
              //  child: Icon(Icons.list_alt, size: 28, color: const Color(0xff9146FF),),
                child: Image.asset(
                  'assets/images/directory-selected-icon.png',
                  width: 22,
                ),
              ),
              icon: Padding(
                padding: EdgeInsets.only(bottom: 2),
               // child: Icon(Icons.list_alt_outlined, size: 28, color: const Color(0xfff0f0f0),),
                child: Image.asset(
                  'assets/images/directory-unselected-icon.png',
                  width: 22,
                ),
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.only(bottom: 2),
                // child: Icon(Icons.add_circle, size: 28, color: const Color(0xff9146FF),),
                child: Image.asset(
                  'assets/images/add-post-selected-icon.png',
                  width: 24,
                ),
              ),
              icon: Padding(
                padding: EdgeInsets.only(bottom: 2),
               // child: Icon(Icons.add_circle_outline, size: 28, color: const Color(0xfff0f0f0),),
                child: Image.asset(
                  'assets/images/add-post-unselected-icon.png',
                  width: 24,
                ),
              ),
              label: 'Post',
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.only(bottom: 2),
                //child: Icon(Icons.storefront, size: 28, color: const Color(0xff9146FF),),
                child: Image.asset(
                  'assets/images/business-profile-selected-icon.png',
                  width: 22,
                ),
              ),
              icon: Padding(
                padding: EdgeInsets.only(bottom: 2),
               // child: Icon(Icons.storefront, size: 28, color: const Color(0xfff0f0f0),),
                child: Image.asset(
                  'assets/images/business-profile-unselected-icon.png',
                  width: 22,
                ),
              ),
              label: 'My Shop',
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.only(bottom: 2),
             //   child: Icon(Icons.reorder, size: 28, color: const Color(0xff9146FF),),
                child: Image.asset(
                  'assets/images/settings-selected-icon.png',
                  width: 22,
                ),
              ),
              icon: Padding(
                padding: EdgeInsets.only(bottom: 2),
               // child: Icon(Icons.account_circle_outlined, size: 28, color: const Color(0xfff0f0f0),),
                child: Image.asset(
                  'assets/images/settings-unselected-icon.png',
                  width: 24,
                ),
              ),
              label: 'More',
            ),
          ],
          selectedLabelStyle:
              TextStyle(fontSize: 9, fontWeight: FontWeight.normal),
          unselectedLabelStyle:
              TextStyle(fontSize: 9, fontWeight: FontWeight.normal),
          // selectedItemColor: Colors.white,
          // unselectedItemColor: Colors.red,
        ),
      ),
    );
  }
}
