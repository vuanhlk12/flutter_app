import 'package:flutter/material.dart';
import 'package:flutter_app3/models/user.dart';
import 'package:flutter_app3/screens/authenticate/authenticate.dart';
import 'package:flutter_app3/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
