import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:moengine_website/common/widget/github_menu_button.dart';

class HomePage extends StatefulWidget {
  static const routerName = '/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _stars;
  String _description;

  Future<Null> _onFrame(_) async {
    http.Response response =
        await http.get('https://api.github.com/repositories/230402647');
    Map<String, dynamic> repo = json.decode(response.body);
    setState(() {
      _stars = repo['stargazers_count'];
      _description = repo['description'];
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(_onFrame);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'moengine'.toUpperCase(),
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(height: 30),
            GithubMenuButton(
              icon: 'assets/images/github.png',
              name: 'Star',
              value: '${_stars ?? '-1'}',
            ),
            const SizedBox(height: 30),
            Text(
              '${_description ?? '...'}',
              style: TextStyle(
                fontSize: 26,
                color: Colors.black54,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
