import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:sahayogihaath/provider/firestore/database/user.dart';

import './routes.dart';
import './screens/welcome/welcome.dart';
import './screens/splash.dart';
import './screens/dashboard/dashboard_main.dart';
import './constants.dart';
import './provider/auth_provider.dart';

void main() {
  runApp(
    SahayogiHaath(),
  );
}

class SahayogiHaath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        Provider<UserDatabase>(
          create: (context)=> UserDatabase(),
        )
      ],
        child: MaterialApp(
        title: 'Sahayogi Haath',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          accentColor: Color(0xFFf1f3f6),
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.sarabunTextTheme(textTheme).copyWith(
            bodyText1: GoogleFonts.lobster(
              textStyle: textTheme.bodyText1,
            ),
            // TODO:set app-wide text theme
          ),
        ),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.onAuthStateChanged,
          builder: (BuildContext ctx, AsyncSnapshot userSnapshot) {
            if (userSnapshot.hasData) {
              return DashboardMain();
            }
            if (userSnapshot.connectionState == ConnectionState.waiting) {
              return SplashScreen();
            }
            return Welcome();
          },
        ),
        routes: Routes.routes,
      ),
    );
  }
}
