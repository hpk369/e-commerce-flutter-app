import 'package:ec_app/common/widgets/appbar/tabbar.dart';
import 'package:ec_app/common/widgets/brands/brand_card.dart';

import 'package:ec_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ec_app/common/widgets/layouts/grid_layout.dart';
import 'package:ec_app/common/widgets/products/cart/cart_menu_icon.dart';


import 'package:ec_app/features/shop/screens/store/Widgets/category_tab.dart';
import 'package:ec_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appBar/appBar.dart';


import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';


import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(onPressed: () {}),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// -- Search bar
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      const TSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),

                      /// -- Featured Brands
                      TSectionHeading(title: 'Featured Brands', onPressed: () {}),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                      /// -- Brands GRID
                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          // In the Backend Tutorial we will pass the Each Brand & onPress Event also.
                          return const TBrandCard(showBorder: false);
                        }
                      )
                    ],
                  ),
                ),

                /// Tabs -- Tutorial [Section # 3, Video # 8]
                bottom: const TTabBar(
                  tabs:[
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },

          /// -- Body -- Tutorial [Section #3, Video #8]
          body: TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          )
        ),
      ),
    );
  }
}


