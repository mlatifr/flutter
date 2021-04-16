import 'dart:convert';
import 'package:http/http.dart' as http;

// class model
class User {
  // field
  String name, id;
  // constructor
  User({this.id, this.name});

  // factory yang berfungsi agar tidak membuat objek baru ketika
  // kita panggil Named Constructor tersebut
  // Named Constructor untuk method konversi dari Class Model ke Map
  factory User.createUser(Map<String, dynamic> object) {
    return User(
        id: object['id'].toString(),
        name: object['first_name'] + ' ' + object['last_name']);
  }
  // method yang mengembalikan list of user dengan parameter 'no page'
  static Future<List<User>> getUser(String page) async {
    String apiURL = 'https://reqres.in/api/users?page=' + page;

    // get API
    var apiResult = await http.get(apiURL);

    // ubah ke json
    var jsonObject = json.decode(apiResult.body);
    // print('-------------- jsonObject $jsonObject');
    // nanti hasilnya berupa map dari string -> dynamic
    // tapi yang diambil value dari {data}
    //
    // jsonObject as Map<String, dynamic> == untuk parsing jsonObject
    // kemudian diambil nilai yang index nya ['data'];
    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];
    print('--------------- listUser $listUser');
    List<User> users = [];
    for (int i = 0; i < listUser.length; i++) {
      users.add(User.createUser(listUser[i]));
    }
    return users;
  }
}
