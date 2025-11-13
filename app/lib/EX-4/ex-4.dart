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
          body: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            //width: 100,
                            child: Row(
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Image.asset(
                                'assets/ex4/cloudy.png',
                                width: 50,
                          ),
                          Column
                          (
                            children: [
                              Text('Phonm Penh',
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                                ),
                              ),
                              Text('Min: 10.0'),
                              Text('Max: 30.0')
                              ],
                            )
                          ]
                         )    
                      ),
                        
                        SizedBox(
                          child: Text('12.2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                          
                        )
                          
                        ],
                      )
                      
                      
                    ],
                  ),

                )
              ],

            ),

          ),
        )
      )
    ) 
  );
}



enum WeatherAvatar
{
  cloudy()
}