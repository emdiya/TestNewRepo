import 'package:flutter/material.dart';
import 'package:lesson_2/models/food_items_model.dart';
class CustomItemsCard extends StatelessWidget {
  final ItemsModel? itemsModel;

  const CustomItemsCard({Key? key,this.itemsModel}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 230,
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Colors.grey[300]!,
            offset: const Offset(1,2)
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: 
              [ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                  width: double.infinity,
                  height: 165,
                  child: Image.network(itemsModel!.image!,fit: BoxFit.cover),
                
                ),
              ),
              Positioned(
                right: 20,
                top: 20,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 7),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(itemsModel!.statusTitle!,
                  style: TextStyle(
                    fontSize:14, 
                    fontWeight: FontWeight.w600,
                    color: itemsModel!.statusTitle == "Active" 
                    ? Colors.red 
                    : Colors.grey,
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 20,right:20,top: 0,bottom: 0),
            child: Row(
              children: [
                Text(
                  itemsModel!.title!,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    ),
                ),
                const Spacer(),
                Image.network('https://foodbuzz.site/api/v1/files/c270608b-9528-4146-b03d-bc6b944bd6d6',
                width: 40,
                height: 40),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,),
            child: Text(itemsModel!.subtitle!,style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}