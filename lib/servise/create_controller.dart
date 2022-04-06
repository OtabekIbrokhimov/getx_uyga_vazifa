import 'package:get/get.dart';
import 'package:getx_uyga_vazifa/model/PostModel.dart';
import 'package:getx_uyga_vazifa/servise/http_servise.dart';

class CreateController extends GetxController {
  var isLoading = false.obs;
  var items = [].obs;
  var data = "".obs;

  void apiPostList () async{
    isLoading.value = true;
    var response = await Network.GET(Network.API_LIST, Network.paramsEmpty());
    if (response != null) {
      items.value = Network.parsePostList(response);

    } else {
      items.value = [];
    }

    isLoading.value = false;
  }

  void apiCreateTodo(String body, String title) {
    Post post = Post(userId: 1, id: -1, title: title, body: body);
    Network.POST(Network.API_CREATE, Network.paramsCreate(post)).then((value) {
      if (value != null) {
        print(value);
        apiPostList();
      } else {
        //error msg
      }
    });
  }

  void apiUpdateTodo(String body, String title, String id) {
    Post todo = Post(userId: 1, id: 55, title: title, body: body);
    Network.PUT(
        Network.API_UPDATE + todo.id.toString(), Network.paramsUpdate(todo))
        .then((value) {
      if (value != null) {
        print(value);
        apiPostList();
      } else {
        //error msg
      }
    });
  }

  void getResponse(String response) {


    data = response as RxString;
   }

}
