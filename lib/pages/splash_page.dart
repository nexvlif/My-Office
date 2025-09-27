import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    //Untuk Delay dan masuk Ke homepages disini juga nanti ada pengecekan login dan user yg ga login akan masuk ke login page
    // Future.delayed(const Duration(seconds: 6), () {
    //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(color: const Color(0xFF1A67BB)),
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg_overlay.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Text(
              'My Office',
              style: GoogleFonts.poppins(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
