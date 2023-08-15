import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screen/bottombar.dart';
import '../widgets/custom_tag_indicator.dart';

class bookscreen extends StatelessWidget {
  const bookscreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar: bottombar(),
      body: SafeArea(
          child: Container(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Color.fromARGB(255, 123, 184, 207),
              expandedHeight: MediaQuery.of(context).size.height * 0.5,
              flexibleSpace: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Stack(
                  children: [
                    // Positioned(
                    //   left: 25,
                    //   top: 25,
                    //   child: Container(
                    //     height: 32,
                    //     width: 32,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(10),
                    //       color: Colors.white
                    //     ),
                    //     child: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,),

                    // )),

                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 300,
                        width: 380,
                        margin: EdgeInsets.only(bottom: 62),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/1.jpg")),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.only(top: 24, left: 25),
                child: Text(
                  "The Alchemist",
                  style: GoogleFonts.openSans(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, left: 25),
                child: Text(
                  "Paulo Coelho",
                  style: GoogleFonts.openSans(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, left: 25),
                child: Text(
                  "20 \$",
                  style: GoogleFonts.openSans(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                ),
              ),
              Container(
                height: 28,
                margin: EdgeInsets.only(top: 19, bottom: 36),
                padding: EdgeInsets.only(left: 25),
                child: DefaultTabController(
                    length: 3,
                    child: TabBar(
                        labelPadding: EdgeInsets.all(0),
                        indicatorPadding: EdgeInsets.all(0),
                        isScrollable: true,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        labelStyle: GoogleFonts.openSans(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        unselectedLabelStyle: GoogleFonts.openSans(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        indicator: RoundedRectangleIndicator(
                            weight: 2, width: 5, color: Colors.black),
                        tabs: [
                          Tab(
                            child: Container(
                              margin: EdgeInsets.only(right: 39),
                              child: Text("Description"),
                            ),
                          ),
                          Tab(
                            child: Container(
                              margin: EdgeInsets.only(right: 39),
                              child: Text("Reviews(20)"),
                            ),
                          ),
                          Tab(
                            child: Container(
                              margin: EdgeInsets.only(right: 39),
                              child: Text("Similar"),
                            ),
                          ),
                        ])),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
                child: Text(
                  "The Alchemist is a bestselling novel written by Brazilian author Paulo Coelho. It tells the story of Santiago, a shepherd boy who embarks on a journey to find his personal legend, a concept that refers to one's true purpose or destiny in life. Santiago's quest takes him from his homeland in Spain to the Egyptian desert, as he encounters various characters and experiences that teach him about the importance of following his dreams, listening to his heart, and embracing the guidance of the universe. The book explores themes of self-discovery, fate, and the interconnectedness of all things. It's a philosophical and allegorical tale that has inspired readers worldwide with its messages of pursuing one's dreams and finding meaning in the journey of life.",
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              )
            ]))
          ],
        ),
      )),
    );
  }
}
