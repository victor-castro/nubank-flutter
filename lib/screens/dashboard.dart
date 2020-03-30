import 'package:flutter/material.dart';
import 'package:nubankflutter/widgets/card_resume.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 16, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset(
                        'images/nubank_logo.png',
                        height: 32,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      )
                    ],
                  ),
                ],
              ),
            ),
            CardResume(),
            Container(
              height: 164,
              padding: EdgeInsets.fromLTRB(0, 32, 0, 8),
              child: ListView(
                padding: EdgeInsets.only(left: 20),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  FeatureItem(
                    icon: Icons.person_add,
                    name: 'Indicar \namigos',
                  ),
                  FeatureItem(
                    icon: Icons.smartphone,
                    name: 'Recarga de \ncelular',
                  ),
                  FeatureItem(
                    icon: Icons.attach_money,
                    name: 'Cobrar',
                  ),
                  FeatureItem(
                    icon: Icons.monetization_on,
                    name: 'Indicar \namigos',
                  ),
                  FeatureItem(
                    icon: Icons.person_add,
                    name: 'Indicar \namigos',
                  ),
                  FeatureItem(
                    icon: Icons.person_add,
                    name: 'Indicar \namigos',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final String name;
  final IconData icon;

  const FeatureItem({
    Key key,
    this.name,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        width: 110,
        height: 110,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white.withAlpha(40),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
              size: 32,
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
