import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _tts = '';
  String get tts => _tts;
  set tts(String value) {
    _tts = value;
  }

  String _tts2 = '';
  String get tts2 => _tts2;
  set tts2(String value) {
    _tts2 = value;
  }

  String _tts3 =
      'hong kong university of science and technology Final Year Project\nSupervisor: Mow Wai Ho\nStudent\nAo Cheuk Hin \nCheng Ho Kei Sony\nAu-Yeung Yin Michael \nAbout EYES ON ME\nEyes On Me is a GPT powered  appications mainly developed for visually impaired people to turn real time image into text to speech descriptions\n';
  String get tts3 => _tts3;
  set tts3(String value) {
    _tts3 = value;
  }

  String _ttsChatbox = 'chat box';
  String get ttsChatbox => _ttsChatbox;
  set ttsChatbox(String value) {
    _ttsChatbox = value;
  }

  String _ttsProfile = 'profile';
  String get ttsProfile => _ttsProfile;
  set ttsProfile(String value) {
    _ttsProfile = value;
  }

  String _ttsAboutus = 'read about us';
  String get ttsAboutus => _ttsAboutus;
  set ttsAboutus(String value) {
    _ttsAboutus = value;
  }

  String _ttslogout = 'logout';
  String get ttslogout => _ttslogout;
  set ttslogout(String value) {
    _ttslogout = value;
  }

  String _ttsAboutuspage = 'about us';
  String get ttsAboutuspage => _ttsAboutuspage;
  set ttsAboutuspage(String value) {
    _ttsAboutuspage = value;
  }

  String _ttsChat = 'Print chat';
  String get ttsChat => _ttsChat;
  set ttsChat(String value) {
    _ttsChat = value;
  }

  String _ttsPriceTag = 'PriceTag';
  String get ttsPriceTag => _ttsPriceTag;
  set ttsPriceTag(String value) {
    _ttsPriceTag = value;
  }

  String _ttsreturn = 'previous page';
  String get ttsreturn => _ttsreturn;
  set ttsreturn(String value) {
    _ttsreturn = value;
  }

  String _ttssound = 'dot';
  String get ttssound => _ttssound;
  set ttssound(String value) {
    _ttssound = value;
  }

  String _ttsPhotoonly = 'photo only';
  String get ttsPhotoonly => _ttsPhotoonly;
  set ttsPhotoonly(String value) {
    _ttsPhotoonly = value;
  }

  String _ttsurlonly = 'Url only';
  String get ttsurlonly => _ttsurlonly;
  set ttsurlonly(String value) {
    _ttsurlonly = value;
  }

  String _ttsplacephoto = 'Place photo';
  String get ttsplacephoto => _ttsplacephoto;
  set ttsplacephoto(String value) {
    _ttsplacephoto = value;
  }
}
