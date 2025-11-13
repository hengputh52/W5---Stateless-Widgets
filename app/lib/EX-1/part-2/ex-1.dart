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
              
              HobbyCard(hobbyTitle: 'music listening', hobbyIcon: Icons.music_note_outlined),
              HobbyCard(hobbyTitle: 'Travelling', hobbyIcon: Icons.travel_explore, colors: Colors.amber),
              HobbyCard(hobbyTitle: 'Hiking', hobbyIcon: Icons.hiking, colors: Colors.green)
            ],
          ),
          ),
      ),
    )
    )
  );
}

class HobbyCard extends StatelessWidget {
  final String hobbyTitle;
  final IconData hobbyIcon;
  final Color backgroundColor;
  const HobbyCard({
    super.key,
    required this.hobbyTitle,
    required this.hobbyIcon,
    Color? colors
  }): backgroundColor = colors ?? Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      //margin: EdgeInsets.all(40),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
        
      ),
      child: Center(
        child: Row(
          
    
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, right: 20),
              
              
              child: Icon(
                hobbyIcon,
                color: Colors.white,
              ),
            
            ),
            Padding(padding: EdgeInsets.only(top: 20, bottom: 20),
            child:Text(hobbyTitle,
              style: TextStyle(
                color: Colors.white,
              ),
              ),
              )
              
          ],
        )
      ),
    );
  }
}