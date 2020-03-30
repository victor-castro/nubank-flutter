import 'package:flutter/material.dart';
import 'package:nubankflutter/screens/invoice_detail.dart';
import 'package:nubankflutter/widgets/invoice_percent.dart';

class CardResume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: Duration(milliseconds: 400),
                pageBuilder: (context, _, __) => InvoiceDetail(),
              ),
            );
          },
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
                right: 0,
                top: 0,
                bottom: 102,
                child: Hero(
                  tag: 'invoice-percent',
                  child: InvoicePercent(
                    width: 7,
                    availableLimit: 500,
                    currentInvoice: 1500,
                    nextInvoices: 500,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _CardResumeHeader(
                    icon: Icons.credit_card,
                    title: 'Cartão de crédito',
                  ),
                  _CardResumeBody(
                    content: _InvoiceSummaryText(),
                  ),
                  _CardResumeFooter(
                    icon: Icons.home,
                    text:
                        'Compra maiss recente em Pet Love *Order1044 no valor de 500,00 reais',
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CardResumeFooter extends StatelessWidget {
  final String text;
  final IconData icon;

  const _CardResumeFooter({
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

class _CardResumeBody extends StatelessWidget {
  final Widget content;

  const _CardResumeBody({
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

class _InvoiceSummaryText extends StatelessWidget {
  const _InvoiceSummaryText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Fatura Atual'.toUpperCase(),
        style: TextStyle(
            color: Colors.lightBlueAccent,
            fontWeight: FontWeight.bold,
            fontSize: 16),
        children: [
          TextSpan(text: '\n'),
          TextSpan(
            text: 'R\$ ',
            style: TextStyle(
              fontSize: 40,
              height: 1.4,
              fontWeight: FontWeight.w300,
            ),
            children: [
              TextSpan(
                text: '1.415',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(text: ',99'),
            ],
          ),
          TextSpan(text: '\n'),
          TextSpan(
              text: 'Limite disponível ',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
              children: [
                TextSpan(
                    text: 'R\$ 365,29',
                    style: TextStyle(
                        color: Colors.lightGreen, fontWeight: FontWeight.bold))
              ]),
        ],
      ),
    );
  }
}

class _CardResumeHeader extends StatelessWidget {
  final String title;
  final IconData icon;

  const _CardResumeHeader({
    Key key,
    this.title,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 32, 24, 0),
      child: Hero(
        tag: 'icon',
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
