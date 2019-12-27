import 'package:flutter/material.dart';
import 'package:moengine_website/common/util/utils.dart';

class HomePage extends StatefulWidget {
  static const routerName = '/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Utils.openUrl('https://github.com/moengine-project/moengine');
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xffeff3f6),
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(width: 1, color: Color(0x1b1f2333)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color(0xfffafbfc),
                      Color(0xffeff3f6),
                    ],
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'star',
                      style: TextStyle(
                        color: Color(0xff24292e),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
