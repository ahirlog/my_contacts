import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';

void main() {
  runApp(MyContact());
}

class MyContact extends StatefulWidget {
  @override
  State<MyContact> createState() => _MyContactState();
}

class _MyContactState extends State<MyContact> {
  var value1;
  var value2;
  var value3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[800],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(65),
              ),
              child: CircleAvatar(
                radius: 65,
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/3778603/pexels-photo-3778603.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260'),
              ),
            ),
            Text(
              'Jon Karter',
              style: GoogleFonts.righteous(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            Text(
              'Software Developer',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(color: Colors.grey[400], fontSize: 14),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
              child: ListTile(
                leading: Icon(
                  Icons.call,
                  color: Colors.green,
                ),
                title: value1 = Text('+91-1234567890'),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.green,
                ),
                title: value2 = Text('example@gmail.com'),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
              child: ListTile(
                leading: Icon(
                  Icons.language,
                  color: Colors.green,
                ),
                title: value3 = Text('www.example.com'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                color: Colors.white,
                hoverColor: Colors.green,
                onPressed: () {
                  Share.share(
                    "$value1 \n $value2 \n $value3",
                    subject: "Jon Karter's Contact Details",
                  );
                },
                icon: Icon(Icons.share),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
