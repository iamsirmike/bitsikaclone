import 'package:bitsika/widgets/reusablewidgets/bottom_navigation.dart';
import 'package:bitsika/widgets/reusablewidgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:bitsika/util/colors.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String username = "\$iamsirmike";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bitsika.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ReusableText(
                  text: 'Hello $username',
                  textcolor: UIColors.textcolor2,
                  size: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          ReusableText(
                            text: 'Your bitsika balance',
                            textcolor: UIColors.header,
                            size: 15,
                          ),
                          SizedBox(height: 5),
                          ReusableText(
                            text: 'USD 0.00',
                            textcolor: UIColors.balanceColor,
                            size: 30,
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          ReusableButton(
                            marginSize: EdgeInsets.only(left: 87),
                            bg: UIColors.button1,
                            icon: Icons.call_received,
                            label: "Deposit",
                            iconColor: UIColors.icon1,
                            textColor: UIColors.textcolor,
                          ),
                          SizedBox(height: 5),
                          ReusableButton(
                            marginSize: EdgeInsets.only(left: 87),
                            bg: UIColors.button2,
                            icon: Icons.call_made,
                            label: "Pay out",
                            iconColor: UIColors.icon1,
                            textColor: UIColors.buttontext,
                          ),
                          SizedBox(height: 5),
                          ReusableButton(
                            marginSize: EdgeInsets.only(left: 42),
                            bg: UIColors.button2,
                            icon: Icons.call_made,
                            label: "Send internally",
                            iconColor: UIColors.icon1,
                            textColor: UIColors.buttontext,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ReusableText(
                  text: 'Recent Activities',
                  textcolor: Color(0xffB7D3F1),
                  size: 20,
                ),
                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade400,
                          offset: Offset(
                            2.0,
                            2.0,
                          )),
                    ],
                    color: Color(0xffFBFBFB),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 10),
                      WelcomeDetails(
                        text: "Welcome to Bitsika",
                        size: 20,
                        color: Color(0xff0992F3),
                      ),
                      SizedBox(height: 10),
                      WelcomeDetails(
                        text: "How Bitsika works",
                        size: 15,
                        color: Color(0xff0992F3),
                        underline: TextDecoration.underline,
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: WelcomeDetails(
                          text:
                              "Once you receive funds in your wallet, transactions will start showing here",
                          color: UIColors.textcolor,
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: WelcomeDetails(
                          text:
                              "You can also pull down on this list to refresh your transactions",
                          color: UIColors.textcolor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

class WelcomeDetails extends StatelessWidget {
  const WelcomeDetails({
    this.text,
    this.color,
    this.size,
    this.underline,
  });
  final String text;
  final Color color;
  final double size;
  final TextDecoration underline;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: size,
        decoration: underline,
      ),
    );
  }
}

class ReusableText extends StatelessWidget {
  const ReusableText({
    this.text,
    this.textcolor,
    this.size,
  });

  final String text;
  final Color textcolor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      child: Text(
        text,
        style: TextStyle(fontSize: size, color: textcolor),
      ),
    );
  }
}
