import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:url_launcher/url_launcher.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OpenUrlDemo(),
    );
  }
}

class OpenUrlDemo extends StatefulWidget {
  @override
  State<OpenUrlDemo> createState() => _OpenUrlDemoState();
}

class _OpenUrlDemoState extends State<OpenUrlDemo> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    //WebView.platform = AndroidWebView();
    _launchURLBrowser();
  }

  _launchURLBrowser() async {
    const url = 'https://thetwmfamily.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   centerTitle: true,
      //     automaticallyImplyLeading: false,
      //     backgroundColor: Colors.black,
      //     title: Text('Flutter Open Url Demo')),
      body: SafeArea(
        child: Center(
          child: GestureDetector(
            onTap: () => _launchURLBrowser(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ignore: deprecated_member_use
                Image.asset(
                  "assets/images/twm.png",
                  width: 200,
                ),
                // Lottie.network(
                //     'https://assets6.lottiefiles.com/packages/lf20_nv5iuh4b.json'),
                // Padding(
                //   padding: const EdgeInsets.all(16.0),
                //   child: SizedBox(
                //     width: MediaQuery.of(context).size.width,
                //     height: 45,
                //     child: ElevatedButton(
                //       //color: Colors.teal,
                //       onPressed: _launchURLBrowser,
                //       child: Text(
                //         'Continue'.toUpperCase(),
                //         style: TextStyle(color: Colors.black),
                //       ),
      
                //       style: ButtonStyle(
                //         backgroundColor: MaterialStateProperty.all(Colors.white),
                //         foregroundColor: MaterialStateProperty.all(Colors.white),
                //       ),
                //     ),
                //   ),
                // ),
      
                // SizedBox(
                //     width: 150,
                //     height: 45,
                //   child: ElevatedButton(
                //               onPressed: () {
                //                 Navigator.of(context).pop();
                //                 Navigator.of(context).pushNamed('/');
                //               },
                //               style: TextButton.styleFrom(
                //                 // backgroundColor: Color(0xFF6CD8D1),
                //                 elevation: 10,
                //                 backgroundColor: Colors.white,
                //                 shape: RoundedRectangleBorder(
                //                   borderRadius: BorderRadius.circular(50),
                //                   // side: BorderSide(color: Color(0xFF6CD8D1)),
                //                 ),
                //               ),
                //               child: Text(
                //                 "Continue".toUpperCase(),
                //                 style: TextStyle(
                //                     color: Colors.black, fontFamily: 'Poppins'),
                //               ),
                //             ),
                // ),
      
                 Lottie.network(
                     'https://assets5.lottiefiles.com/packages/lf20_p9aq45y0.json'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
