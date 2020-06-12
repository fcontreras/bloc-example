import 'package:bloc/bloc.dart';
import 'package:flutterblocdemo/respositories/frases_repository.dart';

class FrasesBloc extends Bloc<FrasesEvent, FrasesState> {

  final FrasesRepository _frasesRepository;

  FrasesBloc(this._frasesRepository);

  @override
  FrasesState get initialState => FraseNoCargada();

  @override
  Stream<FrasesState> mapEventToState(FrasesEvent event) async* {
    if (event is CargarFrase) {
      yield* _cargarFrase();
    }
  }

  Stream<FrasesState> _cargarFrase() async*{
    String frase = await _frasesRepository.fraseAleatoria();

    yield (FraseCargada(frase));
  }

}

abstract class FrasesEvent {}
class CargarFrase extends FrasesEvent {}

abstract class FrasesState {}
class FraseNoCargada extends FrasesState {}
class FraseCargada extends FrasesState {
  final String frase;

  FraseCargada(this.frase);
}