import 'dart:developer';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:services/Screen/Search.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  var _currentRangeValues = const RangeValues(40, 80);
  bool Categories1 = false;
  // bool? Categories2 = false;
  // bool? Categories3 = false;
  // bool? Categories4 = false;
  double? _rating;
  IconData? _selectedIcon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(111, 158, 158, 158),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromARGB(255, 255, 18, 18),
                  Color.fromARGB(195, 15, 15, 15)
                ]),
          ),
        ),
        title: Text("Advance search"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Price",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              // color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Low",
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Text(
                            '${_currentRangeValues.start.toString()} ,${_currentRangeValues.end.toString()}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Text(
                            "High",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  RangeSlider(
                    values: _currentRangeValues,
                    activeColor: Color.fromARGB(255, 0, 0, 0),
                    inactiveColor: Colors.grey,
                    max: 100,
                    divisions: 5,
                    labels: RangeLabels(
                      _currentRangeValues.start.round().toString(),
                      _currentRangeValues.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      // print('${_currentRangeValues.start},${_currentRangeValues.end}');
                      setState(() {
                        _currentRangeValues = values;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Categories",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                      Padding(
        padding: const EdgeInsets.only(left: 15.0,right: 2),
        child: Container(
            margin: const EdgeInsets.symmetric(vertical: 0.1),
            height: 150,
            // width: 600,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    child: Column(
                        children: [
                          Row(
                            children: [
                             
                                Transform.scale(
                                  scale: 0.8,
                                  child: Checkbox(
                                    value: Categories1,
      
                                    onChanged: (bool? newValue) {
                                      setState(() {
                                        print('${newValue}');
                                        Categories1 = newValue!;
                                      });
                                    },
                                    activeColor: Colors.black,
                                    checkColor: Colors.white,
                                    // tileColor: Colors.white,,
                                  ),
                                ),
                                Text(
                                  "Check Me",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
      
                                  ),
                                ),
                            ],
                          ),
                           
                          
                          
                        ],
                      ),
                  );
                })),
          ),
                      
                    
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 1),
                    child: Row(
                      children: [
                        Text(
                          "Rating",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Container(
                      // color: Colors.white,
                      height: 25,
                      child: Column(
                        children: [
                          RatingBar.builder(
                            initialRating: _rating ?? 0.0,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: false,
                            itemCount: 5,
                            itemSize: 25,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 8),
                            itemBuilder: (context, _) => Icon(
                              _selectedIcon ?? Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              _rating = rating;
                              setState(() {
                                print('${rating}');
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.only(left: 8 ,top: 10),
                  child: Row(
                    children: [
                      Text(
                        "Cities",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, top: 0.1),
                      child: Container(
                        // color: Colors.white,
                        height: 90,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: DropdownSearch<String>(
                                popupProps: PopupProps.menu(
                                  showSelectedItems: true,
                                  disabledItemFn: (String s) =>
                                      s.startsWith('I'),
                                ),
                                // items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
                                items: [
                                  "Abbottabad",
                                  "Adezai",
                                  "Ahmadpur East",
                                  "Ahmed Nager",
                                  "Akora Khattak",
                                  "Ali Khan",
                                  "Alipur",
                                  "Alpuri",
                                  "Arifwala",
                                  "Attock",
                                  "Awaran",
                                  "Ayubia",
                                  "Badin",
                                  "Bahawalnagar",
                                  "Bahawalpur",
                                  "Banda Daud",
                                  "Bannu",
                                  "Barkhan",
                                  "Batkhela",
                                  "Battagram",
                                  "Bhakkar",
                                  "Bhalwal",
                                  "Bhera",
                                  "Bhirkan",
                                  "Birote",
                                  "Burewala",
                                  "Chagai",
                                  "Chak",
                                  "Chakdara",
                                  "Chakwal",
                                  "Charsadda",
                                  "Chichawatni",
                                  "Chillianwala",
                                  "Chiniot",
                                  "Chishtian",
                                  "Chitral",
                                  "Dadu",
                                  "Daggar",
                                  "Dargai",
                                  "Darya Khan",
                                  "Darya Khan",
                                  "Daska",
                                  "Dera Bugti",
                                  "Dera Ghazi",
                                  "dera Ismail",
                                  "Dhaular",
                                  "Digri",
                                  "Dina",
                                  "Dinga",
                                  "Dipalpur",
                                  "Diplo",
                                  "Dir",
                                  "Doaba",
                                  "Dokri",
                                  "Drosh",
                                  "Faisalabad",
                                  "Fateh Jhang",
                                  "Ghakhar Mandi",
                                  "Ghotki",
                                  "Gojra",
                                  "Gujar Khan",
                                  "Gujranwala",
                                  "Gujrat",
                                  "Gwadar",
                                  "Haala",
                                  "Hafizabad",
                                  "Hangu",
                                  "Haripur",
                                  "Harnai",
                                  "Haroonabad",
                                  "Hasilpur",
                                  "Haveli",
                                  "Hyderabad",
                                  "Islamkot",
                                  "Jacobabad",
                                  "Jafarabad",
                                  "Jalalpur",
                                  "Jampur",
                                  "Jamshoro",
                                  "Jaranwala",
                                  "Jattan",
                                  "Jauharabad",
                                  "Jhal Magsi",
                                  "Jhang",
                                  "Jhelum",
                                  "Jungshahi",
                                  "Kacchi",
                                  "Kalabagh",
                                  "Kalat",
                                  "Kamalia",
                                  "Kamoke",
                                  "Kandhkot",
                                  "Kandiaro",
                                  "Karachi",
                                  "Karak",
                                  "Karor Lal",
                                  "Kashmore",
                                  "Kasur",
                                  "Kech",
                                  "Keti Bandar",
                                  "Khairpur",
                                  "Khanewal",
                                  "Khanpur",
                                  "Kharan",
                                  "Kharian",
                                  "Khushab",
                                  "Khuzdar",
                                  "Killa Abdullah",
                                  "Killa Saifullah",
                                  "Kohat",
                                  "Kohlu",
                                  "Kot Adu",
                                  "Kotri",
                                  "Kulachi",
                                  "Lahore",
                                  "Lakha",
                                  "Lakki Marwat",
                                  "Lalamusa",
                                  "Larkana",
                                  "Lasbela",
                                  "Latamber",
                                  "Layyah",
                                  "Lehri",
                                  "Liaquat Pur",
                                  "Lodhran",
                                  "Loralai",
                                  "Madyan",
                                  "Mailsi",
                                  "Malakwal",
                                  "Mamoori",
                                  "Mandi Bahauddin",
                                  "Mansehra",
                                  "Mardan",
                                  "Mastuj",
                                  "Mastung",
                                  "Matiari",
                                  "Mehar",
                                  "Mehrabpur",
                                  "mian Channu",
                                  "Mianwali Bangla",
                                  "Mianwali",
                                  "Mingora",
                                  "Mirpur Khas",
                                  "Mithani",
                                  "Mithi",
                                  "Moro",
                                  "Multan",
                                  "Muridke",
                                  "Murree",
                                  "Musakhel",
                                  "Muzaffargarh",
                                  "Nagarparkar",
                                  "Narowal",
                                  "Nasirabad",
                                  "Naudero",
                                  "Naushahro Feroze",
                                  "Naushara",
                                  "Nawabshah",
                                  "Nazimabad",
                                  "Nowshera",
                                  "Nushki",
                                  "Okara",
                                  "Pabbi",
                                  "Paharpur",
                                  "Pakpattan",
                                  "Panjgur",
                                  "Pattoki",
                                  "Peshawar",
                                  "Pir Mahal",
                                  "Pishin valley",
                                  "Qaimpur",
                                  "Qambar",
                                  "Qasimabad",
                                  "Qila Didar",
                                  "Quetta",
                                  "Rabwah",
                                  "Rahim Yar",
                                  "Raiwind",
                                  "Rajanpur",
                                  "Rajo Khanani",
                                  "Ranipur",
                                  "Ratodero",
                                  "Rawalpindi",
                                  "Renala Khurd",
                                  "Rohri",
                                  "Sadiqabad",
                                  "Safdarabad",
                                  "Sahiwal",
                                  "Saidu Sharif",
                                  "Sakrand",
                                  "Sanghar",
                                  "Sangla Hill",
                                  "Sarai Alamgir",
                                  "Sargodha",
                                  "Shahbandar",
                                  "Shahdadkot",
                                  "Shahdadpur",
                                  "Shahpur Chakar",
                                  "Shakargarh",
                                  "Sheikhupura",
                                  "Sherani",
                                  "Shewa Adda",
                                  "Shikarpaur",
                                  "Shorkot",
                                  "Sialkot",
                                  "Sibi",
                                  "Siranwali",
                                  "Sohawa",
                                  "Sohbatpur",
                                  "Soianwala",
                                  "Sukkur",
                                  "Swabi",
                                  "Swat",
                                  "Talagang",
                                  "Tando Adam",
                                  "Tando Allahyar",
                                  "Tando Muhammad",
                                  "Tangi",
                                  "Tangwani",
                                  "Tank",
                                  "Taxila",
                                  "Thall",
                                  "Thatta",
                                  "Timergara",
                                  "Toba Tek",
                                  "Tordher",
                                  "Umerkot",
                                  "Vehari",
                                  "Wah Cantonment",
                                  "Warah",
                                  "Washuk",
                                  "Wazirabad",
                                  "Zhob",
                                  "Ziarat",
                                ],
                                dropdownDecoratorProps: DropDownDecoratorProps(
                                  dropdownSearchDecoration: InputDecoration(
                                    // labelText: "Cities",
                                    hintText: "Selected Cities",
                                  ),
                                ),
                                onChanged: print,
                                // selectedItem: "Umerkot",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                // padding: MaterialStateProperty.all(EdgeInsets.all(50)),
                                textStyle: MaterialStateProperty.all(
                                    TextStyle(fontSize: 15))),
                            child: Text("Apply"))
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
