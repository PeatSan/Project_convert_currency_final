import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = ['USD', 'THB', 'KRW', 'EUR', 'CNY', 'HKD','JPY', 'NZD', 'SGD', 'AUD' ];

const apiKey='8a4e0750-500e-11ec-8442-c71cc1ae2ac5';
const coinAPIURL="https://freecurrencyapi.net/api/v2/latest?";
var url=coinAPIURL+'apikey='+ apiKey+'&base_currency=';

class CoinData{
  String baseCurrency;
  String finalCurrency;
  CoinData({ this.baseCurrency,this.finalCurrency});

  Future getCoinData() async{
    print(url);
    // print('before HTTP');
    final qParameters = {'apikey': apiKey, 'base_currency':baseCurrency};
    var uri = Uri.https('freecurrencyapi.net','api/v2/latest', qParameters);
    var response =await http.get(uri);
    // print('after HTTP');
    //https://freecurrencyapi.net/api/v2/latest?apikey=8a4e0750-500e-11ec-8442-c71cc1ae2ac5&base_currency=AUD
    //https://api.currencyapi.com/v3/latest?apikey=hKjgcLubtCthVoA7Jv3L82f8pP4lXQh4uLNUNM3f

    if(response.statusCode==200){
      // print('status code = OK 200');
      var decodedData=jsonDecode(response.body)['data']['$finalCurrency'];

      return decodedData;
    }else{print(response.statusCode); throw 'problem with get request';}
  }
}


