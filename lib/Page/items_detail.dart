import 'package:flutter/material.dart';
import 'package:lesson_2/models/food_items_model.dart';

class ItemsDetailScreen extends StatelessWidget {
  final ItemsModel? itemsModel;
  const ItemsDetailScreen({Key? key,this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Item Detail"),
        backgroundColor: Colors.green[800],
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Stack(
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
                        fontSize:16, 
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
            ),
            Padding(
              padding: EdgeInsets.only(left: 20,right:20,top: 5,bottom: 0),
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
              child: Text(itemsModel!.subtitle!,style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w600, 
              ),
              ),
            ),
        
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Text(
                "Coupon Code: 168",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                ),
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10)
                  
                ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                'Voucher Information',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                'How to Use',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                ),
            ),
            SizedBox(height:5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                'Term and Condition',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top:10),
              child: Row(
                children: [
                  Icon(Icons.verified_outlined,
                  color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text("Lorem Ipsum is simply dummy text of the printing"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top:10),
              child: Row(
                children: [
                  Icon(Icons.verified_outlined,
                  color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text("Lorem Ipsum is simply dummy text of the printing"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top:10),
              child: Row(
                children: [
                  Icon(Icons.verified_outlined,
                  color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text("Lorem Ipsum is simply dummy text of the printing"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top:10),
              child: Row(
                children: [
                  Icon(Icons.verified_outlined,
                  color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text("Lorem Ipsum is simply dummy text of the printing"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top:10),
              child: Row(
                children: [
                  Icon(Icons.verified_outlined,
                  color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text("Lorem Ipsum is simply dummy text of the printing"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top:10),
              child: Row(
                children: [
                  Icon(Icons.verified_outlined,
                  color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text("Lorem Ipsum is simply dummy text of the printing"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top:10),
              child: Row(
                children: [
                  Icon(Icons.verified_outlined,
                  color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text("Lorem Ipsum is simply dummy text of the printing"),
                ],
              ),
            ),
            
          ],
              ),
        ),
      ),
    );
  }
}