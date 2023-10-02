import 'package:flutter/material.dart';

abstract class AppColors {
  static Map<int, Color> neutral = {
    100: const Color(0xffF4F4F5),
    200: const Color(0xffE5E7EB),
    300: const Color(0xffD1D5DB),
    400: const Color(0xff9CA3AF),
    500: const Color(0xff6B7280),
    600: const Color(0xff4B5563),
    700: const Color(0xff374151),
    800: const Color(0xff1F2937),
    900: const Color(0xff111827),
  };
  static Map<int, Color> primary = {
    100: const Color(0xffD6E4FF),
    200: const Color(0xffADC8FF),
    300: const Color(0xff84A9FF),
    400: const Color(0xff6690FF),
    500: const Color(0xff3366FF),
    600: const Color(0xff254EDB),
    700: const Color(0xff1939B7),
    800: const Color(0xff102693),
    900: const Color(0xff091A7A),
  };
  static Map<int, Color> success = {
    100: const Color(0xffECFCD6),
    200: const Color(0xffD4F9AE),
    300: const Color(0xffB2ED82),
    400: const Color(0xff8FDC60),
    500: const Color(0xff60C631),
    600: const Color(0xff45AA23),
    700: const Color(0xff2E8E18),
    800: const Color(0xff1B720F),
    900: const Color(0xff0D5F09),
  };
  static Map<int, Color> information = {
    100: const Color(0xffCEFBFF),
    200: const Color(0xff9DF1FF),
    300: const Color(0xff6DE1FF),
    400: const Color(0xff48CDFF),
    500: const Color(0xff0CAEFF),
    600: const Color(0xff0887DB),
    700: const Color(0xff0665B7),
    800: const Color(0xff034893),
    900: const Color(0xff02337A),
  };
  static Map<int, Color> warning = {
    100: const Color(0xffFFFAD0),
    200: const Color(0xffFFF3A1),
    300: const Color(0xffFFEB72),
    400: const Color(0xffFFE44E),
    500: const Color(0xffFFD714),
    600: const Color(0xffDBB40E),
    700: const Color(0xffB7930A),
    800: const Color(0xff937406),
    900: const Color(0xff7A5D03),
  };
  static Map<int, Color> danger = {
    100: const Color(0xffFFE7D4),
    200: const Color(0xffFFC9AA),
    300: const Color(0xffFFA47F),
    400: const Color(0xffFF8160),
    500: const Color(0xffFF472B),
    600: const Color(0xffDB291F),
    700: const Color(0xffB71519),
    800: const Color(0xff930D1B),
    900: const Color(0xff7A081D),
  };
}
