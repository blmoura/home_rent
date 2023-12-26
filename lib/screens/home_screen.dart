import 'package:flutter/material.dart';
import 'package:home_rent/model/filter_type_house.dart';
import 'package:home_rent/model/house.dart';
import 'package:home_rent/widgets/home/section_best_for_you_widget.dart';
import 'package:home_rent/widgets/home/section_menu_filter_widget.dart';
import 'package:home_rent/widgets/home/section_near_from_you_widget.dart';
import 'package:home_rent/widgets/home/section_search_widget.dart';
import 'package:home_rent/widgets/title_widget.dart';

class HomeScreen extends StatelessWidget {
  final List<House> housesSectionNearFromYou = getHousesNearFromYou();
  final List<House> housesSectionBestForYou = getHousesBestForYou();

  final List<FilterTypeHouse> filterTypeHouses = getFilterTypeHouses();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
              ),
            ),
          )
        ],
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Location',
              style: TextStyle(
                color: Color(0xFF838383),
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 8),
            InkWell(
              child: const Row(
                children: [
                  Text(
                    'Jakarta',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Icon(
                    Icons.expand_more,
                    color: Color(0xFF838383),
                  )
                ],
              ),
              onTap: () {},
            )
          ],
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Section Search
                const SectionSearchWidget(),
                const SizedBox(height: 20),

                // Section menu filters
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: filterTypeHouses.length,
                    itemBuilder: (context, index) {
                      return SectionMenuFilterWidget(
                        filter: filterTypeHouses[index],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 32),

                // Section NEAR FROM YOU
                const TitleWidget(title: 'Near from you'),
                const SizedBox(height: 24),
                // const SectionNearFromYouWidget(),
                SizedBox(
                  height: 275,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SectionNearFromYouWidget(
                        house: housesSectionNearFromYou[index],
                      );
                    },
                    itemCount: housesSectionNearFromYou.length,
                  ),
                ),

                // Section BEST FOR YOU
                const SizedBox(height: 48),
                const TitleWidget(title: 'Best for you'),

                const SizedBox(height: 24),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.22,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: housesSectionBestForYou.length,
                    itemBuilder: (context, index) {
                      return SectionBestForYouWidget(
                        house: housesSectionBestForYou[index],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
