import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    //final bool dark;
    //required this.dark,
  });

  //final bool dark;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// Logo, Title and Sub-Title
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              height: 150,
              image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo),
            ),
            Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSizes.sm),
            Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),

        /// Form


        /// Divider
        // FormDivider(),
        // const SizedBox(height: TSizes.spaceBtwSections),
        //
        /// Footer
        // FormFooter()
      ],
    );
  }
}