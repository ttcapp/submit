import 'package:flutter/material.dart';

class ModhuMoti extends StatefulWidget {
  String appBarText;
  String address;
   ModhuMoti({Key? key,
     required this.appBarText,
     required this.address
   }) : super(key: key);

  @override
  _ModhuMotiState createState() => _ModhuMotiState();
}

class _ModhuMotiState extends State<ModhuMoti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(widget.appBarText),
      ),
      body: Center(
        child: Column(
          children: [
            Text("jhfuidk"),
            Text("jhfuidk"),
            Text("jhfuidk"),
            SizedBox(height: 30,),
            Container(
              color: Colors.black,
              height: 2,
              width: MediaQuery.of(context).size.width,
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                child: Text(widget.address,
                  style: TextStyle(
                  color: Colors.white
                ),),
              ),
            )

          ],
        ),
      ),
    );
  }
}
