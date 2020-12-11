import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home : MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() =>_MyAppState();
}
class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.purple[800],
      ),
      backgroundColor: Colors.purple[100],
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: new Text("Admin", style: new TextStyle(fontWeight: FontWeight.bold, fontSize:20.0)),
                accountEmail: new Text("admin_PMS.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg3tEtVcQAJAFinwjGYQLdceX9yLvHqSRGXQ&usqp=CAU"),
                ),
              decoration: new BoxDecoration(color: Colors.purple[800]),
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.perm_device_info),
              title: Text("Other Info"),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Exit"),
            )
          ],
        )
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            MyMenu(
              title: "New User",
              icon: Icons.account_balance,
              warna: Colors.brown,
            ),
            MyMenu(
              title: "Edit User",
              icon: Icons.info_outline,
              warna: Colors.blue,
            ),
            MyMenu(
              title: "Instant Booking",
              icon: Icons.book_online,
              warna: Colors.orange,),
            MyMenu(
              title: "Parking Overview",
              icon: Icons.local_parking_rounded,
              warna: Colors.green,),
            MyMenu(
              title: "Black List",
              icon: Icons.report,
              warna: Colors.blueGrey,),
            MyMenu(
              title: "Rate List",
              icon: Icons.monetization_on,
              warna: Colors.cyan,),
          ],
        ),
      ),
    );
  }
}
class MyMenu extends StatelessWidget {
  MyMenu({this.title,this.icon,this.warna});
  final String title;
  final IconData icon;
  final MaterialColor warna;
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(8.0),
        child: InkWell(
            onTap: () {},
            splashColor: Colors.purple,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    icon,
                    size: 70.0,
                    color: warna,
                  ),
                  Text(title, style: new TextStyle(fontSize: 17.0)),
                ],
              ),
            )
        )
    );
  }
}
