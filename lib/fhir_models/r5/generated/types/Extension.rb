module FHIR
  module R5
    class Extension < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'value' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'integer64', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'CodeableReference', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'RatioRange', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Availability', 'ExtendedContactDetail', 'Dosage', 'Meta']
      }
      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'Extension.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'Extension.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'path'=>'Extension.url', 'type'=>'uri', 'min'=>1, 'max'=>1},
        'valueBase64Binary' => {'path'=>'Extension.value[x]', 'type'=>'base64Binary', 'min'=>0, 'max'=>1},
        'valueBoolean' => {'path'=>'Extension.value[x]', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'valueCanonical' => {'path'=>'Extension.value[x]', 'type'=>'canonical', 'min'=>0, 'max'=>1},
        'valueCode' => {'path'=>'Extension.value[x]', 'type'=>'code', 'min'=>0, 'max'=>1},
        'valueDate' => {'path'=>'Extension.value[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
        'valueDateTime' => {'path'=>'Extension.value[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'valueDecimal' => {'path'=>'Extension.value[x]', 'type'=>'decimal', 'min'=>0, 'max'=>1},
        'valueId' => {'path'=>'Extension.value[x]', 'type'=>'id', 'min'=>0, 'max'=>1},
        'valueInstant' => {'path'=>'Extension.value[x]', 'type'=>'instant', 'min'=>0, 'max'=>1},
        'valueInteger' => {'path'=>'Extension.value[x]', 'type'=>'integer', 'min'=>0, 'max'=>1},
        'valueInteger64' => {'path'=>'Extension.value[x]', 'type'=>'integer64', 'min'=>0, 'max'=>1},
        'valueMarkdown' => {'path'=>'Extension.value[x]', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'valueOid' => {'path'=>'Extension.value[x]', 'type'=>'oid', 'min'=>0, 'max'=>1},
        'valuePositiveInt' => {'path'=>'Extension.value[x]', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
        'valueString' => {'path'=>'Extension.value[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
        'valueTime' => {'path'=>'Extension.value[x]', 'type'=>'time', 'min'=>0, 'max'=>1},
        'valueUnsignedInt' => {'path'=>'Extension.value[x]', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
        'valueUri' => {'path'=>'Extension.value[x]', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'valueUrl' => {'path'=>'Extension.value[x]', 'type'=>'url', 'min'=>0, 'max'=>1},
        'valueUuid' => {'path'=>'Extension.value[x]', 'type'=>'uuid', 'min'=>0, 'max'=>1},
        'valueAddress' => {'path'=>'Extension.value[x]', 'type'=>'Address', 'min'=>0, 'max'=>1},
        'valueAge' => {'path'=>'Extension.value[x]', 'type'=>'Age', 'min'=>0, 'max'=>1},
        'valueAnnotation' => {'path'=>'Extension.value[x]', 'type'=>'Annotation', 'min'=>0, 'max'=>1},
        'valueAttachment' => {'path'=>'Extension.value[x]', 'type'=>'Attachment', 'min'=>0, 'max'=>1},
        'valueCodeableConcept' => {'path'=>'Extension.value[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'valueCodeableReference' => {'path'=>'Extension.value[x]', 'type'=>'CodeableReference', 'min'=>0, 'max'=>1},
        'valueCoding' => {'path'=>'Extension.value[x]', 'type'=>'Coding', 'min'=>0, 'max'=>1},
        'valueContactPoint' => {'path'=>'Extension.value[x]', 'type'=>'ContactPoint', 'min'=>0, 'max'=>1},
        'valueCount' => {'path'=>'Extension.value[x]', 'type'=>'Count', 'min'=>0, 'max'=>1},
        'valueDistance' => {'path'=>'Extension.value[x]', 'type'=>'Distance', 'min'=>0, 'max'=>1},
        'valueDuration' => {'path'=>'Extension.value[x]', 'type'=>'Duration', 'min'=>0, 'max'=>1},
        'valueHumanName' => {'path'=>'Extension.value[x]', 'type'=>'HumanName', 'min'=>0, 'max'=>1},
        'valueIdentifier' => {'path'=>'Extension.value[x]', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'valueMoney' => {'path'=>'Extension.value[x]', 'type'=>'Money', 'min'=>0, 'max'=>1},
        'valuePeriod' => {'path'=>'Extension.value[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'valueQuantity' => {'path'=>'Extension.value[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'valueRange' => {'path'=>'Extension.value[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
        'valueRatio' => {'path'=>'Extension.value[x]', 'type'=>'Ratio', 'min'=>0, 'max'=>1},
        'valueRatioRange' => {'path'=>'Extension.value[x]', 'type'=>'RatioRange', 'min'=>0, 'max'=>1},
        'valueReference' => {'path'=>'Extension.value[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'valueSampledData' => {'path'=>'Extension.value[x]', 'type'=>'SampledData', 'min'=>0, 'max'=>1},
        'valueSignature' => {'path'=>'Extension.value[x]', 'type'=>'Signature', 'min'=>0, 'max'=>1},
        'valueTiming' => {'path'=>'Extension.value[x]', 'type'=>'Timing', 'min'=>0, 'max'=>1},
        'valueContactDetail' => {'path'=>'Extension.value[x]', 'type'=>'ContactDetail', 'min'=>0, 'max'=>1},
        'valueDataRequirement' => {'path'=>'Extension.value[x]', 'type'=>'DataRequirement', 'min'=>0, 'max'=>1},
        'valueExpression' => {'path'=>'Extension.value[x]', 'type'=>'Expression', 'min'=>0, 'max'=>1},
        'valueParameterDefinition' => {'path'=>'Extension.value[x]', 'type'=>'ParameterDefinition', 'min'=>0, 'max'=>1},
        'valueRelatedArtifact' => {'path'=>'Extension.value[x]', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>1},
        'valueTriggerDefinition' => {'path'=>'Extension.value[x]', 'type'=>'TriggerDefinition', 'min'=>0, 'max'=>1},
        'valueUsageContext' => {'path'=>'Extension.value[x]', 'type'=>'UsageContext', 'min'=>0, 'max'=>1},
        'valueAvailability' => {'path'=>'Extension.value[x]', 'type'=>'Availability', 'min'=>0, 'max'=>1},
        'valueExtendedContactDetail' => {'path'=>'Extension.value[x]', 'type'=>'ExtendedContactDetail', 'min'=>0, 'max'=>1},
        'valueDosage' => {'path'=>'Extension.value[x]', 'type'=>'Dosage', 'min'=>0, 'max'=>1},
        'valueMeta' => {'path'=>'Extension.value[x]', 'type'=>'Meta', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id                         # 0-1 string
      attr_accessor :extension                  # 0-* [ Extension ]
      attr_accessor :url                        # 1-1 uri
      attr_accessor :valueBase64Binary          # 0-1 base64Binary
      attr_accessor :valueBoolean               # 0-1 boolean
      attr_accessor :valueCanonical             # 0-1 canonical
      attr_accessor :valueCode                  # 0-1 code
      attr_accessor :valueDate                  # 0-1 date
      attr_accessor :valueDateTime              # 0-1 dateTime
      attr_accessor :valueDecimal               # 0-1 decimal
      attr_accessor :valueId                    # 0-1 id
      attr_accessor :valueInstant               # 0-1 instant
      attr_accessor :valueInteger               # 0-1 integer
      attr_accessor :valueInteger64             # 0-1 integer64
      attr_accessor :valueMarkdown              # 0-1 markdown
      attr_accessor :valueOid                   # 0-1 oid
      attr_accessor :valuePositiveInt           # 0-1 positiveInt
      attr_accessor :valueString                # 0-1 string
      attr_accessor :valueTime                  # 0-1 time
      attr_accessor :valueUnsignedInt           # 0-1 unsignedInt
      attr_accessor :valueUri                   # 0-1 uri
      attr_accessor :valueUrl                   # 0-1 url
      attr_accessor :valueUuid                  # 0-1 uuid
      attr_accessor :valueAddress               # 0-1 Address
      attr_accessor :valueAge                   # 0-1 Age
      attr_accessor :valueAnnotation            # 0-1 Annotation
      attr_accessor :valueAttachment            # 0-1 Attachment
      attr_accessor :valueCodeableConcept       # 0-1 CodeableConcept
      attr_accessor :valueCodeableReference     # 0-1 CodeableReference
      attr_accessor :valueCoding                # 0-1 Coding
      attr_accessor :valueContactPoint          # 0-1 ContactPoint
      attr_accessor :valueCount                 # 0-1 Count
      attr_accessor :valueDistance              # 0-1 Distance
      attr_accessor :valueDuration              # 0-1 Duration
      attr_accessor :valueHumanName             # 0-1 HumanName
      attr_accessor :valueIdentifier            # 0-1 Identifier
      attr_accessor :valueMoney                 # 0-1 Money
      attr_accessor :valuePeriod                # 0-1 Period
      attr_accessor :valueQuantity              # 0-1 Quantity
      attr_accessor :valueRange                 # 0-1 Range
      attr_accessor :valueRatio                 # 0-1 Ratio
      attr_accessor :valueRatioRange            # 0-1 RatioRange
      attr_accessor :valueReference             # 0-1 Reference()
      attr_accessor :valueSampledData           # 0-1 SampledData
      attr_accessor :valueSignature             # 0-1 Signature
      attr_accessor :valueTiming                # 0-1 Timing
      attr_accessor :valueContactDetail         # 0-1 ContactDetail
      attr_accessor :valueDataRequirement       # 0-1 DataRequirement
      attr_accessor :valueExpression            # 0-1 Expression
      attr_accessor :valueParameterDefinition   # 0-1 ParameterDefinition
      attr_accessor :valueRelatedArtifact       # 0-1 RelatedArtifact
      attr_accessor :valueTriggerDefinition     # 0-1 TriggerDefinition
      attr_accessor :valueUsageContext          # 0-1 UsageContext
      attr_accessor :valueAvailability          # 0-1 Availability
      attr_accessor :valueExtendedContactDetail # 0-1 ExtendedContactDetail
      attr_accessor :valueDosage                # 0-1 Dosage
      attr_accessor :valueMeta                  # 0-1 Meta
    end
  end
end