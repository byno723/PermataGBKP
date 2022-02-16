import 'package:flutter/material.dart';
import 'package:permata/theme.dart';
import 'package:permata/widgets/buku_card.dart';

class BukuPage extends StatelessWidget {
  const BukuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text('Buku Permata',
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
            BukuCard(),
            BukuCard(),
            BukuCard(),
            BukuCard(),
            BukuCard(),
            BukuCard(),
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
