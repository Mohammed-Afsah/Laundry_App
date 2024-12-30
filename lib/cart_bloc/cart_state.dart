part of 'cart_bloc.dart';

class CartState extends Equatable {
  final List<CartItem> cartItems;

  const CartState(this.cartItems);

  CartState copyWith({
    List<CartItem>? cartItems,
  }) {
    return CartState(cartItems ?? this.cartItems);
  }

  @override
  List<Object> get props => [cartItems];
}