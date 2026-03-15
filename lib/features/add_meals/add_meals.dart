import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:meals_app/core/routing/app_routes.dart';
import 'package:meals_app/core/styles/app_colors.dart';
import 'package:meals_app/core/styles/app_text_style.dart';
import 'package:meals_app/core/widgets/back_buttom_black_widget.dart';
import 'package:meals_app/core/widgets/primary_button_widget.dart';
import 'package:meals_app/core/widgets/primary_text_field.dart';
import 'package:meals_app/core/widgets/spacing_widgets.dart';
import 'package:meals_app/features/home_screen/data/dp_helper/dp_helper.dart';
import 'package:meals_app/features/home_screen/models/meal_model.dart';

class AddMeals extends StatefulWidget {
  const AddMeals({super.key});

  @override
  State<AddMeals> createState() => _AddMealsState();
}

class _AddMealsState extends State<AddMeals> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController mealNameController = TextEditingController();
  TextEditingController imageUrlController = TextEditingController();
  TextEditingController rateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController descreptionController = TextEditingController();

  DatabaseHelper dpHelper = DatabaseHelper.instance;

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Add Meal", style: AppTextStyle.black16Medium),
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: BackButtomBlackWidget(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: isLoading == true
                ? SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeightSpace(8),
                      Text("Meal name", style: AppTextStyle.black16Medium),
                      HeightSpace(8),
                      PrimaryTextField(
                        controller: mealNameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please add name";
                          } else if (value.length < 3) {
                            return "Please add valide name";
                          }
                          return null;
                        },
                      ),
                      HeightSpace(16),
                      Text("Image URL", style: AppTextStyle.black16Medium),
                      HeightSpace(8),
                      PrimaryTextField(
                        controller: imageUrlController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please add image URL";
                          }
                          return null;
                        },
                      ),
                      HeightSpace(16),
                      Text("Rate", style: AppTextStyle.black16Medium),
                      HeightSpace(8),
                      PrimaryTextField(
                        controller: rateController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please add rate";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                      ),
                      HeightSpace(16),
                      Text("Time", style: AppTextStyle.black16Medium),
                      HeightSpace(8),
                      PrimaryTextField(
                        controller: timeController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please add time";
                          }
                          return null;
                        },
                      ),
                      HeightSpace(16),
                      Text("Descreption", style: AppTextStyle.black16Medium),
                      HeightSpace(8),
                      PrimaryTextField(
                        controller: descreptionController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please add descreption";
                          } else if (value.length < 10) {
                            return "Please write at least 3 words";
                          }
                          return null;
                        },
                        maxLine: 3,
                      ),
                      HeightSpace(70),
                      PrimaryButtonWidget(
                        buttonText: "Add",
                        onPress: () async {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              isLoading = true;
                            });

                            Meal meal = Meal(
                              name: mealNameController.text,
                              imageUrl: imageUrlController.text,
                              descrebtion: descreptionController.text,
                              time: timeController.text,
                              rate: double.parse(rateController.text),
                            );

                            await dpHelper.insertMeal(meal);

                            if (!context.mounted) return;

                            context.pushReplacementNamed(AppRoutes.homeScreen);
                          }
                        },
                      ),
                      HeightSpace(20),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
