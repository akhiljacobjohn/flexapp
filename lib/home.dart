import 'package:flutter/material.dart';
class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int index = 0;


  _navigateToScreens(int indx){


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff21252B),
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
                     color: Colors.white,
                     fontSize: 18,
                     fontWeight: FontWeight.w600,
                     fontFamily: 'Lato'),),
               ),
               Padding(
                 padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                 child: Text('Location name comes here..', style: TextStyle(
                     color: Colors.white,
                     fontSize: 15,
                     //fontWeight: FontWeight.w600,
                     fontFamily: 'Lato'),),
               ),
             ],
           ),
          ],
        ),
        backgroundColor: const Color(0xff21252d),
        elevation: 1,
        actions: [
           IconButton(onPressed: (){}, icon: Image.asset('assets/images/search-icon.png', width: 20,))

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff21252d),
        type: BottomNavigationBarType.fixed,
       // elevation:24,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: index,
        onTap: (int index) {
          setState(() {
            this.index = index;
          }
          );
         _navigateToScreens(index);
        }, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            activeIcon: Padding(padding: EdgeInsets.only(bottom: 5), child: Image.asset('assets/images/home-selected-icon.png', width: 20,),),
          icon: Padding(padding: EdgeInsets.only(bottom: 5), child: Image.asset('assets/images/home-unselected-icon.png', width: 20,),),

            label: 'Home',

          ),
          BottomNavigationBarItem(

            activeIcon: Padding(padding: EdgeInsets.only(bottom: 5), child: Image.asset('assets/images/directory-selected-icon.png', width: 16,),),
            icon: Padding(padding: EdgeInsets.only(bottom: 5), child: Image.asset('assets/images/directory-unselected-icon.png', width: 16,),),


            label: 'Index',
          ),
          BottomNavigationBarItem(

            activeIcon: Padding(padding: EdgeInsets.only(bottom: 5), child: Image.asset('assets/images/add-post-selected-icon.png', width: 18,),),
            icon: Padding(padding: EdgeInsets.only(bottom: 5), child: Image.asset('assets/images/add-post-unselected-icon.png', width: 18,),),

            label: 'Post Ad',
          ),
          BottomNavigationBarItem(

            activeIcon: Padding(padding: EdgeInsets.only(bottom: 5), child: Image.asset('assets/images/business-profile-selected-icon.png', width: 18,),),
            icon: Padding(padding: EdgeInsets.only(bottom: 5), child: Image.asset('assets/images/business-profile-unselected-icon.png', width: 18,),),

            label: 'My Shop',
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(padding: EdgeInsets.only(bottom: 5),child: Image.asset('assets/images/settings-selected-icon.png', width: 20,),),
            icon: Padding(padding: EdgeInsets.only(bottom: 5),child: Image.asset('assets/images/settings-unselected-icon.png', width: 20,),),

            label: 'Settings',
          ),
        ],
        selectedLabelStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
        unselectedLabelStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
