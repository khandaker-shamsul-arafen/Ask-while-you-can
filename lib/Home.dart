import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> sh = [
  "Loading",
  "what are your favorite familly vacation memories",
  "Did you have a best friend",
  "How did you enjoy working?"
];
 int index=0;

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Home();
  // TODO: implement createState

}

class _Home extends State<Home> {
  Increment(){
    setState(() {
      if(index<sh.length-1){
      index=index+1;}
      else{
        index=0;
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F3),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("image/flutterlogo.PNG"),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: StadiumBorder(),
                      side: BorderSide(width: 2, color: Color(0xff4f7c87))),
                  onPressed: () {},
                  child: Text(
                    "Record their answer",
                    style: TextStyle(color: Color(0xff4f7c87)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              child: Text(
                "Grow closer to your loved ones\n by asking them this question",
                style: TextStyle(
                    color: Color(0xFF99B3B9),
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 40,
            ),

            Container(
              height: 100,
              width: 200,
              color: Colors.white,
              child: Text("${sh[index]}"),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // children: [ OutlinedButton(onPressed: (){}, child: Text(""))],
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: StadiumBorder(),
                      side: BorderSide(width: 2, color: Color(0xff4f7c87))),
                  onPressed: () {
                   // snackbar();
                    final snackBar = SnackBar(
                      content: const Text('Coppied succesfully',style: TextStyle(color: Color(0xff62bf5b)),),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {
                          // Some code to undo the change.
                        },
                      ),
                    );

                    // Find the ScaffoldMessenger in the widget tree
                    // and use it to show a SnackBar.
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Row(
                    children: [
                      Icon(Icons.accessible),
                      Text("click to coppy"),
                    ],
                  ),
                 // style: ElevatedButton.styleFrom(primary: Color(0xff457c87)),
                ),
                ElevatedButton(
                  onPressed: () {
                    if(index<sh.length-1){
                   Increment();}
                  },
                  child: Row(
                    children: [
                      Icon(Icons.accessible),
                      Text("Try another one"),

                    ],
                  ),
                  style: ElevatedButton.styleFrom(primary: Color(0xff457c87)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
