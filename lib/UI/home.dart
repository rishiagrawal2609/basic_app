import 'package:flutter/material.dart';

MyApp() {
  var mytext = Text(
    'The first',
    style: TextStyle(color: Colors.black87),
    textDirection: TextDirection.ltr,
  );

  mypress() {
    print("Something Clicked.....");
  }

  mypress2() {
    print("something clicked for cal....");
  }

  mypress3() {
    print("Menu clicked");
  }

  var MyEmailIcon = Icon(
    Icons.email,
    color: Colors.black87,
  );
  var MyCaLIcon = Icon(
    Icons.calendar_today,
    color: Colors.black87,
  );

  var MyMenuIcon = Icon(
    Icons.menu,
    color: Colors.black87,
  );

  var MyEmailButton = IconButton(
    icon: MyEmailIcon,
    onPressed: mypress,
  );

  var MyCalButton = IconButton(
    icon: MyCaLIcon,
    onPressed: mypress2,
  );
  var MyMenuButton = IconButton(
    icon: MyMenuIcon,
    onPressed: mypress3,
  );

  var url =
      'https://avatars2.githubusercontent.com/u/55309783?s=460&u=9b82bbf789818a02cc224c1b893e1e0b1dd54ce5&v=4';

  var MyImage = Image.network(
    url,
    width: double.infinity,
    height: double.infinity,
  );
  var myappbar = AppBar(
      title: mytext,
      backgroundColor: Colors.lightGreenAccent,
      leading: MyMenuButton,
      actions: <Widget>[
        MyCalButton,
        MyEmailButton,
      ]);
  var myhome = Scaffold(
    appBar: myappbar,
    body: MyImage,
    backgroundColor: Colors.blueGrey,
  );
  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
  return design;
}
