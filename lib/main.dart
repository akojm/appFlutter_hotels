import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotels/calendar_page.dart';


// Déclaration d'une varaible d'une couleur spéciale
const sGreen = Color(0xFF54D3C2);

// Point d'entrée de l'application avec void main qui retourne l'application //
// On lance l'application avec la fonction runApp et dans la fonction on met le widget qu'on va télécharger (MyApp()) //
void main() {
  runApp(const MyApp());
}

// Déclaration du widget "StatelessWidget" //
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // Retour le widget MaterialApp pour le design de l'application.
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     title: 'Hotels Booking',
     /* theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),*/
      home: HomePage(),
    );
  }
}

// Home Page 

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
         appBar: MyAppBar(),
           body : SingleChildScrollView(
            child : Column(children: [
                    SearchSection(),
                    HotelsSection(),
            ],)
          )
           );
  }  
}

// AppBar 
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});
  Size get preferredSize => new Size.fromHeight(50);
  @override
  Widget build(BuildContext context){
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.grey[800],
          size: 20,
          ),
        onPressed: null,
         ),
      title: Text('Explore',
        style: GoogleFonts.nunito(
        color: Colors.black,
        fontWeight: FontWeight.w900,
      )),
       actions: [
        IconButton(
        icon: Icon(
          Icons.favorite_outline_rounded,
          color: Colors.grey[800],
          size: 20,
          ),
        onPressed: null,
         ),
        IconButton(
        icon: Icon(
          Icons.place,
          color: Colors.grey[800],
          size: 20,
          ),
        onPressed: null,
         ),
       ],
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }
}

