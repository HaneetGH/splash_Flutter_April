import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash/otp_enter.dart';

class Otp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return OtpState();
  }
}

class OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: ExactAssetImage('assets/bg.png'),)
    ),
child:Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisSize: MainAxisSize.max,
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    Column(children: [

      Center(
        child: Image.asset("assets/logo.png"),
      ),
      SizedBox(
        height: 15,
      ),
      Text(
        "SLASH  BILLS.  WIN BIG.".toUpperCase(),
        style: TextStyle(fontSize: 18, color: Colors.grey,fontWeight: FontWeight.w600),
      ),
      Container(
        color: Colors.transparent,
        child: Container(
          height: 80,
          margin: EdgeInsets.only(left: 20, right: 20, top: 10),
          padding: EdgeInsets.all(10),
          child: TextFormField(
            keyboardType: TextInputType.number,
            onTap: () {},
            //   controller: password,
            decoration: InputDecoration(
                border: new OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.red, width: 0.0),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(8.0),
                  ),
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(
                      top: 5,
                      bottom: 5), // add padding to adjust icon
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  ),
                ),
                labelStyle:
                TextStyle(fontSize: 15, color: Colors.red),
                fillColor: Colors.white,
                filled: true,
                contentPadding:
                EdgeInsets.only(top: 10, left: 10),
                hintText: "Enter Your Mobile Number",
                hintStyle:
                TextStyle(fontSize: 15, color: Colors.red)),
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Otp_enter()));
        },
        child: Container(
          height: 80,
          margin: EdgeInsets.only(left: 20, right: 20, top: 5,bottom: 400),
          padding: EdgeInsets.all(10),
          color: Colors.transparent,
          child: Container(
            //  padding: EdgeInsets.fromLTRB(5, 1, 5, 1),
              decoration: BoxDecoration(
                  color: Colors.red,
                  //  border: Border.all(color: Colors.red),
                  borderRadius:
                  BorderRadius.all(Radius.circular(8.0))),
              child: new Center(
                  child: Text(
                    'Get OTP',
                    style:
                    TextStyle(fontSize: 14, color: Colors.white),
                  ))),
        ),
      ),
    ],),
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[












        Container(
            margin: EdgeInsets.only(bottom: 50.0),
            alignment: Alignment.bottomCenter,
            child: Text(
              "Terano ecommerce Pvt Ltd",style: TextStyle(color: Colors.grey),
            ))
      ],
    )

  ],
)











    ));
  }
}
