import 'package:flutter/material.dart';

typedef StringValue = String Function(String);

class CustomeLogin extends StatefulWidget {
  final StringValue onCallBack;
   var title = "";
   var header="";
   var loginText="";
  // const CustomeLogin({Key? key}) : super(key: key);
   CustomeLogin(this.title,this.header,this.loginText,this.onCallBack);

  @override
  State<CustomeLogin> createState() => _CustomeLoginState();
}

class _CustomeLoginState extends State<CustomeLogin> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(10),
            child: Text(widget.header),
            ),

            Padding(padding: EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              controller: _emailController,
            ),
            ),

            InkWell(
                child: Container(
                  width: 200,
                  height: 80,
                  alignment: Alignment.center,
                  child:  Text(widget.loginText),
                ),
                onTap: ()=>setState(() {
                widget.onCallBack(_emailController.text);
                })
            )
          ],
        ),
      ),
    );
  }
}
