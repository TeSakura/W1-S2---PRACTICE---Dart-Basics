import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        padding: const EdgeInsets.all(50),
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //Children are centered vertically within the column.
          
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.blue[100],
              borderRadius: BorderRadius.circular(30)),
              child: const Center(
                child: Text('OOP', style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(color: Colors.blue[300],
              borderRadius: BorderRadius.circular(30)),
              child: const Center(
                child: Text('DART', style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue[300]!,
                    Colors.blue[600]!,
                  ]
                ),
              borderRadius: BorderRadius.circular(30)),
              child: const Center(
                child: Text('FLUTTER', style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}