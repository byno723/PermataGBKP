import 'package:flutter/material.dart';
import 'package:permata/theme.dart';

import 'package:url_launcher/url_launcher.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 120, left: 30, right: 30),
        child: GridView.count(
          mainAxisSpacing: 40,
          crossAxisSpacing: 12,
          crossAxisCount: 2,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/buku');
              },
              child: Container(
                height: 800,
                child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.my_library_books_outlined,
                          size: 80,
                          color: primaryColor,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Buku',
                          style: primaryTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        )
                      ],
                    )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/warta');
              },
              child: Container(
                height: 800,
                child: Card(
                    elevation: 0,
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.menu_book_outlined,
                          size: 80,
                          color: primaryColor,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Warta Jemaat',
                          style: primaryTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        )
                      ],
                    )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/acara');
              },
              child: Container(
                height: 800,
                child: Card(
                    elevation: 0,
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.event_available_outlined,
                          size: 80,
                          color: primaryColor,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Acara',
                          style: primaryTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        )
                      ],
                    )),
              ),
            ),
            GestureDetector(
              onTap: () {},
              // onTap: () => _launchURL(),
              child: Container(
                height: 800,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.language_outlined,
                        size: 80,
                        color: primaryColor,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text('Website')
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
