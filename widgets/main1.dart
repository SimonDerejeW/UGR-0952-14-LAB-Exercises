import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class Grid extends StatelessWidget {
  final String text;
  final IconData icon;

  const Grid({
    super.key,
    required this.text,
    required this.icon,
  });


  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      height: 80,
      width: 80,
      margin: const EdgeInsets.all(10),
      child: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Icon(icon), Center(child: Text(text),) ],
      ),
    ))) ;
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tracker",
          style: TextStyle(color: Colors.white),
          ),
          leading: Icon(Icons.help, color: Colors.white),
          backgroundColor: Colors.blue,
          centerTitle: true,
          actions: [Icon(Icons.notification_add_rounded, color: Colors.white,),SizedBox(width: 10,), Icon(Icons.settings,color: Colors.white)],
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/dragon.jpg'),
                      ),
                      SizedBox(width: 15,),
                      
                      Column(
                        children: [
                          Text("Robert Steven" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          Row(
                            children: [
                              Icon(Icons.toys,  color: Colors.blue,),
                              Container(
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue, width: 1),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                child: Text("2455 USD"),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Text("Log Out", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)

                ],

              ),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: double.infinity,
              height: 30,
              decoration: const BoxDecoration(
                color: Colors.blue
              ),
              child: const Center(
                child: Text( "Online | Battery : 90%", style: TextStyle(color: Colors.white),),
              ),
            ),

            Row(
              children: [
                Grid(text: "Map All Location", icon: Icons.map),
                Grid(text: "Live Location", icon: Icons.location_on_outlined),
                Grid(text: "History Location", icon: Icons.history),
              ],
            )
            ,
            SizedBox(height: 30,),

            Row(
              children: [
                Grid(text: "Map All Location", icon: Icons.map),
                Grid(text: "Live Location", icon: Icons.location_on_outlined),
                Grid(text: "History Location", icon: Icons.history),
              ],
            )
            ,
            SizedBox(height: 30,),

            Row(
              children: [
                Grid(text: "Map All Location", icon: Icons.map),
                Grid(text: "Live Location", icon: Icons.location_on_outlined),
                Grid(text: "History Location", icon: Icons.history),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Grid(text: "Map All Location", icon: Icons.map),
                Grid(text: "Live Location", icon: Icons.location_on_outlined),
                Grid(text: "History Location", icon: Icons.history),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Grid(text: "Map All Location", icon: Icons.map),
                Grid(text: "Live Location", icon: Icons.location_on_outlined),
                Grid(text: "History Location", icon: Icons.history),
              ],
            ),
            SizedBox(height: 30,),

                          
          ],
        ),
        
      ),
    );
  }
}

