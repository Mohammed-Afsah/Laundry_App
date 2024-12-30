import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cart_item.dart';
import '../product.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState([])) {
    on<AddToCart>((event, emit) {
      final existingItemIndex = state.cartItems.indexWhere(
              (item) => item.product.id == event.product.id);

      if (existingItemIndex != -1) {
        emit(state.copyWith(
            cartItems: [
              ...state.cartItems.sublist(0, existingItemIndex),
              CartItem(product: event.product, quantity: state.cartItems[existingItemIndex].quantity + 1),
              ...state.cartItems.sublist(existingItemIndex + 1)
            ]));
      } else {
        emit(state.copyWith(cartItems: [...state.cartItems, CartItem(product: event.product)]));
      }
    });

    on<RemoveFromCart>((event, emit) {
      final existingItemIndex = state.cartItems.indexWhere(
              (item) => item.product.id == event.productId);

      if (existingItemIndex != -1) {
        if (state.cartItems[existingItemIndex].quantity > 1) {
          emit(state.copyWith(
              cartItems: [
                ...state.cartItems.sublist(0, existingItemIndex),
                CartItem(product: state.cartItems[existingItemIndex].product, quantity: state.cartItems[existingItemIndex].quantity - 1),
                ...state.cartItems.sublist(existingItemIndex + 1)
              ]));
        } else {
          emit(state.copyWith(
              cartItems: [
                ...state.cartItems.sublist(0, existingItemIndex),
                ...state.cartItems.sublist(existingItemIndex + 1)
              ]));
        }
      }
    });

    on<IncrementQuantity>((event, emit) {
      final existingItemIndex = state.cartItems.indexWhere(
              (item) => item.product.id == event.productId);

      if (existingItemIndex != -1) {
        emit(state.copyWith(
            cartItems: [
              ...state.cartItems.sublist(0, existingItemIndex),
              CartItem(product: state.cartItems[existingItemIndex].product, quantity: state.cartItems[existingItemIndex].quantity + 1),
              ...state.cartItems.sublist(existingItemIndex + 1)
            ]));
      }
    });

    on<DecrementQuantity>((event, emit) {
      final existingItemIndex = state.cartItems.indexWhere(
              (item) => item.product.id == event.productId);

      if (existingItemIndex != -1 && state.cartItems[existingItemIndex].quantity > 1) {
        emit(state.copyWith(
            cartItems: [
              ...state.cartItems.sublist(0, existingItemIndex),
              CartItem(product: state.cartItems[existingItemIndex].product, quantity: state.cartItems[existingItemIndex].quantity - 1),
              ...state.cartItems.sublist(existingItemIndex + 1)
            ]));
      }
    });
  }
}