import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_mr.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('hi'),
    Locale('mr')
  ];

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get language;

  /// No description provided for @notificationString.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notificationString;

  /// No description provided for @helpString.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get helpString;

  /// No description provided for @labelLan.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get labelLan;

  /// No description provided for @tranLan.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get tranLan;

  /// No description provided for @helpShowcase.
  ///
  /// In en, this message translates to:
  /// **'Help is where you can contact the trade desk team for any queries.'**
  String get helpShowcase;

  /// No description provided for @notificationShowcase.
  ///
  /// In en, this message translates to:
  /// **'Notification is where you will find all functionality of the application'**
  String get notificationShowcase;

  /// No description provided for @lanShowcase.
  ///
  /// In en, this message translates to:
  /// **'Where you can change your language according to your comfort.'**
  String get lanShowcase;

  /// No description provided for @drawerShowcase.
  ///
  /// In en, this message translates to:
  /// **'Where you can find all functionality of our application.'**
  String get drawerShowcase;

  /// No description provided for @lanAppBarString.
  ///
  /// In en, this message translates to:
  /// **'Select Languages'**
  String get lanAppBarString;

  /// No description provided for @loginMobileHintStr.
  ///
  /// In en, this message translates to:
  /// **'Enter your phone number'**
  String get loginMobileHintStr;

  /// No description provided for @loginStr.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginStr;

  /// No description provided for @nextBtnString.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get nextBtnString;

  /// No description provided for @alreadyHavAccountStr.
  ///
  /// In en, this message translates to:
  /// **'Already Have an Account?'**
  String get alreadyHavAccountStr;

  /// No description provided for @accountNotHaveStr.
  ///
  /// In en, this message translates to:
  /// **'Don\'t Have Account? '**
  String get accountNotHaveStr;

  /// No description provided for @registerLabel.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get registerLabel;

  /// No description provided for @enterMPINStr.
  ///
  /// In en, this message translates to:
  /// **'Enter MPIN'**
  String get enterMPINStr;

  /// No description provided for @forgetPinStr.
  ///
  /// In en, this message translates to:
  /// **'Forget Pin ?'**
  String get forgetPinStr;

  /// No description provided for @marketPlaceString.
  ///
  /// In en, this message translates to:
  /// **'Market Place'**
  String get marketPlaceString;

  /// No description provided for @marketPlaceDescStr.
  ///
  /// In en, this message translates to:
  /// **'A Place where you can find Auction details'**
  String get marketPlaceDescStr;

  /// No description provided for @getStartedStr.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStartedStr;

  /// No description provided for @mandiPriceStr.
  ///
  /// In en, this message translates to:
  /// **'Mandi Price'**
  String get mandiPriceStr;

  /// No description provided for @mandiPriceDescStr.
  ///
  /// In en, this message translates to:
  /// **'A place where you can find Mandi Price details.'**
  String get mandiPriceDescStr;

  /// No description provided for @wareHouseStr.
  ///
  /// In en, this message translates to:
  /// **'Warehouse Name'**
  String get wareHouseStr;

  /// No description provided for @wareHouseCamelStr.
  ///
  /// In en, this message translates to:
  /// **'Warehouse Storage'**
  String get wareHouseCamelStr;

  /// No description provided for @wareHouseDescStr.
  ///
  /// In en, this message translates to:
  /// **'A Place where you can store your commodities.'**
  String get wareHouseDescStr;

  /// No description provided for @contestStr.
  ///
  /// In en, this message translates to:
  /// **'Contest & Rewards'**
  String get contestStr;

  /// No description provided for @contestDescStr.
  ///
  /// In en, this message translates to:
  /// **'Participate & Win Exciting Prizes.'**
  String get contestDescStr;

  /// No description provided for @knowledgeStr.
  ///
  /// In en, this message translates to:
  /// **'Knowledge center'**
  String get knowledgeStr;

  /// No description provided for @knowledgeDescStr.
  ///
  /// In en, this message translates to:
  /// **'A place where you will get informed.'**
  String get knowledgeDescStr;

  /// No description provided for @newsStr.
  ///
  /// In en, this message translates to:
  /// **'News & Updates'**
  String get newsStr;

  /// No description provided for @newsDescStr.
  ///
  /// In en, this message translates to:
  /// **'All current news and current affairs will be available.'**
  String get newsDescStr;

  /// No description provided for @loanStr.
  ///
  /// In en, this message translates to:
  /// **'Loans & Financing'**
  String get loanStr;

  /// No description provided for @loanDescStr.
  ///
  /// In en, this message translates to:
  /// **'Financial aid will be provided.'**
  String get loanDescStr;

  /// No description provided for @keyFuncStr.
  ///
  /// In en, this message translates to:
  /// **'Key Functionality'**
  String get keyFuncStr;

  /// No description provided for @highestBidStr.
  ///
  /// In en, this message translates to:
  /// **'Highest Bid'**
  String get highestBidStr;

  /// No description provided for @lowestBidStr.
  ///
  /// In en, this message translates to:
  /// **'Lowest Bid'**
  String get lowestBidStr;

  /// No description provided for @bidNowStr.
  ///
  /// In en, this message translates to:
  /// **'Bid Now'**
  String get bidNowStr;

  /// No description provided for @varietyStr.
  ///
  /// In en, this message translates to:
  /// **'Variety'**
  String get varietyStr;

  /// No description provided for @wareHouseLabelStr.
  ///
  /// In en, this message translates to:
  /// **'Warehouse'**
  String get wareHouseLabelStr;

  /// No description provided for @reservePriceString.
  ///
  /// In en, this message translates to:
  /// **'Reserve Price'**
  String get reservePriceString;

  /// No description provided for @aggregatorString.
  ///
  /// In en, this message translates to:
  /// **'Aggregator'**
  String get aggregatorString;

  /// No description provided for @currentBidStr.
  ///
  /// In en, this message translates to:
  /// **'Current Bid'**
  String get currentBidStr;

  /// No description provided for @auctionSaleStr.
  ///
  /// In en, this message translates to:
  /// **'Sale'**
  String get auctionSaleStr;

  /// No description provided for @auctionBuyStr.
  ///
  /// In en, this message translates to:
  /// **'Buy'**
  String get auctionBuyStr;

  /// No description provided for @timeLeftStr.
  ///
  /// In en, this message translates to:
  /// **'Time Left'**
  String get timeLeftStr;

  /// No description provided for @stateStr.
  ///
  /// In en, this message translates to:
  /// **'State'**
  String get stateStr;

  /// No description provided for @commodityStr.
  ///
  /// In en, this message translates to:
  /// **'Commodity'**
  String get commodityStr;

  /// No description provided for @filterAuctionStr.
  ///
  /// In en, this message translates to:
  /// **'Filter Auctions'**
  String get filterAuctionStr;

  /// No description provided for @applyFilterStr.
  ///
  /// In en, this message translates to:
  /// **'Apply Filter'**
  String get applyFilterStr;

  /// No description provided for @auctionNotAvlStr.
  ///
  /// In en, this message translates to:
  /// **'No more event availiable'**
  String get auctionNotAvlStr;

  /// No description provided for @liveBidStr.
  ///
  /// In en, this message translates to:
  /// **'Live'**
  String get liveBidStr;

  /// No description provided for @upcommingBidStr.
  ///
  /// In en, this message translates to:
  /// **'Upcoming'**
  String get upcommingBidStr;

  /// No description provided for @closedBidStr.
  ///
  /// In en, this message translates to:
  /// **'Closed'**
  String get closedBidStr;

  /// No description provided for @auctionListStr.
  ///
  /// In en, this message translates to:
  /// **'Auction List'**
  String get auctionListStr;

  /// No description provided for @bidStr.
  ///
  /// In en, this message translates to:
  /// **'Bid'**
  String get bidStr;

  /// No description provided for @bidNotAllowedStr.
  ///
  /// In en, this message translates to:
  /// **'Bid Not Allowed'**
  String get bidNotAllowedStr;

  /// No description provided for @bidAlowedDescStr.
  ///
  /// In en, this message translates to:
  /// **'This Bid is allowed only to the members of following associates.'**
  String get bidAlowedDescStr;

  /// No description provided for @serialStr.
  ///
  /// In en, this message translates to:
  /// **'Sr No.'**
  String get serialStr;

  /// No description provided for @associateNameStr.
  ///
  /// In en, this message translates to:
  /// **'Associate\'s Name'**
  String get associateNameStr;

  /// No description provided for @okStr.
  ///
  /// In en, this message translates to:
  /// **'Okay'**
  String get okStr;

  /// No description provided for @verifyStr.
  ///
  /// In en, this message translates to:
  /// **'Verifying'**
  String get verifyStr;

  /// No description provided for @homeStr.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get homeStr;

  /// No description provided for @homeNavDescStr.
  ///
  /// In en, this message translates to:
  /// **'\'Home\' is where you will find all functionality of the application.'**
  String get homeNavDescStr;

  /// No description provided for @usersStr.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get usersStr;

  /// No description provided for @marketPlaceNavStr.
  ///
  /// In en, this message translates to:
  /// **'\'Market Place\' is where we can find auction listings and user can bid over there.'**
  String get marketPlaceNavStr;

  /// No description provided for @addAuctionStr.
  ///
  /// In en, this message translates to:
  /// **'Add Auction'**
  String get addAuctionStr;

  /// No description provided for @addAuctionNavStr.
  ///
  /// In en, this message translates to:
  /// **'\'Add Auction\' is where we can add auction.'**
  String get addAuctionNavStr;

  /// No description provided for @mandiPriceNavDescStr.
  ///
  /// In en, this message translates to:
  /// **'\'Mandi Price\' is where we can find price of various commodities of different location.'**
  String get mandiPriceNavDescStr;

  /// No description provided for @profileNavStr.
  ///
  /// In en, this message translates to:
  /// **'\'Profile\' is where a user can view or edit his profile.'**
  String get profileNavStr;

  /// No description provided for @myAuctionStr.
  ///
  /// In en, this message translates to:
  /// **'My Auctions'**
  String get myAuctionStr;

  /// No description provided for @myBiddingStr.
  ///
  /// In en, this message translates to:
  /// **'My Bidding'**
  String get myBiddingStr;

  /// No description provided for @contactUsStr.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get contactUsStr;

  /// No description provided for @aboutUsStr.
  ///
  /// In en, this message translates to:
  /// **'About Us'**
  String get aboutUsStr;

  /// No description provided for @ourVisionStr.
  ///
  /// In en, this message translates to:
  /// **'Our Vision'**
  String get ourVisionStr;

  /// No description provided for @logOutStr.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get logOutStr;

  /// No description provided for @aboutUsBan1Str.
  ///
  /// In en, this message translates to:
  /// **'Empowering farmers by connecting to a broader market with transparent price discovery.'**
  String get aboutUsBan1Str;

  /// No description provided for @aboutUsBan2Str.
  ///
  /// In en, this message translates to:
  /// **'Making a social impact in the agri value chain by partnering with our annadaatas.'**
  String get aboutUsBan2Str;

  /// No description provided for @aboutUsBan3Str.
  ///
  /// In en, this message translates to:
  /// **'To touch upon the lives of farmers and people involved in the agri industry.'**
  String get aboutUsBan3Str;

  /// No description provided for @manojNameStr.
  ///
  /// In en, this message translates to:
  /// **'Manoj Suvarna'**
  String get manojNameStr;

  /// No description provided for @coFounderStr.
  ///
  /// In en, this message translates to:
  /// **'Co-Founder'**
  String get coFounderStr;

  /// No description provided for @ashutoshNameStr.
  ///
  /// In en, this message translates to:
  /// **'Ashutosh Mishra'**
  String get ashutoshNameStr;

  /// No description provided for @vivekOberoiStr.
  ///
  /// In en, this message translates to:
  /// **'Vivek Oberoi'**
  String get vivekOberoiStr;

  /// No description provided for @chetanNameStr.
  ///
  /// In en, this message translates to:
  /// **'Chetan Suvarna'**
  String get chetanNameStr;

  /// No description provided for @registrationFormStr.
  ///
  /// In en, this message translates to:
  /// **'Registration Form'**
  String get registrationFormStr;

  /// No description provided for @firstNameStr.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstNameStr;

  /// No description provided for @lastNameStr.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get lastNameStr;

  /// No description provided for @userTypeQStr.
  ///
  /// In en, this message translates to:
  /// **'What type of user are you?'**
  String get userTypeQStr;

  /// No description provided for @introducerCodeStr.
  ///
  /// In en, this message translates to:
  /// **'Introducer Code'**
  String get introducerCodeStr;

  /// No description provided for @cityTownVillageStr.
  ///
  /// In en, this message translates to:
  /// **'City/Town/Village'**
  String get cityTownVillageStr;

  /// No description provided for @selectStateStr.
  ///
  /// In en, this message translates to:
  /// **'Select State'**
  String get selectStateStr;

  /// No description provided for @setMpinStr.
  ///
  /// In en, this message translates to:
  /// **'Set MPIN'**
  String get setMpinStr;

  /// No description provided for @confMpinStr.
  ///
  /// In en, this message translates to:
  /// **'Confirm MPIN'**
  String get confMpinStr;

  /// No description provided for @comRegBtnStr.
  ///
  /// In en, this message translates to:
  /// **'Complete Your Registration'**
  String get comRegBtnStr;

  /// No description provided for @regNowSr.
  ///
  /// In en, this message translates to:
  /// **'Register Now'**
  String get regNowSr;

  /// No description provided for @farmerStr.
  ///
  /// In en, this message translates to:
  /// **'Farmer'**
  String get farmerStr;

  /// No description provided for @indivdualTrderStr.
  ///
  /// In en, this message translates to:
  /// **'Individual Trader'**
  String get indivdualTrderStr;

  /// No description provided for @companyStr.
  ///
  /// In en, this message translates to:
  /// **'Company'**
  String get companyStr;

  /// No description provided for @form2Str.
  ///
  /// In en, this message translates to:
  /// **'FORM 2'**
  String get form2Str;

  /// No description provided for @emailStr.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get emailStr;

  /// No description provided for @panCardStr.
  ///
  /// In en, this message translates to:
  /// **'Pan Card No.'**
  String get panCardStr;

  /// No description provided for @aadharCardStr.
  ///
  /// In en, this message translates to:
  /// **'Aadhar Card No.'**
  String get aadharCardStr;

  /// No description provided for @lanNumberStr.
  ///
  /// In en, this message translates to:
  /// **'Land Number'**
  String get lanNumberStr;

  /// No description provided for @companyNameStr.
  ///
  /// In en, this message translates to:
  /// **'Company Name'**
  String get companyNameStr;

  /// No description provided for @gstStr.
  ///
  /// In en, this message translates to:
  /// **'GST No.'**
  String get gstStr;

  /// No description provided for @addressStr.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get addressStr;

  /// No description provided for @districtStr.
  ///
  /// In en, this message translates to:
  /// **'District'**
  String get districtStr;

  /// No description provided for @talukaStr.
  ///
  /// In en, this message translates to:
  /// **'Taluka'**
  String get talukaStr;

  /// No description provided for @areaPincodeStr.
  ///
  /// In en, this message translates to:
  /// **'Area Pincode'**
  String get areaPincodeStr;

  /// No description provided for @bankNameStr.
  ///
  /// In en, this message translates to:
  /// **'Bank Name'**
  String get bankNameStr;

  /// No description provided for @bankBranchStr.
  ///
  /// In en, this message translates to:
  /// **'Bank Branch'**
  String get bankBranchStr;

  /// No description provided for @ifscStr.
  ///
  /// In en, this message translates to:
  /// **'IFSC Code'**
  String get ifscStr;

  /// No description provided for @bankAccNoStr.
  ///
  /// In en, this message translates to:
  /// **'Bank Account No.'**
  String get bankAccNoStr;

  /// No description provided for @enterStr.
  ///
  /// In en, this message translates to:
  /// **'Enter {fieldName}'**
  String enterStr(String fieldName);

  /// No description provided for @enteValidStr.
  ///
  /// In en, this message translates to:
  /// **'Enter Valid {fieldName}'**
  String enteValidStr(String fieldName);

  /// No description provided for @addressValidationStr.
  ///
  /// In en, this message translates to:
  /// **'Enter Address at least 10 characters long'**
  String get addressValidationStr;

  /// No description provided for @uploadDocumentsStr.
  ///
  /// In en, this message translates to:
  /// **'Upload Documents'**
  String get uploadDocumentsStr;

  /// No description provided for @tapToResetStr.
  ///
  /// In en, this message translates to:
  /// **'Tap to Reset'**
  String get tapToResetStr;

  /// No description provided for @selectChequeCopy.
  ///
  /// In en, this message translates to:
  /// **'Tap to Select Cheque Copy'**
  String get selectChequeCopy;

  /// No description provided for @selectAadharImgStr.
  ///
  /// In en, this message translates to:
  /// **'Tap to Select Aadhar Image'**
  String get selectAadharImgStr;

  /// No description provided for @selectPanImgStr.
  ///
  /// In en, this message translates to:
  /// **'Tap to Select Pan Image'**
  String get selectPanImgStr;

  /// No description provided for @mayBeLaterStr.
  ///
  /// In en, this message translates to:
  /// **'May Be Later'**
  String get mayBeLaterStr;

  /// No description provided for @selectCompanyDocStr.
  ///
  /// In en, this message translates to:
  /// **'Tap to Select Company Document'**
  String get selectCompanyDocStr;

  /// No description provided for @selectLandDocStr.
  ///
  /// In en, this message translates to:
  /// **'Tap to Select Land Documents'**
  String get selectLandDocStr;

  /// No description provided for @needLessSize.
  ///
  /// In en, this message translates to:
  /// **'Need size less then 5MB'**
  String get needLessSize;

  /// No description provided for @uploadingImagesStr.
  ///
  /// In en, this message translates to:
  /// **'Uploading Image'**
  String get uploadingImagesStr;

  /// No description provided for @uploadAllDocumentsStr.
  ///
  /// In en, this message translates to:
  /// **'Uploading Documents Please Wait'**
  String get uploadAllDocumentsStr;

  /// No description provided for @cantGoBackStr.
  ///
  /// In en, this message translates to:
  /// **'Can\'t go back'**
  String get cantGoBackStr;

  /// No description provided for @somethingWentWrongStr.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get somethingWentWrongStr;

  /// No description provided for @preferencesStr.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get preferencesStr;

  /// No description provided for @submitPrefStr.
  ///
  /// In en, this message translates to:
  /// **'Submitting Preferences'**
  String get submitPrefStr;

  /// No description provided for @skipStr.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skipStr;

  /// No description provided for @submitStr.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submitStr;

  /// No description provided for @commodityNotAvalStr.
  ///
  /// In en, this message translates to:
  /// **'Commodities not availiable'**
  String get commodityNotAvalStr;

  /// No description provided for @prefrenceSubmittedStr.
  ///
  /// In en, this message translates to:
  /// **'Preferences Submitted'**
  String get prefrenceSubmittedStr;

  /// No description provided for @getDataBtnStr.
  ///
  /// In en, this message translates to:
  /// **'Get Data'**
  String get getDataBtnStr;

  /// No description provided for @locationStr.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get locationStr;

  /// No description provided for @modelStr.
  ///
  /// In en, this message translates to:
  /// **'Model Price'**
  String get modelStr;

  /// No description provided for @minMaxStr.
  ///
  /// In en, this message translates to:
  /// **'Min/Max'**
  String get minMaxStr;

  /// No description provided for @noMandiAval.
  ///
  /// In en, this message translates to:
  /// **'No Mandi Availiable'**
  String get noMandiAval;

  /// No description provided for @tryChangingStr.
  ///
  /// In en, this message translates to:
  /// **'Try changing'**
  String get tryChangingStr;

  /// No description provided for @orStr.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get orStr;

  /// No description provided for @cliskOnGetDataStr.
  ///
  /// In en, this message translates to:
  /// **'and click on \'Get Data\' button.'**
  String get cliskOnGetDataStr;

  /// No description provided for @bidPageStr.
  ///
  /// In en, this message translates to:
  /// **'Bid Page'**
  String get bidPageStr;

  /// No description provided for @auctionTypeLabelStr.
  ///
  /// In en, this message translates to:
  /// **'Auction Type'**
  String get auctionTypeLabelStr;

  /// No description provided for @tickSizeStr.
  ///
  /// In en, this message translates to:
  /// **'Tick Size'**
  String get tickSizeStr;

  /// No description provided for @totalQuantityStr.
  ///
  /// In en, this message translates to:
  /// **'Total Quantity'**
  String get totalQuantityStr;

  /// No description provided for @startPriceStr.
  ///
  /// In en, this message translates to:
  /// **'Start Price'**
  String get startPriceStr;

  /// No description provided for @bidEndAtStr.
  ///
  /// In en, this message translates to:
  /// **'Bidding Ending At'**
  String get bidEndAtStr;

  /// No description provided for @yourLastBidStr.
  ///
  /// In en, this message translates to:
  /// **'Your Last Bid'**
  String get yourLastBidStr;

  /// No description provided for @remainingQuanStr.
  ///
  /// In en, this message translates to:
  /// **'Remaining Quantity'**
  String get remainingQuanStr;

  /// No description provided for @yourLastQuanStr.
  ///
  /// In en, this message translates to:
  /// **'Your Last Quantity'**
  String get yourLastQuanStr;

  /// No description provided for @bidAmountStr.
  ///
  /// In en, this message translates to:
  /// **'Bid Amount'**
  String get bidAmountStr;

  /// No description provided for @enterBidAmountFromStr.
  ///
  /// In en, this message translates to:
  /// **'Enter Bid Amount from: '**
  String get enterBidAmountFromStr;

  /// No description provided for @enterQuantityFromStr.
  ///
  /// In en, this message translates to:
  /// **'Enter Quantity from: '**
  String get enterQuantityFromStr;

  /// No description provided for @eventClosedStr.
  ///
  /// In en, this message translates to:
  /// **'Event Closed'**
  String get eventClosedStr;

  /// No description provided for @highestBidderMsgStr.
  ///
  /// In en, this message translates to:
  /// **'You were the highest bidder.'**
  String get highestBidderMsgStr;

  /// No description provided for @betterLuckStr.
  ///
  /// In en, this message translates to:
  /// **'Better luck next time...'**
  String get betterLuckStr;

  /// No description provided for @quantityMinOrIncQuanStr.
  ///
  /// In en, this message translates to:
  /// **'Quantity should be minimum or icremental quantity.'**
  String get quantityMinOrIncQuanStr;

  /// No description provided for @quanNotMTQuanStr.
  ///
  /// In en, this message translates to:
  /// **'Quantity should not be more than Total Quantity.'**
  String get quanNotMTQuanStr;

  /// No description provided for @quanNotMTRQuanStr.
  ///
  /// In en, this message translates to:
  /// **'Quantity should not be more than Remaining Quantity.'**
  String get quanNotMTRQuanStr;

  /// No description provided for @addGreaterQuanStr.
  ///
  /// In en, this message translates to:
  /// **'Add Quantity greater or equal to: '**
  String get addGreaterQuanStr;

  /// No description provided for @bidHighOrIncBidStr.
  ///
  /// In en, this message translates to:
  /// **'Bid should be highest bid or increment bid.'**
  String get bidHighOrIncBidStr;

  /// No description provided for @addGreaterBidStr.
  ///
  /// In en, this message translates to:
  /// **'Add amount greater or equal to: '**
  String get addGreaterBidStr;

  /// No description provided for @bidLowOrDcrBidStr.
  ///
  /// In en, this message translates to:
  /// **'Bid should be lowest bid or decremental bid.'**
  String get bidLowOrDcrBidStr;

  /// No description provided for @addLessBidStr.
  ///
  /// In en, this message translates to:
  /// **'Add Amount less or equal to: '**
  String get addLessBidStr;

  /// No description provided for @invalBidAmtStr.
  ///
  /// In en, this message translates to:
  /// **'Invalid Bid Amount.'**
  String get invalBidAmtStr;

  /// No description provided for @quantityStr.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get quantityStr;

  /// No description provided for @biddingMsgStr.
  ///
  /// In en, this message translates to:
  /// **'Bidding...'**
  String get biddingMsgStr;

  /// No description provided for @sessionExpStr.
  ///
  /// In en, this message translates to:
  /// **'Session Expired.'**
  String get sessionExpStr;

  /// No description provided for @commodityTypeStr.
  ///
  /// In en, this message translates to:
  /// **'Commodity Type'**
  String get commodityTypeStr;

  /// No description provided for @selectStr.
  ///
  /// In en, this message translates to:
  /// **'Select {fieldName}'**
  String selectStr(String fieldName);

  /// No description provided for @gradeStr.
  ///
  /// In en, this message translates to:
  /// **'Grade'**
  String get gradeStr;

  /// No description provided for @unitStr.
  ///
  /// In en, this message translates to:
  /// **'Unit'**
  String get unitStr;

  /// No description provided for @priceStr.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get priceStr;

  /// No description provided for @videoUrlStr.
  ///
  /// In en, this message translates to:
  /// **'Video URL'**
  String get videoUrlStr;

  /// No description provided for @qualityStr.
  ///
  /// In en, this message translates to:
  /// **'Quality'**
  String get qualityStr;

  /// No description provided for @avgQualityStr.
  ///
  /// In en, this message translates to:
  /// **'Average Quality'**
  String get avgQualityStr;

  /// No description provided for @kgUnitStr.
  ///
  /// In en, this message translates to:
  /// **'KG'**
  String get kgUnitStr;

  /// No description provided for @qtlUnitStr.
  ///
  /// In en, this message translates to:
  /// **'Qtl'**
  String get qtlUnitStr;

  /// No description provided for @metricUnitStr.
  ///
  /// In en, this message translates to:
  /// **'MT'**
  String get metricUnitStr;

  /// No description provided for @gramUnitStr.
  ///
  /// In en, this message translates to:
  /// **'Gram'**
  String get gramUnitStr;

  /// No description provided for @candyUnitStr.
  ///
  /// In en, this message translates to:
  /// **'Candy'**
  String get candyUnitStr;

  /// No description provided for @balesUnitStr.
  ///
  /// In en, this message translates to:
  /// **'Barel'**
  String get balesUnitStr;

  /// No description provided for @litresUnitStr.
  ///
  /// In en, this message translates to:
  /// **'Litres'**
  String get litresUnitStr;

  /// No description provided for @boxedUnitStr.
  ///
  /// In en, this message translates to:
  /// **'Boxes'**
  String get boxedUnitStr;

  /// No description provided for @picesUnitStr.
  ///
  /// In en, this message translates to:
  /// **'Pieces'**
  String get picesUnitStr;

  /// No description provided for @dznUnitStr.
  ///
  /// In en, this message translates to:
  /// **'DZN'**
  String get dznUnitStr;

  /// No description provided for @imageUploadFailedStr.
  ///
  /// In en, this message translates to:
  /// **'Image Upload failed.'**
  String get imageUploadFailedStr;

  /// No description provided for @uploadImgStr.
  ///
  /// In en, this message translates to:
  /// **'Upload Image'**
  String get uploadImgStr;

  /// No description provided for @chooseOptionStr.
  ///
  /// In en, this message translates to:
  /// **'Choose an Option'**
  String get chooseOptionStr;

  /// No description provided for @cameraStr.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get cameraStr;

  /// No description provided for @galleryStr.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get galleryStr;

  /// No description provided for @removeImgStr.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get removeImgStr;

  /// No description provided for @storageStr.
  ///
  /// In en, this message translates to:
  /// **'Storage'**
  String get storageStr;

  /// No description provided for @permissionStr.
  ///
  /// In en, this message translates to:
  /// **'Permission'**
  String get permissionStr;

  /// No description provided for @addSpecsStr.
  ///
  /// In en, this message translates to:
  /// **'Add Specs'**
  String get addSpecsStr;

  /// No description provided for @specNotAvalStr.
  ///
  /// In en, this message translates to:
  /// **'Specs is not available on this commodity.'**
  String get specNotAvalStr;

  /// No description provided for @pressAgToExStr.
  ///
  /// In en, this message translates to:
  /// **'Press again to exit {pageName}.'**
  String pressAgToExStr(String pageName);

  /// No description provided for @submitAuctionStr.
  ///
  /// In en, this message translates to:
  /// **'Submitting Auction'**
  String get submitAuctionStr;

  /// No description provided for @viewStr.
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get viewStr;

  /// No description provided for @dateStr.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get dateStr;

  /// No description provided for @termLenSmallMsg.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions length should be small.'**
  String get termLenSmallMsg;

  /// No description provided for @addBidPageStr.
  ///
  /// In en, this message translates to:
  /// **'Add Bid'**
  String get addBidPageStr;

  /// No description provided for @qualityTypeStr.
  ///
  /// In en, this message translates to:
  /// **'Quality Type'**
  String get qualityTypeStr;

  /// No description provided for @currencyStr.
  ///
  /// In en, this message translates to:
  /// **'Currency'**
  String get currencyStr;

  /// No description provided for @minQtyStr.
  ///
  /// In en, this message translates to:
  /// **'Minimum Quantity'**
  String get minQtyStr;

  /// No description provided for @minIncQtyStr.
  ///
  /// In en, this message translates to:
  /// **'Minimum Incremental Quantity'**
  String get minIncQtyStr;

  /// No description provided for @earnMonDepoStr.
  ///
  /// In en, this message translates to:
  /// **'Earnest Money Deposit (EMD)'**
  String get earnMonDepoStr;

  /// No description provided for @cityStr.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get cityStr;

  /// No description provided for @wareHouseNameStr.
  ///
  /// In en, this message translates to:
  /// **'Warehouse Name'**
  String get wareHouseNameStr;

  /// No description provided for @wareHouseAddressStr.
  ///
  /// In en, this message translates to:
  /// **'Warehouse Address'**
  String get wareHouseAddressStr;

  /// No description provided for @scheduleYourBidStr.
  ///
  /// In en, this message translates to:
  /// **'Schedule Your Bid'**
  String get scheduleYourBidStr;

  /// No description provided for @setStartAndEndDateStr.
  ///
  /// In en, this message translates to:
  /// **'Set start and end date time'**
  String get setStartAndEndDateStr;

  /// No description provided for @startDateLabelStr.
  ///
  /// In en, this message translates to:
  /// **'Start date time'**
  String get startDateLabelStr;

  /// No description provided for @endDateLabelStr.
  ///
  /// In en, this message translates to:
  /// **'End Date Time'**
  String get endDateLabelStr;

  /// No description provided for @scrollOptionMsgStr.
  ///
  /// In en, this message translates to:
  /// **'Scroll for more options'**
  String get scrollOptionMsgStr;

  /// No description provided for @termsAndConStr.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get termsAndConStr;

  /// No description provided for @enterTermsHintStr.
  ///
  /// In en, this message translates to:
  /// **'Enter Terms And Conditions Here...'**
  String get enterTermsHintStr;

  /// No description provided for @clickOnAboveStr.
  ///
  /// In en, this message translates to:
  /// **'Click on above button'**
  String get clickOnAboveStr;

  /// No description provided for @submitBidStr.
  ///
  /// In en, this message translates to:
  /// **'Submitting Bid...'**
  String get submitBidStr;

  /// No description provided for @pendingStr.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pendingStr;

  /// No description provided for @approvedStr.
  ///
  /// In en, this message translates to:
  /// **'Approved'**
  String get approvedStr;

  /// No description provided for @noBidAvalStr.
  ///
  /// In en, this message translates to:
  /// **'No Bid Available.'**
  String get noBidAvalStr;

  /// No description provided for @fetchBidMsgStr.
  ///
  /// In en, this message translates to:
  /// **'Fetching Bid Data...'**
  String get fetchBidMsgStr;

  /// No description provided for @bidDataStr.
  ///
  /// In en, this message translates to:
  /// **'Bid Data'**
  String get bidDataStr;

  /// No description provided for @fetchAuctionMsgStr.
  ///
  /// In en, this message translates to:
  /// **'Fetching Auction Data...'**
  String get fetchAuctionMsgStr;

  /// No description provided for @auctionDataStr.
  ///
  /// In en, this message translates to:
  /// **'Auction Data'**
  String get auctionDataStr;

  /// No description provided for @depositeBalStr.
  ///
  /// In en, this message translates to:
  /// **'Deposite Balance'**
  String get depositeBalStr;

  /// No description provided for @aggCodeStr.
  ///
  /// In en, this message translates to:
  /// **'Aggregator Code'**
  String get aggCodeStr;

  /// No description provided for @primDetailsStr.
  ///
  /// In en, this message translates to:
  /// **'Primary Details'**
  String get primDetailsStr;

  /// No description provided for @updateProfileStr.
  ///
  /// In en, this message translates to:
  /// **'Update Profile'**
  String get updateProfileStr;

  /// No description provided for @adderssDetailStr.
  ///
  /// In en, this message translates to:
  /// **'Address Details'**
  String get adderssDetailStr;

  /// No description provided for @bankDetailStr.
  ///
  /// In en, this message translates to:
  /// **'Bank Details'**
  String get bankDetailStr;

  /// No description provided for @updatingProfileMsgStr.
  ///
  /// In en, this message translates to:
  /// **'Updating Profile...'**
  String get updatingProfileMsgStr;

  /// No description provided for @profUpdatedSuccStr.
  ///
  /// In en, this message translates to:
  /// **'Profile updated Successfully.'**
  String get profUpdatedSuccStr;

  /// No description provided for @requiredStr.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get requiredStr;

  /// No description provided for @comYourProMsgStr.
  ///
  /// In en, this message translates to:
  /// **'Complete your profile for this action.'**
  String get comYourProMsgStr;

  /// No description provided for @goToProfileStr.
  ///
  /// In en, this message translates to:
  /// **'Go to profile'**
  String get goToProfileStr;

  /// No description provided for @cancelStr.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelStr;

  /// No description provided for @auctionImgStr.
  ///
  /// In en, this message translates to:
  /// **'Auction Images'**
  String get auctionImgStr;

  /// No description provided for @imgNotAvalStr.
  ///
  /// In en, this message translates to:
  /// **'Images Not Availiable.'**
  String get imgNotAvalStr;

  /// No description provided for @webSiteStr.
  ///
  /// In en, this message translates to:
  /// **'Web Site'**
  String get webSiteStr;

  /// No description provided for @phoneStr.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneStr;

  /// No description provided for @downAndShareStr.
  ///
  /// In en, this message translates to:
  /// **'Download & Share'**
  String get downAndShareStr;

  /// No description provided for @videosStr.
  ///
  /// In en, this message translates to:
  /// **'Videos'**
  String get videosStr;

  /// No description provided for @needLoanStr.
  ///
  /// In en, this message translates to:
  /// **'Need Loan?'**
  String get needLoanStr;

  /// No description provided for @loadDescStr.
  ///
  /// In en, this message translates to:
  /// **'For any loan or financing requirements, click on the below options.'**
  String get loadDescStr;

  /// No description provided for @callStr.
  ///
  /// In en, this message translates to:
  /// **'Call'**
  String get callStr;

  /// No description provided for @whatsappStr.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsappStr;

  /// No description provided for @perLabelStr.
  ///
  /// In en, this message translates to:
  /// **'Per'**
  String get perLabelStr;

  /// No description provided for @otpHasSentStr.
  ///
  /// In en, this message translates to:
  /// **'OTP has been sent to below Mobile No.'**
  String get otpHasSentStr;

  /// No description provided for @didNotReCodeStr.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t recieve the code?'**
  String get didNotReCodeStr;

  /// No description provided for @resendStr.
  ///
  /// In en, this message translates to:
  /// **'RESEND'**
  String get resendStr;

  /// No description provided for @your4OtpStr.
  ///
  /// In en, this message translates to:
  /// **'your 4 digit OTP'**
  String get your4OtpStr;

  /// No description provided for @secondStr.
  ///
  /// In en, this message translates to:
  /// **'seconds'**
  String get secondStr;

  /// No description provided for @yourMPINStr.
  ///
  /// In en, this message translates to:
  /// **'your 4 digit MPIN'**
  String get yourMPINStr;

  /// No description provided for @yourConfMPINStr.
  ///
  /// In en, this message translates to:
  /// **'your 4 digit Confirm MPIN'**
  String get yourConfMPINStr;

  /// No description provided for @invalOTP.
  ///
  /// In en, this message translates to:
  /// **'Invalid OTP'**
  String get invalOTP;

  /// No description provided for @setingPinStr.
  ///
  /// In en, this message translates to:
  /// **'Setting Pin...'**
  String get setingPinStr;

  /// No description provided for @mpinUpdatedSuccStr.
  ///
  /// In en, this message translates to:
  /// **'Mpin Updated successfully.'**
  String get mpinUpdatedSuccStr;

  /// No description provided for @pinACoPinMisMatchStr.
  ///
  /// In en, this message translates to:
  /// **'Pin and Confirm Pin mismatched'**
  String get pinACoPinMisMatchStr;

  /// No description provided for @resendOtpInStr.
  ///
  /// In en, this message translates to:
  /// **'Resend OTP in'**
  String get resendOtpInStr;

  /// No description provided for @kindCorreOTPStr.
  ///
  /// In en, this message translates to:
  /// **'Kindly enter the correct OTP.'**
  String get kindCorreOTPStr;

  /// No description provided for @kindCorreMPINStr.
  ///
  /// In en, this message translates to:
  /// **'Kindly enter the correct MPIN.'**
  String get kindCorreMPINStr;

  /// No description provided for @invalMPIN.
  ///
  /// In en, this message translates to:
  /// **'Invalid MPIN'**
  String get invalMPIN;

  /// No description provided for @loginWaitMsgStr.
  ///
  /// In en, this message translates to:
  /// **'Logging In...'**
  String get loginWaitMsgStr;

  /// No description provided for @notRegMsgStr.
  ///
  /// In en, this message translates to:
  /// **'Not registered, Please Sign Up.'**
  String get notRegMsgStr;

  /// No description provided for @pleaseWaitMsgStr.
  ///
  /// In en, this message translates to:
  /// **'Please wait...'**
  String get pleaseWaitMsgStr;

  /// No description provided for @selectConCodeStr.
  ///
  /// In en, this message translates to:
  /// **'Select your country code'**
  String get selectConCodeStr;

  /// No description provided for @searchStr.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get searchStr;

  /// No description provided for @notAvlUniStr.
  ///
  /// In en, this message translates to:
  /// **'{titleName} Not Available at the moment.'**
  String notAvlUniStr(String titleName);

  /// No description provided for @chYourLanStr.
  ///
  /// In en, this message translates to:
  /// **'Choose your language'**
  String get chYourLanStr;

  /// No description provided for @confirmStr.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirmStr;

  /// No description provided for @inrCurrencyKey.
  ///
  /// In en, this message translates to:
  /// **'INR'**
  String get inrCurrencyKey;

  /// No description provided for @usdCurrencyKey.
  ///
  /// In en, this message translates to:
  /// **'USD'**
  String get usdCurrencyKey;

  /// No description provided for @percentageStrKey.
  ///
  /// In en, this message translates to:
  /// **'Percentage'**
  String get percentageStrKey;

  /// No description provided for @valueStrKey.
  ///
  /// In en, this message translates to:
  /// **'Value'**
  String get valueStrKey;

  /// No description provided for @perQuantityUnit.
  ///
  /// In en, this message translates to:
  /// **'Per Quantity Unit'**
  String get perQuantityUnit;

  /// No description provided for @marketCenterStr.
  ///
  /// In en, this message translates to:
  /// **'Market Center'**
  String get marketCenterStr;

  /// No description provided for @arrivalDateStr.
  ///
  /// In en, this message translates to:
  /// **'Arrival Date '**
  String get arrivalDateStr;

  /// No description provided for @grievanceOfficerAmitMishraStr.
  ///
  /// In en, this message translates to:
  /// **'Grievance Officer - Amit Mishra'**
  String get grievanceOfficerAmitMishraStr;

  /// No description provided for @imageUploadStr.
  ///
  /// In en, this message translates to:
  /// **'Image Uploaded Succesfully'**
  String get imageUploadStr;

  /// No description provided for @imageRemovedStr.
  ///
  /// In en, this message translates to:
  /// **'Image Removed Succesfully'**
  String get imageRemovedStr;

  /// No description provided for @loginErrorMessageStr.
  ///
  /// In en, this message translates to:
  /// **'User Deactivated, please contact Admininstrator support@agribidindia.com'**
  String get loginErrorMessageStr;

  /// No description provided for @aboutUstextStr.
  ///
  /// In en, this message translates to:
  /// **'Empowering farmers  by  connecting  to  a broader market with transparent price discovery. Making a social impact in the agri value chain by partnering with our annadaatas. To touch upon the lives of  farmers and people involved in the agri industry.'**
  String get aboutUstextStr;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'hi', 'mr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'hi': return AppLocalizationsHi();
    case 'mr': return AppLocalizationsMr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
