import 'package:flutter/material.dart';



class Detailspage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home : new DetailsPage(),
    );
  }
}

class DetailsPage extends StatelessWidget {
  static const routename= "/details";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[700],
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.cyan[600],
      ),
      drawer: Drawer(
        child:ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("OurSea",
              style: TextStyle(fontSize: 27,color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Colors.cyan,
                image: DecorationImage(
                  image:AssetImage(
                    'assets/images/seaa.jpg')),
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(
                Icons.home,
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Profil"),
              leading: Icon(
                Icons.person,
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            // ListTile(
            //   title: Text("About"),
            //   leading: Icon(
            //     Icons.announcement_rounded,
            //   ),
            //   onTap: (){
            //     Navigator.pop(context);
            //   },
            // ),
            // ListTile(
            //   title: Text("Logout"),
            //   leading: Icon(
            //     Icons.logout,
            //   ),
            //   onTap: (){
            //     Navigator.pop(context);
            //   },
            
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15,bottom: 0, left: 15, right: 10),
            child: Text(
              "Kategori",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.white),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 150,
            margin: EdgeInsets.only(top: 15,bottom: 10, left: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return _categoryList(context);
              },
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.grey.shade300,
            height: 60.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                children: <Widget>[
                  Text(
                    "Berita Terkini",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      print("");
                    },
                    child: Text(""),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 4.0),
          ...[1,2,3,4].map(
            (product) => ProductListItem(
              onPressed: () {},
            ),
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }


  Widget _categoryList(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
               boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 1,
                    offset: Offset(5, 2),
                  ),
                ],
              color: Colors.grey,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/good.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: 150,
            height: 150,
          ),
          Positioned(
            bottom: 0,
            left: 10,
            right: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16.0,
              ),
              color: Colors.lightBlue[800],
              child: Text(
                "Cara Penanganan",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class ProductListItem extends StatelessWidget {
  final Function onPressed;

  const ProductListItem({Key key, @required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: MaterialButton(
        padding: const EdgeInsets.all(0),
        elevation: 0.5,
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: onPressed,
        child: Row(
          children: <Widget>[
            Ink(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/pencemaran2.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text("Bahaya limbah plastik bagi keberlangsungan kehidupan dilaut...."),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Details",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.looks),
                        onPressed: () {
                        },
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
