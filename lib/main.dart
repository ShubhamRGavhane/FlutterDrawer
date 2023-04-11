import 'package:flutter/material.dart';

void main() {
  runApp(sidebar());
}

class sidebar extends StatelessWidget {
  const sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Drawer')),
        drawer: Drawer(
          child: ListView(
            children: [
             UserAccountsDrawerHeader(
              accountName: Text('Shubham'),
               accountEmail: Text('Shubham@gmail.com'),
               currentAccountPicture: CircleAvatar(
                child:ClipOval(child: Image.asset(
                  'lib/image/download.jpg',
                  height: 75,width: 75,
                  fit: BoxFit.cover,
                ),)
               ),),

           Column(
            children: [
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
              ),
               ListTile(
                title: Text('Account'),
                leading: Icon(Icons.account_box),
              ),
               ListTile(
                title: Text('Cart'),
                leading: Icon(Icons.shopping_cart),
              ),
               ListTile(
                title: Text('Wallet'),
                leading: Icon(Icons.wallet_rounded),
              ),
               ListTile(
                title: Text('Help'),
                leading: Icon(Icons.help),
              ),
               ListTile(
                title: Text('notification'),
                leading: Icon(Icons.notification_add),
              ),
               ListTile(
                title: Text('Add acount'),
                leading: Icon(Icons.add),
              ),
               ListTile(
                title: Text('setting'),
                leading: Icon(Icons.settings),
              ),
               ListTile(
                title: Text('Logout'),
                leading: Icon(Icons.logout),
              )
            ],
           )
            ],
          ),
        ),
      ),
    );
  }
}
