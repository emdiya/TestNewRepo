import 'package:flutter/material.dart';
import 'package:lesson_2/models/trainningCardModels.dart';

class CustomBlackCard extends StatelessWidget {
  final CardModel? cardModel;
  const CustomBlackCard({
    Key? key,
    this.cardModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Icon(
            Icons.sync,
            size: 35,
            color: Colors.amber,
          ),
          const SizedBox(width: 20),
          Container(
            width: 1,
            height: 40,
            color: Colors.white30,
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              const Text(
                'Indruction to Driving !',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              Row(
                children: const [
                  Icon(
                    Icons.all_inclusive_rounded,
                    color: Colors.amber,
                    size: 18,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Intermediate',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
              const SizedBox(height: 15),
            ],
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.amber[900],
          ),
        ],
      ),
    );
  }
}
