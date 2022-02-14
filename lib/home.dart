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
      backgroundColor: const Color(0xcc21252b),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
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
              child: Image.asset(
                'assets/images/home-zone-icon.png',
                width: 18,
              ),
            ),
            // Container( padding: const EdgeInsets.all(0.0), child: IconButton(onPressed: (){}, icon: Image.asset('assets/images/home-zone-icon.png', width: 18,))),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(12, 0, 10, 0),
                  child: Text(
                    'Home',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Lato'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(12, 0, 10, 0),
                  child: Text(
                    'Chittethukara, Kakkanad',
                    style: TextStyle(
                        color: Colors.white54,
                        fontSize: 15,
                        //fontWeight: FontWeight.w600,
                        fontFamily: 'Lato'),
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: const Color(0xff21252b),
        elevation: 4,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Search()),
                );
              },
              icon: Image.asset(
                'assets/images/search-icon.png',
                width: 18,
              ))
        ],
      ),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(0.0),
            child: Container(
              width: double.infinity,
              //  height: 500,
              // color: Colors.white38,

              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 0.0, vertical: 4.0),
                    child: Column(
                      children: [

                        Container(
                          width: double.infinity,
                          height: 400,
                          //color: Colors.black26,
                          decoration: BoxDecoration(
                              // boxShadow: [BoxShadow(
                              //   color: Colors.black26,
                              //   offset: Offset(0,2),
                              //   blurRadius: 1.0,
                              // ),],
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/sample1.jpeg'),
                                  fit: BoxFit.fill)),
                        ),
                        ListTile(
                          dense: true,
                          horizontalTitleGap: 10.0,
                          minLeadingWidth : 0,
                          //tileColor: const Color(0xff353D5D),
                          leading:  Container(
                            //margin: EdgeInsets.all(0.0),

                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              // color: Colors.red,
                              shape: BoxShape.circle,
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.black45,
                              //     offset: Offset(0, 2),
                              //     blurRadius: 6.0,
                              //   )
                              // ],
                            ),
                            child: CircleAvatar(
                              child: ClipOval(
                                child: Image(
                                  height: 40,
                                  width: 40,
                                  image: AssetImage(
                                      'assets/images/default-user.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          title: Text('Shavarma Daddy (@shavarma_daddy)'),
                          subtitle: Align(
                              alignment: Alignment.centerLeft,
                              child: Image.asset('assets/images/rating.png', height: 12,)),
                          contentPadding:EdgeInsets.fromLTRB(10,0,15,0),
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

//trailing:  Image.asset('assets/images/like.png', width: 24,),
                        ),
                        Row(
                          children: [
                            Flexible(
                                child:Padding(
                                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                                  child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                                    textAlign: TextAlign.start,),
                                )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const Divider(
            height: 30,
            thickness: 0.5,
            // indent: 20,
            // endIndent: 20,
            color: Colors.white12,
          ),
//--------------------------------------------------------------------------------------------------------------
          Padding(
            padding: EdgeInsets.all(0.0),
            child: Container(
              width: double.infinity,
              //  height: 500,
              // color: Colors.white38,

              child: Column(
                children: [
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 0.0, vertical: 4.0),
                    child: Column(
                      children: [

                        Container(
                          width: double.infinity,
                          height: 400,
                          //color: Colors.black26,
                          decoration: BoxDecoration(
                            // boxShadow: [BoxShadow(
                            //   color: Colors.black26,
                            //   offset: Offset(0,2),
                            //   blurRadius: 1.0,
                            // ),],
                              image: DecorationImage(
                                  image:
                                  AssetImage('assets/images/sample2.jpeg'),
                                  fit: BoxFit.fill)),
                        ),
                        ListTile(
                          dense: true,
                          horizontalTitleGap: 10.0,
                          minLeadingWidth : 0,
                          //tileColor: const Color(0xff353D5D),
                          leading:  Container(
                            //margin: EdgeInsets.all(0.0),

                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              // color: Colors.red,
                              shape: BoxShape.circle,
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.black45,
                              //     offset: Offset(0, 2),
                              //     blurRadius: 6.0,
                              //   )
                              // ],
                            ),
                            child: CircleAvatar(
                              child: ClipOval(
                                child: Image(
                                  height: 40,
                                  width: 40,
                                  image: AssetImage(
                                      'assets/images/default-user.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          title: Text('Shavarma Daddy (@shavarma_daddy)'),
                          subtitle: Align(
                              alignment: Alignment.centerLeft,
                              child: Image.asset('assets/images/rating.png', height: 12,)),
                          contentPadding:EdgeInsets.fromLTRB(10,0,15,0),
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

//trailing:  Image.asset('assets/images/like.png', width: 24,),
                        ),
                        Row(
                          children: [
                            Flexible(
                                child:Padding(
                                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                                  child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                                    textAlign: TextAlign.start,),
                                )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const Divider(
            height: 30,
            thickness: 0.5,
            // indent: 20,
            // endIndent: 20,
            color: Colors.white12,
          ),
          //---------------------------------------------------------------------------------------------------------------
          Padding(
            padding: EdgeInsets.all(0.0),
            child: Container(
              width: double.infinity,
              //  height: 500,
              // color: Colors.white38,

              child: Column(
                children: [
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 0.0, vertical: 4.0),
                    child: Column(
                      children: [

                        Container(
                          width: double.infinity,
                          height: 400,
                          //color: Colors.black26,
                          decoration: BoxDecoration(
                            // boxShadow: [BoxShadow(
                            //   color: Colors.black26,
                            //   offset: Offset(0,2),
                            //   blurRadius: 1.0,
                            // ),],
                              image: DecorationImage(
                                  image:
                                  AssetImage('assets/images/sample3.jpeg'),
                                  fit: BoxFit.fill)),
                        ),
                        ListTile(
                          dense: true,
                          horizontalTitleGap: 10.0,
                          minLeadingWidth : 0,
                          //tileColor: const Color(0xff353D5D),
                          leading:  Container(
                            //margin: EdgeInsets.all(0.0),

                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              // color: Colors.red,
                              shape: BoxShape.circle,
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.black45,
                              //     offset: Offset(0, 2),
                              //     blurRadius: 6.0,
                              //   )
                              // ],
                            ),
                            child: CircleAvatar(
                              child: ClipOval(
                                child: Image(
                                  height: 40,
                                  width: 40,
                                  image: AssetImage(
                                      'assets/images/default-user.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          title: Text('Shavarma Daddy (@shavarma_daddy)'),
                          subtitle: Align(
                              alignment: Alignment.centerLeft,
                              child: Image.asset('assets/images/rating.png', height: 12,)),
                          contentPadding:EdgeInsets.fromLTRB(10,0,15,0),
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

//trailing:  Image.asset('assets/images/like.png', width: 24,),
                        ),
                        Row(
                          children: [
                            Flexible(
                                child:Padding(
                                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                                  child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                                    textAlign: TextAlign.start,),
                                )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const Divider(
            height: 30,
            thickness: 0.5,
            // indent: 20,
            // endIndent: 20,
            color: Colors.white12,
          ),
        ],
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
          backgroundColor: const Color(0xff21252d),
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
              activeIcon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Image.asset(
                  'assets/images/home-selected-icon.png',
                  width: 20,
                ),
              ),
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Image.asset(
                  'assets/images/home-unselected-icon.png',
                  width: 20,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Image.asset(
                  'assets/images/directory-selected-icon.png',
                  width: 16,
                ),
              ),
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Image.asset(
                  'assets/images/directory-unselected-icon.png',
                  width: 16,
                ),
              ),
              label: 'Index',
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Image.asset(
                  'assets/images/add-post-selected-icon.png',
                  width: 18,
                ),
              ),
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Image.asset(
                  'assets/images/add-post-unselected-icon.png',
                  width: 18,
                ),
              ),
              label: 'Post Ad',
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Image.asset(
                  'assets/images/business-profile-selected-icon.png',
                  width: 18,
                ),
              ),
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Image.asset(
                  'assets/images/business-profile-unselected-icon.png',
                  width: 18,
                ),
              ),
              label: 'My Shop',
            ),
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Image.asset(
                  'assets/images/settings-selected-icon.png',
                  width: 20,
                ),
              ),
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Image.asset(
                  'assets/images/settings-unselected-icon.png',
                  width: 20,
                ),
              ),
              label: 'Settings',
            ),
          ],
          selectedLabelStyle:
              TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
          unselectedLabelStyle:
              TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
        ),
      ),
    );
  }
}
