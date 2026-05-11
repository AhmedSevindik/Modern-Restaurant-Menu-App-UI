import 'package:flutter/material.dart';

import 'package:menu_verse/theme/colors.dart';
import 'package:menu_verse/theme/shadows.dart';
import 'package:menu_verse/theme/spacing.dart';
import 'package:menu_verse/theme/text_styles.dart';

class FoodCard extends StatelessWidget {
  final String title;

  final String subtitle;

  final String price;

  final String imageUrl;

  const FoodCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,

      margin: const EdgeInsets.only(
        right: AppSpacing.lg,
      ),

      decoration: BoxDecoration(
        color: AppColors.card,

        borderRadius: BorderRadius.circular(
          AppSpacing.radiusLg,
        ),

        boxShadow: AppShadows.soft,
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          // ===================================================
          // IMAGE
          // ===================================================

          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(
                AppSpacing.radiusLg,
              ),
            ),

            child: Image.asset(
              imageUrl,

              height: 150,
              width: double.infinity,

              fit: BoxFit.cover,
            ),
          ),

          // ===================================================
          // CONTENT
          // ===================================================

          Padding(
            padding: const EdgeInsets.all(
              AppSpacing.md,
            ),

            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,

              children: [
                // =============================================
                // TITLE
                // =============================================

                Text(
                  title,
                  style: AppTextStyles.heading3,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

                const SizedBox(
                  height: AppSpacing.xs,
                ),

                // =============================================
                // SUBTITLE
                // =============================================

                Text(
                  subtitle,
                  style: AppTextStyles.bodySmall,

                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),

                const SizedBox(
                  height: AppSpacing.md,
                ),

                // =============================================
                // PRICE + ADD BUTTON
                // =============================================

                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      price,
                      style:
                      AppTextStyles.priceMedium,
                    ),

                    Container(
                      width: 42,
                      height: 42,

                      decoration: BoxDecoration(
                        color: AppColors.primary,

                        borderRadius:
                        BorderRadius.circular(
                          14,
                        ),
                      ),

                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}