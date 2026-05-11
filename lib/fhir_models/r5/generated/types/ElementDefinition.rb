module FHIR
  module R5
    class ElementDefinition < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml
      include FHIR::CommonElementDefinition

      MULTIPLE_TYPES = {
        'defaultValue' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'integer64', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'CodeableReference', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'RatioRange', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Availability', 'ExtendedContactDetail', 'Dosage', 'Meta'],
        'fixed' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'integer64', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'CodeableReference', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'RatioRange', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Availability', 'ExtendedContactDetail', 'Dosage', 'Meta'],
        'pattern' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'integer64', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'CodeableReference', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'RatioRange', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Availability', 'ExtendedContactDetail', 'Dosage', 'Meta'],
        'minValue' => ['date', 'dateTime', 'instant', 'time', 'decimal', 'integer', 'integer64', 'positiveInt', 'unsignedInt', 'Quantity'],
        'maxValue' => ['date', 'dateTime', 'instant', 'time', 'decimal', 'integer', 'integer64', 'positiveInt', 'unsignedInt', 'Quantity']
      }
      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'ElementDefinition.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'ElementDefinition.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'ElementDefinition.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'path' => {'path'=>'ElementDefinition.path', 'type'=>'string', 'min'=>1, 'max'=>1},
        'representation' => {'valid_codes'=>{'http://hl7.org/fhir/property-representation'=>['xmlAttr', 'xmlText', 'typeAttr', 'cdaText', 'xhtml']}, 'path'=>'ElementDefinition.representation', 'type'=>'code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/property-representation'}},
        'sliceName' => {'path'=>'ElementDefinition.sliceName', 'type'=>'string', 'min'=>0, 'max'=>1},
        'sliceIsConstraining' => {'path'=>'ElementDefinition.sliceIsConstraining', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'label' => {'path'=>'ElementDefinition.label', 'type'=>'string', 'min'=>0, 'max'=>1},
        'code' => {'path'=>'ElementDefinition.code', 'type'=>'Coding', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://loinc.org/vs'}},
        'slicing' => {'path'=>'ElementDefinition.slicing', 'type'=>'ElementDefinition::Slicing', 'min'=>0, 'max'=>1},
        'short' => {'path'=>'ElementDefinition.short', 'type'=>'string', 'min'=>0, 'max'=>1},
        'definition' => {'path'=>'ElementDefinition.definition', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'comment' => {'path'=>'ElementDefinition.comment', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'requirements' => {'path'=>'ElementDefinition.requirements', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'alias' => {'path'=>'ElementDefinition.alias', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'min' => {'path'=>'ElementDefinition.min', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
        'max' => {'path'=>'ElementDefinition.max', 'type'=>'string', 'min'=>0, 'max'=>1},
        'base' => {'path'=>'ElementDefinition.base', 'type'=>'ElementDefinition::Base', 'min'=>0, 'max'=>1},
        'contentReference' => {'path'=>'ElementDefinition.contentReference', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'type' => {'path'=>'ElementDefinition.type', 'type'=>'ElementDefinition::Type', 'min'=>0, 'max'=>Float::INFINITY},
        'defaultValueBase64Binary' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'base64Binary', 'min'=>0, 'max'=>1},
        'defaultValueBoolean' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'defaultValueCanonical' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'canonical', 'min'=>0, 'max'=>1},
        'defaultValueCode' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'code', 'min'=>0, 'max'=>1},
        'defaultValueDate' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
        'defaultValueDateTime' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'defaultValueDecimal' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'decimal', 'min'=>0, 'max'=>1},
        'defaultValueId' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'id', 'min'=>0, 'max'=>1},
        'defaultValueInstant' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'instant', 'min'=>0, 'max'=>1},
        'defaultValueInteger' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'integer', 'min'=>0, 'max'=>1},
        'defaultValueInteger64' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'integer64', 'min'=>0, 'max'=>1},
        'defaultValueMarkdown' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'defaultValueOid' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'oid', 'min'=>0, 'max'=>1},
        'defaultValuePositiveInt' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
        'defaultValueString' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
        'defaultValueTime' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'time', 'min'=>0, 'max'=>1},
        'defaultValueUnsignedInt' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
        'defaultValueUri' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'defaultValueUrl' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'url', 'min'=>0, 'max'=>1},
        'defaultValueUuid' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'uuid', 'min'=>0, 'max'=>1},
        'defaultValueAddress' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Address', 'min'=>0, 'max'=>1},
        'defaultValueAge' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Age', 'min'=>0, 'max'=>1},
        'defaultValueAnnotation' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Annotation', 'min'=>0, 'max'=>1},
        'defaultValueAttachment' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Attachment', 'min'=>0, 'max'=>1},
        'defaultValueCodeableConcept' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'defaultValueCodeableReference' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'CodeableReference', 'min'=>0, 'max'=>1},
        'defaultValueCoding' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Coding', 'min'=>0, 'max'=>1},
        'defaultValueContactPoint' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'ContactPoint', 'min'=>0, 'max'=>1},
        'defaultValueCount' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Count', 'min'=>0, 'max'=>1},
        'defaultValueDistance' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Distance', 'min'=>0, 'max'=>1},
        'defaultValueDuration' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Duration', 'min'=>0, 'max'=>1},
        'defaultValueHumanName' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'HumanName', 'min'=>0, 'max'=>1},
        'defaultValueIdentifier' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'defaultValueMoney' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Money', 'min'=>0, 'max'=>1},
        'defaultValuePeriod' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'defaultValueQuantity' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'defaultValueRange' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
        'defaultValueRatio' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Ratio', 'min'=>0, 'max'=>1},
        'defaultValueRatioRange' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'RatioRange', 'min'=>0, 'max'=>1},
        'defaultValueReference' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'defaultValueSampledData' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'SampledData', 'min'=>0, 'max'=>1},
        'defaultValueSignature' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Signature', 'min'=>0, 'max'=>1},
        'defaultValueTiming' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Timing', 'min'=>0, 'max'=>1},
        'defaultValueContactDetail' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'ContactDetail', 'min'=>0, 'max'=>1},
        'defaultValueDataRequirement' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'DataRequirement', 'min'=>0, 'max'=>1},
        'defaultValueExpression' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Expression', 'min'=>0, 'max'=>1},
        'defaultValueParameterDefinition' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'ParameterDefinition', 'min'=>0, 'max'=>1},
        'defaultValueRelatedArtifact' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>1},
        'defaultValueTriggerDefinition' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'TriggerDefinition', 'min'=>0, 'max'=>1},
        'defaultValueUsageContext' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'UsageContext', 'min'=>0, 'max'=>1},
        'defaultValueAvailability' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Availability', 'min'=>0, 'max'=>1},
        'defaultValueExtendedContactDetail' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'ExtendedContactDetail', 'min'=>0, 'max'=>1},
        'defaultValueDosage' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Dosage', 'min'=>0, 'max'=>1},
        'defaultValueMeta' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'meaningWhenMissing' => {'path'=>'ElementDefinition.meaningWhenMissing', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'orderMeaning' => {'path'=>'ElementDefinition.orderMeaning', 'type'=>'string', 'min'=>0, 'max'=>1},
        'fixedBase64Binary' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'base64Binary', 'min'=>0, 'max'=>1},
        'fixedBoolean' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'fixedCanonical' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'canonical', 'min'=>0, 'max'=>1},
        'fixedCode' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'code', 'min'=>0, 'max'=>1},
        'fixedDate' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
        'fixedDateTime' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'fixedDecimal' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'decimal', 'min'=>0, 'max'=>1},
        'fixedId' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'id', 'min'=>0, 'max'=>1},
        'fixedInstant' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'instant', 'min'=>0, 'max'=>1},
        'fixedInteger' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'integer', 'min'=>0, 'max'=>1},
        'fixedInteger64' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'integer64', 'min'=>0, 'max'=>1},
        'fixedMarkdown' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'fixedOid' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'oid', 'min'=>0, 'max'=>1},
        'fixedPositiveInt' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
        'fixedString' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
        'fixedTime' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'time', 'min'=>0, 'max'=>1},
        'fixedUnsignedInt' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
        'fixedUri' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'fixedUrl' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'url', 'min'=>0, 'max'=>1},
        'fixedUuid' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'uuid', 'min'=>0, 'max'=>1},
        'fixedAddress' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Address', 'min'=>0, 'max'=>1},
        'fixedAge' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Age', 'min'=>0, 'max'=>1},
        'fixedAnnotation' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Annotation', 'min'=>0, 'max'=>1},
        'fixedAttachment' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Attachment', 'min'=>0, 'max'=>1},
        'fixedCodeableConcept' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'fixedCodeableReference' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'CodeableReference', 'min'=>0, 'max'=>1},
        'fixedCoding' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Coding', 'min'=>0, 'max'=>1},
        'fixedContactPoint' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'ContactPoint', 'min'=>0, 'max'=>1},
        'fixedCount' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Count', 'min'=>0, 'max'=>1},
        'fixedDistance' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Distance', 'min'=>0, 'max'=>1},
        'fixedDuration' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Duration', 'min'=>0, 'max'=>1},
        'fixedHumanName' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'HumanName', 'min'=>0, 'max'=>1},
        'fixedIdentifier' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'fixedMoney' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Money', 'min'=>0, 'max'=>1},
        'fixedPeriod' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'fixedQuantity' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'fixedRange' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
        'fixedRatio' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Ratio', 'min'=>0, 'max'=>1},
        'fixedRatioRange' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'RatioRange', 'min'=>0, 'max'=>1},
        'fixedReference' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'fixedSampledData' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'SampledData', 'min'=>0, 'max'=>1},
        'fixedSignature' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Signature', 'min'=>0, 'max'=>1},
        'fixedTiming' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Timing', 'min'=>0, 'max'=>1},
        'fixedContactDetail' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'ContactDetail', 'min'=>0, 'max'=>1},
        'fixedDataRequirement' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'DataRequirement', 'min'=>0, 'max'=>1},
        'fixedExpression' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Expression', 'min'=>0, 'max'=>1},
        'fixedParameterDefinition' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'ParameterDefinition', 'min'=>0, 'max'=>1},
        'fixedRelatedArtifact' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>1},
        'fixedTriggerDefinition' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'TriggerDefinition', 'min'=>0, 'max'=>1},
        'fixedUsageContext' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'UsageContext', 'min'=>0, 'max'=>1},
        'fixedAvailability' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Availability', 'min'=>0, 'max'=>1},
        'fixedExtendedContactDetail' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'ExtendedContactDetail', 'min'=>0, 'max'=>1},
        'fixedDosage' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Dosage', 'min'=>0, 'max'=>1},
        'fixedMeta' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'patternBase64Binary' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'base64Binary', 'min'=>0, 'max'=>1},
        'patternBoolean' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'patternCanonical' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'canonical', 'min'=>0, 'max'=>1},
        'patternCode' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'code', 'min'=>0, 'max'=>1},
        'patternDate' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
        'patternDateTime' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'patternDecimal' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'decimal', 'min'=>0, 'max'=>1},
        'patternId' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'id', 'min'=>0, 'max'=>1},
        'patternInstant' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'instant', 'min'=>0, 'max'=>1},
        'patternInteger' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'integer', 'min'=>0, 'max'=>1},
        'patternInteger64' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'integer64', 'min'=>0, 'max'=>1},
        'patternMarkdown' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'patternOid' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'oid', 'min'=>0, 'max'=>1},
        'patternPositiveInt' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
        'patternString' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
        'patternTime' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'time', 'min'=>0, 'max'=>1},
        'patternUnsignedInt' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
        'patternUri' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'patternUrl' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'url', 'min'=>0, 'max'=>1},
        'patternUuid' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'uuid', 'min'=>0, 'max'=>1},
        'patternAddress' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Address', 'min'=>0, 'max'=>1},
        'patternAge' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Age', 'min'=>0, 'max'=>1},
        'patternAnnotation' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Annotation', 'min'=>0, 'max'=>1},
        'patternAttachment' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Attachment', 'min'=>0, 'max'=>1},
        'patternCodeableConcept' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'patternCodeableReference' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'CodeableReference', 'min'=>0, 'max'=>1},
        'patternCoding' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Coding', 'min'=>0, 'max'=>1},
        'patternContactPoint' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'ContactPoint', 'min'=>0, 'max'=>1},
        'patternCount' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Count', 'min'=>0, 'max'=>1},
        'patternDistance' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Distance', 'min'=>0, 'max'=>1},
        'patternDuration' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Duration', 'min'=>0, 'max'=>1},
        'patternHumanName' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'HumanName', 'min'=>0, 'max'=>1},
        'patternIdentifier' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'patternMoney' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Money', 'min'=>0, 'max'=>1},
        'patternPeriod' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'patternQuantity' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'patternRange' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
        'patternRatio' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Ratio', 'min'=>0, 'max'=>1},
        'patternRatioRange' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'RatioRange', 'min'=>0, 'max'=>1},
        'patternReference' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'patternSampledData' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'SampledData', 'min'=>0, 'max'=>1},
        'patternSignature' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Signature', 'min'=>0, 'max'=>1},
        'patternTiming' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Timing', 'min'=>0, 'max'=>1},
        'patternContactDetail' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'ContactDetail', 'min'=>0, 'max'=>1},
        'patternDataRequirement' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'DataRequirement', 'min'=>0, 'max'=>1},
        'patternExpression' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Expression', 'min'=>0, 'max'=>1},
        'patternParameterDefinition' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'ParameterDefinition', 'min'=>0, 'max'=>1},
        'patternRelatedArtifact' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>1},
        'patternTriggerDefinition' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'TriggerDefinition', 'min'=>0, 'max'=>1},
        'patternUsageContext' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'UsageContext', 'min'=>0, 'max'=>1},
        'patternAvailability' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Availability', 'min'=>0, 'max'=>1},
        'patternExtendedContactDetail' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'ExtendedContactDetail', 'min'=>0, 'max'=>1},
        'patternDosage' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Dosage', 'min'=>0, 'max'=>1},
        'patternMeta' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'example' => {'path'=>'ElementDefinition.example', 'type'=>'ElementDefinition::Example', 'min'=>0, 'max'=>Float::INFINITY},
        'minValueDate' => {'path'=>'ElementDefinition.minValue[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
        'minValueDateTime' => {'path'=>'ElementDefinition.minValue[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'minValueInstant' => {'path'=>'ElementDefinition.minValue[x]', 'type'=>'instant', 'min'=>0, 'max'=>1},
        'minValueTime' => {'path'=>'ElementDefinition.minValue[x]', 'type'=>'time', 'min'=>0, 'max'=>1},
        'minValueDecimal' => {'path'=>'ElementDefinition.minValue[x]', 'type'=>'decimal', 'min'=>0, 'max'=>1},
        'minValueInteger' => {'path'=>'ElementDefinition.minValue[x]', 'type'=>'integer', 'min'=>0, 'max'=>1},
        'minValueInteger64' => {'path'=>'ElementDefinition.minValue[x]', 'type'=>'integer64', 'min'=>0, 'max'=>1},
        'minValuePositiveInt' => {'path'=>'ElementDefinition.minValue[x]', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
        'minValueUnsignedInt' => {'path'=>'ElementDefinition.minValue[x]', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
        'minValueQuantity' => {'path'=>'ElementDefinition.minValue[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'maxValueDate' => {'path'=>'ElementDefinition.maxValue[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
        'maxValueDateTime' => {'path'=>'ElementDefinition.maxValue[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'maxValueInstant' => {'path'=>'ElementDefinition.maxValue[x]', 'type'=>'instant', 'min'=>0, 'max'=>1},
        'maxValueTime' => {'path'=>'ElementDefinition.maxValue[x]', 'type'=>'time', 'min'=>0, 'max'=>1},
        'maxValueDecimal' => {'path'=>'ElementDefinition.maxValue[x]', 'type'=>'decimal', 'min'=>0, 'max'=>1},
        'maxValueInteger' => {'path'=>'ElementDefinition.maxValue[x]', 'type'=>'integer', 'min'=>0, 'max'=>1},
        'maxValueInteger64' => {'path'=>'ElementDefinition.maxValue[x]', 'type'=>'integer64', 'min'=>0, 'max'=>1},
        'maxValuePositiveInt' => {'path'=>'ElementDefinition.maxValue[x]', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
        'maxValueUnsignedInt' => {'path'=>'ElementDefinition.maxValue[x]', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
        'maxValueQuantity' => {'path'=>'ElementDefinition.maxValue[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'maxLength' => {'path'=>'ElementDefinition.maxLength', 'type'=>'integer', 'min'=>0, 'max'=>1},
        'condition' => {'path'=>'ElementDefinition.condition', 'type'=>'id', 'min'=>0, 'max'=>Float::INFINITY},
        'constraint' => {'path'=>'ElementDefinition.constraint', 'type'=>'ElementDefinition::Constraint', 'min'=>0, 'max'=>Float::INFINITY},
        'mustHaveValue' => {'path'=>'ElementDefinition.mustHaveValue', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'valueAlternatives' => {'path'=>'ElementDefinition.valueAlternatives', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY},
        'mustSupport' => {'path'=>'ElementDefinition.mustSupport', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'isModifier' => {'path'=>'ElementDefinition.isModifier', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'isModifierReason' => {'path'=>'ElementDefinition.isModifierReason', 'type'=>'string', 'min'=>0, 'max'=>1},
        'isSummary' => {'path'=>'ElementDefinition.isSummary', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'binding' => {'path'=>'ElementDefinition.binding', 'type'=>'ElementDefinition::Binding', 'min'=>0, 'max'=>1},
        'mapping' => {'path'=>'ElementDefinition.mapping', 'type'=>'ElementDefinition::Mapping', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Slicing < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Slicing.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Slicing.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'discriminator' => {'path'=>'Slicing.discriminator', 'type'=>'ElementDefinition::Slicing::Discriminator', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'path'=>'Slicing.description', 'type'=>'string', 'min'=>0, 'max'=>1},
          'ordered' => {'path'=>'Slicing.ordered', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'rules' => {'valid_codes'=>{'http://hl7.org/fhir/resource-slicing-rules'=>['closed', 'open', 'openAtEnd']}, 'path'=>'Slicing.rules', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-slicing-rules'}}
        }

        class Discriminator < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Discriminator.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Discriminator.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://hl7.org/fhir/discriminator-type'=>['value', 'exists', 'pattern', 'type', 'profile', 'position']}, 'path'=>'Discriminator.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/discriminator-type'}},
            'path' => {'path'=>'Discriminator.path', 'type'=>'string', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id        # 0-1 string
          attr_accessor :extension # 0-* [ Extension ]
          attr_accessor :type      # 1-1 code
          attr_accessor :path      # 1-1 string
        end

        attr_accessor :id            # 0-1 string
        attr_accessor :extension     # 0-* [ Extension ]
        attr_accessor :discriminator # 0-* [ ElementDefinition::Slicing::Discriminator ]
        attr_accessor :description   # 0-1 string
        attr_accessor :ordered       # 0-1 boolean
        attr_accessor :rules         # 1-1 code
      end

      class Base < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Base.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Base.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'path' => {'path'=>'Base.path', 'type'=>'string', 'min'=>1, 'max'=>1},
          'min' => {'path'=>'Base.min', 'type'=>'unsignedInt', 'min'=>1, 'max'=>1},
          'max' => {'path'=>'Base.max', 'type'=>'string', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id        # 0-1 string
        attr_accessor :extension # 0-* [ Extension ]
        attr_accessor :path      # 1-1 string
        attr_accessor :min       # 1-1 unsignedInt
        attr_accessor :max       # 1-1 string
      end

      class Type < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Type.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Type.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'path'=>'Type.code', 'type'=>'uri', 'min'=>1, 'max'=>1},
          'profile' => {'path'=>'Type.profile', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY},
          'targetProfile' => {'path'=>'Type.targetProfile', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY},
          'aggregation' => {'valid_codes'=>{'http://hl7.org/fhir/resource-aggregation-mode'=>['contained', 'referenced', 'bundled']}, 'path'=>'Type.aggregation', 'type'=>'code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-aggregation-mode'}},
          'versioning' => {'valid_codes'=>{'http://hl7.org/fhir/reference-version-rules'=>['either', 'independent', 'specific']}, 'path'=>'Type.versioning', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/reference-version-rules'}}
        }

        attr_accessor :id            # 0-1 string
        attr_accessor :extension     # 0-* [ Extension ]
        attr_accessor :code          # 1-1 uri
        attr_accessor :profile       # 0-* [ canonical ]
        attr_accessor :targetProfile # 0-* [ canonical ]
        attr_accessor :aggregation   # 0-* [ code ]
        attr_accessor :versioning    # 0-1 code
      end

      class Example < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'value' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'integer64', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'CodeableReference', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'RatioRange', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Availability', 'ExtendedContactDetail', 'Dosage', 'Meta']
        }
        METADATA = {
          'id' => {'path'=>'Example.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Example.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'label' => {'path'=>'Example.label', 'type'=>'string', 'min'=>1, 'max'=>1},
          'valueBase64Binary' => {'path'=>'Example.value[x]', 'type'=>'base64Binary', 'min'=>1, 'max'=>1},
          'valueBoolean' => {'path'=>'Example.value[x]', 'type'=>'boolean', 'min'=>1, 'max'=>1},
          'valueCanonical' => {'path'=>'Example.value[x]', 'type'=>'canonical', 'min'=>1, 'max'=>1},
          'valueCode' => {'path'=>'Example.value[x]', 'type'=>'code', 'min'=>1, 'max'=>1},
          'valueDate' => {'path'=>'Example.value[x]', 'type'=>'date', 'min'=>1, 'max'=>1},
          'valueDateTime' => {'path'=>'Example.value[x]', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
          'valueDecimal' => {'path'=>'Example.value[x]', 'type'=>'decimal', 'min'=>1, 'max'=>1},
          'valueId' => {'path'=>'Example.value[x]', 'type'=>'id', 'min'=>1, 'max'=>1},
          'valueInstant' => {'path'=>'Example.value[x]', 'type'=>'instant', 'min'=>1, 'max'=>1},
          'valueInteger' => {'path'=>'Example.value[x]', 'type'=>'integer', 'min'=>1, 'max'=>1},
          'valueInteger64' => {'path'=>'Example.value[x]', 'type'=>'integer64', 'min'=>1, 'max'=>1},
          'valueMarkdown' => {'path'=>'Example.value[x]', 'type'=>'markdown', 'min'=>1, 'max'=>1},
          'valueOid' => {'path'=>'Example.value[x]', 'type'=>'oid', 'min'=>1, 'max'=>1},
          'valuePositiveInt' => {'path'=>'Example.value[x]', 'type'=>'positiveInt', 'min'=>1, 'max'=>1},
          'valueString' => {'path'=>'Example.value[x]', 'type'=>'string', 'min'=>1, 'max'=>1},
          'valueTime' => {'path'=>'Example.value[x]', 'type'=>'time', 'min'=>1, 'max'=>1},
          'valueUnsignedInt' => {'path'=>'Example.value[x]', 'type'=>'unsignedInt', 'min'=>1, 'max'=>1},
          'valueUri' => {'path'=>'Example.value[x]', 'type'=>'uri', 'min'=>1, 'max'=>1},
          'valueUrl' => {'path'=>'Example.value[x]', 'type'=>'url', 'min'=>1, 'max'=>1},
          'valueUuid' => {'path'=>'Example.value[x]', 'type'=>'uuid', 'min'=>1, 'max'=>1},
          'valueAddress' => {'path'=>'Example.value[x]', 'type'=>'Address', 'min'=>1, 'max'=>1},
          'valueAge' => {'path'=>'Example.value[x]', 'type'=>'Age', 'min'=>1, 'max'=>1},
          'valueAnnotation' => {'path'=>'Example.value[x]', 'type'=>'Annotation', 'min'=>1, 'max'=>1},
          'valueAttachment' => {'path'=>'Example.value[x]', 'type'=>'Attachment', 'min'=>1, 'max'=>1},
          'valueCodeableConcept' => {'path'=>'Example.value[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'valueCodeableReference' => {'path'=>'Example.value[x]', 'type'=>'CodeableReference', 'min'=>1, 'max'=>1},
          'valueCoding' => {'path'=>'Example.value[x]', 'type'=>'Coding', 'min'=>1, 'max'=>1},
          'valueContactPoint' => {'path'=>'Example.value[x]', 'type'=>'ContactPoint', 'min'=>1, 'max'=>1},
          'valueCount' => {'path'=>'Example.value[x]', 'type'=>'Count', 'min'=>1, 'max'=>1},
          'valueDistance' => {'path'=>'Example.value[x]', 'type'=>'Distance', 'min'=>1, 'max'=>1},
          'valueDuration' => {'path'=>'Example.value[x]', 'type'=>'Duration', 'min'=>1, 'max'=>1},
          'valueHumanName' => {'path'=>'Example.value[x]', 'type'=>'HumanName', 'min'=>1, 'max'=>1},
          'valueIdentifier' => {'path'=>'Example.value[x]', 'type'=>'Identifier', 'min'=>1, 'max'=>1},
          'valueMoney' => {'path'=>'Example.value[x]', 'type'=>'Money', 'min'=>1, 'max'=>1},
          'valuePeriod' => {'path'=>'Example.value[x]', 'type'=>'Period', 'min'=>1, 'max'=>1},
          'valueQuantity' => {'path'=>'Example.value[x]', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
          'valueRange' => {'path'=>'Example.value[x]', 'type'=>'Range', 'min'=>1, 'max'=>1},
          'valueRatio' => {'path'=>'Example.value[x]', 'type'=>'Ratio', 'min'=>1, 'max'=>1},
          'valueRatioRange' => {'path'=>'Example.value[x]', 'type'=>'RatioRange', 'min'=>1, 'max'=>1},
          'valueReference' => {'path'=>'Example.value[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'valueSampledData' => {'path'=>'Example.value[x]', 'type'=>'SampledData', 'min'=>1, 'max'=>1},
          'valueSignature' => {'path'=>'Example.value[x]', 'type'=>'Signature', 'min'=>1, 'max'=>1},
          'valueTiming' => {'path'=>'Example.value[x]', 'type'=>'Timing', 'min'=>1, 'max'=>1},
          'valueContactDetail' => {'path'=>'Example.value[x]', 'type'=>'ContactDetail', 'min'=>1, 'max'=>1},
          'valueDataRequirement' => {'path'=>'Example.value[x]', 'type'=>'DataRequirement', 'min'=>1, 'max'=>1},
          'valueExpression' => {'path'=>'Example.value[x]', 'type'=>'Expression', 'min'=>1, 'max'=>1},
          'valueParameterDefinition' => {'path'=>'Example.value[x]', 'type'=>'ParameterDefinition', 'min'=>1, 'max'=>1},
          'valueRelatedArtifact' => {'path'=>'Example.value[x]', 'type'=>'RelatedArtifact', 'min'=>1, 'max'=>1},
          'valueTriggerDefinition' => {'path'=>'Example.value[x]', 'type'=>'TriggerDefinition', 'min'=>1, 'max'=>1},
          'valueUsageContext' => {'path'=>'Example.value[x]', 'type'=>'UsageContext', 'min'=>1, 'max'=>1},
          'valueAvailability' => {'path'=>'Example.value[x]', 'type'=>'Availability', 'min'=>1, 'max'=>1},
          'valueExtendedContactDetail' => {'path'=>'Example.value[x]', 'type'=>'ExtendedContactDetail', 'min'=>1, 'max'=>1},
          'valueDosage' => {'path'=>'Example.value[x]', 'type'=>'Dosage', 'min'=>1, 'max'=>1},
          'valueMeta' => {'path'=>'Example.value[x]', 'type'=>'Meta', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                         # 0-1 string
        attr_accessor :extension                  # 0-* [ Extension ]
        attr_accessor :label                      # 1-1 string
        attr_accessor :valueBase64Binary          # 1-1 base64Binary
        attr_accessor :valueBoolean               # 1-1 boolean
        attr_accessor :valueCanonical             # 1-1 canonical
        attr_accessor :valueCode                  # 1-1 code
        attr_accessor :valueDate                  # 1-1 date
        attr_accessor :valueDateTime              # 1-1 dateTime
        attr_accessor :valueDecimal               # 1-1 decimal
        attr_accessor :valueId                    # 1-1 id
        attr_accessor :valueInstant               # 1-1 instant
        attr_accessor :valueInteger               # 1-1 integer
        attr_accessor :valueInteger64             # 1-1 integer64
        attr_accessor :valueMarkdown              # 1-1 markdown
        attr_accessor :valueOid                   # 1-1 oid
        attr_accessor :valuePositiveInt           # 1-1 positiveInt
        attr_accessor :valueString                # 1-1 string
        attr_accessor :valueTime                  # 1-1 time
        attr_accessor :valueUnsignedInt           # 1-1 unsignedInt
        attr_accessor :valueUri                   # 1-1 uri
        attr_accessor :valueUrl                   # 1-1 url
        attr_accessor :valueUuid                  # 1-1 uuid
        attr_accessor :valueAddress               # 1-1 Address
        attr_accessor :valueAge                   # 1-1 Age
        attr_accessor :valueAnnotation            # 1-1 Annotation
        attr_accessor :valueAttachment            # 1-1 Attachment
        attr_accessor :valueCodeableConcept       # 1-1 CodeableConcept
        attr_accessor :valueCodeableReference     # 1-1 CodeableReference
        attr_accessor :valueCoding                # 1-1 Coding
        attr_accessor :valueContactPoint          # 1-1 ContactPoint
        attr_accessor :valueCount                 # 1-1 Count
        attr_accessor :valueDistance              # 1-1 Distance
        attr_accessor :valueDuration              # 1-1 Duration
        attr_accessor :valueHumanName             # 1-1 HumanName
        attr_accessor :valueIdentifier            # 1-1 Identifier
        attr_accessor :valueMoney                 # 1-1 Money
        attr_accessor :valuePeriod                # 1-1 Period
        attr_accessor :valueQuantity              # 1-1 Quantity
        attr_accessor :valueRange                 # 1-1 Range
        attr_accessor :valueRatio                 # 1-1 Ratio
        attr_accessor :valueRatioRange            # 1-1 RatioRange
        attr_accessor :valueReference             # 1-1 Reference()
        attr_accessor :valueSampledData           # 1-1 SampledData
        attr_accessor :valueSignature             # 1-1 Signature
        attr_accessor :valueTiming                # 1-1 Timing
        attr_accessor :valueContactDetail         # 1-1 ContactDetail
        attr_accessor :valueDataRequirement       # 1-1 DataRequirement
        attr_accessor :valueExpression            # 1-1 Expression
        attr_accessor :valueParameterDefinition   # 1-1 ParameterDefinition
        attr_accessor :valueRelatedArtifact       # 1-1 RelatedArtifact
        attr_accessor :valueTriggerDefinition     # 1-1 TriggerDefinition
        attr_accessor :valueUsageContext          # 1-1 UsageContext
        attr_accessor :valueAvailability          # 1-1 Availability
        attr_accessor :valueExtendedContactDetail # 1-1 ExtendedContactDetail
        attr_accessor :valueDosage                # 1-1 Dosage
        attr_accessor :valueMeta                  # 1-1 Meta
      end

      class Constraint < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Constraint.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Constraint.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'key' => {'path'=>'Constraint.key', 'type'=>'id', 'min'=>1, 'max'=>1},
          'requirements' => {'path'=>'Constraint.requirements', 'type'=>'markdown', 'min'=>0, 'max'=>1},
          'severity' => {'valid_codes'=>{'http://hl7.org/fhir/constraint-severity'=>['error', 'warning']}, 'path'=>'Constraint.severity', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/constraint-severity'}},
          'suppress' => {'path'=>'Constraint.suppress', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'human' => {'path'=>'Constraint.human', 'type'=>'string', 'min'=>1, 'max'=>1},
          'expression' => {'path'=>'Constraint.expression', 'type'=>'string', 'min'=>0, 'max'=>1},
          'source' => {'path'=>'Constraint.source', 'type'=>'canonical', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id           # 0-1 string
        attr_accessor :extension    # 0-* [ Extension ]
        attr_accessor :key          # 1-1 id
        attr_accessor :requirements # 0-1 markdown
        attr_accessor :severity     # 1-1 code
        attr_accessor :suppress     # 0-1 boolean
        attr_accessor :human        # 1-1 string
        attr_accessor :expression   # 0-1 string
        attr_accessor :source       # 0-1 canonical
      end

      class Binding < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Binding.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Binding.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'strength' => {'valid_codes'=>{'http://hl7.org/fhir/binding-strength'=>['required', 'extensible', 'preferred', 'example']}, 'path'=>'Binding.strength', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/binding-strength'}},
          'description' => {'path'=>'Binding.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
          'valueSet' => {'path'=>'Binding.valueSet', 'type'=>'canonical', 'min'=>0, 'max'=>1},
          'additional' => {'path'=>'Binding.additional', 'type'=>'ElementDefinition::Binding::Additional', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Additional < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Additional.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Additional.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'purpose' => {'valid_codes'=>{'http://hl7.org/fhir/CodeSystem/additional-binding-purpose'=>['maximum', 'minimum', 'required', 'extensible', 'candidate', 'current', 'preferred', 'ui', 'starter', 'component']}, 'path'=>'Additional.purpose', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/additional-binding-purpose'}},
            'valueSet' => {'path'=>'Additional.valueSet', 'type'=>'canonical', 'min'=>1, 'max'=>1},
            'documentation' => {'path'=>'Additional.documentation', 'type'=>'markdown', 'min'=>0, 'max'=>1},
            'shortDoco' => {'path'=>'Additional.shortDoco', 'type'=>'string', 'min'=>0, 'max'=>1},
            'usage' => {'path'=>'Additional.usage', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
            'any' => {'path'=>'Additional.any', 'type'=>'boolean', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id            # 0-1 string
          attr_accessor :extension     # 0-* [ Extension ]
          attr_accessor :purpose       # 1-1 code
          attr_accessor :valueSet      # 1-1 canonical
          attr_accessor :documentation # 0-1 markdown
          attr_accessor :shortDoco     # 0-1 string
          attr_accessor :usage         # 0-* [ UsageContext ]
          attr_accessor :any           # 0-1 boolean
        end

        attr_accessor :id          # 0-1 string
        attr_accessor :extension   # 0-* [ Extension ]
        attr_accessor :strength    # 1-1 code
        attr_accessor :description # 0-1 markdown
        attr_accessor :valueSet    # 0-1 canonical
        attr_accessor :additional  # 0-* [ ElementDefinition::Binding::Additional ]
      end

      class Mapping < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Mapping.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Mapping.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'identity' => {'path'=>'Mapping.identity', 'type'=>'id', 'min'=>1, 'max'=>1},
          'language' => {'path'=>'Mapping.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
          'map' => {'path'=>'Mapping.map', 'type'=>'string', 'min'=>1, 'max'=>1},
          'comment' => {'path'=>'Mapping.comment', 'type'=>'markdown', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id        # 0-1 string
        attr_accessor :extension # 0-* [ Extension ]
        attr_accessor :identity  # 1-1 id
        attr_accessor :language  # 0-1 code
        attr_accessor :map       # 1-1 string
        attr_accessor :comment   # 0-1 markdown
      end

      attr_accessor :id                                # 0-1 string
      attr_accessor :extension                         # 0-* [ Extension ]
      attr_accessor :modifierExtension                 # 0-* [ Extension ]
      attr_accessor :path                              # 1-1 string
      attr_accessor :representation                    # 0-* [ code ]
      attr_accessor :sliceName                         # 0-1 string
      attr_accessor :sliceIsConstraining               # 0-1 boolean
      attr_accessor :label                             # 0-1 string
      attr_accessor :code                              # 0-* [ Coding ]
      attr_accessor :slicing                           # 0-1 ElementDefinition::Slicing
      attr_accessor :short                             # 0-1 string
      attr_accessor :definition                        # 0-1 markdown
      attr_accessor :comment                           # 0-1 markdown
      attr_accessor :requirements                      # 0-1 markdown
      attr_accessor :alias                             # 0-* [ string ]
      attr_accessor :min                               # 0-1 unsignedInt
      attr_accessor :max                               # 0-1 string
      attr_accessor :base                              # 0-1 ElementDefinition::Base
      attr_accessor :contentReference                  # 0-1 uri
      attr_accessor :type                              # 0-* [ ElementDefinition::Type ]
      attr_accessor :defaultValueBase64Binary          # 0-1 base64Binary
      attr_accessor :defaultValueBoolean               # 0-1 boolean
      attr_accessor :defaultValueCanonical             # 0-1 canonical
      attr_accessor :defaultValueCode                  # 0-1 code
      attr_accessor :defaultValueDate                  # 0-1 date
      attr_accessor :defaultValueDateTime              # 0-1 dateTime
      attr_accessor :defaultValueDecimal               # 0-1 decimal
      attr_accessor :defaultValueId                    # 0-1 id
      attr_accessor :defaultValueInstant               # 0-1 instant
      attr_accessor :defaultValueInteger               # 0-1 integer
      attr_accessor :defaultValueInteger64             # 0-1 integer64
      attr_accessor :defaultValueMarkdown              # 0-1 markdown
      attr_accessor :defaultValueOid                   # 0-1 oid
      attr_accessor :defaultValuePositiveInt           # 0-1 positiveInt
      attr_accessor :defaultValueString                # 0-1 string
      attr_accessor :defaultValueTime                  # 0-1 time
      attr_accessor :defaultValueUnsignedInt           # 0-1 unsignedInt
      attr_accessor :defaultValueUri                   # 0-1 uri
      attr_accessor :defaultValueUrl                   # 0-1 url
      attr_accessor :defaultValueUuid                  # 0-1 uuid
      attr_accessor :defaultValueAddress               # 0-1 Address
      attr_accessor :defaultValueAge                   # 0-1 Age
      attr_accessor :defaultValueAnnotation            # 0-1 Annotation
      attr_accessor :defaultValueAttachment            # 0-1 Attachment
      attr_accessor :defaultValueCodeableConcept       # 0-1 CodeableConcept
      attr_accessor :defaultValueCodeableReference     # 0-1 CodeableReference
      attr_accessor :defaultValueCoding                # 0-1 Coding
      attr_accessor :defaultValueContactPoint          # 0-1 ContactPoint
      attr_accessor :defaultValueCount                 # 0-1 Count
      attr_accessor :defaultValueDistance              # 0-1 Distance
      attr_accessor :defaultValueDuration              # 0-1 Duration
      attr_accessor :defaultValueHumanName             # 0-1 HumanName
      attr_accessor :defaultValueIdentifier            # 0-1 Identifier
      attr_accessor :defaultValueMoney                 # 0-1 Money
      attr_accessor :defaultValuePeriod                # 0-1 Period
      attr_accessor :defaultValueQuantity              # 0-1 Quantity
      attr_accessor :defaultValueRange                 # 0-1 Range
      attr_accessor :defaultValueRatio                 # 0-1 Ratio
      attr_accessor :defaultValueRatioRange            # 0-1 RatioRange
      attr_accessor :defaultValueReference             # 0-1 Reference()
      attr_accessor :defaultValueSampledData           # 0-1 SampledData
      attr_accessor :defaultValueSignature             # 0-1 Signature
      attr_accessor :defaultValueTiming                # 0-1 Timing
      attr_accessor :defaultValueContactDetail         # 0-1 ContactDetail
      attr_accessor :defaultValueDataRequirement       # 0-1 DataRequirement
      attr_accessor :defaultValueExpression            # 0-1 Expression
      attr_accessor :defaultValueParameterDefinition   # 0-1 ParameterDefinition
      attr_accessor :defaultValueRelatedArtifact       # 0-1 RelatedArtifact
      attr_accessor :defaultValueTriggerDefinition     # 0-1 TriggerDefinition
      attr_accessor :defaultValueUsageContext          # 0-1 UsageContext
      attr_accessor :defaultValueAvailability          # 0-1 Availability
      attr_accessor :defaultValueExtendedContactDetail # 0-1 ExtendedContactDetail
      attr_accessor :defaultValueDosage                # 0-1 Dosage
      attr_accessor :defaultValueMeta                  # 0-1 Meta
      attr_accessor :meaningWhenMissing                # 0-1 markdown
      attr_accessor :orderMeaning                      # 0-1 string
      attr_accessor :fixedBase64Binary                 # 0-1 base64Binary
      attr_accessor :fixedBoolean                      # 0-1 boolean
      attr_accessor :fixedCanonical                    # 0-1 canonical
      attr_accessor :fixedCode                         # 0-1 code
      attr_accessor :fixedDate                         # 0-1 date
      attr_accessor :fixedDateTime                     # 0-1 dateTime
      attr_accessor :fixedDecimal                      # 0-1 decimal
      attr_accessor :fixedId                           # 0-1 id
      attr_accessor :fixedInstant                      # 0-1 instant
      attr_accessor :fixedInteger                      # 0-1 integer
      attr_accessor :fixedInteger64                    # 0-1 integer64
      attr_accessor :fixedMarkdown                     # 0-1 markdown
      attr_accessor :fixedOid                          # 0-1 oid
      attr_accessor :fixedPositiveInt                  # 0-1 positiveInt
      attr_accessor :fixedString                       # 0-1 string
      attr_accessor :fixedTime                         # 0-1 time
      attr_accessor :fixedUnsignedInt                  # 0-1 unsignedInt
      attr_accessor :fixedUri                          # 0-1 uri
      attr_accessor :fixedUrl                          # 0-1 url
      attr_accessor :fixedUuid                         # 0-1 uuid
      attr_accessor :fixedAddress                      # 0-1 Address
      attr_accessor :fixedAge                          # 0-1 Age
      attr_accessor :fixedAnnotation                   # 0-1 Annotation
      attr_accessor :fixedAttachment                   # 0-1 Attachment
      attr_accessor :fixedCodeableConcept              # 0-1 CodeableConcept
      attr_accessor :fixedCodeableReference            # 0-1 CodeableReference
      attr_accessor :fixedCoding                       # 0-1 Coding
      attr_accessor :fixedContactPoint                 # 0-1 ContactPoint
      attr_accessor :fixedCount                        # 0-1 Count
      attr_accessor :fixedDistance                     # 0-1 Distance
      attr_accessor :fixedDuration                     # 0-1 Duration
      attr_accessor :fixedHumanName                    # 0-1 HumanName
      attr_accessor :fixedIdentifier                   # 0-1 Identifier
      attr_accessor :fixedMoney                        # 0-1 Money
      attr_accessor :fixedPeriod                       # 0-1 Period
      attr_accessor :fixedQuantity                     # 0-1 Quantity
      attr_accessor :fixedRange                        # 0-1 Range
      attr_accessor :fixedRatio                        # 0-1 Ratio
      attr_accessor :fixedRatioRange                   # 0-1 RatioRange
      attr_accessor :fixedReference                    # 0-1 Reference()
      attr_accessor :fixedSampledData                  # 0-1 SampledData
      attr_accessor :fixedSignature                    # 0-1 Signature
      attr_accessor :fixedTiming                       # 0-1 Timing
      attr_accessor :fixedContactDetail                # 0-1 ContactDetail
      attr_accessor :fixedDataRequirement              # 0-1 DataRequirement
      attr_accessor :fixedExpression                   # 0-1 Expression
      attr_accessor :fixedParameterDefinition          # 0-1 ParameterDefinition
      attr_accessor :fixedRelatedArtifact              # 0-1 RelatedArtifact
      attr_accessor :fixedTriggerDefinition            # 0-1 TriggerDefinition
      attr_accessor :fixedUsageContext                 # 0-1 UsageContext
      attr_accessor :fixedAvailability                 # 0-1 Availability
      attr_accessor :fixedExtendedContactDetail        # 0-1 ExtendedContactDetail
      attr_accessor :fixedDosage                       # 0-1 Dosage
      attr_accessor :fixedMeta                         # 0-1 Meta
      attr_accessor :patternBase64Binary               # 0-1 base64Binary
      attr_accessor :patternBoolean                    # 0-1 boolean
      attr_accessor :patternCanonical                  # 0-1 canonical
      attr_accessor :patternCode                       # 0-1 code
      attr_accessor :patternDate                       # 0-1 date
      attr_accessor :patternDateTime                   # 0-1 dateTime
      attr_accessor :patternDecimal                    # 0-1 decimal
      attr_accessor :patternId                         # 0-1 id
      attr_accessor :patternInstant                    # 0-1 instant
      attr_accessor :patternInteger                    # 0-1 integer
      attr_accessor :patternInteger64                  # 0-1 integer64
      attr_accessor :patternMarkdown                   # 0-1 markdown
      attr_accessor :patternOid                        # 0-1 oid
      attr_accessor :patternPositiveInt                # 0-1 positiveInt
      attr_accessor :patternString                     # 0-1 string
      attr_accessor :patternTime                       # 0-1 time
      attr_accessor :patternUnsignedInt                # 0-1 unsignedInt
      attr_accessor :patternUri                        # 0-1 uri
      attr_accessor :patternUrl                        # 0-1 url
      attr_accessor :patternUuid                       # 0-1 uuid
      attr_accessor :patternAddress                    # 0-1 Address
      attr_accessor :patternAge                        # 0-1 Age
      attr_accessor :patternAnnotation                 # 0-1 Annotation
      attr_accessor :patternAttachment                 # 0-1 Attachment
      attr_accessor :patternCodeableConcept            # 0-1 CodeableConcept
      attr_accessor :patternCodeableReference          # 0-1 CodeableReference
      attr_accessor :patternCoding                     # 0-1 Coding
      attr_accessor :patternContactPoint               # 0-1 ContactPoint
      attr_accessor :patternCount                      # 0-1 Count
      attr_accessor :patternDistance                   # 0-1 Distance
      attr_accessor :patternDuration                   # 0-1 Duration
      attr_accessor :patternHumanName                  # 0-1 HumanName
      attr_accessor :patternIdentifier                 # 0-1 Identifier
      attr_accessor :patternMoney                      # 0-1 Money
      attr_accessor :patternPeriod                     # 0-1 Period
      attr_accessor :patternQuantity                   # 0-1 Quantity
      attr_accessor :patternRange                      # 0-1 Range
      attr_accessor :patternRatio                      # 0-1 Ratio
      attr_accessor :patternRatioRange                 # 0-1 RatioRange
      attr_accessor :patternReference                  # 0-1 Reference()
      attr_accessor :patternSampledData                # 0-1 SampledData
      attr_accessor :patternSignature                  # 0-1 Signature
      attr_accessor :patternTiming                     # 0-1 Timing
      attr_accessor :patternContactDetail              # 0-1 ContactDetail
      attr_accessor :patternDataRequirement            # 0-1 DataRequirement
      attr_accessor :patternExpression                 # 0-1 Expression
      attr_accessor :patternParameterDefinition        # 0-1 ParameterDefinition
      attr_accessor :patternRelatedArtifact            # 0-1 RelatedArtifact
      attr_accessor :patternTriggerDefinition          # 0-1 TriggerDefinition
      attr_accessor :patternUsageContext               # 0-1 UsageContext
      attr_accessor :patternAvailability               # 0-1 Availability
      attr_accessor :patternExtendedContactDetail      # 0-1 ExtendedContactDetail
      attr_accessor :patternDosage                     # 0-1 Dosage
      attr_accessor :patternMeta                       # 0-1 Meta
      attr_accessor :example                           # 0-* [ ElementDefinition::Example ]
      attr_accessor :minValueDate                      # 0-1 date
      attr_accessor :minValueDateTime                  # 0-1 dateTime
      attr_accessor :minValueInstant                   # 0-1 instant
      attr_accessor :minValueTime                      # 0-1 time
      attr_accessor :minValueDecimal                   # 0-1 decimal
      attr_accessor :minValueInteger                   # 0-1 integer
      attr_accessor :minValueInteger64                 # 0-1 integer64
      attr_accessor :minValuePositiveInt               # 0-1 positiveInt
      attr_accessor :minValueUnsignedInt               # 0-1 unsignedInt
      attr_accessor :minValueQuantity                  # 0-1 Quantity
      attr_accessor :maxValueDate                      # 0-1 date
      attr_accessor :maxValueDateTime                  # 0-1 dateTime
      attr_accessor :maxValueInstant                   # 0-1 instant
      attr_accessor :maxValueTime                      # 0-1 time
      attr_accessor :maxValueDecimal                   # 0-1 decimal
      attr_accessor :maxValueInteger                   # 0-1 integer
      attr_accessor :maxValueInteger64                 # 0-1 integer64
      attr_accessor :maxValuePositiveInt               # 0-1 positiveInt
      attr_accessor :maxValueUnsignedInt               # 0-1 unsignedInt
      attr_accessor :maxValueQuantity                  # 0-1 Quantity
      attr_accessor :maxLength                         # 0-1 integer
      attr_accessor :condition                         # 0-* [ id ]
      attr_accessor :constraint                        # 0-* [ ElementDefinition::Constraint ]
      attr_accessor :mustHaveValue                     # 0-1 boolean
      attr_accessor :valueAlternatives                 # 0-* [ canonical ]
      attr_accessor :mustSupport                       # 0-1 boolean
      attr_accessor :isModifier                        # 0-1 boolean
      attr_accessor :isModifierReason                  # 0-1 string
      attr_accessor :isSummary                         # 0-1 boolean
      attr_accessor :binding                           # 0-1 ElementDefinition::Binding
      attr_accessor :mapping                           # 0-* [ ElementDefinition::Mapping ]
    end
  end
end