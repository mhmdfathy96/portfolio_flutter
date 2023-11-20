class EndPoints {
  // static const String baseUrl = "https://7113-197-34-64-195.ngrok-free.app";
  //product on launch
  static const String baseUrl = "https://api.brg.so";
  //dev
  // static const String baseUrl = "http://bridgestaging-001-site1.gtempurl.com";
  static const String apiBaseUrl = "$baseUrl/api/";

  ///events
  static const String createEvent = '${apiBaseUrl}Events/Create';
  static const String updateEvent = '${apiBaseUrl}Events/Update';
  static const String deleteEvent = '${apiBaseUrl}Events/Delete';
  static const String getEventsWithFilter =
      '${apiBaseUrl}Events/GetListWithFilter';
  static const String getEventDetails = '${apiBaseUrl}Events/GetDetails';
  static const String followOrUnfollowEvent =
      '${apiBaseUrl}Events/FollowOrUnfollowEvent';
  static const String updateEventAlarm = '${apiBaseUrl}Events/UpdateEventAlarm';
  static const String getArtistEventsWithFilter =
      '${apiBaseUrl}Events/GetArtistEvents';

  ///groups
  static const String getGroupsWithFilter =
      '${apiBaseUrl}Groups/GetListWithFilter';

  ///artists
  static const String getArtistWithFilter =
      '${apiBaseUrl}Artists/GetListWithFilter';
  static const String followOrUnfollowArtist =
      '${apiBaseUrl}Artists/FollowOrUnfollowArist';

  ///Auth
  static const String register = '${apiBaseUrl}Authentications/Register';
  static const String login = '${apiBaseUrl}Authentications/Login';
  static const String checkClientStatusIsActive =
      '${apiBaseUrl}Authentications/checkclientstatusIsActive';
  static const String forgetPassword =
      '${apiBaseUrl}Authentications/forgetPassword';
  static const String verifyOTP = '${apiBaseUrl}Authentications/verifyOtp';
  static const String resetPassword =
      '${apiBaseUrl}Authentications/ResetPassword';
  static const String logout = '${apiBaseUrl}Authentications/Logout';

  ///Profile
  static const String inActivateAccount = '${apiBaseUrl}Profile/DeleteAccount';
  static const String deleteAccount = '${apiBaseUrl}Profile/ForceDeleteAccount';
  static const String updateProfileImage =
      '${apiBaseUrl}Profile/UpdateProfileImage';
  static const String deleteProfileImage =
      '${apiBaseUrl}Profile/DeleteProfileImage';
  static const String updateProfile = '${apiBaseUrl}Profile/UpdateProfile';
  static const String getProfileData = '${apiBaseUrl}Profile/GetProfileData';
  static const String updatePassword = '${apiBaseUrl}Profile/UpdatePassword';
  static const String updateFCMToken =
      '${apiBaseUrl}Profile/UpdateClientFcmToken';

  ///ClientNotification
  static const String getNotifications =
      '${apiBaseUrl}ClientNotification/GetNotifications';
  static const String getNotificationsCount =
      '${apiBaseUrl}ClientNotification/GetNotificationsCount';
  static const String changeNotificationStatus =
      '${apiBaseUrl}ClientNotification/ChangeNotificationStatus';

  ///GeneralSettings
  static const String getAppPrivacies =
      '${apiBaseUrl}GeneralSettings/GetAppPrivacies';
  static const String getAppVersion =
      '${apiBaseUrl}GeneralSettings/GetAppVersion';

  //? Not API Requests
  ///GoogleAuthentication
  static const String google = '$baseUrl/GoogleAuthentication/google';
  // static const String googleResponse =
  //     '${baseUrl}GoogleAuthentication/GoogleResponse';

  ///FacebookAuthentication
  static const String facebook = '$baseUrl/FacebookAuthentication/facebook';
  // static const String facebookResponse =
  //     '${baseUrl}FacebookAuthentication/FacebookResponse';

  ///KakaoAuthentications
  static const String kakao = '$baseUrl/KakaoAuthentications/kakao';

  ///NaverAuthentication
  static const String naver = '$baseUrl/NaverAuthentication/naver';
}
