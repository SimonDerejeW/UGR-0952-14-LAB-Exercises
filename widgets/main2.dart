import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
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
          leading: Icon(Icons.arrow_back),

          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                
                Container(
                  // width: 20,
                  padding: EdgeInsets.only(left: 10, right: 150, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 5,),
                      Text("Search Product")
                    ],
                  ),
                  
                ),
                SizedBox(width: 25,),
                Icon(Icons.shopping_cart),
                SizedBox(width: 25,),
                Icon(Icons.notifications),
                // SizedBox(width: 150,)
              ],
            )
          ],
        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/dragon.jpg", height: 400, width: double.infinity, fit: BoxFit.fill,),
            SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$8.6',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Icon(Icons.favorite)
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("Bardi Smart Light Bult 120W LED WIFI" , style: TextStyle(fontWeight: FontWeight.w500),),
                  Text("Bardi Smart Light Bult 120W LED WIFI" ,style: TextStyle(fontWeight: FontWeight.w500),),
                ],
              ),
            ),

            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.star , color: Colors.yellow,),
                      SizedBox(width: 2,),
                      Text("5.0",style: TextStyle(fontWeight: FontWeight.w500)),
                      SizedBox(width: 2,),
                      Text("(364)",style: TextStyle(fontWeight: FontWeight.w200)),

                    ],
                  ),
                  SizedBox(width: 20,),
                  Text("|",style: TextStyle(fontWeight: FontWeight.w200)),
                  SizedBox(width: 20,),
                  Text("540 Sale",style: TextStyle(fontWeight: FontWeight.w200)),
                  SizedBox(width: 20,),
                  Text("|",style: TextStyle(fontWeight: FontWeight.w200)),
                  SizedBox(width: 20,),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      SizedBox(width: 2,),
                      Text("Brooklyn",style: TextStyle(fontWeight: FontWeight.w200)),
                      
                    ],
                  )
                ],
              ),
              ),

              const Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Variant", style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              const Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Size: XS", style: TextStyle(fontWeight: FontWeight.bold),),
                ),

              const Row(
                children: [
                  Chip(label: Text("XS"),backgroundColor: Colors.blue),
                  SizedBox(width: 6,),
                  Chip(label: Text("XS")),
                  SizedBox(width: 6,),
                  Chip(label: Text("XS")),
                  SizedBox(width: 6,),
                  Chip(label: Text("XS")),
                  SizedBox(width: 6,),
                  Chip(label: Text("XS")),
                ],
              ),
              const Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Color: Red", style: TextStyle(fontWeight: FontWeight.bold),),
                ),

              const Row(
                children: [
                    Chip(label: Text("Red"), backgroundColor: Colors.blue),
                  SizedBox(width: 6,),
                  Chip(label: Text("Red")),
                  SizedBox(width: 6,),
                  Chip(label: Text("Red")),
                  SizedBox(width: 6,),
                  Chip(label: Text("Red")),
                  SizedBox(width: 6,),
                  Chip(label: Text("Red")),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.comment), 
                  SizedBox(width: 10,),
                  Expanded(child: Container(
                    height: 25,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    padding: EdgeInsets.only(left: 70, right: 70),
                  child: Center(child: Text("Add to Shopping Cart"),),) ) 
                ],
              )
            
          ],
        ),
      ),
    );
  }
}


