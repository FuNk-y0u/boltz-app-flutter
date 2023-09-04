import 'package:flutter/material.dart';
import 'package:par_king/screens/elements/slots.dart';

Widget parking(context, String name, String time, Function onpress)
{
  return Center(
      child:
      Padding(padding: const EdgeInsets.only(top: 10, bottom: 10), child: 
      Stack(
        children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          decoration: BoxDecoration(color: const Color.fromARGB(255, 224, 224, 224), borderRadius: BorderRadius.circular(30), image: const DecorationImage(image: AssetImage("assets/images/parking_jawlakhel.jpg"),fit: BoxFit.cover)),
        ),
        GestureDetector(
          onTap: () => { onpress()},
        child: Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        decoration: BoxDecoration(color: const Color.fromARGB(255, 224, 224, 224), borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(begin: FractionalOffset.centerLeft, end: FractionalOffset.centerRight, colors: [
          const Color.fromARGB(255, 255, 122, 122),
          const Color.fromARGB(255, 255, 122, 122).withOpacity(0.5),
          Colors.white.withOpacity(0.0),
        ])
        ),
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.only(left: 10, top: 50),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(name, style: const TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
            )
            )),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child:
              Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color.fromARGB(255, 144, 255, 147)),
                  width: 70,
                  height: 25,
                  child: const Center(child: Text("Open",style: TextStyle(fontWeight: FontWeight.bold),)),
                ),
                Text(" $time", style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
              ],
            ))],
        ),
        
      ),
        )
        
      ]
       
      )
    ));
}

Widget parking_disabled(context, String name)
{
  return Center(
      child:
      Padding(padding: EdgeInsetsDirectional.only(top: 10, bottom: 10), child:
      Stack(
        children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          decoration: BoxDecoration(color: const Color.fromARGB(255, 224, 224, 224), borderRadius: BorderRadius.circular(30), image: const DecorationImage(image: AssetImage("assets/images/parking_jawlakhel.jpg"),fit: BoxFit.cover)),
        ),
        GestureDetector(
          onTap: () => {
          },
        child: Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        decoration: BoxDecoration(color: const Color.fromARGB(255, 224, 224, 224), borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(begin: FractionalOffset.centerLeft, end: FractionalOffset.centerRight, colors: [
          const Color.fromARGB(255, 126, 126, 126),
          const Color.fromARGB(255, 151, 151, 151).withOpacity(0.5),
          Colors.white.withOpacity(0.0),
        ])
        ),
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.only(left: 10, top: 50),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(name, style: const TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
            )
            )),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child:
              Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color.fromARGB(255, 220, 220, 220)),
                  width: 120,
                  height: 25,
                  child: const Center(child: Text("Comming Soon",style: TextStyle(fontWeight: FontWeight.bold),)),
                ),
                const Text("", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
              ],
            ))],
        ),
        
      ),
        )
        
      ]
       
      )
    ));
}
