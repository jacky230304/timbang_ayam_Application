// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

part of 'pages.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 220,
                    decoration: BoxDecoration(
                      color: Color(0xffB9DFBA),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Timbang Ayam",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Color(0xff386829),
                          letterSpacing: 5,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Selamat Datang",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                          fontSize: 28,
                          color: Color(0xff3F414E),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Semoga harimu menyenangkan",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Color(0xff3F414E),
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              //Kandang
              Container(
                padding: EdgeInsets.only(left: 20, top: 10),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Kandang Saya",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Color(0xff386829),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "2 Kandang",
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: Color(0xffC8C8C8),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 133,
                          height: 27,
                          decoration: BoxDecoration(
                              color: Color(0xff75A479),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_circle_outline,
                                size: 14,
                                color: Colors.white,
                              ),
                              Text(
                                "Tambah Kandang",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CageCard(),
                          SizedBox(
                            width: 15,
                          ),
                          CageCard(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //Panen
              Container(
                padding: EdgeInsets.only(left: 20, top: 10),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Panen Mendatang",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Color(0xff386829),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "2 Panen",
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: Color(0xffC8C8C8),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        // Container(
                        //   width: 133,
                        //   height: 27,
                        //   decoration: BoxDecoration(
                        //       color: Color(0xff75A479),
                        //       borderRadius:
                        //           BorderRadius.all(Radius.circular(8))),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: [
                        //       Icon(
                        //         Icons.add_circle_outline,
                        //         size: 14,
                        //         color: Colors.white,
                        //       ),
                        //       Text(
                        //         "Tambah Kandang",
                        //         style: GoogleFonts.poppins(
                        //             color: Colors.white,
                        //             fontWeight: FontWeight.normal,
                        //             fontSize: 10),
                        //       )
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          HarvestCard(),
                          SizedBox(
                            width: 15,
                          ),
                          HarvestCard(),
                          SizedBox(
                            width: 15,
                          ),
                          HarvestCard(),
                          SizedBox(
                            width: 15,
                          ),
                          HarvestCard(),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
