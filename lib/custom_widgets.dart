import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue[900],
      centerTitle: true,
      elevation: 0,
      title:const  Text("Order #1688068",),
      leading: Icon(Icons.arrow_back_outlined),
    );
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}

class CustomText extends StatelessWidget {
  String text;
  Color? color;
  double? size;
  TextAlign? align;
  FontWeight? weight;
  double? space;
  CustomText({Key? key,this.space,required this.text, this.color,this.size,this.align,this.weight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,textAlign:align,style: TextStyle(color: color??Colors.black,fontSize: size,fontWeight: weight,letterSpacing: space),);
  }
}

class DividerCustom extends StatelessWidget {
  const DividerCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 12,),
        SizedBox(width:MediaQuery.of(context).size.width,height:1,child: DecoratedBox(decoration: BoxDecoration(color: Colors.grey,))),
        SizedBox(height: 12,),
      ],
    );
  }
}

class Details extends StatelessWidget {
   String head;
   String description;
   Details({Key? key,required this.description,required this.head}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: head,size: 15,weight: FontWeight.w500,space: .7,),
        SizedBox(height: 3,),
        CustomText(text: description,color: Colors.grey[800],space: .8,)
      ],
    );
  }
}

