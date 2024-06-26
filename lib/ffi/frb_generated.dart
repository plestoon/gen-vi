// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.32.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

import 'api/simple.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.io.dart' if (dart.library.html) 'frb_generated.web.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

/// Main entrypoint of the Rust API
class RustLib extends BaseEntrypoint<RustLibApi, RustLibApiImpl, RustLibWire> {
  @internal
  static final instance = RustLib._();

  RustLib._();

  /// Initialize flutter_rust_bridge
  static Future<void> init({
    RustLibApi? api,
    BaseHandler? handler,
    ExternalLibrary? externalLibrary,
  }) async {
    await instance.initImpl(
      api: api,
      handler: handler,
      externalLibrary: externalLibrary,
    );
  }

  /// Dispose flutter_rust_bridge
  ///
  /// The call to this function is optional, since flutter_rust_bridge (and everything else)
  /// is automatically disposed when the app stops.
  static void dispose() => instance.disposeImpl();

  @override
  ApiImplConstructor<RustLibApiImpl, RustLibWire> get apiImplConstructor =>
      RustLibApiImpl.new;

  @override
  WireConstructor<RustLibWire> get wireConstructor =>
      RustLibWire.fromExternalLibrary;

  @override
  Future<void> executeRustInitializers() async {
    await api.initApp();
  }

  @override
  ExternalLibraryLoaderConfig get defaultExternalLibraryLoaderConfig =>
      kDefaultExternalLibraryLoaderConfig;

  @override
  String get codegenVersion => '2.0.0-dev.32';

  @override
  int get rustContentHash => -682055461;

  static const kDefaultExternalLibraryLoaderConfig =
      ExternalLibraryLoaderConfig(
    stem: 'rust_lib_gen_v',
    ioDirectory: 'rust/target/release/',
    webPrefix: 'pkg/',
  );
}

abstract class RustLibApi extends BaseApi {
  Future<CertPairPem> genClientCert(
      {required List<Rdn> subject,
      required KeyCipher keyCipher,
      required int validity,
      CertPairPem? issuer,
      dynamic hint});

  Future<CertPairPem> genRootCaCert(
      {required List<Rdn> subject,
      required KeyCipher keyCipher,
      required int validity,
      dynamic hint});

  Future<CertPairPem> genServerCert(
      {required List<Rdn> subject,
      required List<String> subjectAltNames,
      required KeyCipher keyCipher,
      required int validity,
      CertPairPem? issuer,
      dynamic hint});

  Future<CertPairPem> genSubCaCert(
      {required List<Rdn> subject,
      required KeyCipher keyCipher,
      required int validity,
      required CertPairPem issuer,
      dynamic hint});

  Future<void> initApp({dynamic hint});
}

