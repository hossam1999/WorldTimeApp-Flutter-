import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Cairo', flag: 'egypt.png', url: 'Africa/Cairo');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body:Center(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 150.0, 0, 0),
          child: Column(

            children: <Widget>[




            SpinKitFadingCube(
          color: Colors.white,
          size: 50.0,
            ),

              SizedBox(height: 200),


              Text(


                'Hossam Elkady',
                style: TextStyle(
                fontSize: 15.0,
                letterSpacing: 2.0,
                color: Colors.white30,
              ),

              )



        ]
      )
      )
      )
    );
  }
}

