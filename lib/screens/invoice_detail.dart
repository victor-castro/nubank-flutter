import 'package:flutter/material.dart';
import 'package:nubankflutter/widgets/invoice_percent.dart';

class InvoiceDetail extends StatefulWidget {
  @override
  _InvoiceDetailState createState() => _InvoiceDetailState();
}

class _InvoiceDetailState extends State<InvoiceDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.withAlpha(10),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Hero(
              tag: 'card',
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              child: Hero(
                tag: 'invoice-percent',
                child: InvoicePercent(
                  width: 10,
                  availableLimit: 500,
                  currentInvoice: 1500,
                  nextInvoices: 500,
                ),
              ),
            ),
            Hero(
              tag: 'icon',
              child: Material(
                type: MaterialType.transparency,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RawMaterialButton(
                      constraints: BoxConstraints(),
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      onPressed: () => Navigator.pop(context),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.keyboard_arrow_left,
                            size: 24,
                            color: Colors.black.withAlpha(60),
                          ),
                          Icon(
                            Icons.credit_card,
                            size: 24,
                            color: Colors.black54,
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.fromLTRB(8, 0, 24, 0),
                      icon: Icon(Icons.search),
                      color: Colors.black.withAlpha(60),
                      onPressed: () => null,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
