import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    DevicePreview(builder: (context) =>
    MaterialApp(
      useInheritedMediaQuery: true,
      home: Scaffold(
        appBar: AppBar(
          
          title: Text('Weather',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300
            ),
          ),
          actions: [
            Padding(padding: EdgeInsets.all(10),
            child:   Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
              )
            )
          ],
          backgroundColor: Colors.blue,
          
          
          ),
        body: ListView(
          padding: EdgeInsets.all(20),
          
          children: [
            // Padding(padding: EdgeInsets.symmetric(vertical: 10),
            // child: PhysicalModel(
            //   color: Colors.transparent,
            //   child: WeatherCard(),
              
            //   ),

            // )
            Column(
              spacing: 20,
              children: [
                WeatherCard(city: 'Phnom Penh', temperature: 12.2 , weatherType: WeatherType.cloudy),
                WeatherCard(city: 'Paris', temperature: 22.2, weatherType: WeatherType.sunnyCloudy),
                WeatherCard(city: 'Rome', temperature: 45.2, weatherType: WeatherType.sunny),
                WeatherCard(city: 'Toulouse', temperature: 45.2, weatherType: WeatherType.veryCloudy)
              ],
            )
            
            
          ],
        ),
        )
      )
    )      
  );
}

enum WeatherType
{
  cloudy('assets/ex4/cloudy.png'),
  sunny('assets/ex4/sunny.png'),
  sunnyCloudy('assets/ex4/sunnyCloudy.png'),
  veryCloudy('assets/ex4/veryCloudy.png');

  final String iconPath;
  const WeatherType(this.iconPath);
}



class WeatherCard extends StatelessWidget {
  final String city;
  final double temperature;
  final WeatherType weatherType;
  const WeatherCard({
    required this.city,
    required this.temperature,
    required this.weatherType,
    super.key,
  });

  List<Color> get gradientColors
  {
    switch(weatherType)
    {
      case WeatherType.cloudy:
        return [Colors.purpleAccent, Colors.deepPurpleAccent];
      case WeatherType.sunny:
        return [Colors.tealAccent, Colors.teal];
      case WeatherType.sunnyCloudy:
        return [Colors.pinkAccent, Colors.redAccent];
      case WeatherType.veryCloudy:
        return [Colors.orangeAccent, Colors.deepOrangeAccent];
    }
  }



  @override
  Widget build(BuildContext context) {
    return Stack(
      
        children: [
         
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: gradientColors,
                begin: Alignment.centerLeft,
                end: Alignment.bottomRight
                )
            ),
          ),
          Positioned(
            right: -30,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                shape: BoxShape.circle
              ),
            )
          ),
          Container(
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        weatherType.iconPath,
                        width: 30,
                        
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('$city°C',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white
                          ),
                        ),
                        Text('Min: 10.0°C',
                          style: TextStyle(
                            color: Colors.white
                            ),
                          ),
                        Text('Max: 40.0°C',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        )
                      ],
                    ),
                    
                  ],
                ),
                  Text('${temperature.toString()}°C',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white
                      ),
                    ),
                
              ],
            ),
          ),
          
        ],
      );
  }
}