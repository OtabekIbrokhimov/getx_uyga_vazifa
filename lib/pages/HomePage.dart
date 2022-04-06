import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_uyga_vazifa/servise/home.controller.dart';
import 'package:getx_uyga_vazifa/views/itemofHome.dart';

import 'create_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = Get.put(HomeController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.apiPostList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pattern-GetX"),),
        body: Obx(
              ()=>Stack(
            children: [
              ListView.builder(itemCount: _controller.items.length,itemBuilder:( ctx, index){
                return itemOfPost(_controller, _controller.items[index]);
              }
              ),



            ],
          ),
        ),
        floatingActionButton:   FloatingActionButton(onPressed: (){Get.toNamed("/second",);})
    );

  }
}
