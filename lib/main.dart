// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './models.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

// void main() {
//   runApp(const MaterialApp(
//     home: myApp(),
//   ));
// }

// class myApp extends StatefulWidget {
//   const myApp({Key? key}) : super(key: key);

//   @override
//   State<myApp> createState() => _myAppState();
// }

// // ignore: camel_case_types
// class _myAppState extends State<myApp> {
//   final TextEditingController _name = TextEditingController();
//   final TextEditingController _city = TextEditingController();
//   final TextEditingController _country = TextEditingController();
//   Student obj = Student();
//   Map<String, String> _data = {};
//   void CreateMap(String name, String city, String country) {
//     _data = {"name": name, "city": city, "country": country};
//     print(_data);
//   }

//   void postData() async {
//     print("Now we Enter in post method");
//     const url = "http://10.0.2.2:8000/studentPost/";
//     try {
//       http.Response response = await http.post(Uri.parse(url),
//           body: json.encode({
//             "name": _name.text,
//             "city": _city.text,
//             "country": _country.text,
//           }));
//       print(response.body);
//       print("Post method is terminated");
//     } catch (error) {
//       print("The error is: $error");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Post Request"),
//         backgroundColor: Colors.amber,
//         actions: const [Icon(Icons.menu)],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10),
//         child: Column(
//           children: [
//             TextField(
//               controller: _name,
//               decoration: const InputDecoration(
//                   border: UnderlineInputBorder(),
//                   labelText: "username",
//                   hintText: "Enter your name"),
//             ),
//             TextField(
//               controller: _city,
//               decoration: const InputDecoration(
//                   border: UnderlineInputBorder(),
//                   labelText: "City",
//                   hintText: "Enter your city name"),
//             ),
//             TextField(
//               controller: _country,
//               decoration: const InputDecoration(
//                   border: UnderlineInputBorder(),
//                   labelText: "Country",
//                   hintText: "Enter your country name"),
//             ),
//             const SizedBox(height: 15),
//             RaisedButton(
//                 onPressed: () {
//                   CreateMap(_name.text, _city.text, _country.text);
//                   postData();
//                 },
//                 color: Colors.amber,
//                 child: const Text("Sign in")),
//           ],
//         ),
//       ),
//     );
//   }
// }

void main() {
  runApp(MaterialApp(
    home: GetApp(),
  ));
}

class GetApp extends StatefulWidget {
  const GetApp({Key? key}) : super(key: key);

  @override
  State<GetApp> createState() => _GetAppState();
}

class _GetAppState extends State<GetApp> {
  void getData() async {
    const url = "http://10.0.2.2:8000/studentPost/";
    try {
      http.Response response = await http.get(Uri.parse(url));
    } catch (error) {
      print("Error: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Get the Data"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: getData,
          child: const Text("Get Data"),
          color: Colors.purple,
        ),
      ),
    );
  }
}
