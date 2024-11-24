import 'package:flutter/material.dart';
import 'package:studybet/dummy_data/big_search_dummy.dart';
import 'package:studybet/widgets/large_card.dart';



class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.primary,
      // // appBar: AppBar(
      // //   backgroundColor: Theme.of(context).primaryColor,
      // //   title: Text(
      // //     'Explore',
      // //     style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
      // //   ),
      // // ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Theme.of(context).colorScheme.primary,
      //   // selectedItemColor: Theme.of(context).colorScheme.onPrimary,
      //   // unselectedItemColor: Theme.of(context).colorScheme.cardColor,
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      //   ],
      // ),
      body: Container(
        color:Theme.of(context).secondaryHeaderColor,
        child: Column(
          children: [SizedBox(height: 10),
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       hintText: 'Search',
            //       hintStyle: TextStyle(color: Colors.white, fontFamily: 'Inter'),
            //       filled: true,
            //       fillColor: Theme.of(context).primaryColor,
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(8),
            //         borderSide: BorderSide.none,
            //       ),
            //       prefixIcon: Icon(Icons.search, color: Colors.white),
            //     ),
            //   ),
            // ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    _buildCategoryChip(context, 'ERA'),
                    _buildCategoryChip(context, 'GAD'),
                    _buildCategoryChip(context, 'FPV'),
                    _buildCategoryChip(context, 'It-Sec'),
                    _buildCategoryChip(context, 'GBS'),
                  ],
                ),
              ),
            ),
            Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: 2, // Replace with your data length
                itemBuilder: (context, index) {
                  return getBigCringe()[index];// Update with actual image path
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryChip(BuildContext context, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Chip(
        label: Text(label, style: TextStyle(color: Colors.white)),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
