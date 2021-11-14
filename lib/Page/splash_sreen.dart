import 'package:flutter/material.dart';
import 'package:lesson_2/Page/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
void initState() {
  super.initState();
  Future.delayed(
    const Duration(seconds: 5),
    (){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const  HomePage(),
        ),
      );
    },
  );
  
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1200px-Facebook_Logo_%282019%29.png",
                height: 150,
                ),
            ),
            const SizedBox(height: 200),
            const CircularProgressIndicator(),
            const SizedBox(height: 20),
            Text("Waiting Pu "),
          ],
        )
      ),
    );
  }
}