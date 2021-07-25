import 'package:flutter/material.dart';
class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xfff4f4f4),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(onTap: () {}, child: Image.asset('assets/images/home-zone-icon.png', width: 20,),),
           // Container( padding: const EdgeInsets.all(0.0), child: IconButton(onPressed: (){}, icon: Image.asset('assets/images/home-zone-icon.png', width: 18,))),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Padding(
                 padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                 child: Text('Home', style: TextStyle(
                     color: const Color(0xff333B5C),
                     fontSize: 18,
                     fontWeight: FontWeight.w600,
                     fontFamily: 'Lato'),),
               ),
               Padding(
                 padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                 child: Text('Location name comes here..', style: TextStyle(
                     color: const Color(0xff333B5C),
                     fontSize: 15,
                     //fontWeight: FontWeight.w600,
                     fontFamily: 'Lato'),),
               ),
             ],
           ),
          ],
        ),
        backgroundColor:  const Color(0xfff4f4f4),
        elevation: 1,
        actions: [
           IconButton(onPressed: (){}, icon: Image.asset('assets/images/search-icon.png', width: 20,))

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(

              icon: Padding(padding: EdgeInsets.only(bottom: 5),child: Container(width: 24, height: 24, child: Image.asset('assets/images/home-selected-icon.png', width: 28,),)),
            label: 'Home',

          ),
          BottomNavigationBarItem(

             icon: Padding(padding: EdgeInsets.only(bottom: 5),child: Container(width: 20, height: 20, child: Image.asset('assets/images/directory-unselected-icon.png', width: 25,),),),
            label: 'Directory',
          ),
          BottomNavigationBarItem(

              icon: Padding(padding: EdgeInsets.only(bottom: 5),child: Container(width: 24, height: 24, child: Image.asset('assets/images/add-post-unselected-icon.png', width: 28,),),),
            label: 'Add Post',
          ),
          BottomNavigationBarItem(

              icon: Padding(padding: EdgeInsets.only(bottom: 5),child: Container(width: 28, height: 28, child: Image.asset('assets/images/business-profile-unselected-icon.png', width: 28,),),),
            label: 'Profile',
          ),
          BottomNavigationBarItem(

            icon: Padding(padding: EdgeInsets.only(bottom: 5),child: Container(width: 24, height: 24, child: Image.asset('assets/images/settings-unselected-icon.png', width: 28,),),),
            label: 'Settings',
          ),
        ],
        selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
        unselectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
        selectedItemColor: const Color(0xff262C45),
        unselectedItemColor: const Color(0xff262C45),
      ),
    );
  }
}
