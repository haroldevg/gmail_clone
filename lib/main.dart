
import 'package:challenge_app/screens/gmail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.black.withOpacity(0.3),
      statusBarIconBrightness: Brightness.light
  ));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MaterialApp(
      home: GmailScreen(),
      theme: ThemeData(
        //this is what you want
        accentColorBrightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
      locale: const Locale('es'),
      supportedLocales: [
        const Locale('en','US'),
        const Locale('es','ES'),
      ],
    ));
  });
}
