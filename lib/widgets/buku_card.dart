import 'package:flutter/material.dart';
import 'package:permata/theme.dart';

class BukuCard extends StatelessWidget {
  const BukuCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      padding: EdgeInsets.only(top: 10, left: 12, bottom: 14, right: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: backgroundColor1),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/gambar1.jpg',
              width: 60,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Buku 1',
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
          SizedBox(
            width: 12,
          ),
          Icon(
            Icons.file_download_outlined,
            size: 20,
            color: subtitleColor,
          )
        ],
      ),
    );
  }
}
