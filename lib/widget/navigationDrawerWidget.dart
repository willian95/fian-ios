import 'package:flutter/material.dart';
import 'package:newtestapp/pages/firstPage.dart';
import 'package:newtestapp/pages/marketPage.dart';
import 'package:newtestapp/pages/contact.dart';
import 'package:newtestapp/pages/tutorialNav.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    

    return Container(
      width: MediaQuery.of(context).size.width * 0.65,
      child: Opacity(
        opacity: 0.95, 
        child:Drawer(
          child: Material(
            color: Color.fromRGBO(20, 78, 65, 1),
            child: SingleChildScrollView(
              child: Container(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: MediaQuery.of(context).size.width, minHeight: MediaQuery.of(context).size.height),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Center(
                          child: Image.asset("images/logowhite.png", width: 160, height: 160),
                        ),
                      ),

                      Column(
                        children:[
                          ListTile(
                            title: Text("CICLO LUNAR", style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.w800)),
                            onTap: () => selectedItem(context, 0),
                          ),
                          ListTile(
                            title: Text("LISTA DE MERCADOS", style: GoogleFonts.montserrat(color: Colors.white)),
                            onTap: () => selectedItem(context, 1),
                          ),
                          ListTile(
                            title: Text("CONTÁCTANOS", style: GoogleFonts.montserrat(color: Colors.white)),
                            onTap: () => selectedItem(context, 2),
                          ),
                          ListTile(
                            title: Text("TUTORIAL", style: GoogleFonts.montserrat(color: Colors.white)),
                            onTap: () => selectedItem(context, 3),
                          ),
                        ]
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 60, top: 20, left: 15, right: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Center(
                                  child: Image.asset("images/univeridad_de_caldas.png", width: 80)
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Center(
                                    child: Image.asset("images/jardin_botanico.png", width: 80)
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Center(
                                    child: Image.asset("images/ati.png", width: 80)
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Center(
                                    child: Image.asset("images/renaf.png", width: 120)
                                  ),
                                ),

                              ],
                            )
                            
                          ]
                        ),
                      )

                    ],
                  ),
                ),
              ),
            ),
          )
        )
      ),
    );

    
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => FirstPage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Market(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Contact(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TutorialNav(),
        ));
        break;
    }
  }
}