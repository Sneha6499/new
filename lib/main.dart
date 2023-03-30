//
import 'package:flutter/material.dart';
import 'package:tabbar282/product_box.dart';

import 'product.dart';
import 'product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // MyHomePage({Key? key, required this.title}) : super(key: key);

  late final String title;

  //List<Product> items=[];
  List<Product> newList = [];

  final items = Product.getProducts();

  @override
  initState() {
    newList = items.cast<Product>();
    super.initState();
  }

  void runfilter(String enteredKeyword) {
    List<Product> results = [];

    if (enteredKeyword.isEmpty) {
      results = items.cast<Product>();
    } else {
      results = items
          .where((element) =>
              element.name.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .cast<Product>()
          .toList();
    }
    setState(() {
      newList = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              // Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: Text(
            "Job Details",
            textAlign: TextAlign.end,
            style: TextStyle(
              color: Colors.black45,
            ),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      labelText: 'search', suffixIcon: Icon(Icons.search)),
                  onChanged: (value) => runfilter(value),
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: newList.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            child: ProductBox(
                              item: newList[index],
                              title: '',
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ProductPage(item: newList[index])));
                            },
                          );
                        }))
              ],
            )));
  }
}

// import 'package:flutter/material.dart';
// import 'package:tabbar282/product_box.dart';
//
// import 'product.dart';
// import 'product_page.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   //const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Product navigation',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;
//   final items = Product.getProducts();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           leading: IconButton(
//             onPressed: () {
//               // Navigator.pop(context);
//             },
//             icon: Icon(Icons.arrow_back),
//           ),
//           title: Text(
//             "Job Details",
//             textAlign: TextAlign.end,
//             style: TextStyle(
//               color: Colors.black45,
//             ),
//           ),
//         ),
//
//
//         body: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Column(
//               children: [
//                 TextField(
//                   decoration: InputDecoration(
//                       labelText: 'search', suffixIcon: Icon(Icons.search)),
//                   onChanged: (value){
//
//                     print("************* $value");
//                   },
//                 ),
//                 Expanded(
//                     child: ListView.builder(
//                         itemCount: items.length,
//                         itemBuilder: (context, index) {
//                           return GestureDetector(
//                             child: ProductBox(
//                               item: items[index],
//                               title: '',
//                             ),
//                             onTap: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) =>
//                                           ProductPage(item: items[index])));
//                             },
//                           );
//                         }))
//               ],
//             )));
//   }
// }
