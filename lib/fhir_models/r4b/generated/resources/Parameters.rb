module FHIR
  module R4B
    class Parameters < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'Parameters.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Parameters.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Parameters.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Parameters.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'parameter' => {'path'=>'Parameters.parameter', 'type'=>'Parameters::Parameter', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Parameter < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'value' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'Contributor', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Dosage', 'Meta']
        }
        METADATA = {
          'id' => {'path'=>'Parameter.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Parameter.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Parameter.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'path'=>'Parameter.name', 'type'=>'string', 'min'=>1, 'max'=>1},
          'valueBase64Binary' => {'path'=>'Parameter.value[x]', 'type'=>'base64Binary', 'min'=>0, 'max'=>1},
          'valueBoolean' => {'path'=>'Parameter.value[x]', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'valueCanonical' => {'path'=>'Parameter.value[x]', 'type'=>'canonical', 'min'=>0, 'max'=>1},
          'valueCode' => {'path'=>'Parameter.value[x]', 'type'=>'code', 'min'=>0, 'max'=>1},
          'valueDate' => {'path'=>'Parameter.value[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
          'valueDateTime' => {'path'=>'Parameter.value[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'valueDecimal' => {'path'=>'Parameter.value[x]', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'valueId' => {'path'=>'Parameter.value[x]', 'type'=>'id', 'min'=>0, 'max'=>1},
          'valueInstant' => {'path'=>'Parameter.value[x]', 'type'=>'instant', 'min'=>0, 'max'=>1},
          'valueInteger' => {'path'=>'Parameter.value[x]', 'type'=>'integer', 'min'=>0, 'max'=>1},
          'valueMarkdown' => {'path'=>'Parameter.value[x]', 'type'=>'markdown', 'min'=>0, 'max'=>1},
          'valueOid' => {'path'=>'Parameter.value[x]', 'type'=>'oid', 'min'=>0, 'max'=>1},
          'valuePositiveInt' => {'path'=>'Parameter.value[x]', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
          'valueString' => {'path'=>'Parameter.value[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
          'valueTime' => {'path'=>'Parameter.value[x]', 'type'=>'time', 'min'=>0, 'max'=>1},
          'valueUnsignedInt' => {'path'=>'Parameter.value[x]', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
          'valueUri' => {'path'=>'Parameter.value[x]', 'type'=>'uri', 'min'=>0, 'max'=>1},
          'valueUrl' => {'path'=>'Parameter.value[x]', 'type'=>'url', 'min'=>0, 'max'=>1},
          'valueUuid' => {'path'=>'Parameter.value[x]', 'type'=>'uuid', 'min'=>0, 'max'=>1},
          'valueAddress' => {'path'=>'Parameter.value[x]', 'type'=>'Address', 'min'=>0, 'max'=>1},
          'valueAge' => {'path'=>'Parameter.value[x]', 'type'=>'Age', 'min'=>0, 'max'=>1},
          'valueAnnotation' => {'path'=>'Parameter.value[x]', 'type'=>'Annotation', 'min'=>0, 'max'=>1},
          'valueAttachment' => {'path'=>'Parameter.value[x]', 'type'=>'Attachment', 'min'=>0, 'max'=>1},
          'valueCodeableConcept' => {'path'=>'Parameter.value[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'valueCoding' => {'path'=>'Parameter.value[x]', 'type'=>'Coding', 'min'=>0, 'max'=>1},
          'valueContactPoint' => {'path'=>'Parameter.value[x]', 'type'=>'ContactPoint', 'min'=>0, 'max'=>1},
          'valueCount' => {'path'=>'Parameter.value[x]', 'type'=>'Count', 'min'=>0, 'max'=>1},
          'valueDistance' => {'path'=>'Parameter.value[x]', 'type'=>'Distance', 'min'=>0, 'max'=>1},
          'valueDuration' => {'path'=>'Parameter.value[x]', 'type'=>'Duration', 'min'=>0, 'max'=>1},
          'valueHumanName' => {'path'=>'Parameter.value[x]', 'type'=>'HumanName', 'min'=>0, 'max'=>1},
          'valueIdentifier' => {'path'=>'Parameter.value[x]', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
          'valueMoney' => {'path'=>'Parameter.value[x]', 'type'=>'Money', 'min'=>0, 'max'=>1},
          'valuePeriod' => {'path'=>'Parameter.value[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'valueQuantity' => {'path'=>'Parameter.value[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'valueRange' => {'path'=>'Parameter.value[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
          'valueRatio' => {'path'=>'Parameter.value[x]', 'type'=>'Ratio', 'min'=>0, 'max'=>1},
          'valueReference' => {'path'=>'Parameter.value[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'valueSampledData' => {'path'=>'Parameter.value[x]', 'type'=>'SampledData', 'min'=>0, 'max'=>1},
          'valueSignature' => {'path'=>'Parameter.value[x]', 'type'=>'Signature', 'min'=>0, 'max'=>1},
          'valueTiming' => {'path'=>'Parameter.value[x]', 'type'=>'Timing', 'min'=>0, 'max'=>1},
          'valueContactDetail' => {'path'=>'Parameter.value[x]', 'type'=>'ContactDetail', 'min'=>0, 'max'=>1},
          'valueContributor' => {'path'=>'Parameter.value[x]', 'type'=>'Contributor', 'min'=>0, 'max'=>1},
          'valueDataRequirement' => {'path'=>'Parameter.value[x]', 'type'=>'DataRequirement', 'min'=>0, 'max'=>1},
          'valueExpression' => {'path'=>'Parameter.value[x]', 'type'=>'Expression', 'min'=>0, 'max'=>1},
          'valueParameterDefinition' => {'path'=>'Parameter.value[x]', 'type'=>'ParameterDefinition', 'min'=>0, 'max'=>1},
          'valueRelatedArtifact' => {'path'=>'Parameter.value[x]', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>1},
          'valueTriggerDefinition' => {'path'=>'Parameter.value[x]', 'type'=>'TriggerDefinition', 'min'=>0, 'max'=>1},
          'valueUsageContext' => {'path'=>'Parameter.value[x]', 'type'=>'UsageContext', 'min'=>0, 'max'=>1},
          'valueDosage' => {'path'=>'Parameter.value[x]', 'type'=>'Dosage', 'min'=>0, 'max'=>1},
          'valueMeta' => {'path'=>'Parameter.value[x]', 'type'=>'Meta', 'min'=>0, 'max'=>1},
          'resource' => {'path'=>'Parameter.resource', 'type'=>'Resource', 'min'=>0, 'max'=>1},
          'part' => {'path'=>'Parameter.part', 'type'=>'Parameters::Parameter', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                       # 0-1 string
        attr_accessor :extension                # 0-* [ Extension ]
        attr_accessor :modifierExtension        # 0-* [ Extension ]
        attr_accessor :name                     # 1-1 string
        attr_accessor :valueBase64Binary        # 0-1 base64Binary
        attr_accessor :valueBoolean             # 0-1 boolean
        attr_accessor :valueCanonical           # 0-1 canonical
        attr_accessor :valueCode                # 0-1 code
        attr_accessor :valueDate                # 0-1 date
        attr_accessor :valueDateTime            # 0-1 dateTime
        attr_accessor :valueDecimal             # 0-1 decimal
        attr_accessor :valueId                  # 0-1 id
        attr_accessor :valueInstant             # 0-1 instant
        attr_accessor :valueInteger             # 0-1 integer
        attr_accessor :valueMarkdown            # 0-1 markdown
        attr_accessor :valueOid                 # 0-1 oid
        attr_accessor :valuePositiveInt         # 0-1 positiveInt
        attr_accessor :valueString              # 0-1 string
        attr_accessor :valueTime                # 0-1 time
        attr_accessor :valueUnsignedInt         # 0-1 unsignedInt
        attr_accessor :valueUri                 # 0-1 uri
        attr_accessor :valueUrl                 # 0-1 url
        attr_accessor :valueUuid                # 0-1 uuid
        attr_accessor :valueAddress             # 0-1 Address
        attr_accessor :valueAge                 # 0-1 Age
        attr_accessor :valueAnnotation          # 0-1 Annotation
        attr_accessor :valueAttachment          # 0-1 Attachment
        attr_accessor :valueCodeableConcept     # 0-1 CodeableConcept
        attr_accessor :valueCoding              # 0-1 Coding
        attr_accessor :valueContactPoint        # 0-1 ContactPoint
        attr_accessor :valueCount               # 0-1 Count
        attr_accessor :valueDistance            # 0-1 Distance
        attr_accessor :valueDuration            # 0-1 Duration
        attr_accessor :valueHumanName           # 0-1 HumanName
        attr_accessor :valueIdentifier          # 0-1 Identifier
        attr_accessor :valueMoney               # 0-1 Money
        attr_accessor :valuePeriod              # 0-1 Period
        attr_accessor :valueQuantity            # 0-1 Quantity
        attr_accessor :valueRange               # 0-1 Range
        attr_accessor :valueRatio               # 0-1 Ratio
        attr_accessor :valueReference           # 0-1 Reference()
        attr_accessor :valueSampledData         # 0-1 SampledData
        attr_accessor :valueSignature           # 0-1 Signature
        attr_accessor :valueTiming              # 0-1 Timing
        attr_accessor :valueContactDetail       # 0-1 ContactDetail
        attr_accessor :valueContributor         # 0-1 Contributor
        attr_accessor :valueDataRequirement     # 0-1 DataRequirement
        attr_accessor :valueExpression          # 0-1 Expression
        attr_accessor :valueParameterDefinition # 0-1 ParameterDefinition
        attr_accessor :valueRelatedArtifact     # 0-1 RelatedArtifact
        attr_accessor :valueTriggerDefinition   # 0-1 TriggerDefinition
        attr_accessor :valueUsageContext        # 0-1 UsageContext
        attr_accessor :valueDosage              # 0-1 Dosage
        attr_accessor :valueMeta                # 0-1 Meta
        attr_accessor :resource                 # 0-1 Resource
        attr_accessor :part                     # 0-* [ Parameters::Parameter ]
      end

      attr_accessor :id            # 0-1 id
      attr_accessor :meta          # 0-1 Meta
      attr_accessor :implicitRules # 0-1 uri
      attr_accessor :language      # 0-1 code
      attr_accessor :parameter     # 0-* [ Parameters::Parameter ]

      def resourceType
        'Parameters'
      end
    end
  end
end