import 'package:flutter/material.dart';

class CardResumeBody extends StatelessWidget {
  final Widget content;

  const CardResumeBody({
    Key key,
    this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: content,
        ),
      ),
    );
  }
}