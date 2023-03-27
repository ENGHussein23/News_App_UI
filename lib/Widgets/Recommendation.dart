import 'package:flutter/material.dart';

class Recommendation extends StatelessWidget {
  String image;
  String category;
  String Title;
  String OtherImage;
  String OutherName;
  String date;

  Recommendation(this.image,this.category, this.Title, this.OtherImage,
      this.OutherName, this.date);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      child: Row(children: [
        Expanded(
          flex: 2,child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child:Image(
            height: 100,
            width: 100,
            fit: BoxFit.cover,

            image: AssetImage(image),
          ),
        ),),
        SizedBox(width: 5,),
        Expanded(
            flex: 4,
            child: Column(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(category,style: TextStyle(color: Colors.grey),),
                Text(Title,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 23
                  ),),
                Row(children:  [
                  Expanded(
                      flex: 1,child:
                  CircleAvatar(backgroundImage:AssetImage(OtherImage) ,)
                  ),
                  SizedBox(width: 3,),
                  Expanded(flex:3,child: Text(OutherName)),
                  Expanded(flex:3,child: Text(date)),
                ],),
              ],)),
      ],),
    );
  }
}
