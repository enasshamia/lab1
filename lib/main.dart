import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}
class  MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: Text("MY first app")),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20 ,vertical: 20),
          child: 
        Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                labelText: "User Name",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(height: 15,),
            TextFormField(
              decoration: InputDecoration(
                labelText: "User Name",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(height: 15,),
            TextFormField(
              decoration: InputDecoration(
                   icon: Icon(Icons.person),
                labelText: "User Name",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(height: 15,),
            Image.asset("assets/pic1.png"),
            SizedBox(height: 40,),
           GestureDetector(
           onTap: () {
             print("true");
           },
             child: Container(
               width: 300,
               height: 50,
               child: Center(child: Text("send")),
               decoration: BoxDecoration(color: Colors.amber,
               borderRadius: BorderRadius.circular(25)),
             ),
           )
          ],
        )
        ),
      ),
    ); 
  }
}