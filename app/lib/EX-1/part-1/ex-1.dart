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
          title: Text('My Hobby',
           style: TextStyle(
            color: Colors.white),),

          backgroundColor: Colors.blue,
          
        ),
        
        body: Padding(
           padding: EdgeInsets.all(40),
          
          child: Column(
            
            spacing: 10,
            //crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.start,
            
            
            children: [
              
              Container(
                
                //margin: EdgeInsets.all(40),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                  
                ),
                child: Center(
                  child: Row(
                    

                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30, right: 20),
                        
                        
                        child: Icon(
                          Icons.travel_explore,
                          color: Colors.white,
                        ),
                      
                      ),
                      Padding(padding: EdgeInsets.only(top: 20, bottom: 20),
                      child:Text('Travelling',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        ),
                        )
                        
                    ],
                  )
                ),
              ),
              Container(
               // margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20),
                  
                ),
                child: Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30, right: 20),
                        child: Icon(
                          Icons.skateboarding,
                          color: Colors.white,
                        ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Text('Travelling',
                        style: TextStyle(
                          color: Colors.white,
                            ) ,
                          ),
                        ),
                        
                    ],
                  )
                ),
              ),
              Container(
                //margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20),
                  
                ),
                child: Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30, right: 20),
                        child: Icon(
                          Icons.hiking,
                          color: Colors.white,
                        ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Text('Travelling',
                        style: TextStyle(
                          color: Colors.white,
                            ),
                          ),
                        )
                        
                    ],
                  )
                ),
              )
            ],
          ),
          ),
      ),
    )
    )
  );
}