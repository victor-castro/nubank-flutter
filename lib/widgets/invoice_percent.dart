import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InvoicePercent extends StatelessWidget {
  final double width;
  final double currentInvoice;
  final double nextInvoices;
  final double availableLimit;
  double total;

  InvoicePercent({
    Key key,
    this.width = 7,
    @required this.currentInvoice,
    @required this.nextInvoices,
    @required this.availableLimit,
  }) : super(key: key) {
    this.total = this.currentInvoice + this.nextInvoices + this.availableLimit;
  }

  int _getPercent(value) {
    double percent = value / this.total * 100;
    return percent.round();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Flexible(
          fit: FlexFit.loose,
          flex: _getPercent(this.nextInvoices),
          child: Container(
            width: width,
            color: Colors.orange,
          ),
        ),
        Flexible(
          fit: FlexFit.loose,
          flex: _getPercent(this.currentInvoice),
          child: Container(
            width: width,
            color: Colors.lightBlueAccent,
          ),
        ),
        Flexible(
          fit: FlexFit.loose,
          flex: _getPercent(this.availableLimit),
          child: Container(
            width: width,
            color: Colors.lightGreen,
          ),
        ),
      ],
    );
  }
}
