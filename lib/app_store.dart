import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_project_r411/app_const.dart';
import 'package:flutter_project_r411/api/api_helper.dart';

final appStoreProvider =
StateNotifierProvider<AppStore, AppStoreState>((ref) {
  var apiHelper = ref.watch(apiHelperProvider);
  return AppStore(api: apiHelper);
});

// Cette classe permet de gérer le cache des équipes
class AppStore extends StateNotifier<AppStoreState> {
  AppStore({required this.api}) : super(AppStoreState.init());

  final ApiHelper api;

  void getValues(){
    print("getValues");
    api.getPokemonCards();
  }
  void get1(){
    print("get1");
    api.getPokemonCard(1);
  }
  void get3(){
    print("get3");
    api.getPokemonCard(3);
  }
}

// Cette classe représente l'état du cache des équipes
class AppStoreState {
  // Variables
  final double weightKg;
  final double heightCm;

  // Constructeur
  AppStoreState({
    this.weightKg = AppConst.weightDefault,
    this.heightCm = AppConst.heightDefault
  });

  factory AppStoreState.init() {
    return AppStoreState();
  }

  // Permet de modifier le state
  AppStoreState copyWith({double? weightKg, double? heightCm}) {
    return AppStoreState(
        weightKg: weightKg ?? this.weightKg,
        heightCm: heightCm ?? this.heightCm
    );
  }
}