import 'package:flutter/material.dart';

/// Theme
import 'package:menu_verse/theme/colors.dart';
import 'package:menu_verse/theme/spacing.dart';
import 'package:menu_verse/theme/text_styles.dart';

/// Widgets
import 'package:menu_verse/widgets/cards/food_card.dart';
import 'package:menu_verse/widgets/common/custom_app_bar.dart';
import 'package:menu_verse/widgets/inputs/custom_text_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      // =====================================================
      // APP BAR
      // =====================================================

      appBar: CustomAppBar(
        title: '',

        leading: Padding(
          padding: const EdgeInsets.only(
            left: AppSpacing.md,
          ),

          child: Image.asset(
            'assets/images/logo.png',
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: AppSpacing.md,
            ),

            child: CircleAvatar(
              backgroundColor: AppColors.surface,

              child: IconButton(
                onPressed: () {},

                icon: const Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),

      // =====================================================
      // BODY
      // =====================================================

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(
            AppSpacing.screenPadding,
          ),

          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,

            children: [
              // ===============================================
              // HERO TEXT
              // ===============================================

              const Text(
                'Discover\nDelicious Food',
                style: AppTextStyles.displayMedium,
              ),

              const SizedBox(height: AppSpacing.sm),

              const Text(
                'Order your favorite meals in seconds.',
                style: AppTextStyles.bodySmall,
              ),

              const SizedBox(height: AppSpacing.xl),

              // ===============================================
              // SEARCH
              // ===============================================

              const CustomTextField(
                hintText: 'Search meals...',
                prefixIcon: Icons.search,
              ),

              const SizedBox(height: AppSpacing.xl),

              // ===============================================
              // CATEGORY CHIPS
              // ===============================================

              SizedBox(
                height: 50,

                child: ListView(
                  scrollDirection: Axis.horizontal,

                  children: [
                    _buildCategoryChip(
                      title: 'Pizza',
                      isSelected: true,
                    ),

                    _buildCategoryChip(
                      title: 'Burger',
                    ),

                    _buildCategoryChip(
                      title: 'Sushi',
                    ),

                    _buildCategoryChip(
                      title: 'Dessert',
                    ),

                    _buildCategoryChip(
                      title: 'Drinks',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: AppSpacing.xl),

              // ===============================================
              // SECTION HEADER
              // ===============================================

              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,

                children: [
                  const Text(
                    'Popular Meals',
                    style: AppTextStyles.heading2,
                  ),

                  TextButton(
                    onPressed: () {},

                    child: const Text(
                      'See All',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: AppSpacing.lg),

              // ===============================================
              // FOOD LIST
              // ===============================================

              SizedBox(
                height: 320,

                child: ListView(
                  scrollDirection: Axis.horizontal,

                  children: const [
                    FoodCard(
                      title: 'Pepperoni Pizza',

                      subtitle:
                      'Spicy pepperoni with mozzarella cheese',

                      price: '\$12.99',

                      imageUrl:
                      'assets/images/pizza.png',
                    ),

                    FoodCard(
                      title: 'Classic Burger',

                      subtitle:
                      'Double beef burger with cheddar',

                      price: '\$10.50',

                      imageUrl:
                      'assets/images/burger.png',
                    ),

                    FoodCard(
                      title: 'Fresh Sushi',

                      subtitle:
                      'Fresh salmon sushi combo set',

                      price: '\$14.90',

                      imageUrl:
                      'assets/images/sushi.png',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // =========================================================
  // CATEGORY CHIP
  // =========================================================

  Widget _buildCategoryChip({
    required String title,
    bool isSelected = false,
  }) {
    return Container(
      margin: const EdgeInsets.only(
        right: AppSpacing.md,
      ),

      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.sm,
      ),

      decoration: BoxDecoration(
        color: isSelected
            ? AppColors.primary
            : AppColors.surface,

        borderRadius: BorderRadius.circular(
          AppSpacing.radiusFull,
        ),
      ),

      child: Center(
        child: Text(
          title,

          style: AppTextStyles.labelLarge.copyWith(
            color: isSelected
                ? Colors.white
                : AppColors.textPrimary,
          ),
        ),
      ),
    );
  }
}