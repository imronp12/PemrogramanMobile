import 'package:flutter/material.dart';
import 'package:projek_mobile/constanst.dart';
import 'package:projek_mobile/screens/loginView.dart';
import 'package:projek_mobile/screens/profile.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        // shape: CircularNotchedRectangle(),
        // notchMargin: 6.0,
        // color: Colors.transparent,
        // elevation: 9.0,
        // clipBehavior: Clip.antiAlias,
        child: Container(
            // height: 50.0,
            // decoration: BoxDecoration(
            //     borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(25.0),
            //         topRight: Radius.circular(25.0)
            //     ),
            //     color: Colors.white
            // ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width /2 - 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.home, color: ColorPalette.primaryColor),
                              onPressed: (){
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context){
                                        // return ProfilPage();
                                      }
                                  ),
                                );
                              }
                          ),
                          IconButton(
                              icon: Icon(Icons.person, color: ColorPalette.primaryColor),
                              onPressed: (){
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context){
                                        return ProfilPage();
                                      }
                                  ),
                                );
                              }
                          )
                        ],
                      )
                  ),
                  Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width /2 - 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.business, color:ColorPalette.primaryColor),
                              onPressed: (){
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context){
                                        // return Laporan();
                                      }
                                  ),
                                );
                              }
                          ),
                          // Icon(Icons.person, color: Colors.pink)
                          IconButton(
                            icon: Icon(Icons.exit_to_app, color: ColorPalette.primaryColor),
                              onPressed: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context){
                                     return LoginPage();
                                    }
                                ),
                              );
                      }
                          )
                        ],
                      )
                  ),
                ]
            )
        )
    );
  }
}