// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.28.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

import 'api/simple.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_web.dart';

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
  CertFiles dco_decode_box_autoadd_cert_files(dynamic raw);

  @protected
  Cipher dco_decode_box_autoadd_cipher(dynamic raw);

  @protected
  Issuer dco_decode_box_autoadd_issuer(dynamic raw);

  @protected
  CertData dco_decode_cert_data(dynamic raw);

  @protected
  CertFiles dco_decode_cert_files(dynamic raw);

  @protected
  CertProfile dco_decode_cert_profile(dynamic raw);

  @protected
  Cipher dco_decode_cipher(dynamic raw);

  @protected
  EcdsaCurve dco_decode_ecdsa_curve(dynamic raw);

  @protected
  int dco_decode_i_32(dynamic raw);

  @protected
  Issuer dco_decode_issuer(dynamic raw);

  @protected
  KeyFormat dco_decode_key_format(dynamic raw);

  @protected
  List<String> dco_decode_list_String(dynamic raw);

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw);

  @protected
  List<SubjectRdn> dco_decode_list_subject_rdn(dynamic raw);

  @protected
  List<String>? dco_decode_opt_list_String(dynamic raw);

  @protected
  SubjectRdn dco_decode_subject_rdn(dynamic raw);

  @protected
  int dco_decode_u_32(dynamic raw);

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
  CertFiles sse_decode_box_autoadd_cert_files(SseDeserializer deserializer);

  @protected
  Cipher sse_decode_box_autoadd_cipher(SseDeserializer deserializer);

  @protected
  Issuer sse_decode_box_autoadd_issuer(SseDeserializer deserializer);

  @protected
  CertData sse_decode_cert_data(SseDeserializer deserializer);

  @protected
  CertFiles sse_decode_cert_files(SseDeserializer deserializer);

  @protected
  CertProfile sse_decode_cert_profile(SseDeserializer deserializer);

  @protected
  Cipher sse_decode_cipher(SseDeserializer deserializer);

  @protected
  EcdsaCurve sse_decode_ecdsa_curve(SseDeserializer deserializer);

  @protected
  int sse_decode_i_32(SseDeserializer deserializer);

  @protected
  Issuer sse_decode_issuer(SseDeserializer deserializer);

  @protected
  KeyFormat sse_decode_key_format(SseDeserializer deserializer);

  @protected
  List<String> sse_decode_list_String(SseDeserializer deserializer);

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer);

  @protected
  List<SubjectRdn> sse_decode_list_subject_rdn(SseDeserializer deserializer);

  @protected
  List<String>? sse_decode_opt_list_String(SseDeserializer deserializer);

  @protected
  SubjectRdn sse_decode_subject_rdn(SseDeserializer deserializer);

  @protected
  int sse_decode_u_32(SseDeserializer deserializer);

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
  void sse_encode_box_autoadd_cert_files(
      CertFiles self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_cipher(Cipher self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_issuer(Issuer self, SseSerializer serializer);

  @protected
  void sse_encode_cert_data(CertData self, SseSerializer serializer);

  @protected
  void sse_encode_cert_files(CertFiles self, SseSerializer serializer);

  @protected
  void sse_encode_cert_profile(CertProfile self, SseSerializer serializer);

  @protected
  void sse_encode_cipher(Cipher self, SseSerializer serializer);

  @protected
  void sse_encode_ecdsa_curve(EcdsaCurve self, SseSerializer serializer);

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_issuer(Issuer self, SseSerializer serializer);

  @protected
  void sse_encode_key_format(KeyFormat self, SseSerializer serializer);

  @protected
  void sse_encode_list_String(List<String> self, SseSerializer serializer);

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer);

  @protected
  void sse_encode_list_subject_rdn(
      List<SubjectRdn> self, SseSerializer serializer);

  @protected
  void sse_encode_opt_list_String(List<String>? self, SseSerializer serializer);

  @protected
  void sse_encode_subject_rdn(SubjectRdn self, SseSerializer serializer);

  @protected
  void sse_encode_u_32(int self, SseSerializer serializer);

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
  RustLibWire.fromExternalLibrary(ExternalLibrary lib);
}

@JS('wasm_bindgen')
external RustLibWasmModule get wasmModule;

@JS()
@anonymous
class RustLibWasmModule implements WasmModule {
  @override
  external Object /* Promise */ call([String? moduleName]);

  @override
  external RustLibWasmModule bind(dynamic thisArg, String moduleName);
}
