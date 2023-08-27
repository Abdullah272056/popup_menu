import 'package:flutter/material.dart';

import '../model/menu_item.dart';

class MenuItems{

  static const List<MenuItem> itemFirst=[
    itemSetting,
    itemShare
  ] ;

  static const List<MenuItem> itemSecond=[
    itemSignOut,
  ] ;

  static const itemSetting=MenuItem(
      text: 'Settings',
      icon:Icons.settings
  );


  static const itemShare=MenuItem(
      text: 'Share',
      icon:Icons.share
  );

  static const itemSignOut=MenuItem(
      text: 'Sign Out',
      icon:Icons.logout_outlined
  );
}