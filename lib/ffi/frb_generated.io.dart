// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.32.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

import 'api/simple.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:ffi' as ffi;
import 'frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_io.dart';

abstract class RustLibApiImplPlatform extends BaseApiImpl<RustLibWire> {
  RustLibApiImplPlatform({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @protected
  AnyhowException dco_decode_AnyhowException(dynamic raw);

  @protected
  String dco_decode_String(dynamic raw);

  @protected
  CertPairPem dco_decode_box_autoadd_cert_pair_pem(dynamic raw);

  @protected
  KeyCipher dco_decode_box_autoadd_key_cipher(dynamic raw);

  @protected
  CertPairPem dco_decode_cert_pair_pem(dynamic raw);

  @protected
  EcdsaCurve dco_decode_ecdsa_curve(dynamic raw);

  @protected
  int dco_decode_i_32(dynamic raw);

  @protected
  int dco_decode_i_64(dynamic raw);

  @protected
  KeyCipher dco_decode_key_cipher(dynamic raw);

  @protected
  List<String> dco_decode_list_String(dynamic raw);

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw);

  @protected
  List<Rdn> dco_decode_list_rdn(dynamic raw);

  @protected
  CertPairPem? dco_decode_opt_box_autoadd_cert_pair_pem(dynamic raw);

  @protected
  Rdn dco_decode_rdn(dynamic raw);

  @protected
  RdnType dco_decode_rdn_type(dynamic raw);

  @protected
  int dco_decode_u_8(dynamic raw);

  @protected
  void dco_decode_unit(dynamic raw);

  @protected
  int dco_decode_usize(dynamic raw);

  @protected
  AnyhowException sse_decode_AnyhowException(SseDeserializer deserializer);

  @protected
  String sse_decode_String(SseDeserializer deserializer);

  @protected
  CertPairPem sse_decode_box_autoadd_cert_pair_pem(
      SseDeserializer deserializer);

  @protected
  KeyCipher sse_decode_box_autoadd_key_cipher(SseDeserializer deserializer);

  @protected
  CertPairPem sse_decode_cert_pair_pem(SseDeserializer deserializer);

  @protected
  EcdsaCurve sse_decode_ecdsa_curve(SseDeserializer deserializer);

  @protected
  int sse_decode_i_32(SseDeserializer deserializer);

  @protected
  int sse_decode_i_64(SseDeserializer deserializer);

  @protected
  KeyCipher sse_decode_key_cipher(SseDeserializer deserializer);

  @protected
  List<String> sse_decode_list_String(SseDeserializer deserializer);

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer);

  @protected
  List<Rdn> sse_decode_list_rdn(SseDeserializer deserializer);

  @protected
  CertPairPem? sse_decode_opt_box_autoadd_cert_pair_pem(
      SseDeserializer deserializer);

  @protected
  Rdn sse_decode_rdn(SseDeserializer deserializer);

  @protected
  RdnType sse_decode_rdn_type(SseDeserializer deserializer);

  @protected
  int sse_decode_u_8(SseDeserializer deserializer);

  @protected
  void sse_decode_unit(SseDeserializer deserializer);

  @protected
  int sse_decode_usize(SseDeserializer deserializer);

  @protected
  bool sse_decode_bool(SseDeserializer deserializer);

  @protected
  void sse_encode_AnyhowException(
      AnyhowException self, SseSerializer serializer);

  @protected
  void sse_encode_String(String self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_cert_pair_pem(
      CertPairPem self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_key_cipher(
      KeyCipher self, SseSerializer serializer);

  @protected
  void sse_encode_cert_pair_pem(CertPairPem self, SseSerializer serializer);

  @protected
  void sse_encode_ecdsa_curve(EcdsaCurve self, SseSerializer serializer);

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_i_64(int self, SseSerializer serializer);

  @protected
  void sse_encode_key_cipher(KeyCipher self, SseSerializer serializer);

  @protected
  void sse_encode_list_String(List<String> self, SseSerializer serializer);

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer);

  @protected
  void sse_encode_list_rdn(List<Rdn> self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_cert_pair_pem(
      CertPairPem? self, SseSerializer serializer);

  @protected
  void sse_encode_rdn(Rdn self, SseSerializer serializer);

  @protected
  void sse_encode_rdn_type(RdnType self, SseSerializer serializer);

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer);

  @protected
  void sse_encode_unit(void self, SseSerializer serializer);

  @protected
  void sse_encode_usize(int self, SseSerializer serializer);

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer);
}

// Section: wire_class

class RustLibWire implements BaseWire {
  factory RustLibWire.fromExternalLibrary(ExternalLibrary lib) =>
      RustLibWire(lib.ffiDynamicLibrary);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  RustLibWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;
}
