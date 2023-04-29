import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session_6/Services/Sp_Services/cashe_helper.dart';

part 'adduser_state.dart';

class AdduserCubit extends Cubit<AdduserState> {
  AdduserCubit() : super(AdduserInitial());
   static AdduserCubit get(context) => BlocProvider.of(context);
   
   String  username()  {
   return   SharedPreferencesHelper.getData(key: 'k');
    emit(AdduserSuc());
   }
}
