import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:permata/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  List images = [
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
  ];

  @override
  Widget build(BuildContext context) {
    // dialog modal
    Future<void> showSuccessDialog() async {
      return showDialog(
        context: context,
        builder: (BuildContext context) => Container(
          width: MediaQuery.of(context).size.width - (2 * defaultMargin),
          child: AlertDialog(
            backgroundColor: backgroundColor1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage(
                          'assets/user.jpg',
                        ))),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Gorbyno Sitepu',
                    style: primaryTextStyle.copyWith(
                        fontSize: 18, fontWeight: semiBold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 154,
                    height: 34,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: alertColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      child: Text(
                        'Sign Out',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 12, fontWeight: medium),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }

    Widget indicator(int index) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 2),
        width: currentIndex == index ? 16 : 4,
        height: 4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: currentIndex == index ? primaryColor : Color(0xffc4c4c4)),
      );
    }

    header() {
      return AppBar(
          backgroundColor: primaryColor,
          leading: IconButton(
              iconSize: 35,
              onPressed: () {
                showSuccessDialog();
              },
              icon: Icon(Icons.more_horiz)),
          title: Text(
            'Permata GBKP',
            style:
                secondaryTextStyle.copyWith(fontWeight: regular, fontSize: 16),
          ),
          elevation: 0,
          centerTitle: true,
          actions: [
            IconButton(
                iconSize: 35,
                onPressed: () {
                  Navigator.pushNamed(context, '/beranda');
                },
                icon: Icon(
                  Icons.home,
                ))
          ]);
    }

    Widget carousel() {
      int index = -1;
      return Column(
        children: [
          CarouselSlider(
              items: images
                  .map((image) => Image.asset(
                        image,
                        width: MediaQuery.of(context).size.width,
                        height: 310,
                        fit: BoxFit.cover,
                      ))
                  .toList(),
              options: CarouselOptions(
                  initialPage: 0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  })),
          SizedBox(
            height: 20,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images.map((e) {
                index++;
                return indicator(index);
              }).toList())
        ],
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            carousel(),
            Container(
              margin: EdgeInsets.only(top: 10, right: 20, left: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                  color: whitecolor),
              child: Column(
                children: [
                  Container(
                    // color: Colors.blueAccent[400],
                    margin: EdgeInsets.only(
                      top: defaultMargin,
                      left: defaultMargin,
                      right: defaultMargin,
                    ),
                  ),
                  Text('WORD OF THE DAY',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Takut akan TUHAN adalah permulaan pengetahuan, tetapi orang bodoh menghina hikmat dan didikan.',
                    style: subtitleTextStyle.copyWith(
                        fontWeight: medium, fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text('AMSAL 1 : 7',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Permata GBKP ',
              style: blackTextStyle.copyWith(fontSize: 13),
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: whitecolor,
        appBar: header(),
        body: Container(
          child: Column(
            children: [content(), Spacer(), footer()],
          ),
        ),
      ),
    );
  }
}
