
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:getx_uyga_vazifa/model/PostModel.dart';
import 'package:getx_uyga_vazifa/servise/home.controller.dart';
Widget itemOfPost (HomeController viewModel,Post post){
  return Slidable(
    endActionPane: ActionPane(
      extentRatio: 0.25,
      motion: ScrollMotion(),
      children: [
        SlidableAction(
          onPressed: (BuildContext context){
            // viewModel.apiPostDelete(post).then((value) => {
            //   if(value) viewModel.apiPostList(),
            // });
          },
          flex: 3,
          backgroundColor:  Color(0xFFFE4A49),
          foregroundColor:  Colors.white,
          icon:  Icons.delete,
          label:  'Delete',

        ),
        SlidableAction(
          backgroundColor: Colors.blue,
          onPressed: (BuildContext context) {
            Get.toNamed("/third",arguments: [{post.id},"${post.title}","${post.body}"]);

          },
          flex: 3,
          foregroundColor:  Colors.white,
          icon:  Icons.update,
          label:  'update',
        ),
      ],
    ),
    child: Container(
      padding: EdgeInsets.only(left: 20,top: 20,right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(post.title!.toUpperCase(),style: TextStyle(color:  Colors.black, fontWeight: FontWeight.bold),

          ),
          SizedBox(height: 5,width: 0,),
          Text(post.body!)
        ],
      ),
    ),
  );
}
