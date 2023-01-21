import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import '../services/networking.dart';


const apiKey='e802a9148ab01e5c9216e2acd24edb0c';
const weatherUrl= 'https://api.openweathermap.org/data/2.5/weather';

class Location {

  Future<dynamic> getCurrentLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    print(permission);

      Position position = await Geolocator.getCurrentPosition
        (desiredAccuracy: LocationAccuracy.low);
      // double latitude = position.latitude;
      // double longitude = position.longitude;
      NetworkHelper networkHelper=NetworkHelper('$weatherUrl?lat=${position.latitude}&lon=${position.longitude}&appid=$apiKey&units=metric');

     var weatherData = networkHelper.getData();
      return weatherData;




  }
}