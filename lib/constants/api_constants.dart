class ApiConstants {
  static const String googleMapKey = 'AIzaSyBxkHFOc9EAnKRFOzcZ6naJzPtTME8tRLo';

  //Localhost
  //static const baseUrl = "http://10.0.2.2:5001";

  //Live Server
  static const baseUrl = "http://18.132.236.130:5000";

  //AI Service URL
  static const aiBaseUrl = "http://18.132.236.130:8000";

  static const register = "$baseUrl/api/auth/register";
  static const sendOTP = "$baseUrl/api/auth/send-otp";
  static const verifyOTP = "$baseUrl/api/auth/verify-otp";
  static const verifyResetOTP = "$baseUrl/api/auth/verify-reset-otp";
  static const setProfile = "$baseUrl/api/profile/setup";

  static const forgotPassword = "$baseUrl/api/auth/forgot-password";
  static const resetPassword = "$baseUrl/api/auth/reset-password";

  static const googleSignIn = "$baseUrl/api/auth/firebase/google";
  static const appleSignIn = "$baseUrl/api/auth/firebase/apple";

  static const userLogin = "$baseUrl/api/auth/login";
  static const userLogout = "$baseUrl/api/auth/logout";
  static const checkRegisteredEmail = "$baseUrl/api/auth/check-email";
  static const deleteUser = "$baseUrl/api/auth/user/delete";

  //Check In
  static const checkIn = "$baseUrl/api/checkin";

  //Emotion APIs
  static const classifyEmotion = "$aiBaseUrl/api/v1/classify_emotion";

  //Chat APIs
  static const chat = "$aiBaseUrl/api/v1/stateful_chat";
  static const finishConversation = "$aiBaseUrl/api/v1/finish_conversation";

  static const profileCheckIn = "$baseUrl/api/profile";

  static const audioSession = "$aiBaseUrl/api/v1/tts_realign_audio";

  static const voice = "$baseUrl/api/profile/voice";

  //Summary
  static const feedback = "$baseUrl/api/feedback";
  static const insightSummary = "$aiBaseUrl/api/v1/insight_summary/user";

  //Profile APIs
  static const getProfile = "$baseUrl/api/profile";
  static const updateProfile = "$baseUrl/api/profile/update";
  static const updateFeedback = "$baseUrl/api/app-feedback";

  //Dashboard
  static const dashboard = "$baseUrl/api/dashboard";
  static const dashboardCheckIns = "$baseUrl/api/dashboard/checkins";
  static const checkById = "$baseUrl/api/dashboard/checkin";

  // Session APIs
  static const saveSession = "$baseUrl/api/session/save";

  static const sessionLog = "$baseUrl/api/session-log";

  static const getElevenLabKey = "$aiBaseUrl/api/v1/get-elevenlabs-key";
}
