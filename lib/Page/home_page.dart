
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: Colors.blue,
              ),
              Positioned(
              left: 20,
              top: 35,
              child:  CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80",
                ),
              )
            ),
            ],  
            ),
            
            ListTile(
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_back_ios_new_outlined),
              title: Text("Profile"),
              onTap: ()=> Navigator.pop(context),
            )
          ],
        )
      ),
      appBar: AppBar(),
      body: Container(),
    );
  }
}
