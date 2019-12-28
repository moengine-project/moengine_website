import 'package:flutter/material.dart';
import 'package:moengine_website/common/util/utils.dart';

class GithubMenuButton extends StatefulWidget {
  final String icon;
  final String name;
  final String value;

  const GithubMenuButton({
    Key key,
    @required this.icon,
    @required this.name,
    @required this.value,
  }) : super(key: key);

  @override
  _GithubMenuButtonState createState() => _GithubMenuButtonState();
}

class _GithubMenuButtonState extends State<GithubMenuButton> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (_) {
        setState(() {
          _isHover = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHover = false;
        });
      },
      child: GestureDetector(
        onTap: () {
          Utils.openUrl('https://github.com/moengine-project/moengine');
        },
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            border: Border.all(width: 1, color: const Color(0x1b1f2333)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: _isHover
                  ? const <Color>[
                      Color(0xfffafbfc),
                      Color(0xffdee3e6),
                    ]
                  : const <Color>[
                      Color(0xfffafbfc),
                      Color(0xffeff3f6),
                    ],
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      widget.icon,
                      width: 20,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      widget.name,
                      style: TextStyle(
                        color: const Color(0xff24292e),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 5),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: const Border(
                    left: BorderSide(width: 1, color: Color(0x1b1f2333)),
                  ),
                ),
                child: Text(
                  widget.value,
                  style: TextStyle(
                    color: const Color(0xff24292e),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
