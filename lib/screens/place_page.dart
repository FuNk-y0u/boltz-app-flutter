import 'package:flutter/material.dart';
import 'package:par_king/screens/elements/slots.dart';
import 'package:par_king/screens/elements/park_buttons.dart';

class placePage extends StatefulWidget {
  slots _slotcontrol;
  placePage(this._slotcontrol);

  @override
  State<placePage> createState() => placePageState();
}

class placePageState extends State<placePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Row(children: [Icon(Icons.car_rental),Text("Choose Your Parking Location")],), backgroundColor: Color(0x0FFf74f4f),),
      floatingActionButton: FloatingActionButton.extended(backgroundColor: Color(0x0FFf74f4f),onPressed: () => {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
          content: Text('Sucessfully booked spot',
          style: TextStyle(
          fontSize: 14,
          color: Color.fromARGB(255, 255, 255, 255)))),
          ),
      }, label: const Row(children: [Icon(Icons.check),Text("Done")],),),
      body: ListView(children: [Padding(padding: const EdgeInsets.only(left: 120),child: 
        Row(children: [
          Column(
            children: [
              ParkButtons(3,"L1",widget._slotcontrol),
              ParkButtons(1,"L2",widget._slotcontrol),
              ParkButtons(1, "L3",widget._slotcontrol),
              ParkButtons(3, "L4",widget._slotcontrol),
              ParkButtons(3, "L5",widget._slotcontrol),
              ParkButtons(3, "L6",widget._slotcontrol),
              ParkButtons(3,"L7",widget._slotcontrol),
              ParkButtons(1,"L8",widget._slotcontrol),
              ParkButtons(1, "L9",widget._slotcontrol),
              ParkButtons(3, "L10",widget._slotcontrol),
              ParkButtons(3, "L11",widget._slotcontrol),
              ParkButtons(3, "L12",widget._slotcontrol),
              ParkButtons(1, "L13",widget._slotcontrol),
              ParkButtons(1, "L14",widget._slotcontrol),
              ParkButtons(1, "L15",widget._slotcontrol),
              ParkButtons(1, "L16",widget._slotcontrol),
              ParkButtons(1, "L17",widget._slotcontrol),
              ParkButtons(1, "L18",widget._slotcontrol),
              ParkButtons(1, "L19",widget._slotcontrol),
              ParkButtons(1, "L20",widget._slotcontrol),
             
            ],
          ),
          Column(
            children: [
              ParkButtons(3, "L21",widget._slotcontrol),
              ParkButtons(1, "L22",widget._slotcontrol),
              ParkButtons(1, "L23",widget._slotcontrol),
              ParkButtons(1, "L24",widget._slotcontrol),
              ParkButtons(3, "L25",widget._slotcontrol),
              ParkButtons(3, "L26",widget._slotcontrol),
              ParkButtons(3, "L27",widget._slotcontrol),
              ParkButtons(3, "L28",widget._slotcontrol),
              ParkButtons(3, "L29",widget._slotcontrol),
              ParkButtons(3, "L30",widget._slotcontrol),
              ParkButtons(3, "L31",widget._slotcontrol),
              ParkButtons(1, "L32",widget._slotcontrol),
              ParkButtons(1, "L33",widget._slotcontrol),
              ParkButtons(1, "L34",widget._slotcontrol),
              ParkButtons(1, "L35",widget._slotcontrol),
              ParkButtons(1, "L36",widget._slotcontrol),
              ParkButtons(1, "L37",widget._slotcontrol),
              ParkButtons(1, "L38",widget._slotcontrol),
              ParkButtons(1, "L39",widget._slotcontrol),
              ParkButtons(1, "L40",widget._slotcontrol),
            ],
          )
        ],
        ),
    ),
    const Column(children: [
    Icon(Icons.car_repair_rounded, color: Colors.green,size: 30,), Text("available",style: TextStyle(fontSize: 20),),
    Icon(Icons.car_repair_rounded, color: Colors.red,size: 30,), Text("unavailable",style: TextStyle(fontSize: 20),),
    Icon(Icons.car_repair_rounded, color: Colors.yellow,size: 30,), Text("selected",style: TextStyle(fontSize: 20),)],)
    ]));
  }
}