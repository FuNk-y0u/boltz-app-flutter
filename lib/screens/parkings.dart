// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:par_king/screens/elements/parkings_places_button.dart';
import 'package:par_king/screens/place_page.dart';
import 'package:par_king/screens/elements/slots.dart';

class parKINGS extends StatefulWidget {
  slots slot_controller;
  parKINGS(this.slot_controller);

  @override
  State<parKINGS> createState() => parKINGSState();
}

class parKINGSState extends State<parKINGS> {
  @override
  Widget build(BuildContext context) {
    void onpress()
    {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => placePage(widget.slot_controller)));
    }
    return 
    Scaffold(
      appBar: AppBar(title: Row(children: [Icon(Icons.map),Text(" Parking Locations", style: TextStyle(fontSize: 20),)],), backgroundColor: Color(0x0FFf74f4f),),
      body: ListView(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 60,
          decoration: BoxDecoration(image: const DecorationImage(image: AssetImage("assets/images/add.png"),fit: BoxFit.cover)),
          
        ),
        parking(context,"Parking Durbarmarg","10pm - 12pm", onpress),
        parking_disabled(context,"Parking Naxal"),
        parking_disabled(context, "Parking Maitighar"),
        parking_disabled(context, "Parking Patan Dhoka"),
        parking_disabled(context, "Parking Kirtipur"),
        parking_disabled(context, "Parking Bhaisi Pati"),
        
      ],
    ),
    );
    
  }
}