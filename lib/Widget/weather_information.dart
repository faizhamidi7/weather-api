import 'package:flutter/material.dart';

import '../models/weather_model.dart';

class WeatherInformation extends StatelessWidget {
  const WeatherInformation({required this.weatherModel,Key? key}) : super(key: key);
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

        children:[

          Image.network('http://openweathermap.org/img/wn/${weatherModel.weather.first.icon}@2x.png'),

          const SizedBox(height: 10),
          Text('${weatherModel.main.temp}  \u00B0C' ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),
          const SizedBox(height: 10),
          Text('${weatherModel.name}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),
          const SizedBox(height: 10),
          Text('${weatherModel.weather.first.description}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),
          const SizedBox(height: 10),
          Text(' humidity:${weatherModel.main.humidity}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red), ),
          const SizedBox(height: 10),
          Text(' pressure:${weatherModel.main.pressure}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red), ),


        ],
        ),
      ),

    );
  }
}
