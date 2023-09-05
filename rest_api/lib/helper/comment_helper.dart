import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'package:rest_api/model/coments.dart';

class CommentHelper {
  Future<List<Coments>?> getComments() async {
    var response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));

    //status code 200 means everything is okay
    if (response.statusCode == 200) {
      var data = response.body;
      print(data);
      return comentsFromJson(data);
    }
  }
}
