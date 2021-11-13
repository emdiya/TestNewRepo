import 'package:flutter/material.dart';
import 'package:lesson_2/Data/items_data.dart';
import 'package:lesson_2/Page/items_detail.dart';
import 'package:lesson_2/Widget/custom_item_card.dart';
class FoodViewScreen extends StatelessWidget {
  const FoodViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food List"),
        backgroundColor: Colors.green[800],
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height:20),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: itemsList.length,
                itemBuilder: (context, index) {
              var currentItems = itemsList[index];
              return GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>  ItemsDetailScreen(
                        itemsModel: currentItems,
                      ),
                    ),
                  );
                },
                child: CustomItemsCard(
                  itemsModel: currentItems,
                ),
              );
            },
          ),
            ],
          ),
        )
      ),
    );
  }
}