import 'package:flutter/material.dart';

class CardResumeFooter extends StatelessWidget {
  final String text;
  final IconData icon;

  const CardResumeFooter({
    Key key,
    this.text,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102,
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.withAlpha(30),
      ),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.grey,
            size: 32,
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          ),
          Icon(
            Icons.keyboard_arrow_right,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}