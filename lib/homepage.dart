import 'package:fifth_ui/custom_widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class FifthUI extends StatelessWidget {
  const FifthUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               CustomText(text: 'May 31, 05:42 PM',space: .5,),
                Row(
                  children: [
                    CircleAvatar(radius: 8,),
                    SizedBox(width: 5,),
                    CustomText(text: 'Delivered',color: Colors.grey[700],space: .5,weight: FontWeight.w500,)
                  ],
                )
              ],
            ),
            DividerCustom(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: '1 ITEM',color: Colors.grey[700],weight: FontWeight.w400,),
                Row(
                  children: [
                    Icon(Icons.receipt_outlined,color: Colors.blue[900],),
                    SizedBox(width: 9,),
                    CustomText(text: 'RECEIPT',color: Colors.blue[900],weight: FontWeight.w500,space: .7,)
                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network('https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dCUyMHNoaXJ0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',width:70,height: 55,fit: BoxFit.fill,),),
                SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: 'Explore | Men | Navy Blue',weight: FontWeight.w400,space: .7,size: 15,),
                    CustomText(text: '1 Piece',size: 12,),
                    CustomText(text: 'Size: XL',color: Colors.grey[800],size: 13,),
                    SizedBox(height: 3,),
                    Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(height: 17,width: 25,child: DecoratedBox(decoration: BoxDecoration(color: Colors.blue[100],borderRadius: BorderRadius.circular(3),border: Border.all(color: Colors.blue.shade900)),child: Center(child: CustomText(text: '1',color: Colors.blue[900],size: 11,)),),),
                            SizedBox(width: 10,),
                            CustomText(text: '×',size: 18,weight: FontWeight.w300,),
                            CustomText(text: '  ₹799'),
                          ],
                        ),
                       SizedBox(width: 153.7,),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                         child: CustomText(text: '₹799',color: Colors.grey[800],),
                       )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            DividerCustom(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: 'Item Total',space: .5,),
                CustomText(text: '₹799',color: Colors.grey[800],)
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: 'Delivery',space: .5,),
                CustomText(text: 'FREE',color: Colors.green[500],space: .7,weight: FontWeight.w500,)
              ],
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: 'Grand Total',space: .7,size: 16,weight: FontWeight.w500,),
                CustomText(text: '₹799',weight: FontWeight.w500,size: 16,)
              ],
            ),
            DividerCustom(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: 'CUSTOMER DETAILS',color: Colors.grey[700],space: .5,),
                Row(
                  children: [
                    Icon(Icons.share_outlined,color: Colors.blue[900],),
                    SizedBox(width: 9,),
                    CustomText(text: 'SHARE',color: Colors.blue[900],weight: FontWeight.w500,)
                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Details(head: 'Deepa',description: '+91-7829000484',),
                Row(
                  children: [
                    Container(width: 30,height: 30,child: DecoratedBox(decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.blue.shade900,width: 2)),
                    child: Icon(Icons.call,color: Colors.blue[900],size: 20,),
                    ),),
                    SizedBox(width: 20,),
                    FaIcon(FontAwesomeIcons.whatsapp,size: 34,color: Colors.green,)
                  ],
                ),
              ],
            ), SizedBox(height: 13,),
           Details(description: 'D 1101 Chartered Beverly\nHills,Subramanyapura P.O', head: 'Address'),
            SizedBox(height: 13,),
            Row(
              children: [
                Details(description: 'Bangalore', head: 'City'),
                SizedBox(width: 100,),
                Details(description: '560061', head: 'Pincode')
              ],
            ),SizedBox(height: 13,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Details(description: 'Online', head: 'Payment'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 17, 0, 0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.green[100]),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(11, 3,11, 3),
                      child: CustomText(text: 'PAID',size:12,space: .5,color: Colors.green[600],weight: FontWeight.w700,)
                    ),
                  ),
                ),
              ],
            ),
            DividerCustom(),
            CustomText(text: 'ADDITIONAL INFORMATION',color: Colors.grey[700],space: .5,),
            SizedBox(height: 13,),
            Details(description: 'Karnataka', head: 'State'),
            SizedBox(height: 13,),
            Details(description: 'greeniceaqua@gmail.com', head: 'Email'),
            SizedBox(height: 25,),
            SizedBox(width: MediaQuery.of(context).size.width,height: 40,child: DecoratedBox(decoration: BoxDecoration(border: Border.all(color: Colors.blue.shade900,width: 1.4),borderRadius: BorderRadius.circular(5)),
            child: Center(child: CustomText(text: 'Share receipt',color: Colors.blue[900],weight: FontWeight.w500,space: .5,size: 16,)),
            ),)
          ],
        ),
      ),
    );
  }
}
