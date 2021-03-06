
import 'package:flutter/material.dart';
import 'package:projek_mobile/constanst.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import '../bottomnav.dart';


class Beranda extends StatefulWidget {
  @override
  static const routename= "/dashboard";
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Beranda> {
  List data;

  Future<String> getData() async{
    http.Response response = await http.get(
      Uri.encodeFull("https://my-json-server.typicode.com/sastra12/json_berita/posts"),
      headers: {
        "Accept":"application/json"
      }
    );
    setState((){
      data = json.decode(response.body);
    });
    return "Success!";
  }
  
  @override
  void initState(){
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SDGS Kelompok 14"),),
      body: new ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index){
          return new Container(
            color: ColorPalette.primaryColor,
            child: Card(
              color: ColorPalette.underlineTextField,
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.arrow_drop_down_circle),
                      title: Text(data[index]["title"]),
                      subtitle: Text(
                        'Dinas Kelautan',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        data[index]["isi_berita"],
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        FlatButton(
                          onPressed: () {
                            // Perform some action
                          },
                          child: const Text('Tambah Artikel'),
                        ),
                        FlatButton(
                          onPressed: () {
                            // Perform some action
                          },
                          child: const Text('ACTION 2'),
                        ),
                      ],
                    ),
                    Image.asset('assets/images/icon.jpg'),
                  ],
                ),
              ),
          );
          // Card(
          //   child: new Text(data[index]["title"]),
          
        },
      ),
      // ListView(
      //   children: [
          // Container(
          //   color: ColorPalette.primaryColor,
          //   child: Card(
          //     color: ColorPalette.underlineTextField,
          //       clipBehavior: Clip.antiAlias,
          //       child: Column(
          //         children: [
          //           ListTile(
          //             leading: Icon(Icons.arrow_drop_down_circle),
          //             title: const Text('Penyuluhan Tentang Budidaya Rumput Laut'),
          //             subtitle: Text(
          //               'Dinas Kelautan',
          //               style: TextStyle(color: Colors.black.withOpacity(0.6)),
          //             ),
          //           ),
          //           Padding(
          //             padding: const EdgeInsets.all(16.0),
          //             child: Text(
          //               'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          //               style: TextStyle(color: Colors.black.withOpacity(0.6)),
          //             ),
          //           ),
          //           ButtonBar(
          //             alignment: MainAxisAlignment.start,
          //             children: [
          //               FlatButton(
          //                 onPressed: () {
          //                   // Perform some action
          //                 },
          //                 child: const Text('ACTION 1'),
          //               ),
          //               FlatButton(
          //                 onPressed: () {
          //                   // Perform some action
          //                 },
          //                 child: const Text('ACTION 2'),
          //               ),
          //             ],
          //           ),
          //           Image.asset('assets/images/icon.jpg'),
          //         ],
          //       ),
          //     ),
          // ),
          
            
          
      //   ],
      // ),
      
    
        
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomBar(),
    );
  }
}
