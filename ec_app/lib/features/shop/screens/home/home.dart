import 'package:ec_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ec_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ec_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Header -- Tutorial [Section #3, Video #2]
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- Appbar -- Tutorial [Section #3, Video #3]
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// -- Searchbar -- Tutorial [Section #3, Video #4]
                  const TSearchContainer(text: 'Search the Store'),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// -- Categories -- Tutorial [Section #3, Video #5]
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// -- Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        /// -- Categories
                        const THomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            /// Body -- Tutorial [Section #3, Video #5]
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Promo Slider -- Tutorial [Section #3, Video #6]
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Heading
                  TSectionHeading(title: 'Popular Products', onPressed: (){}),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// -- Popular Products -- Tutorial [Section #3, Video #7]
                  TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


