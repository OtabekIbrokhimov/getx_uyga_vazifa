import 'package:get/state_manager.dart';
import 'package:getx_uyga_vazifa/model/PostModel.dart';
import 'package:getx_uyga_vazifa/servise/http_servise.dart';


class HomeController extends GetxController{
  var isLoading = false.obs;
  var items = [].obs;

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
  void apiPostDelete(Post post) async {
    isLoading.value = true;

     Network.DEL(Network.API_DELETE + post.id.toString(), Network.paramsEmpty());

    isLoading.value = false;

  }
}