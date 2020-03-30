import 'package:flutter/material.dart';
import 'package:nubankflutter/widgets/account_detail.dart';
import 'package:nubankflutter/widgets/card_resume/card_resume_body.dart';
import 'package:nubankflutter/widgets/card_resume/card_resume_footer.dart';
import 'package:nubankflutter/widgets/card_resume/card_resume_header.dart';

class AccountCardResume extends StatelessWidget {
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
              pageBuilder: (context, _, __) => AccountDetail(),
            ),
          );
        },
        child: Stack(
          children: <Widget>[
            Hero(
              tag: 'card2',
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CardResumeHeader(
                  icon: Icons.monetization_on,
                  title: 'Conta',
                  tagHero: 'iconAccount',
                ),
                CardResumeBody(
                  content: _InvoiceSummaryText(),
                ),
                CardResumeFooter(
                  icon: Icons.label,
                  text: 'Boleto de RS 94,46 pago segunda',
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
        text: 'Saldo disponível',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w300,
          fontSize: 16,
        ),
        children: [
          TextSpan(text: '\n'),
          TextSpan(
            text: 'R\$ 7,07',
            style: TextStyle(
              fontSize: 40,
              height: 1.4,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
