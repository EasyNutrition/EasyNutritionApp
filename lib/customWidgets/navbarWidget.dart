import 'dart:convert';

import 'package:easy_nutrition/models/users-model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Navbar extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _NavBarState();
}

class _NavBarState extends State<Navbar> {
  @override
  void initState() {
    fetchUsers();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
          future: fetchUsers(),
          builder: (BuildContext ctx, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return Container();
            } else {
              return Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/iv_user.jpg', height: 40)),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Hola, ',
                            style: TextStyle(fontSize: 24),
                          ),
                          Text(
                            snapshot.data[0].name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Paciente',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            ' | ',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            'Plan Free',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Align(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 120),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.notifications),
                            iconSize: 32,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              );
            }
          }),
    );
  }
}



Future<List<User>> fetchUsers() async {
  final response = await http
      .get(Uri.parse('https://easyn.azurewebsites.net/api/roles/2/users'));

  var responseData = json.decode(response.body);

  List<User> users = [];
  for (var singleUser in responseData) {
    if (singleUser['id'] == 12) {
      User user = User(
          id: singleUser['id'],
          username: singleUser['username'],
          password: singleUser['password'],
          name: singleUser['name'],
          lastname: singleUser['lastname'],
          birthday: singleUser['birthday'],
          email: singleUser['email'],
          phone: singleUser['phone'],
          address: singleUser['address'],
          active: singleUser['active']);
      users.add(user);
    }
  }
  return users;
}
