import 'package:delivery_food_app/models/FoodShopList.dart';
import 'package:delivery_food_app/views/delivery_food_detail_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryFoodHomeUI extends StatefulWidget {
  const DeliveryFoodHomeUI({super.key});

  @override
  State<DeliveryFoodHomeUI> createState() => _DeliveryFoodHomeUIState();
}

class _DeliveryFoodHomeUIState extends State<DeliveryFoodHomeUI> {
  //สร้างตัวแปรเก็บข้อมูล
  List<FoodShopList> foodshoplist = [
    FoodShopList(
      shopName: 'Chesters Grill',
      shopWeb: 'http://www.chesters.co.th',
      shopFacebook: 'chesterthai',
      shopPhone: '1145',
      shopImage: 'f1.jpg',
      shopLatitude: '18.3178188',
      shopLongitude: '99.2844806',
    ),
    FoodShopList(
      shopName: 'Narai Pizzeria',
      shopWeb: 'http://www.naraipizzeria.com',
      shopFacebook: 'naraipizzeria',
      shopPhone: '1744',
      shopImage: 'f2.jpg',
      shopLatitude: '13.7121424',
      shopLongitude: '100.363827',
    ),
    FoodShopList(
      shopName: 'S&P',
      shopWeb: 'http://www.snpfood.com',
      shopFacebook: 'snpfood',
      shopPhone: '1344',
      shopImage: 'f3.jpg',
      shopLatitude: '13.7123042',
      shopLongitude: '100.3636553',
    ),
    FoodShopList(
      shopName: 'Oishi',
      shopWeb: 'http://www.oishifood.com',
      shopFacebook: 'oishifoodstation',
      shopPhone: '1773',
      shopImage: 'f4.jpg',
      shopLatitude: '',
      shopLongitude: '',
    ),
    FoodShopList(
      shopName: 'MK Restaurants',
      shopWeb: 'http://www.mkrestaurant.com',
      shopFacebook: 'mkrestaurants',
      shopPhone: '02-248-5555',
      shopImage: 'f5.jpg',
      shopLatitude: '',
      shopLongitude: '',
    ),
    FoodShopList(
      shopName: 'The Pizza',
      shopWeb: 'http://www.1112.com',
      shopFacebook: 'thepizzacompany',
      shopPhone: '1112',
      shopImage: 'f6.jpg',
      shopLatitude: '',
      shopLongitude: '',
    ),
    FoodShopList(
      shopName: 'Mc Donals',
      shopWeb: 'http://www.mcdonalds.co.th',
      shopFacebook: 'McThai',
      shopPhone: '1711',
      shopImage: 'f7.jpg',
      shopLatitude: '',
      shopLongitude: '',
    ),
    FoodShopList(
      shopName: 'Pizza Hut',
      shopWeb: 'http://www.pizzahut.co.th',
      shopFacebook: 'pizzahutthailand',
      shopPhone: '1150',
      shopImage: 'f8.jpg',
      shopLongitude: '',
      shopLatitude: '',
    ),
    FoodShopList(
      shopName: 'KFC',
      shopWeb: 'http://www.kfc.co.th',
      shopFacebook: 'kfcth',
      shopPhone: '1150',
      shopImage: 'f9.jpg',
      shopLatitude: '',
      shopLongitude: '',
    ),
    FoodShopList(
      shopName: 'JJ Delivery',
      shopWeb: 'http://www.jjdelivery.com',
      shopFacebook: 'jjdelivery',
      shopPhone: '02-712-3000',
      shopImage: 'f10.jpg',
      shopLatitude: '',
      shopLongitude: '',
    ),
    FoodShopList(
      shopName: 'Burger King',
      shopWeb: 'http://www.burgerking.co.th',
      shopFacebook: 'burgerkingthailand',
      shopPhone: '1112',
      shopImage: 'f11.jpg',
      shopLatitude: '',
      shopLongitude: '',
    ),
    FoodShopList(
      shopName: 'See Fah',
      shopWeb: 'http://www.seefah.com',
      shopFacebook: 'seefahfanpage',
      shopPhone: '02-800-8080',
      shopImage: 'f12.jpg',
      shopLatitude: '',
      shopLongitude: '',
    ),
    FoodShopList(
      shopName: 'ฮองมิน',
      shopWeb: 'http://www.hongminrestaurant.net',
      shopFacebook: 'hongminfanpage',
      shopPhone: '02-248-0123',
      shopImage: 'f13.jpg',
      shopLatitude: '',
      shopLongitude: '',
    ),
    FoodShopList(
      shopName: 'Yoshinoya',
      shopWeb: 'http://www.yoshinoya.co.th',
      shopFacebook: 'YoshinoyaThailand',
      shopPhone: '02-663-3888',
      shopImage: 'f14.jpg',
      shopLatitude: '',
      shopLongitude: '',
    ),
    FoodShopList(
      shopName: 'ฮั่วเซ่งฮง',
      shopWeb: 'http://www.huasenghong.co.th',
      shopFacebook: 'huasenghong',
      shopPhone: '02-2480123',
      shopImage: 'f15.jpg',
      shopLatitude: '',
      shopLongitude: '',
    ),
    FoodShopList(
      shopName: 'Scoozi Pizza',
      shopWeb: 'http://www.scoozipizza.com',
      shopFacebook: 'scoozipizzaclub',
      shopPhone: '02-715-8555',
      shopImage: 'f16.jpg',
      shopLatitude: '',
      shopLongitude: '',
    ),
    FoodShopList(
      shopName: 'โดมิโน่ พิซซ่า',
      shopWeb: 'http://www.dominospizza.co.th',
      shopFacebook: 'DominosPizzaThailand',
      shopPhone: '1612',
      shopImage: 'f17.jpg',
      shopLatitude: '',
      shopLongitude: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'สายด่วนชวนกิน',
          style: GoogleFonts.kanit(),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.28,
            child: Image.asset(
              'assets/images/fastfood.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: ListView.separated(
                separatorBuilder: (context, index) => Divider(),
                itemCount: foodshoplist.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DeliveryFoodDetailUI(
                            foodShopList: foodshoplist[index],
                          ),
                        ),
                      );
                    },
                    leading: Image.asset(
                      'assets/images/${foodshoplist[index].shopImage}',
                    ),
                    title: Text(foodshoplist[index].shopName),
                    subtitle: Text('Tel :' + foodshoplist[index].shopPhone),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.green,
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}
