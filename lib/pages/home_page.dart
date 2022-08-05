import 'package:flutter/material.dart';
import 'package:weatherapps/pages/weather_detail.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late final TextEditingController _controller;
  bool _isCityNameEmpty =true;


  @override
  void initState(){
    super.initState();
    _controller= TextEditingController();
    _controller.addListener(() {
      // print(_controller.text);
      setState((()=> _isCityNameEmpty= _controller.text.isEmpty),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search City'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[const Text('Please Enter City Name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
           Padding(padding: EdgeInsets.all(16),
          child:

          TextField(
            controller: _controller,
            decoration: InputDecoration(
              label: Text('City Name'),
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              // hintText: 'Enter city name',
              border: OutlineInputBorder(),
            ),
          ),
    ),
            ElevatedButton(onPressed:_isCityNameEmpty?null: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> WeatherDetail(cityName: _controller.text
              )
                )
              );

            } ,
            child: const Text('Search')),

      ],
    ),
        ),
      );

  }
}