class RustLibApiImpl extends RustLibApiImplPlatform implements RustLibApi {
  RustLibApiImpl({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @override
  Future<CertPairPem> genClientCert(
      {required List<Rdn> subject,
      required KeyCipher keyCipher,
      required int validity,
      CertPairPem? issuer,
      dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_list_rdn(subject, serializer);
        sse_encode_box_autoadd_key_cipher(keyCipher, serializer);
        sse_encode_i_64(validity, serializer);
        sse_encode_opt_box_autoadd_cert_pair_pem(issuer, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 3, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_cert_pair_pem,
        decodeErrorData: sse_decode_AnyhowException,
      ),
      constMeta: kGenClientCertConstMeta,
      argValues: [subject, keyCipher, validity, issuer],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kGenClientCertConstMeta => const TaskConstMeta(
        debugName: "gen_client_cert",
        argNames: ["subject", "keyCipher", "validity", "issuer"],
      );

  @override
  Future<CertPairPem> genRootCaCert(
      {required List<Rdn> subject,
      required KeyCipher keyCipher,
      required int validity,
      dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_list_rdn(subject, serializer);
        sse_encode_box_autoadd_key_cipher(keyCipher, serializer);
        sse_encode_i_64(validity, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 4, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_cert_pair_pem,
        decodeErrorData: sse_decode_AnyhowException,
      ),
      constMeta: kGenRootCaCertConstMeta,
      argValues: [subject, keyCipher, validity],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kGenRootCaCertConstMeta => const TaskConstMeta(
        debugName: "gen_root_ca_cert",
        argNames: ["subject", "keyCipher", "validity"],
      );

  @override
  Future<CertPairPem> genServerCert(
      {required List<Rdn> subject,
      required List<String> subjectAltNames,
      required KeyCipher keyCipher,
      required int validity,
      CertPairPem? issuer,
      dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_list_rdn(subject, serializer);
        sse_encode_list_String(subjectAltNames, serializer);
        sse_encode_box_autoadd_key_cipher(keyCipher, serializer);
        sse_encode_i_64(validity, serializer);
        sse_encode_opt_box_autoadd_cert_pair_pem(issuer, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 2, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_cert_pair_pem,
        decodeErrorData: sse_decode_AnyhowException,
      ),
      constMeta: kGenServerCertConstMeta,
      argValues: [subject, subjectAltNames, keyCipher, validity, issuer],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kGenServerCertConstMeta => const TaskConstMeta(
        debugName: "gen_server_cert",
        argNames: [
          "subject",
          "subjectAltNames",
          "keyCipher",
          "validity",
          "issuer"
        ],
      );

  @override
  Future<CertPairPem> genSubCaCert(
      {required List<Rdn> subject,
      required KeyCipher keyCipher,
      required int validity,
      required CertPairPem issuer,
      dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_list_rdn(subject, serializer);
        sse_encode_box_autoadd_key_cipher(keyCipher, serializer);
        sse_encode_i_64(validity, serializer);
        sse_encode_box_autoadd_cert_pair_pem(issuer, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 5, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_cert_pair_pem,
        decodeErrorData: sse_decode_AnyhowException,
      ),
      constMeta: kGenSubCaCertConstMeta,
      argValues: [subject, keyCipher, validity, issuer],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kGenSubCaCertConstMeta => const TaskConstMeta(
        debugName: "gen_sub_ca_cert",
        argNames: ["subject", "keyCipher", "validity", "issuer"],
      );

  @override
  Future<void> initApp({dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 1, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kInitAppConstMeta,
      argValues: [],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kInitAppConstMeta => const TaskConstMeta(
        debugName: "init_app",
        argNames: [],
      );

  @protected
  AnyhowException dco_decode_AnyhowException(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return AnyhowException(raw as String);
  }

  @protected
  String dco_decode_String(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as String;
  }

  @protected
  CertPairPem dco_decode_box_autoadd_cert_pair_pem(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return dco_decode_cert_pair_pem(raw);
  }

  @protected
  KeyCipher dco_decode_box_autoadd_key_cipher(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return dco_decode_key_cipher(raw);
  }

  @protected
  CertPairPem dco_decode_cert_pair_pem(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return CertPairPem(
      chain: dco_decode_String(arr[0]),
      key: dco_decode_String(arr[1]),
    );
  }

  @protected
  EcdsaCurve dco_decode_ecdsa_curve(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return EcdsaCurve.values[raw as int];
  }

  @protected
  int dco_decode_i_32(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as int;
  }

  @protected
  int dco_decode_i_64(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return dcoDecodeI64OrU64(raw);
  }

  @protected
  KeyCipher dco_decode_key_cipher(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    switch (raw[0]) {
      case 0:
        return KeyCipher_Rsa(
          dco_decode_usize(raw[1]),
        );
      case 1:
        return KeyCipher_Ecdsa(
          dco_decode_ecdsa_curve(raw[1]),
        );
      default:
        throw Exception("unreachable");
    }
  }

  @protected
  List<String> dco_decode_list_String(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return (raw as List<dynamic>).map(dco_decode_String).toList();
  }

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as Uint8List;
  }

  @protected
  List<Rdn> dco_decode_list_rdn(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return (raw as List<dynamic>).map(dco_decode_rdn).toList();
  }

  @protected
  CertPairPem? dco_decode_opt_box_autoadd_cert_pair_pem(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw == null ? null : dco_decode_box_autoadd_cert_pair_pem(raw);
  }

  @protected
  Rdn dco_decode_rdn(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return Rdn(
      rdnType: dco_decode_rdn_type(arr[0]),
      value: dco_decode_String(arr[1]),
    );
  }

  @protected
  RdnType dco_decode_rdn_type(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return RdnType.values[raw as int];
  }

  @protected
  int dco_decode_u_8(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as int;
  }

  @protected
  void dco_decode_unit(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return;
  }

  @protected
  int dco_decode_usize(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return dcoDecodeI64OrU64(raw);
  }

  @protected
  AnyhowException sse_decode_AnyhowException(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_String(deserializer);
    return AnyhowException(inner);
  }

  @protected
  String sse_decode_String(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_list_prim_u_8_strict(deserializer);
    return utf8.decoder.convert(inner);
  }

  @protected
  CertPairPem sse_decode_box_autoadd_cert_pair_pem(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return (sse_decode_cert_pair_pem(deserializer));
  }

  @protected
  KeyCipher sse_decode_box_autoadd_key_cipher(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return (sse_decode_key_cipher(deserializer));
  }

  @protected
  CertPairPem sse_decode_cert_pair_pem(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var var_chain = sse_decode_String(deserializer);
    var var_key = sse_decode_String(deserializer);
    return CertPairPem(chain: var_chain, key: var_key);
  }

  @protected
  EcdsaCurve sse_decode_ecdsa_curve(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_i_32(deserializer);
    return EcdsaCurve.values[inner];
  }

  @protected
  int sse_decode_i_32(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getInt32();
  }

  @protected
  int sse_decode_i_64(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getInt64();
  }

  @protected
  KeyCipher sse_decode_key_cipher(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    var tag_ = sse_decode_i_32(deserializer);
    switch (tag_) {
      case 0:
        var var_field0 = sse_decode_usize(deserializer);
        return KeyCipher_Rsa(var_field0);
      case 1:
        var var_field0 = sse_decode_ecdsa_curve(deserializer);
        return KeyCipher_Ecdsa(var_field0);
      default:
        throw UnimplementedError('');
    }
  }

  @protected
  List<String> sse_decode_list_String(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    var len_ = sse_decode_i_32(deserializer);
    var ans_ = <String>[];
    for (var idx_ = 0; idx_ < len_; ++idx_) {
      ans_.add(sse_decode_String(deserializer));
    }
    return ans_;
  }

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var len_ = sse_decode_i_32(deserializer);
    return deserializer.buffer.getUint8List(len_);
  }

  @protected
  List<Rdn> sse_decode_list_rdn(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    var len_ = sse_decode_i_32(deserializer);
    var ans_ = <Rdn>[];
    for (var idx_ = 0; idx_ < len_; ++idx_) {
      ans_.add(sse_decode_rdn(deserializer));
    }
    return ans_;
  }

  @protected
  CertPairPem? sse_decode_opt_box_autoadd_cert_pair_pem(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    if (sse_decode_bool(deserializer)) {
      return (sse_decode_box_autoadd_cert_pair_pem(deserializer));
    } else {
      return null;
    }
  }

  @protected
  Rdn sse_decode_rdn(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var var_rdnType = sse_decode_rdn_type(deserializer);
    var var_value = sse_decode_String(deserializer);
    return Rdn(rdnType: var_rdnType, value: var_value);
  }

  @protected
  RdnType sse_decode_rdn_type(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_i_32(deserializer);
    return RdnType.values[inner];
  }

  @protected
  int sse_decode_u_8(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint8();
  }

  @protected
  void sse_decode_unit(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
  }

  @protected
  int sse_decode_usize(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint64();
  }

  @protected
  bool sse_decode_bool(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint8() != 0;
  }

  @protected
  void sse_encode_AnyhowException(
      AnyhowException self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    throw UnimplementedError('Unreachable ()');
  }

  @protected
  void sse_encode_String(String self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_list_prim_u_8_strict(utf8.encoder.convert(self), serializer);
  }

  @protected
  void sse_encode_box_autoadd_cert_pair_pem(
      CertPairPem self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_cert_pair_pem(self, serializer);
  }

  @protected
  void sse_encode_box_autoadd_key_cipher(
      KeyCipher self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_key_cipher(self, serializer);
  }

  @protected
  void sse_encode_cert_pair_pem(CertPairPem self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_String(self.chain, serializer);
    sse_encode_String(self.key, serializer);
  }

  @protected
  void sse_encode_ecdsa_curve(EcdsaCurve self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.index, serializer);
  }

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putInt32(self);
  }

  @protected
  void sse_encode_i_64(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putInt64(self);
  }

  @protected
  void sse_encode_key_cipher(KeyCipher self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    switch (self) {
      case KeyCipher_Rsa(field0: final field0):
        sse_encode_i_32(0, serializer);
        sse_encode_usize(field0, serializer);
      case KeyCipher_Ecdsa(field0: final field0):
        sse_encode_i_32(1, serializer);
        sse_encode_ecdsa_curve(field0, serializer);
    }
  }

  @protected
  void sse_encode_list_String(List<String> self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    for (final item in self) {
      sse_encode_String(item, serializer);
    }
  }

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    serializer.buffer.putUint8List(self);
  }

  @protected
  void sse_encode_list_rdn(List<Rdn> self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    for (final item in self) {
      sse_encode_rdn(item, serializer);
    }
  }

  @protected
  void sse_encode_opt_box_autoadd_cert_pair_pem(
      CertPairPem? self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    sse_encode_bool(self != null, serializer);
    if (self != null) {
      sse_encode_box_autoadd_cert_pair_pem(self, serializer);
    }
  }

  @protected
  void sse_encode_rdn(Rdn self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_rdn_type(self.rdnType, serializer);
    sse_encode_String(self.value, serializer);
  }

  @protected
  void sse_encode_rdn_type(RdnType self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.index, serializer);
  }

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint8(self);
  }

  @protected
  void sse_encode_unit(void self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
  }

  @protected
  void sse_encode_usize(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint64(self);
  }

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint8(self ? 1 : 0);
  }
}
