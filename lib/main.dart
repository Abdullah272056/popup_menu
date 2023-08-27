import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'data/menu_items.dart';
import 'model/menu_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: const MyHomePage(title: 'Setting Menu'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        actions:[
          PopupMenuButton<MenuItem>(
            onSelected: (item)=>onSelected(context,item),
            itemBuilder: (context)=>[
                ...MenuItems.itemFirst.map(buildItem).toList(),
              PopupMenuDivider(height: 2,),
              ...MenuItems.itemSecond.map(buildItem).toList(),
            ],
          )
        ],
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),
    );
  }

  PopupMenuItem<MenuItem>buildItem(MenuItem item)=>PopupMenuItem(
      value: item,
      child:Row(
    children: [
      Icon(item.icon,size: 18,color: Colors.black,),
      SizedBox(width: 10,),
      Text(item.text)
    ],
  ));

  onSelected(BuildContext context, MenuItem item) {
    switch(item){
      case MenuItems.itemSetting:
        //click setting item
        showToast("Setting item click");
        break;
      case MenuItems.itemShare:
      //click Share item
        showToast("Share item click");
        break;
      case MenuItems.itemSignOut:
      //click setting item
        showToast("SignOut item click");
        break;
    }
  }

  showToast(String text){
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0
    );
  }

}
