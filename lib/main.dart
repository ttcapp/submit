import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:msproject/modhumoti_bistarito.dart';

void main() {
  runApp(MyApp());
}
List <String> addressList = [
  "86,huq monjil dc road,gopalganj \n jogajog>-01773-598 666 \n kebol matrro cokher sirial er jonno>-01731-100 639",
  "73/2 puraton sonali bank er uttor pase ,miapara road ,gopalganj \n jogajog>-01905-530 000 ",
];
List<String> proTypeList=[
  "modhumoti diagonostic center",
  "chavron clinic"
];
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(

      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("seba e amader ak matrro lokkho "),
      ),
      body: Column(
        children: [
          Container(
            height: 50,
              width: 70,
              child: Image.asset("assets/images/iron-man-png-10.png")),

          Expanded(
            child: ListView.builder(
              itemCount: proTypeList.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 25,
                      right: 25,
                      bottom: 10,
                    ),
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)
                        ),
                        color: Colors.green

                      ),
                     child: InkWell(
                       onTap: (){
                         Navigator.push(context,
                             MaterialPageRoute(builder:
                                 (context)=>ModhuMoti(appBarText: proTypeList[index], address: addressList[index],)));
                       },
                       child: Center(
                         child: Text(proTypeList[index],
                             textAlign: TextAlign.center
                             ,style: TextStyle(
                           color: Colors.white,
                               fontSize: 20,
                               fontWeight: FontWeight.w500

                         ),),
                       ),
                     ),
                    ),
                  );
                }
            ),
          ),

          Text("data"),
          Text("data"),
          Text("data"),
          Text("data"),
          SizedBox(height: 100,)
        ],
      ),
    );
  }
}
