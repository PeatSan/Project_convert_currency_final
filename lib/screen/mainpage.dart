import 'package:currency_converter/components/ConvertedCurrency.dart';
import 'package:currency_converter/components/ReusableCard.dart';
import 'package:flutter/material.dart';
import 'package:currency_converter/components/ExchangeRate.dart';
import 'package:currency_converter/components/ConversionList.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Text(
              'แลกเปลี่ยนค่าเงินตรา',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          ReusableCard(cardChild: ConvertedCurrency()),
          SizedBox(
            height: 15,
          ),
          ReusableCard(cardChild: ExchangeRate()),
          SizedBox(
            height: 15,
          ),
          ReusableCard(cardChild: ConversionList()),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 150,
                  child: Text(
                    '" โปรเจคนำเสนอท่านปองพลผู้เป็นหนึ่งแห่งจักวาล "',
                    style: TextStyle(color: Colors.white,fontSize: 20),
                    textAlign: TextAlign.center,

                  )),
              SizedBox(
                width: 30,
              ),
              // CircleAvatar(
              //   backgroundImage: AssetImage('assets/prayut.jpg'),
              //   maxRadius: 35,
              // ),
            ],
          )
        ],
      ),
    );
  }
}
