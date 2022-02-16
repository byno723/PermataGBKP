import 'package:flutter/material.dart';
import 'package:permata/theme.dart';

class WartaCard extends StatelessWidget {
  const WartaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: 20,
      ),
      padding: EdgeInsets.only(top: 10, left: 12, bottom: 14, right: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: secondaryTextColor),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                '29 ',
                style: alertTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: bold,
                ),
              ),
              Text(
                'Jan ',
                style: alertTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
              ),
              Text(
                '2021',
                style: alertTextStyle.copyWith(
                  fontSize: 17,
                  fontWeight: bold,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Warta 1',
                  style:
                      primaryTextStyle.copyWith(fontWeight: bold, fontSize: 16),
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                  style: primaryTextStyle.copyWith(
                    fontWeight: regular,
                    fontSize: 14,
                  ),
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
