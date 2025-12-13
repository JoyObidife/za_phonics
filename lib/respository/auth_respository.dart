import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepository {
  SupabaseClient supabase = Supabase.instance.client;

  Future<User?> signIn({
    required String email,
    required String passsword,
  }) async {
    try {
       AuthResponse response= await supabase.auth.signInWithPassword(email: email, password: passsword);
       
       return response.user!;
    } on AuthApiException catch(e) {
      if(e.code == "email_not_confirmed"){
        throw "Please confirm your email";
      }else{
        throw "An error occur";
      }
    } catch(e) {
      print(e);

      throw Exception("An error occur while signing in");
    }
  }

  Future<void> signUP({
    required String email,
    required String passsword,
  }) async {
    try{
       await supabase.auth.signUp(email: email, password: passsword);
    }catch(e){
      print(e);

      throw Exception("An error occcur while creating user account");
    }
   
  }
}
