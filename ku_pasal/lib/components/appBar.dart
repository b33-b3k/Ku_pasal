//appbar
import 'package:flutter/material.dart';
import 'package:ku_pasal/constant.dart';

//
class appBar extends StatelessWidget {
  appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //search bar
      title: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.white),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
