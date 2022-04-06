import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_uyga_vazifa/model/PostModel.dart';
import '../servise/update_controller.dart';
class UpdatePage extends StatefulWidget {
  const UpdatePage({Key? key}) : super(key: key);

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  final _controller = Get.put(UpdateController());
  var data = Get.arguments[0];
  TextEditingController controller1 = TextEditingController(text: Get.arguments[1]);
  TextEditingController controller2 = TextEditingController(text: Get.arguments[2]);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
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
                controller: controller1,
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
                onPressed: (){_controller.apiUpdateTodo(controller2.toString().trim(),controller1.toString().trim(),Get.arguments[0].toString());
     Get.back();

                  },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),
                height: 50,
                minWidth: MediaQuery.of(context).size.width - 50,
                color: Colors.blueAccent,
                child: Text("Update"),
                textColor: Colors.white,
              ),
              SizedBox(height: 20,),

            ],
          ),
        ),
      ),
    );}}
