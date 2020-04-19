import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<SignupPage> {
      //======================================================================
      // DECLARE TEXT EDIT CONTROLLER
      //====================================================================== 
      final _usernameController = TextEditingController();
      final _passwordController = TextEditingController();
      final _fullnameController = TextEditingController();  
      final _lineidController = TextEditingController();    
      final _mobilenoController = TextEditingController();  
      final _companyController = TextEditingController();  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Signup user'),),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 40.0,),  
            //======================================================================
            // TEXT INPUT
            //======================================================================             
            TextFormField(decoration: InputDecoration(labelText: '*E-mail (อีเมล์)', prefixIcon: Icon(Icons.email)),controller: _usernameController),
            TextFormField(decoration: InputDecoration(labelText: '*Full Name (ชื่อ)', prefixIcon: Icon(Icons.near_me)),controller: _fullnameController,),
            TextFormField(decoration: InputDecoration(labelText: '*Password (รหัส)', prefixIcon: Icon(Icons.vpn_key)),controller: _passwordController),                         
            TextFormField(decoration: InputDecoration(labelText: 'Line ID (ไลน์)', prefixIcon: Icon(Icons.network_cell)),controller: _lineidController),
            TextFormField(decoration: InputDecoration(labelText: 'Mobile No (เบอร์มือถือ)', prefixIcon: Icon(Icons.phone)),controller: _mobilenoController,keyboardType: TextInputType.number,),                                    
            TextFormField(decoration: InputDecoration(labelText: 'Company (บริษัท)', prefixIcon: Icon(Icons.home)),controller: _companyController,),  
            //======================================================================
            // SAVE
            //======================================================================  
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()),);}, child: Text('SAVE'),),                               
          ],
        )
      ),
    );
  }
}