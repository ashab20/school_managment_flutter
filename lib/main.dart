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
        home: HomeActivity()
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
            backgroundColor: Colors.teal,
          actions: [
            IconButton(onPressed: (){MyMessage("Comment",context);}, icon: Icon(Icons.comment)),
            IconButton(onPressed: (){MyMessage("Search",context);}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){MyMessage("Settings",context);}, icon: Icon(Icons.settings)),
            IconButton(onPressed: (){MyMessage("Camera",context);}, icon: Icon(Icons.camera_alt)),
          ],
        ),
        body: const Text("Hello World!"),
    );
  }

}