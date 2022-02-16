import 'package:flutter/material.dart';
import 'package:permata/theme.dart';
import 'package:permata/widgets/warta_card.dart';

class WartaPage extends StatelessWidget {
  const WartaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text('Warta Permata',
            style:
                secondaryTextStyle.copyWith(fontWeight: regular, fontSize: 16)),
        elevation: 0,
      );
    }

    Widget content() {
      return Expanded(
          child: Container(
        color: whitecolor,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 12),
          children: [
            WartaCard(),
            WartaCard(),
            WartaCard(),
            WartaCard(),
            WartaCard(),
            WartaCard(),
          ],
        ),
      ));
    }

    return Column(
      children: [
        header(),
        // emptyWishlist(),
        content()
      ],
    );
  }
}
