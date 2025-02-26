import 'package:flutter_riverpod/flutter_riverpod.dart';
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

  void getPokemonCards(){
    print("Get all cards");
    api.getPokemonCards();
  }
  void getPokemonCardId(int id){
    print("Get card N°$id");
    api.getPokemonCardId(id);
  }
}

// Cette classe représente l'état du cache des équipes
class AppStoreState {
  // Variables

  // Constructeur
  AppStoreState();

  factory AppStoreState.init() {
    return AppStoreState();
  }

  // Permet de modifier le state
  AppStoreState copyWith() {
    return AppStoreState(

    );
  }
}