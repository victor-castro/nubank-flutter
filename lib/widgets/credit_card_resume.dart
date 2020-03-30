import 'package:flutter/material.dart';
import 'package:nubankflutter/screens/invoice_detail.dart';
import 'package:nubankflutter/widgets/card_resume/card_resume_body.dart';
import 'package:nubankflutter/widgets/card_resume/card_resume_footer.dart';
import 'package:nubankflutter/widgets/card_resume/card_resume_header.dart';
import 'package:nubankflutter/widgets/invoice_percent.dart';

class CreditCardResume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
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
                CardResumeHeader(
                  icon: Icons.credit_card,
                  title: 'Cartão de crédito',
                ),
                CardResumeBody(
                  content: _InvoiceSummaryText(),
                ),
                CardResumeFooter(
                  icon: Icons.home,
                  text:
                      'Compra mais recente em Pet Love *Order1044 no valor de 500,00 reais',
                )
              ],
            ),
          ],
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
                text: '1.500',
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
