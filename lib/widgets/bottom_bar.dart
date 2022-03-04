import 'package:explore/widgets/bottom_bar_column.dart';
import 'package:explore/widgets/info_text.dart';
import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      color: Colors.blueGrey[900],
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomBarColumn(
                      heading: 'SOBRE',
                      s1: 'Linktree',
                      s2: 'Fotos',
                      s3: 'Nossa História',
                    ),
                    BottomBarColumn(
                      heading: 'AJUDA',
                      s1: 'Payment',
                      s2: 'Cancellation',
                      s3: 'Vagas disponíveis',
                    ),
                    BottomBarColumn(
                      heading: 'SOCIAL',
                      s1: 'Twitter',
                      s2: 'Facebook',
                      s3: 'YouTube',
                    ),
                  ],
                ),
                Divider(
                  color: Colors.blueGrey,
                ),
                SizedBox(height: 20),
                InfoText(
                  type: 'Email',
                  text: 'ufgeagles@gmail.com',
                ),
                SizedBox(height: 5),
                SizedBox(height: 20),
                Divider(
                  color: Colors.blueGrey,
                ),
                SizedBox(height: 20),
                Text(
                  'Copyright © 2021 | LUIGI',
                  style: TextStyle(
                    color: Colors.blueGrey.shade300,
                    fontSize: 14,
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomBarColumn(
                      heading: 'SOBRE',
                      s1: 'Vagas disponíveis',
                      s2: 'Fotos',
                      s3: 'Nossa História',
                    ),
                    BottomBarColumn(
                      heading: 'STREAMS',
                      s1: 'Twitch',
                      s2: 'Youtube',
                      s3: 'Nimo',
                    ),
                    BottomBarColumn(
                      heading: 'REDES SOCIAIS',
                      s1: 'Twitter',
                      s2: 'Facebook',
                      s3: 'Instagram',
                    ),
                    Container(
                      color: Colors.blueGrey,
                      width: 2,
                      height: 150,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoText(
                          type: 'Email',
                          text: 'ufgeagles@gmail.com',
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.blueGrey,
                ),
                SizedBox(height: 20),
                Text(
                  'Copyright © 2021 | LUIGI GONTIJO',
                  style: TextStyle(
                    color: Colors.blueGrey.shade300,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
    );
  }
}
