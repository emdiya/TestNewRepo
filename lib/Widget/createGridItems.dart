import 'package:flutter/material.dart';

Widget createGridItem(int position) {
  var color = Colors.white;
  var icondata = Icons.add;

  switch (position) {
    case 0:
      color = Colors.cyan;
      icondata = Icons.home;
      break;
    case 1:
      color = Colors.deepPurple;

      icondata = Icons.email;
      break;
    case 2:
      color = Colors.orange;
      icondata = Icons.alarm;
      break;
    case 3:
      color = Colors.pinkAccent;
      icondata = Icons.account_balance_wallet;
      break;
    case 4:
      color = Colors.teal;
      icondata = Icons.backup;
      break;
    case 5:
      color = Colors.green;
      icondata = Icons.book;
      break;
    case 6:
      color = Colors.blue;
      icondata = Icons.data_saver_off;
  }

  return Builder(builder: (context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 5, top: 5),
      child: Card(
        elevation: 10,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          side: BorderSide(color: Colors.white),
        ),
        child: InkWell(
          onTap: () {},
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  icondata,
                  size: 40,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Email",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  });
}
