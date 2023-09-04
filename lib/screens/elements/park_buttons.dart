import 'package:flutter/material.dart';
import 'package:par_king/screens/elements/slots.dart';

class ParkButtons extends StatefulWidget {
  int status;
  String id;
  slots _controller;
  ParkButtons(this.status, this.id,this._controller);

  @override
  State<ParkButtons> createState() => _ParkButtonsState();
}

class _ParkButtonsState extends State<ParkButtons> {
  
  @override
  Widget build(BuildContext context) {
  Color CURRENT_COLOR;

  void setcolor()
  {
    setState(() {
      if(widget._controller.getSlots().contains(widget.id) && widget.status != 3)
      {
        CURRENT_COLOR = Colors.green;  
        widget._controller.remove_slot(widget.id);
      }
      else if(widget.status == 3)
      {
        CURRENT_COLOR = Colors.red;
      }
      else
      {
        CURRENT_COLOR = Colors.yellow;
        widget._controller.add_slot(widget.id);
      }
    });
    
  }
  if (widget._controller.getSlots().contains(widget.id))
  {
    CURRENT_COLOR = Colors.yellow;
  }
  else if(widget.status == 3)
  {
    CURRENT_COLOR = Colors.red;
  }
  else
  {
    CURRENT_COLOR = Colors.green;
  }

  return Row(children: [Text(widget.id, style: const TextStyle(fontSize: 20)),IconButton(iconSize: 60,onPressed: () => {
   setcolor()
  }, icon: const Icon(Icons.car_repair_rounded,), color: CURRENT_COLOR)]);
}
}