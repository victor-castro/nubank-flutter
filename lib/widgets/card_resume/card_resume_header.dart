import 'package:flutter/material.dart';

class CardResumeHeader extends StatelessWidget {
  final String title;
  final IconData icon;
  final String tagHero;

  const CardResumeHeader({
    Key key,
    this.title,
    this.icon, this.tagHero = 'icon',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 32, 24, 0),
      child: Hero(
        tag: tagHero,
        child: Material(
          type: MaterialType.transparency,
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(24, 0, 16, 0),
                alignment: Alignment.centerLeft,
                child: Icon(
                  icon,
                  size: 24,
                  color: Colors.black54,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}