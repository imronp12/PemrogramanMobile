import 'package:projek_mobile/constanst.dart';
import 'package:flutter/material.dart';
import 'package:projek_mobile/register.dart';

class LoginPage extends StatelessWidget {
  static const routename= "/login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.primaryColor,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _iconLogin(),
                  _titleDescription(),
                  _textField(),
                  _buildButton(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
    Widget _iconLogin(){
      return Image.asset(
        "assets/images/icon.jpg",
        width: 250,
        height: 250,
      );
    }
    Widget _titleDescription(){
      return Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 16.0),
          ),
          Text(
            "LOGINN",
            style: TextStyle(
              color: Colors.white,fontFamily: "Poppins-Medium",
              fontSize: 16.0,
            ),
          ),
        ],
      );
    }
    Widget _textField(){
      return Column(
        children: <Widget>[
          Padding(padding : EdgeInsets.only(top: 50.0)),
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: ColorPalette.underlineTextField,
                  width: 1.5
                )
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 3.0,
                )
              ),
              hintText: "Username",
              hintStyle: TextStyle(color: ColorPalette.hintColor,fontFamily: "Poppins-Medium",fontSize: 20),
            ),
            style: TextStyle(color: Colors.white),
            autofocus: false,
          ),
          Padding(padding: EdgeInsets.only(top: 12.0),),
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: ColorPalette.underlineTextField,
                  width: 1.5
                )
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 3.0,
                )
              ),
              hintText: "Password",
              hintStyle: TextStyle(color: ColorPalette.hintColor,fontFamily: "Poppins-Medium",fontSize: 20),
            ),
            style: TextStyle(color: Colors.white),
            obscureText: true,
            autofocus: false,
          )
        ],
      );
    }
    Widget _buildButton(BuildContext context){
      return Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 16.0),),
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              width: double.infinity,
              child: Text("Login",style: TextStyle(color: ColorPalette.primaryColor,fontFamily: "Poppins-Medium",fontSize: 20),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0)
            ),
          ), 
          ),
          Padding(padding: EdgeInsets.only(top: 16.0),),
          Text("OR",style: TextStyle(color: Colors.white,fontFamily: "Poppins-Medium",fontSize: 15),),
          FlatButton(child: Text("Register",style: TextStyle(color: Colors.white,fontFamily: "Poppins-Medium",fontSize: 20),),onPressed: (){Navigator.pushNamed(context, RegisterPage.routename);},)
          
        ],
      );
    }
  
}