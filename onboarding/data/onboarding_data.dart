import '../../../core/constants/app_images.dart';
import 'onboarding_model.dart';

class OnboardingData {
  static List<OnboardingModel> items = [
    OnboardingModel(
      imageUrl: AppImages.onboarding1,
      headline: 'Browse all the category',
      description:
          ' .',
    ),
    OnboardingModel(
      imageUrl: AppImages.onboarding2,
      headline: 'Amazing Discounts & Offers',
      description:
          ' .',
    ),
    OnboardingModel(
      imageUrl: AppImages.onboarding3,
      headline: 'Delivery in 30 Min',
      description:
          '',
    ),
  ];
}
