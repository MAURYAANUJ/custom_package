///pushAndRemoveUntil
//Navigator.pushAndRemoveUntil(
//         context,
//         MaterialPageRoute(
//             builder: (context) => const PageName()),
//         (route) => false);


///pushReplacement
// Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//             builder: (context) => const PageName()),
//       );


///push
// Navigator.push(
//         context,
//         MaterialPageRoute(
//             builder: (context) => const PageName()),
//       );


/// Container decoration
// decoration: BoxDecoration(
//               color: Colors.white,
//               border: Border.all(color: Colors.red, width: 1.0),
//               borderRadius: BorderRadius.circular(5.0),
//             ),


/// Container borderRadius
//    borderRadius: const BorderRadius.only(
//                       topLeft: Radius.circular(20),
//                       topRight: Radius.circular(20)),



///Card decoration
// Card(
//    shape: RoundedRectangleBorder(
//    side: const BorderSide(color: kIndigoDark, width: 1),
//    borderRadius: BorderRadius.circular(10),
// ),)


///redirect WillpopScope
//Future<bool> redirectTo() async {
//     Navigator.push(context, MaterialPageRoute(builder: (context) {
//       return const MobileDashBoardScreen();
//     }));
//     return true;
//   }



/// Obtain shared preferences.
// final SharedPreferences prefs = await SharedPreferences.getInstance();
/// Save an integer value to 'counter' key.
// await prefs.setInt('counter', 10);
/// Save an boolean value to 'repeat' key.
// await prefs.setBool('repeat', true);
/// Save an double value to 'decimal' key.
// await prefs.setDouble('decimal', 1.5);
/// Save an String value to 'action' key.
// await prefs.setString('action', 'Start');
/// Save an list of strings to 'items' key.
// await prefs.setStringList('items', <String>['Earth', 'Moon', 'Sun']);



/// Try reading data from the 'counter' key. If it doesn't exist, returns null.
// final int? counter = prefs.getInt('counter');
/// Try reading data from the 'repeat' key. If it doesn't exist, returns null.
// final bool? repeat = prefs.getBool('repeat');
/// Try reading data from the 'decimal' key. If it doesn't exist, returns null.
// final double? decimal = prefs.getDouble('decimal');
/// Try reading data from the 'action' key. If it doesn't exist, returns null.
// final String? action = prefs.getString('action');
/// Try reading data from the 'items' key. If it doesn't exist, returns null.
// final List<String>? items = prefs.getStringList('items');




///filter for list view #[with the api date type]#


// List<dynamic> allFeesList = [];
// List<dynamic> foundList = [];

// void _runFilter(String enteredKeyword) {
//   List<dynamic> results = [];
//   if (enteredKeyword.isEmpty) {
//     results = allFeesList;
//   } else {
//     results = allFeesList
//         .where((user) =>
//         user["data"].toLowerCase().contains(enteredKeyword.toLowerCase()))
//         .toList();
//   }
//   setState(() {
//     foundList = results;
//   });
// }

// CustomSearchFiled
///list tile circle-avatar dynamic color #[passing color]#

// int colorIndex = 0;

// Color colorLoop() {
//     colorIndex++;
//     if (colorIndex == color.length) {
//       colorIndex = 0;
//       return color[colorIndex];
//     } else {
//       return color[colorIndex];
//     }
//   }

//  dynamic color = [
//     Colors.orange.shade100,
//     Colors.blue.shade100,
//     Colors.yellow.shade100,
//     Colors.purple.shade100,
//   ];


///CustomSearch with api Filed #[with the api date type]#

//            Container(
//                             margin:
//                             const EdgeInsets.only(left: 5.0, right: 5.0),
//                             height: 50,
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               border:
//                               Border.all(color: kIndigoDark, width: 1.0),
//                               borderRadius: BorderRadius.circular(5.0),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.only(left: 8.0),
//                               child: SearchField(
//                                 suggestions: _salutationData
//                                     .map((PatientSearchData map) =>
//                                     SearchFieldListItem("${map.text}*$web${map.ProfilePic}",
//                                         item: map))
//                                     .toList(),
//                                 controller: _searchController,
//                                 suggestionState: Suggestion.hidden,
//                                 hint: 'Search by Patient Name',
//                                 itemHeight: 50,
//                                 searchInputDecoration: InputDecoration(
//                                     border: InputBorder.none,
//                                     suffixIcon: IconButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           _searchController.clear();
//                                         });
//                                       },
//                                       icon: const Icon(Icons.close),
//                                       iconSize: 20,)
//                                 ),
//                                 inputType: TextInputType.text,
//                                 onChange: (val) {
//                                   setState(() {
//                                     getPatientSearchByAddInQData(val);
//                                   });
//                                 },
//                                 onSuggestionTap:
//                                     (SearchFieldListItem<PatientSearchData> x) {
//                                   setState(() {
//                                     x.item!.ProfilePic;
//                                     addIntoQFromDifferentPlaceData(
//                                         x.item!.id, hospitalID!, userID!, 4);
//                                     Suggestion.hidden;
//                                     _searchController.clear();
//                                     FocusManager.instance.primaryFocus
//                                         ?.unfocus();
//                                   });
//                                 },
//                               ),
//                             ),
//                           ),