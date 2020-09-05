import 'package:flutter/material.dart';
import 'package:my_snippets/model/user.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: FloatingActionButton(
              onPressed: () {
                hey();
              },
            ),
          ),
        ),
      ),
    );
  }
}

hey() {
  User eda1 = new User("eda", "ersu", "ist");
  print(eda1.getname);
  eda1.setname("edanur");
  print(eda1.getname);

  ///
  Future<List<String>> getdata() async {
    http.Response response;
    List<User> mylist = new List<User>();
    response = await http
        .get(Uri.encodeFull(''), headers: {'Accept': 'application/json'});

    var jsondata = json.decode(response.body);
    print(response.body);
    for (var u in jsondata) {
      mylist.add(new User(u[''], u[''], u['']));
    }
  }
}
