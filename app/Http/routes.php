<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/


//Route::get('/', function () {
//    return view('welcome');
//});

Route::get('/', 'Auth\AuthController@showLoginForm')->name('login');

Route::auth();

Route::group(['prefix'=>'backend', 'middleware'=>'auth'], function(){
  Route::get('/home', 'backend\HomeController@index')->name('home');
  Route::resource('/user', 'backend\UserController');
  Route::get('/user/{id}/destroy','backend\UserController@destroy')->name('backend.user.destroy');
  Route::resource('/cliente', 'backend\FarmaciaController');
  Route::get('/cliente/{id}/destroy','backend\FarmaciaController@destroy')->name('backend.cliente.destroy');
  Route::resource('/pedido', 'backend\PedidoController');
  Route::get('/pedido/{id}/destroy','backend\PedidoController@destroy')->name('backend.pedido.destroy');
  Route::resource('/detalle', 'backend\DetalleController');
  Route::get('/detalle/{id}/destroy','backend\DetalleController@destroy')->name('backend.detalle.destroy');
});
