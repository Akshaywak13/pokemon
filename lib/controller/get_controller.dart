import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_app/api/api_manager.dart';
import 'package:pokemon_app/model/pokemon_model.dart';


class PockedController extends GetxController{

  final isLoading=false.obs;
  bool get _isLoading => isLoading.value;

  final isError=''.obs;
  String get _isError=>isError.value;

  ApiBase apiBase=ApiBase();

  final _pokemonModel=PokemonModel().obs;
  PokemonModel get pokemonModel => _pokemonModel.value;

  Future<void> getData(BuildContext context) async {
    await apiBase.get(
      "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json",
      (data) {
        isLoading(false);
        _pokemonModel.value = PokemonModel.fromJson(data);
        print(_pokemonModel.value); // Print data to console
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successful")));
      },
      (error) {
        isLoading(false);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(isError.value)));
      },
    );
  }
}
