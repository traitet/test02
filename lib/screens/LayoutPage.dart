import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  @override
  _LayoutPageState createState() => _LayoutPageState();
}


class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(title: Text('Layout Page')),
      body: 
        SafeArea(child: ListView(
          children: <Widget> [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Expanded(child: Container(height: 50, color: Colors.red,)),
                Expanded(child: Container(height: 50, color: Colors.green,)),                
                // Text('row 1'),
                // Text('row 2'),
                // Text('row 3'),                                
              ]
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Expanded(child: Text('row# 1.21434214'),),
                Expanded(child: Text('row# 2.214124124'),),  
                Expanded(child: Text('row# 3.fsa'),),                                                            
              ]
            ),   

        
                                   
            SizedBox(height: 20),            
            Column(
              //mainAxisAlignment: MainAxisAlignment.center,              
              children: <Widget>[
                Text('Column 1'),
                Text('Column 2'),
                Text('Column 3'),                
              ]
            )
          ]
        ))


     
    );
  }
}

