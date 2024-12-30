part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class AddToCart extends CartEvent {
  final Product product;

  const AddToCart(this.product);

  @override
  List<Object> get props => [product];
}

class RemoveFromCart extends CartEvent {
  final String productId;

  const RemoveFromCart(this.productId);

  @override
  List<Object> get props => [productId];
}

class IncrementQuantity extends CartEvent {
  final String productId;

  const IncrementQuantity(this.productId);

  @override
  List<Object> get props => [productId];
}

class DecrementQuantity extends CartEvent {
  final String productId;

  const DecrementQuantity(this.productId);

  @override
  List<Object> get props => [productId];
}