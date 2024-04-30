import 'package:flutter/material.dart';

class Knockout extends StatefulWidget {
  const Knockout({ super.key});

  @override
  _KnockoutState createState() => _KnockoutState();
}

class _KnockoutState extends State<Knockout> {
  int numberOfTeams = 16; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.green),
        leading: Icon(Icons.menu),
        backgroundColor: Colors.black38,
        title: Row(
          children: [
            Text(
              "e",
              style: TextStyle(color: Colors.indigo.shade900),
            ),
            Text(
              "Football",
              style: TextStyle(color: Colors.red.shade800),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemCount: numberOfTeams,
            itemBuilder: (context, index) {
              
              int teamIndex = index ~/ 2; 

              
              Color backgroundColor = teamIndex.isEven ? Colors.white : Colors.grey;

              return Row(
                children: [
                  Container(
                    height: 40,
                    width: 90,
                    color: backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Team ${String.fromCharCode(65 + teamIndex)}"),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 40,
                    color: backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("0"),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
