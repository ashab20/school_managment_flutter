import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        theme: ThemeData(primarySwatch: Colors.brown),
        darkTheme: ThemeData(primarySwatch: Colors.purple),
        color: Colors.tealAccent,
        debugShowCheckedModeBanner: false,
        home: HomeActivity(),
    );
  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  MyMessage(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
            title: const Text("HEALT APP"),
            titleSpacing: 6,
            centerTitle: false,
            toolbarHeight: 60,
            toolbarOpacity: 1,
            elevation: 6,
            backgroundColor: Colors.lightBlueAccent,
          actions: [
            IconButton(onPressed: (){MyMessage("Comment",context);}, icon: Icon(Icons.comment)),
            IconButton(onPressed: (){MyMessage("Search",context);}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){MyMessage("Settings",context);}, icon: Icon(Icons.settings)),
            IconButton(onPressed: (){MyMessage("Camera",context);}, icon: Icon(Icons.camera_alt)),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 10,
          backgroundColor: Colors.lightBlueAccent,
          onPressed: () {
            MyMessage("this is floating action button",context);
          },
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          backgroundColor: Colors.white54,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.message),label: "Message"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ],
          onTap: (int index){
            if(index == 0){
              MyMessage("this is Home",context);
            }
            if(index == 1){
              MyMessage("this is Message",context);
            }

            if(index == 2){
              MyMessage("this is Profile",context);
            }

          },
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(0),
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.black38),
                    accountName: Text("Ashab Uddin",style: TextStyle(color:Colors.black),),
                    accountEmail: Text("ashab@gmail.com",style: TextStyle(color:Colors.black)),
                    currentAccountPicture: Image.network("https://scontent.fcgp7-1.fna.fbcdn.net/v/t39.30808-1/294351584_1716295508734713_942233674117623935_n.jpg?stp=c2.0.200.200a_dst-jpg_p200x200&_nc_cat=108&ccb=1-7&_nc_sid=7206a8&_nc_eui2=AeFvKILNcAy34iaObLU1DzQoIdTyMVti58oh1PIxW2LnyqRF93L2TzOo3Fnq3dc3wKbOVVzATc3qgrkuesurDBfT&_nc_ohc=jZLNWAHrVhsAX-vwdBd&_nc_ht=scontent.fcgp7-1.fna&oh=00_AfA1y0lWZtHZpBe0Jf2pm5km0W7ZvrzszZ6X3Z4o1Y_o1g&oe=64897099"),
                  ),

              ),
              ListTile(leading:Icon(Icons.home),title: Text("Home"),onTap: (){MyMessage('Home',context);},),
              ListTile(leading:Icon(Icons.phone),title: Text("Contact"),onTap: (){MyMessage('Contact',context);}),
              ListTile(leading:Icon(Icons.person),title: Text("Profile"),onTap: (){MyMessage('Profile',context);}),
              ListTile(leading:Icon(Icons.info),title: Text("About"),onTap: (){MyMessage('About',context);}),
              ListTile(leading:Icon(Icons.help),title: Text("Help"),onTap: (){MyMessage('Help',context);}),
            ],
          ),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              height: 60,
              child: Image.network("https://play-lh.googleusercontent.com/6UgEjh8Xuts4nwdWzTnWH8QtLuHqRMUB7dp24JYVE2xcYzq4HA8hFfcAbU-R-PC_9uA1"),
            ),
            Container(
              padding: EdgeInsets.all(5),
              height: 60,
              child: Image.network("https://upload.wikimedia.org/wikipedia/en/thumb/0/04/Facebook_f_logo_%282021%29.svg/1200px-Facebook_f_logo_%282021%29.svg.png"),
            ),
            Container(
              padding: EdgeInsets.all(5),
              height: 60,
              child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Logo_of_Twitter.svg/1200px-Logo_of_Twitter.svg.png"),
            ),
          ],
        )
    );
  }

}