// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

part of 'pages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    splashScreenStart();
    super.initState();
  }

  splashScreenStart() {
    var duration = Duration(seconds: 4);
    return Timer(duration, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) {
          return const LandingPage();
        }),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffB9DFBA),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Timbang Ayam",
              style: GoogleFonts.poppins(
                  fontSize: 12, color: Color(0xff386829), letterSpacing: 5),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Selamat Datang",
              style: GoogleFonts.poppins(
                color: Color(0xff543707),
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "di Timbang Ayam",
              style: GoogleFonts.poppins(
                color: Color(0xff543707),
                fontSize: 30,
                fontWeight: FontWeight.w100,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Pendataan Timbangan dengan Mudah",
              style: GoogleFonts.poppins(
                  color: Color(0xff79549E),
                  fontSize: 16,
                  fontWeight: FontWeight.w300),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 478,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/splash_pic.png"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
