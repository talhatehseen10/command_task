// ignore_for_file: constant_identifier_names

part of 'constants.dart';

class AppAssets {
  static const String APP_LOGO_SMALL = 'assets/icons/logo.png';
  static const String APP_LOGO_MEDIUM = 'assets/icons/logo_mid.png';
  static const String APP_LOGO_LARGE = 'assets/icons/logo_big.png';
  static const String APP_LOGO_NAME = 'assets/icons/logo_name.png';

  static const String ACCENT_LINE = 'assets/images/accent_line.png';
  static const String CONFUSED_FACE = 'assets/images/confused_face.png';
  static const String EMPTY_BOX = 'assets/images/empty_box.png';
  static const String FRUSTRATED_FACE = 'assets/images/frustrated_face.png';
  static const String EXCEL_LOGO = 'excel_logo';

  //EMOJI'S
  static const String ENERGISE = 'energise';
  static const String MAINTAIN = 'maintain';
  static const String NEUTRAL = 'neutral';
  static const String PLEASANT = 'pleasant';
  static const String RELAX = 'relax';
  static const String UNPLEASANT = 'unpleasant';
  static const String VERY_PLEASANT = 'very_pleasant';
  static const String VERY_UNPLEASANT = 'very_unpleasant';

  //PLAYER
  static const String BOOKMARK = 'bookmark';
  static const String GO_BACKWARD = 'gobackward';
  static const String GO_FORWARD = 'goforward';
  static const String RADIO_WAVES = 'radiowaves';

  //MAIN NAV BAR ICON
  static const String ANALYTICS = 'analytics';
  static const String HOUSE = 'house';
  static const String PLUS = 'plus';
  static const String HOME = 'home';

  //FLAGS
  static const String BRAZIL_FLAG = 'brazil_flag';
  static const String CANADA_FLAG = 'canada_flag';
  static const String FRANCE_FLAG = 'france_flag';
  static const String GERMANY_FLAG = 'germany_flag';
  static const String IN_FLAG = 'india_flag';
  static const String JAPAN_FLAG = 'japan_flag';
  static const String SA_FLAG = 'sa_flag';
  static const String UK_FLAG = 'uk_flag';
  static const String US_FLAG = 'us_flag';
  static const String AU_FLAG = 'au_flag';
  static const String KR_FLAG = 'kr_flag';
  static const String UAE_FLAG = 'uae_flag';

  static const String WAVEFORM_AND_MIC = 'waveform_and_mic';

  //GIFS
  static const String IDLE = 'idle';
  static const String LISTENING = 'listening';
  static const String REPLYING = 'replying';
  static const String THINKING = 'thinking';
  static const String CREATING_SPACE = 'creating_space';

  //SVG
  static const String FEMALE_VOICE = 'reva';
  static const String MALE_VOICE = 'reeve';

  static String getSVGIcon(String iconName) => 'assets/svg/$iconName.svg';

  static String getPNGIcon(String iconName) => 'assets/png/$iconName.png';

  // static String getPNGIcon(String iconName) => 'assets/png/$iconName.png';

  static String getSVGImage(String imageName) => 'assets/svg/$imageName.svg';

  static String getPNGImage(String imageName) => 'assets/png/$imageName.png';

  static String getJPGImage(String imageName) => 'assets/items/$imageName.jpg';

  static String getGIFs(String imageName) => 'assets/gifs/$imageName.gif';
}
