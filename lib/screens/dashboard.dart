import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_khalti/flutter_khalti.dart';

class Dashboard extends StatefulWidget {
  static const id = 'dashboard';

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  _payViaKhalti() async {
    FlutterKhalti _flutterKhalti = FlutterKhalti.configure(
      publicKey: "test_public_key_eacadfb91994475d8bebfa577b0bca68",
      urlSchemeIOS: "KhaltiPayFlutterExampleScheme",
      paymentPreferences: [
        KhaltiPaymentPreference.KHALTI,
        KhaltiPaymentPreference.MOBILE_BANKING
      ],
    );

    KhaltiProduct product = KhaltiProduct(
      id: "test",
      amount: 90000,
      name: "Hello Product",
    );
    _flutterKhalti.startPayment(
      product: product,
      onSuccess: (data) {
        print("${data.toString()}");
      },
      onFaliure: (error) {
        print(error);
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Center(
              child: Text(
                'Dashboard',
              ),
            ),
          ),
          MaterialButton(
            child: Text('Pay via Khalti'),
            onPressed: _payViaKhalti,
          ),
          RaisedButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            child: Text('Logout'),
          )
        ],
      ),
    );
  }
}
