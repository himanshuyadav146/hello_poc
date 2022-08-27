import 'package:flutter/material.dart';

class CustomeLogin extends StatefulWidget {
   var title = "";
  // const CustomeLogin({Key? key}) : super(key: key);
   CustomeLogin(this.title);

  @override
  State<CustomeLogin> createState() => _CustomeLoginState();
}

class _CustomeLoginState extends State<CustomeLogin> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
