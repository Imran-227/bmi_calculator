import 'package:flutter/material.dart';

// Colors
const kBmiInterpretationColor1 = Colors.blue;
const kBmiInterpretationColor2 = Color(0xff41c2d2);
const kBmiInterpretationColor3 = Color(0xff35d674);
const kBmiInterpretationColor4 = Color(0xffa1f33a);
const kBmiInterpretationColor5 = Colors.yellow;
const kBmiInterpretationColor6 = Colors.orange;
const kBmiInterpretationColor7 = Color(0xffff3a3a);
const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF111328);
const kBottomContainerColor = Color(0xFFEB1555);
const kRoundedIconButtonColor = Color(0xF03F3F5F);

// Doubles
const kCardBorderRadius = 10.0;
const kBottomContainerHeight = 70.0;
const kIconSize = 80.0;
const kMinHeight = 110.0;
const kMaxHeight = 220.0;

// Strings
const kBmiInterpretation1 = 'Dénutrition';
const kBmiInterpretation2 = 'Maigreur';
const kBmiInterpretation3 = 'Normal';
const kBmiInterpretation4 = 'Surpoids';
const kBmiInterpretation5 = 'Obésité modérée';
const kBmiInterpretation6 = 'Obesité sévère';
const kBmiInterpretation7 = 'Obesité morbide (massive)';
const kMaleCardLabel = 'Homme';
const kFemaleCardLabel = 'Femme';
const kHeightCardLabel = 'Taille';
const kHeightUnit = 'cm';
const kWeightCardLabel = 'Poids(Kg)'; // Attention à la nomenclature
const kAgeCardLabel = 'Âge';
const kNormalBmiRangeLabel = 'L\'intervalle normal d\'IMC :';
const kAppTitleText = 'Calculateur d\'IMC ';
const kResultPageTitleText = 'Votre résultat';
const kCalculCardLabel = 'calculer';
const kReCalcultCardLabel = 're-calculer';
const kLowBMIInterpretationText =
    'Vous avez une masse corporelle inférieur à la normale. Vous devriez manger plus.';
const kNormalBMIInterpretationText =
    'Vous avez une masse corporelle normale. Félicitation !';
const kHighBMIInterpretationText =
    'Vous avez une masse corporelle supérieur à la normale. Essayez de faire plus d\'exercice.';

// TextStyle
const kBottomContainerText =
    TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold);
const kLabelTextStyle = TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));
const kNumberTextStyle = TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900);
const kResultPageTextStyle =
    TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500);
const kTitleTextStyle = TextStyle(fontSize: 44, fontWeight: FontWeight.w500);

// Other
const kCardMargin = EdgeInsets.all(15.0);
const kIconContentSeparator = SizedBox(height: 15);
