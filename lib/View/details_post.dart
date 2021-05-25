import 'package:badee3/Model/post.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
class DetailsPost extends StatefulWidget {
  final String id;

  DetailsPost(this.id);

  @override
  _DetailsPostState createState() => _DetailsPostState();
}

class _DetailsPostState extends State<DetailsPost> {
  Post api;
  ///get data from api
  getData() async {
    try {
      String url = 'https://dummyapi.io/data/api/post/${widget.id}';
      http.Response request =
      await http.get(url, headers: {'app-id': "60a373f57c13e7f5a901a999"});
     print(request.body);
    } catch (error) {
      showDialog(
          context: context,
          builder: (context) {
            return SimpleDialog(
              title: Text('Connection Error'),
              children: [
                Text('Verifiy your internet connection !\n or try again ..')
              ],
            );
          });
    }
  }
@override
  void initState() {
    // TODO: implement initState
  getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(''),
      backgroundColor: Colors.grey[800],),
    );
  }
}
