import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/firebase_auth/auth_util.dart';

double cfGetLatFromLatLng(LatLng latLngRef) {
  return latLngRef.latitude;
}

double cfGetLngFromLatLng(LatLng latLngRef) {
  return latLngRef.longitude;
}

LatLng cfConvToLatLng(
  double latRef,
  double lngRef,
) {
  final latitude = latRef;
  final longitude = lngRef;

  return LatLng(latitude, longitude);
}

int cfDateGetYear(DateTime dateRef) {
  return dateRef.year;
}

bool? cfSearchResultsFilter(
  String textSearchFor,
  String textSearchIn,
) {
  return textSearchIn.toLowerCase().contains(textSearchFor.toLowerCase());
}

String? cfGetFileNameFromFileUrlUploaded(
  String textOriginal,
  String? textToRemove,
) {
  if (textToRemove != null) {
    if (textOriginal.startsWith(textToRemove)) {
      return textOriginal.substring(textToRemove.length);
    } else {
      return textOriginal;
    }
  } else {
    return textOriginal;
  }
}

DateTime cfConvUnixToDate(int datetimeUnixRef) {
  // converter datetimeUnixRef datetime unix em data
  return DateTime.fromMillisecondsSinceEpoch(datetimeUnixRef * 1000).toLocal();
}

DateTime cfConvDateStringToDatetime(String dateRef) {
  //dateRef pode ser nulo pois podem existir mais de um campo tipo data no mesmo registro vazios
  //Exemplo: atualização de uma lista

  // Converta a string formatada para DateTime
  DateTime dateDateTime = DateTime.parse(dateRef).toUtc();

  return dateDateTime;
}

String? cfConvStringToNumber(
  String? stringNumber,
  String locale,
  String symbol,
) {
  try {
    stringNumber = stringNumber?.replaceAll(',', '.');
    if (stringNumber != null) {
      var number = double.parse(stringNumber);

      return NumberFormat.compactCurrency(locale: locale, symbol: symbol)
          .format(number);
    }
  } catch (e) {
    print(e);
    return '0';
  }
}

double? cfOrderVisitServiceOrVehicleTotal(
  double amount,
  double priceUnit,
  double discount,
) {
  return amount * priceUnit * ((100 - discount) / 100);
}
