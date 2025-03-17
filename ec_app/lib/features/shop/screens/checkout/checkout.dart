import 'package:ec_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ec_app/common/widgets/success_screen/success_screen.dart';
import 'package:ec_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ec_app/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:ec_app/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:ec_app/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:ec_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appBar/appBar.dart';
import '../../../../common/widgets/products/cart/coupon_widget.dart';
import '../../../../navigation_menu.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall,),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Items in Cart
              TCartItems(showAddRemoveButtons: false,),
              SizedBox(height: TSizes.spaceBtwSections,),

              /// -- Coupon TextField
              TCouponCode(),
              SizedBox(height: TSizes.spaceBtwSections,),

              /// -- Billing Section
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: Column(
                  children: [
                    /// Pricing
                    const TBillingAmountSection(),
                    const SizedBox(height: TSizes.spaceBtwItems,),

                    /// Divider
                    const Divider(),
                    const SizedBox(height: TSizes.spaceBtwItems,),

                    /// Payment Methods
                    const TBillingPaymentSection(),
                    const SizedBox(height: TSizes.spaceBtwItems,),

                    /// Address
                    const TBillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: TImages.successfulPaymentIcon,
              title: 'Payment Success',
              subTitle: 'Your Item will be shipped soon!',
              onPressed: () => Get.to(() => const NavigationMenu()),
            ),
          ),
          child: Text('Checkout \$256.0')),
      ),
    );
  }
}


