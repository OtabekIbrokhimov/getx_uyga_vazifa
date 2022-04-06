import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_uyga_vazifa/servise/create_controller.dart';
class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final _controller = Get.put(CreateController());
  TextEditingController controller1 = TextEditingController();
    TextEditingController controller2 = TextEditingController();
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // #email
                TextField(
                  textInputAction: TextInputAction.next,
                  controller: controller2,
                  decoration: InputDecoration(
                      hintText: "title"
                  ),
                ),
                SizedBox(height: 10,),

                // #password
                TextField(
                  controller: controller2,
                  decoration: InputDecoration(
                      hintText: "body"
                  ),
                ),
                SizedBox(height: 10,),

                // #sign_in
                MaterialButton(
                  onPressed: (){_controller.apiCreateTodo(controller2.toString().trim(), controller2.toString().trim());},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),
                  height: 50,
                  minWidth: MediaQuery.of(context).size.width - 50,
                  color: Colors.blueAccent,
                  child: Text("Create"),
                  textColor: Colors.white,
                ),
                SizedBox(height: 20,),

              ],
            ),
          ),
        ),
      );}}
