import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {

  //static final String id = "homepage";
  @override
  _HomepageState createState() => _HomepageState();
  const Homepage({Key? key}) : super(key: key);
}

class _HomepageState extends State<Homepage> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Business',
      style: optionStyle,
    ),
    Text(
      'School',
      style: optionStyle,
    ),
    Text(
      'Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PDP"),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.lightBlue,
        unselectedItemColor: Colors.white,


        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 40,),
            label: 'Home',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message,size: 40,),
            label: 'Massege',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_tv,size: 40,),
            label: 'Vodeo',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,size: 40,),
            label: 'Notifications',

          ),

        ],

        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),



      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Container(
              height: 100,
              width: 100,
              color: Colors.blueAccent,
              padding: const EdgeInsets.all(5),

              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20, // Image radius
                    child: Text("B",style: TextStyle(fontSize: 32),),

                  ),
                  Text("Baxtiyor Jumayev",style: TextStyle(color: Colors.white),),
                  Text("b.jumayev@pdp.online",style: TextStyle(color: Colors.white),),

                ],
              )



            ),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              selected: true,

      ),
            const ListTile(
              leading: Icon(Icons.person_rounded),
              title: Text('Profile'),


            ),
            const ListTile(
              leading: Icon(Icons.people_rounded),
              title: Text('Abouts'),


            ),




          ],
        ),

      ),
    );
  }
}