// Search Section
class SearchSection extends StatelessWidget {
  const SearchSection({super.key});
  @override
  Widget build(BuildContext context){
  return Container (
         height: 180,
         color: Colors.grey[200],
         padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
         child: Column(
          children: [
           Row(
            children: [
              Expanded(child: 
              Container(
                height: 50,
                width: 200,
                padding: EdgeInsets.only(left:5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 4,
                      offset: Offset(0,3)
                    )
                  ]
    
                  ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'London',
                    contentPadding: EdgeInsets.all(10),
                    border: InputBorder.none,
                  ),  

                ),
              )
              ),
             SizedBox(width: 10),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                   boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 4,
                      offset: Offset(0,4)
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(25))
                  ),
                 child: ElevatedButton(
                  onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                       return calendar_page();
                   },),);  
                  },
                  child: Icon(
                    Icons.search,
                    size: 26,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(10),
                    primary: sGreen,
                  ),
                 ),
                ),
            ],
           ),
             //SizedBox(height: 10),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[  
              Container(
                margin: EdgeInsets.all(10),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Choose date', 
                        style: GoogleFonts.nunito(
                          color: Colors.grey,
                          fontSize: 15,
                        ),),
                        SizedBox(height: 8),
                      Text(
                        '12 Dec - 22 Dec',
                        style: GoogleFonts.nunito(
                          color: Colors.black,
                          fontSize: 17,
                        )  
                        ),
                ],
             ),
            ),
              Container(
                margin: EdgeInsets.all(10),
                  child:  Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Number of Rooms',
                         style: GoogleFonts.nunito(
                          color: Colors.grey,
                          fontSize: 15,
                        ) 
                      ),
                      SizedBox(height: 8),
                      Text(
                        '1 Room - 2 Adults',
                        style: GoogleFonts.nunito(
                          color: Colors.black,
                          fontSize: 17,
                        ) 
                        ),
                ],
             ),
            ),
            ]
           )
         
         ]),
      );
  }
}
// Hotels Section
class HotelsSection extends StatelessWidget {
  final List hotelsList = [
    {
      'title' : 'Grand Royal Hotel',
      'place' : 'wembley, London',
      'distance': 13,
      'review': 35,
      'picture' : 'images/hotels_1.jpg',
      'price': '180',
    },
    {
      'title' : 'Queen Hotel',
      'place' : 'wembley, London',
      'distance': 3,
      'review': 16,
      'picture' : 'images/hotels_2.jpg',
      'price': '210',
    },
   
    {
      'title' : 'Grand Mal Hotel',
      'place' : 'wembley, London',
      'distance': 7,
      'review': 87,
      'picture' : 'images/hotels_3.jpg',
      'price': '415',
    },
    {
      'title' : 'Hilton Hotel',
      'place' : 'wembley, London',
      'distance': 11,
      'review': 95,
      'picture' : 'images/hotels_4.jpg',
      'price': '580',
    },
    
    {
      'title' : 'Alfayed Hotel',
      'place' : 'wembley, London',
      'distance': 34,
      'review': 75,
      'picture' : 'images/hotels_5.jpg',
      'price': '170',
    },
    {
      'title' : 'Saint James Hotel',
      'place' : 'wembley, London',
      'distance': 9,
      'review': 83,
      'picture' : 'images/hotels_6.jpg',
      'price': '310',
    },
    
  ];
  @override
  Widget build(BuildContext context){
  return Container (
        padding: EdgeInsets.all(10),
         color: Colors.white,
         child: Column(
          children: [
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(
                  '550 hotels founds',
                     style: GoogleFonts.nunito(
                          color: Colors.black,
                          fontSize: 15,
                )),
                Row(children: [
                    Text(
                  'Filters',
                     style: GoogleFonts.nunito(
                          color: Colors.black,
                          fontSize: 15,
                ),
                ),
                IconButton(
                  onPressed: null, 
                  icon: Icon(Icons.filter_list_outlined),
                        color: sGreen, iconSize: 25

                  ),
                ],
                
                ) 
              ]),
            ),
            Column(
             children: hotelsList.map((hotel){
              return Container(
                //child: Text(hotel['title']),
                child: hotelCard(hotel),
              );
             }).toList(), 
            )
          ],
         ),
       
      );
  }
}
// Cards  
class hotelCard extends StatelessWidget{
  final Map hotelData;
  hotelCard(this.hotelData);
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(10) ,
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(18)),
      boxShadow:[
        BoxShadow(
          color: Colors.grey.shade300,
          blurRadius: 6,
          spreadRadius: 4,
          offset: Offset(0, 3)
      )
    ]      
      ),  
   child: Column(children: [
    Container(
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
        image: 
           DecorationImage(
            image: AssetImage(hotelData['picture']),
            fit: BoxFit.cover,
            ),
          
       ),
       child: Stack(
        children: [
          Positioned(
            top: 5,
           right: -15,
            child:MaterialButton(
              color: Colors.white,
              shape: CircleBorder(),
              onPressed: (){},
              child: Icon(
                Icons.favorite_outline_rounded,
                color: sGreen,
                size: 20,
              ),
            
            ) )
        ],
       ),
       
    ), 
    Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            hotelData['title'],
            style: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
            ),
          Text('\$' + hotelData['price'],
           style: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: FontWeight.w800,
          ),
          )
        ],
      ),
    ),
     Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(hotelData['place'],
          style: GoogleFonts.nunito(
            fontSize: 14,
            color: Colors.grey[500],
            fontWeight: FontWeight.w400,
          ),
          ),
          Row(children: [
            Icon(
              Icons.place,
              color: sGreen,
              size: 14.0,
            ),
            Text(
              hotelData['distance'].toString()+ ' km to city',
              style: GoogleFonts.nunito(
                  fontSize: 14,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w400,
            )),
          ],),
          Text(
              'Per nigth',
              style: GoogleFonts.nunito(
                  fontSize: 14,
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w400,
              
              ))
        ], 
      ),
     ),
     Container(
      margin: EdgeInsets.fromLTRB(10, 3, 10, 0),
      child: Row(children: [
        Row(
          children: [
            Icon(
              Icons.star_rate,
              color: sGreen,
              size: 14,
            ),
            Icon(
              Icons.star_rate,
              color: sGreen,
              size: 14,
            ),
            Icon(
              Icons.star_rate,
              color: sGreen,
              size: 14,
            ),
            Icon(
              Icons.star_rate,
              color: sGreen,
              size: 14,
            ),
            Icon(
              Icons.star_border,
              color: sGreen,
              size: 14,
            )
          ],
        ),
        SizedBox(width:20),
        Text(hotelData['review'].toString() + ' Reviews',
        style: GoogleFonts.nunito(
                  fontSize: 14,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w400,
            )),
      ]),
     )
   ]),  
    );
  }
 }