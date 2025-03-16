import 'package:ec_app/common/widgets/appBar/appBar.dart';
import 'package:ec_app/common/widgets/icons/t_circular_icon.dart';
import 'package:ec_app/common/widgets/images/t_rounded_image.dart';
import 'package:ec_app/common/widgets/texts/product_title_text.dart';
import 'package:ec_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ec_app/utils/constants/colors.dart';
import 'package:ec_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall,),),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 10,
          separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections,),
          itemBuilder: (_, index) => Column(
            children: [
              TCardItem(),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      /// Extra Space
                      const SizedBox(width: 70,),

                      /// Add Remove Buttons
                      TProductQuantityWithAddRemoveButton(),
                    ],
                  ),

                  /// -- Product Total Price
                  TProductTitleText(title: '256'),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: (){}, child: Text('Checkout \$256.0')),
      ),
    );
  }
}




