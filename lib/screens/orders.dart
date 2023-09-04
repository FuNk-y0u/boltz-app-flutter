import 'package:flutter/material.dart';
import 'package:par_king/screens/elements/slots.dart';
import 'elements/account.dart';

class orders extends StatefulWidget {
  slots _controller;
  orders(this._controller);

  
  @override
  State<orders> createState() => _ordersState();
  
}

class _ordersState extends State<orders> {
  List<String> slots = [];
  int slots_len = 0;
  @override
  void initState()
  {
    super.initState();
    setState(() {
      slots = widget._controller.getSlots();
      slots_len = slots.length;
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Row(children: [Icon(Icons.account_box_rounded),Text(" Account", style: TextStyle(fontSize: 20),)],), backgroundColor: Color(0x0FFf74f4f),),
      body: 
      Column(children: [
        Column(
          children: [
            Icon(Icons.account_box, color: Color(0x0fff74f4f), size: 80,),
            Row(mainAxisAlignment: MainAxisAlignment.center , crossAxisAlignment: CrossAxisAlignment.center, children: [Text("Suyogya Kc", style: TextStyle(fontSize: 30),)]),
            Text("Here are your bookings: ",style: TextStyle(fontSize: 15),)
          ],
        )
        ,Expanded(child:ListView.builder(itemCount: slots_len,shrinkWrap: true,itemBuilder: (context, index)
      {
        return ListTile(
          title: Text(slots[index], style: const TextStyle(color: Color(0xfff74f4f)),),
          subtitle: const Text("Durbar Marg", style: TextStyle(color: Color.fromARGB(255, 45, 45, 45))),
          trailing: const Icon(Icons.history, color: Color(0xfff74f4f),),
        );
      }
      ))]));
  }
}