import 'package:flutter/material.dart';
import 'package:lesson_2/Widget/createGridItems.dart';
import 'package:lesson_2/Page/profile.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  late Size size;

  get color => null;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[800],
          leading: Icon(Icons.menu),
          title: Text(
            "Dashboard",
            textAlign: TextAlign.center,
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Profile(),
                  ),
                );
              },
              child: const CircleAvatar(
                radius: 22,
                backgroundColor: Colors.red,
                backgroundImage: NetworkImage(
                  'https://cdn.picpng.com/man/man-clipart-33230.png',
                ),
              ),
            ),
            const SizedBox(width: 15),
          ],
        ),
        body: Stack(
          children: <Widget>[
            Container(
              child: CustomPaint(
                //painter: MyPainter(),
                child: Container(
                  height: size.height / 2,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    createGridItem(0),
                    createGridItem(1),
                    createGridItem(2),
                    createGridItem(3),
                    createGridItem(4),
                    createGridItem(5),
                    createGridItem(6),
                    createGridItem(7),
                    createGridItem(8),
                    createGridItem(8),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
