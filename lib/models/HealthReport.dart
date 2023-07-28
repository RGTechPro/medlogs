/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;


/** This is an auto generated class representing the HealthReport type in your schema. */
class HealthReport extends amplify_core.Model {
  static const classType = const _HealthReportModelType();
  final String id;
  final String? _reportType;
  final String? _doctor;
  final String? _docLink;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  HealthReportModelIdentifier get modelIdentifier {
      return HealthReportModelIdentifier(
        id: id
      );
  }
  
  String get reportType {
    try {
      return _reportType!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get doctor {
    return _doctor;
  }
  
  String? get docLink {
    return _docLink;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const HealthReport._internal({required this.id, required reportType, doctor, docLink, createdAt, updatedAt}): _reportType = reportType, _doctor = doctor, _docLink = docLink, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory HealthReport({String? id, required String reportType, String? doctor, String? docLink}) {
    return HealthReport._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      reportType: reportType,
      doctor: doctor,
      docLink: docLink);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HealthReport &&
      id == other.id &&
      _reportType == other._reportType &&
      _doctor == other._doctor &&
      _docLink == other._docLink;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("HealthReport {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("reportType=" + "$_reportType" + ", ");
    buffer.write("doctor=" + "$_doctor" + ", ");
    buffer.write("docLink=" + "$_docLink" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  HealthReport copyWith({String? reportType, String? doctor, String? docLink}) {
    return HealthReport._internal(
      id: id,
      reportType: reportType ?? this.reportType,
      doctor: doctor ?? this.doctor,
      docLink: docLink ?? this.docLink);
  }
  
  HealthReport copyWithModelFieldValues({
    ModelFieldValue<String>? reportType,
    ModelFieldValue<String?>? doctor,
    ModelFieldValue<String?>? docLink
  }) {
    return HealthReport._internal(
      id: id,
      reportType: reportType == null ? this.reportType : reportType.value,
      doctor: doctor == null ? this.doctor : doctor.value,
      docLink: docLink == null ? this.docLink : docLink.value
    );
  }
  
  HealthReport.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _reportType = json['reportType'],
      _doctor = json['doctor'],
      _docLink = json['docLink'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'reportType': _reportType, 'doctor': _doctor, 'docLink': _docLink, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'reportType': _reportType,
    'doctor': _doctor,
    'docLink': _docLink,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<HealthReportModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<HealthReportModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final REPORTTYPE = amplify_core.QueryField(fieldName: "reportType");
  static final DOCTOR = amplify_core.QueryField(fieldName: "doctor");
  static final DOCLINK = amplify_core.QueryField(fieldName: "docLink");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "HealthReport";
    modelSchemaDefinition.pluralName = "HealthReports";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PUBLIC,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: HealthReport.REPORTTYPE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: HealthReport.DOCTOR,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: HealthReport.DOCLINK,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _HealthReportModelType extends amplify_core.ModelType<HealthReport> {
  const _HealthReportModelType();
  
  @override
  HealthReport fromJson(Map<String, dynamic> jsonData) {
    return HealthReport.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'HealthReport';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [HealthReport] in your schema.
 */
class HealthReportModelIdentifier implements amplify_core.ModelIdentifier<HealthReport> {
  final String id;

  /** Create an instance of HealthReportModelIdentifier using [id] the primary key. */
  const HealthReportModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'HealthReportModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is HealthReportModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}