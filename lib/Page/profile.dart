import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileSateState createState() => _ProfileSateState();
}

class _ProfileSateState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green[500],
        title: const Text('Profile'),
      ),
      body: Container(
        color: Colors.white70,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Stack(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  child: const CircleAvatar(
                    radius: 90,
                    backgroundColor: Colors.blueAccent,
                    backgroundImage: NetworkImage(
                      'https://cdn.picpng.com/man/man-clipart-33230.png',
                    ),
                  ),
                ),
                Positioned(
                  bottom: 25,
                  right: 65,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey[200],
                    child: const Icon(Icons.camera_alt),
                  ),
                ),
              ],
            ),
            Text(
              'William Smith',
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Divider(
                    color: Colors.grey,
                    height: 0,
                  ),
                  ListTile(
                    leading: Icon(Icons.attach_money),
                    title: Text('Financial'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 0,
                  ),
                  ListTile(
                    leading: Icon(Icons.person_outline),
                    title: Text('Personal Profile'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 0,
                  ),
                  ListTile(
                    leading: Icon(Icons.attach_money_outlined),
                    title: Text('Income'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 0,
                  ),
                  ListTile(
                    leading: Icon(Icons.graphic_eq_outlined),
                    title: Text('Ris Tplerance'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 0,
                  ),
                  ListTile(
                    leading: Icon(Icons.timelapse),
                    title: Text('Timming'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 0,
                  ),
                  ListTile(
                    leading: Icon(Icons.manage_search),
                    title: Text('Review Disclosurse'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
