import 'package:ec_app/common/widgets/appBar/appBar.dart';
import 'package:ec_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';
import '../checkout/checkout.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall,),),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),

        /// -- Items in Cart
        child: TCartItems(),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => CheckoutScreen()), child: Text('Checkout \$256.0')),
      ),
    );
  }
}






