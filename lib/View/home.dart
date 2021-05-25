import 'dart:convert';

import 'package:badee3/View/details_post.dart';
import 'package:flutter/material.dart';
import 'package:badee3/Model/post.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Post api;
  bool loading = false;

  @override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }
  ///get data from api
  getData() async {
    try {
      String url = 'https://dummyapi.io/data/api/post';
      http.Response request =
          await http.get(url, headers: {'app-id': "60a373f57c13e7f5a901a999"});
      setState(() {
        api = Post.fromJson(json.decode(request.body));
      });
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: Text(''),
        title: Text(
          'Badee3',
          style: TextStyle(
              color: Colors.teal,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'Stint_Ultra_Condensed'),
        ),
        backgroundColor: Colors.grey[800],
      ),
      body: api != null
          ? ListView.builder(
              itemCount: api.data.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailsPost(api.data[index].id)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                ///owner picture
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            api.data[index].owner.picture,
                                          ),
                                          fit: BoxFit.cover)),
                                ),

                                SizedBox(
                                  width: 10,
                                ),
                                //owner name
                                Text(
                                  api.data[index].owner.firstName,
                                  style: Theme.of(context).textTheme.title,
                                ),
                              ],
                            ),
                          ),
                          ///post description
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              api.data[index].text,
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ),
                          ///image of post
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(api.data[index].link ?? ""),
                          ),
                          api.data[index].image == null
                              ? Container()
                              : Image.network(
                                  api.data[index].image,
                                ),
                          ///likes of post
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red.shade600,
                                ),
                                Text(api.data[index].likes.toString()),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              })
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
