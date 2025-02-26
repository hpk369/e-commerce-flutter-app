import 'package:ec_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ec_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ec_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../common/widgets/appBar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/device/device_utility.dart';

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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}