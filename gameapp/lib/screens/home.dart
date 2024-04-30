import 'package:flutter/material.dart';
import 'package:gameapp/main.dart';
import 'package:gameapp/screens/tournamentbracket.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme:IconThemeData(color: Colors.green),
        leading: Icon(Icons.menu),
        backgroundColor: Colors.black,
        title: Row(children: [
          Text("e" , style: TextStyle(color: Colors.indigo.shade900),),
          Text("Football" , style: TextStyle(color: Colors.red.shade800), )
        ],),
      ),
      body: SafeArea(child: Container(
        
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Stack(
                children: [ Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/trophy1.jpg'),
                    fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  height: ScreenSize.height*0.18,
                //  width: ScreenSize.width*0.8,
                  
                  ),
                  Container(
                    height: ScreenSize.height*0.18,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade800.withOpacity(0.5) ,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(color: Colors.green , style: BorderStyle.solid , width: 2 ,)
                    ),
                  )
                  
                ]
              ),
                
            ),
            Text("The   Game   is   Ours" , style: TextStyle(color: Colors.yellow , fontStyle: FontStyle.italic , fontSize: 29),),
             InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Knockout()));
              },
               child: Padding(
                 padding: const EdgeInsets.all(5.0),
                 child: Stack(
                   children:[ Container(
               
                    height: ScreenSize.height*0.18,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/TB.jpg'),
                      fit: BoxFit.cover
                      ) , 
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      
                    ),
                               ),
                               Container(
                                height: ScreenSize.height*0.18,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey.shade900.withOpacity(0.7),
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(color: Colors.green , style: BorderStyle.solid , width: 2 ,)
                                ),
                                
                               ) ,
                               Center(child: Text("Tournament", style: TextStyle(fontSize: 28, color: Colors.grey.shade300 , fontWeight: FontWeight.bold) ),)
                   ]
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(5.0),
               child: Stack(
                 children:[ Container(
                  height: ScreenSize.height*0.18,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/users.jpg'),
                    fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                             ),
                             Container(
                              height: ScreenSize.height*0.18,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey.shade900.withOpacity(0.7) ,
                                            borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(color: Colors.green , style: BorderStyle.solid , width: 2 ,)
                              ),
                             ),
                             Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("User Search" , style: TextStyle(fontSize: 28, color: Colors.grey.shade300 , fontWeight: FontWeight.bold),),
                  ),
                             
                 ]
               ),
             ),
            

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Stack(
                children: [ Container(

                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/s2.jpg'),
                      fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    height: ScreenSize.height*0.20,
                  //  width: ScreenSize.width*0.8,
                    
                    ),
              
                  Container(
                    
                    height: ScreenSize.height*0.20,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade900.withOpacity(0.8),
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(color: Colors.green , style: BorderStyle.solid , width: 2 ,)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Your Next Fixture" , style: TextStyle(fontSize: 28, color: Colors.grey.shade300 , fontWeight: FontWeight.bold),),
                  ),
          ]
              )
            )
          ],
        ),
      )),
    );
  }
}