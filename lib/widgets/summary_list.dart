import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nubankflutter/widgets/account_card_resume.dart';
import 'package:nubankflutter/widgets/credit_card_resume.dart';

class SummaryList extends StatefulWidget {
  @override
  _SummaryListState createState() => _SummaryListState();
}

class _SummaryListState extends State<SummaryList> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CarouselSlider(
            enableInfiniteScroll: false,
            viewportFraction: 1.0,
            autoPlay: false,
            height: MediaQuery.of(context).size.height * .5,
            onPageChanged: (index) {
              setState(() {
                _current = index;
              });
            },
            items: <Widget>[
              CreditCardResume(),
              AccountCardResume(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 16, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _isCurrent(0)
                ),
              ),
              Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 16, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _isCurrent(1)
                ),
              ),
              Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 16, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _isCurrent(2)
                ),
              )
            ]
          )
        ],
      ),
    );
  }

  Color _isCurrent(index) => _current == index ? Colors.white : Colors.white.withAlpha(40);
  
}
