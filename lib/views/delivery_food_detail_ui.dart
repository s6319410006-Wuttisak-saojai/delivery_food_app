import 'package:delivery_food_app/models/FoodShopList.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class DeliveryFoodDetailUI extends StatefulWidget {
  //ตัวแปรประเภท foodshoplist
  FoodShopList? foodShopList;

  DeliveryFoodDetailUI({super.key, this.foodShopList});

  @override
  State<DeliveryFoodDetailUI> createState() => _DeliveryFoodDetailUIState();
}

class _DeliveryFoodDetailUIState extends State<DeliveryFoodDetailUI> {
  //ใช้ โทร
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'สายด่วนชวนกิน (' + widget.foodShopList!.shopName + ')',
          style: GoogleFonts.kanit(),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/' + widget.foodShopList!.shopImage,
                  ),
                  fit: BoxFit.cover,
                ),
                border: Border.all(color: Colors.yellow),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.02),
              child: ListTile(
                leading: Icon(
                  FontAwesomeIcons.store,
                  color: Colors.red,
                ),
                title: Text(
                  'ชื่อร้าน : ' + widget.foodShopList!.shopName,
                  style: GoogleFonts.kanit(),
                ),
                tileColor: Colors.grey[50],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.02),
              child: ListTile(
                onTap: () {
                  _makePhoneCall(widget.foodShopList!.shopPhone);
                },
                leading: Icon(
                  FontAwesomeIcons.phone,
                  color: Colors.green,
                ),
                title: Text(
                  'เบอร์โทร : ' + widget.foodShopList!.shopPhone,
                  style: GoogleFonts.kanit(),
                ),
                tileColor: Colors.grey[50],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.02),
              child: ListTile(
                onTap: () {
                  _launchInBrowser(Uri.parse('https://www.facebook.com/' +
                      widget.foodShopList!.shopFacebook));
                },
                leading: Icon(
                  FontAwesomeIcons.facebook,
                  color: Color(0xFF3B5998),
                ),
                title: Text(
                  'Facebook : ' + widget.foodShopList!.shopFacebook,
                  style: GoogleFonts.kanit(),
                ),
                tileColor: Colors.grey[50],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.02),
              child: ListTile(
                onTap: () {
                  _launchInBrowser(Uri.parse(widget.foodShopList!.shopWeb));
                },
                leading: Icon(
                  FontAwesomeIcons.globe,
                  color: Color(0xFF3B5998),
                ),
                title: Text(
                  'Website ร้าน : ' + widget.foodShopList!.shopWeb,
                  style: GoogleFonts.kanit(),
                ),
                tileColor: Colors.grey[50],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.02),
              child: ListTile(
                onTap: () {
                  _launchInBrowser(
                    Uri.parse(
                        'https://www.google.com/maps/search/?api=1&query=' +
                            widget.foodShopList!.shopLatitude +
                            ',' +
                            widget.foodShopList!.shopLongitude),
                  );
                },
                leading: Icon(
                  FontAwesomeIcons.mapLocation,
                  color: Color.fromARGB(255, 6, 139, 88),
                ),
                title: Text(
                  'สถานที่ตั้งร้าน Let\'s Go! ',
                  style: GoogleFonts.kanit(),
                ),
                tileColor: Colors.grey[50],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
