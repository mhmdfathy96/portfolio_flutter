import 'package:project_template/src/core/model/validation_model.dart';

import '../../../translations/locale_keys.g.dart';
import '../../config/locale/app_localizations.dart';

class AppValidation {
  static String? Function(String?) intValidation(String input) => (value) {
        if (value!.trim() == '') {
          return AppLocalizations.translate(LocaleKeys.writeInput,
              args: [input]);
        } else if (!value.contains(RegExp(r'[0-9]')) ||
            value.toLowerCase().contains(RegExp(r'[a-z]'))) {
          return AppLocalizations.translate(LocaleKeys.onlyNumbers);
        } else if (int.tryParse(value) == null) {
          return AppLocalizations.translate(LocaleKeys.realNumber);
        } else if (int.parse(value) < 0) {
          return AppLocalizations.translate(LocaleKeys.realNumber);
        }
        return null;
      };

  static bool intValidate(String? value) {
    if (value!.trim() == '') {
      return false;
    } else if (!value.contains(RegExp(r'[0-9]')) ||
        value.toLowerCase().contains(RegExp(r'[a-z]'))) {
      return false;
    } else if (int.tryParse(value) == null) {
      return false;
    } else if (int.parse(value) < 0) {
      return false;
    }
    return true;
  }

  static String? Function(String?) doubleValidation(
    String input,
  ) =>
      (value) {
        if (value!.trim() == '') {
          return AppLocalizations.translate(LocaleKeys.writeInput,
              args: [input]);
        } else if (!value.contains(RegExp(r'[0-9]')) ||
            value.toLowerCase().contains(RegExp(r'[a-z]'))) {
          return AppLocalizations.translate(LocaleKeys.onlyNumbers);
        } else if (double.parse(value) < 0) {
          return AppLocalizations.translate(LocaleKeys.realNumber);
        }
        return null;
      };

  static bool doubleValidate(
    String? value,
  ) {
    if (value!.trim() == '') {
      return false;
    } else if (!value.contains(RegExp(r'[0-9]')) ||
        value.toLowerCase().contains(RegExp(r'[a-z]'))) {
      return false;
    } else if (double.parse(value) < 0) {
      return false;
    }
    return true;
  }

  static String? Function(String?) stringValidation(String input) => (value) {
        if (value!.trim() == '') {
          return AppLocalizations.translate(LocaleKeys.writeInput,
              args: [input]);
        }
        return null;
      };

  static String? Function(String?) notEmptyValidation(String input) => (value) {
        if (value!.trim() == '') {
          return AppLocalizations.translate(LocaleKeys.writeInput,
              args: [input]);
        }
        return null;
      };

  static String? Function(String?) has4CharactersValidation() => (value) {
        if (value!.trim() == '') {
          return "";
        } else if (value.trim().length < 4) {
          return "";
        }
        return null;
      };

  static String? Function(String?) noValidation() => (value) {
        return null;
      };

  static String? Function(String?) emailValidation() => (value) {
        if (value!.trim() == '') {
          return AppLocalizations.translate(LocaleKeys.writeInput,
              args: [LocaleKeys.email]);
        } else if (!value.contains("@") ||
            !value.toLowerCase().contains(".")) {
          return AppLocalizations.translate(LocaleKeys.writeInput,
              args: [LocaleKeys.validEmail]);
        }
        return null;
      };

  static String? Function(String?) passwordValidation() => (value) {
        if (value!.trim() == '') {
          return AppLocalizations.translate(LocaleKeys.writeInput,
              args: [LocaleKeys.password]);
        } else if (value.length < 8) {
          return AppLocalizations.translate(LocaleKeys.writeInput,
              args: [LocaleKeys.validPassword]);
        }
        return null;
      };

  static String? Function(String?) containsCapital() => (value) {
        RegExp regExp = RegExp(r'[A-Z]');
        if (value!.trim() == '') {
          return "";
        } else if (!regExp.hasMatch(value)) {
          return "";
        }
        return null;
      };
  static String? Function(String?) containsNumber() => (value) {
        RegExp regExp = RegExp(r'[0-9]');
        if (value!.trim() == '') {
          return "";
        } else if (!regExp.hasMatch(value)) {
          return "";
        }
        return null;
      };

  static String? Function(String?) containsOnlyNumbers() => (value) {
        RegExp regExp = RegExp(r'^[0-9]+$');
        if (value!.trim() == '') {
          return "";
        } else if (!regExp.hasMatch(value)) {
          return "";
        }
        return null;
      };
}

class AppValidationModels {
  static List<ValidationModel> emailValidations() => [
        ValidationModel(
            text:LocaleKeys.emailValidation,
            validationFunction: AppValidation.emailValidation())
      ];

  static List<ValidationModel> passwordValidations() => [
        ValidationModel(
            text:LocaleKeys.passwordEightOrAbove ,
            validationFunction: AppValidation.passwordValidation()),
        ValidationModel(
            text:LocaleKeys.passwordWithOneCapital,
            validationFunction: AppValidation.containsCapital()),
        ValidationModel(
            text:LocaleKeys.passwordWithOneNumber ,
            validationFunction: AppValidation.containsNumber()),
      ];

  static List<ValidationModel> userNameValidations() => [
        ValidationModel(
            text:LocaleKeys.userNameValidation,
            validationFunction: AppValidation.has4CharactersValidation()),
      ];
  static List<ValidationModel> phoneNumberValidations() => [
        ValidationModel(
            text:LocaleKeys.onlyNumbers,
            validationFunction: AppValidation.containsOnlyNumbers()),
      ];
  static List<ValidationModel> noValidations() => [];
}
