
import 'dart:convert';
import 'http_Exception.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;
class Authentication with ChangeNotifier{

  ///authentication of signup
  Future <void> signup(String email ,String password ) async{
    const url ='https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyB6nJAPhxnDOh9IySAV-fovNIDcr0OJ8Sg';
    try{
      final response =await http.post(url, body :json.encode(
          {
            'email': email,
            'password': password,
            'returnSecureToken' :true,

          }
      )
      );
      final res = json.decode(response.body);
      if (res['error'] !=null){
        throw HttpException(res['error']['message']);

      }

    }
    catch(error){
     throw error;
    }
    }
  ///authentication of login
  Future <void> Login(String email ,String password ) async{
    const url ='https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyB6nJAPhxnDOh9IySAV-fovNIDcr0OJ8Sg';
    try{
      final response = await http.post(url, body: json.encode(
          {
            'email' : email,
            'password' : password,
            'returnSecureToken' : true,
          }
      ));
      final responseData = json.decode(response.body);
      if(responseData['error'] != null)
      {
        throw HttpException(responseData['error']['message']);
      }
//      print(responseData);

    } catch(error)
    {
      throw error;
    }


  }


}