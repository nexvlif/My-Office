import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class JoinOfficePage extends StatefulWidget {
  const JoinOfficePage({super.key});

  @override
  State<JoinOfficePage> createState() => _JoinOfficePageState();
}

class _JoinOfficePageState extends State<JoinOfficePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: const SizedBox.shrink(),
        ),
        title: Text('Gabung Kantor', style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xFF0056b3)),),
        leading: IconButton(
          padding: const EdgeInsets.only(left: 30),
          icon: const Icon(Icons.arrow_back_ios_rounded, color: Color(0xFF0056b3)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(color: Colors.white),
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg_overlay_white.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(50),
            child: Column(
              children: [
                const SizedBox(height: 50),
                Image(image: AssetImage('assets/images/gabungkantor.png'), width: 247,),
                const SizedBox(height: 40),
                Text('Masukkan kode yang diberikan untuk bergabung dengan kantor',textAlign: TextAlign.center, style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600, color: Color(0xFF333333)),),
                const SizedBox(height: 57),
                Form(
                  child: Column(
                    children: [
                      PinCodeTextField(
                        appContext: context,
                        length: 5,
                        obscureText: false,
                        animationType: AnimationType.fade,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(8),
                          fieldHeight: 50,
                          fieldWidth: 50,
                          activeFillColor: const Color(0xFF0056b3).withValues(alpha: 0.1),
                          inactiveFillColor: const Color(0xFF0056b3).withValues(alpha: 0.1),
                          selectedFillColor: const Color(0xFF0056b3).withValues(alpha: 0.1),
                          activeColor: const Color(0xFF0056b3),
                          inactiveColor: Colors.transparent,
                          selectedColor: const Color(0xFF0056b3),
                          borderWidth: 2,
                        ),
                        textStyle: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF0056b3),
                        ),
                        enableActiveFill: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 57),
                SizedBox(
                  height: 43,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0056B3),
                      minimumSize: const Size(0, 48), // tinggi tombol
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Gabung',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}