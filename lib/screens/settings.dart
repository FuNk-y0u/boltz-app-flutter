import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Row(children: [Icon(Icons.settings),Text("Settings")],), backgroundColor: Color(0x0FFf74f4f),),
    body:
    ListView(
      children: [
        ListTile(
          title: Text("Any Issues? ", style: const TextStyle(color: Color(0xfff74f4f)),),
          subtitle: const Text("Contact Us: 1660-01-78899", style: TextStyle(color: Color.fromARGB(255, 45, 45, 45))),
          trailing: const Icon(Icons.contact_emergency, color: Color(0xfff74f4f),),
          onTap: (){
          AlertDialog alert = AlertDialog(

          title: const Text("Our Hotline is 1660-01-78899"),
          content: const Text("If you have any issues contact here our hot line is 24 hours online and ready to assist you"),
          backgroundColor: Colors.white,

          actions: <Widget>[

            TextButton(
              onPressed: () {Navigator.of(context).pop();}, 
              child: Container(
                padding: const EdgeInsets.all(14),  
                child: const Text("okay"),
              )
            )
          ],
        );
        showDialog(context: context, builder: (BuildContext context) {return alert;});
          },
        ),
        ListTile(
          title: Text("Log Out", style: const TextStyle(color: Color(0xfff74f4f)),),
          subtitle: const Text("Log out of your account", style: TextStyle(color: Color.fromARGB(255, 45, 45, 45))),
          trailing: const Icon(Icons.door_back_door, color: Color(0xfff74f4f),),
          onTap: (){
          AlertDialog alert = AlertDialog(

          title: const Text("You have been logged out"),
          content: const Text("Press okay to return back to login screen"),
          backgroundColor: Colors.white,

          actions: <Widget>[

            TextButton(
              onPressed: () {Navigator.of(context).pop();}, 
              child: Container(
                padding: const EdgeInsets.all(14),  
                child: const Text("okay"),
              )
            )
          ],
        );
        showDialog(context: context, builder: (BuildContext context) {return alert;});
          },
        ),
        ListTile(
          title: Text("About us", style: const TextStyle(color: Color(0xfff74f4f)),),
          subtitle: const Text("Know about us", style: TextStyle(color: Color.fromARGB(255, 45, 45, 45))),
          trailing: const Icon(Icons.info, color: Color(0xfff74f4f),),
          onTap: (){
          AlertDialog alert = AlertDialog(

          title: const Text("About us"),
          content: const Text("At parKING, we are a group of passionate individuals who started this venture at an early age, driven by a common goal - to revolutionize parking and provide the best service to the people of Kathmandu. We understand the daily frustrations of navigating through the city’s congested roads, and we believe that convenient and efficient parking is the key to solving Kathmandu’s traffic woes."),
          backgroundColor: Colors.white,

          actions: <Widget>[

            TextButton(
              onPressed: () {Navigator.of(context).pop();}, 
              child: Container(
                padding: const EdgeInsets.all(14),  
                child: const Text("okay"),
              )
            )
          ],
        );
        showDialog(context: context, builder: (BuildContext context) {return alert;});
          },
        ),
         ListTile(
          title: Text("Built With ❤️ By Robesckey", style: const TextStyle(color: Color(0xfff74f4f)),),
          subtitle: const Text("", style: TextStyle(color: Color.fromARGB(255, 45, 45, 45))),
          trailing: const Icon(Icons.crisis_alert, color: Color(0xfff74f4f),),)
        
      ],
    ));
  }
}
