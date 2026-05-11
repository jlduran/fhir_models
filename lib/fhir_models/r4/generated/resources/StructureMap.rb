module FHIR
  module R4
    class StructureMap < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'context-type-quantity', 'context-type-value', 'date', 'description', 'identifier', 'jurisdiction', 'name', 'publisher', 'status', 'title', 'url', 'version']
      METADATA = {
        'id' => {'path'=>'StructureMap.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'StructureMap.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'StructureMap.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'StructureMap.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'StructureMap.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'StructureMap.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'StructureMap.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'StructureMap.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'path'=>'StructureMap.url', 'type'=>'uri', 'min'=>1, 'max'=>1},
        'identifier' => {'path'=>'StructureMap.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'path'=>'StructureMap.version', 'type'=>'string', 'min'=>0, 'max'=>1},
        'name' => {'path'=>'StructureMap.name', 'type'=>'string', 'min'=>1, 'max'=>1},
        'title' => {'path'=>'StructureMap.title', 'type'=>'string', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'StructureMap.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'experimental' => {'path'=>'StructureMap.experimental', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'date' => {'path'=>'StructureMap.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'publisher' => {'path'=>'StructureMap.publisher', 'type'=>'string', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'StructureMap.contact', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'StructureMap.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'useContext' => {'path'=>'StructureMap.useContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'path'=>'StructureMap.jurisdiction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'path'=>'StructureMap.purpose', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'copyright' => {'path'=>'StructureMap.copyright', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'structure' => {'path'=>'StructureMap.structure', 'type'=>'StructureMap::Structure', 'min'=>0, 'max'=>Float::INFINITY},
        'import' => {'path'=>'StructureMap.import', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY},
        'group' => {'path'=>'StructureMap.group', 'type'=>'StructureMap::Group', 'min'=>1, 'max'=>Float::INFINITY}
      }

      class Structure < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Structure.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Structure.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Structure.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'url' => {'path'=>'Structure.url', 'type'=>'canonical', 'min'=>1, 'max'=>1},
          'mode' => {'valid_codes'=>{'http://hl7.org/fhir/map-model-mode'=>['source', 'queried', 'target', 'produced']}, 'path'=>'Structure.mode', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/map-model-mode'}},
          'alias' => {'path'=>'Structure.alias', 'type'=>'string', 'min'=>0, 'max'=>1},
          'documentation' => {'path'=>'Structure.documentation', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :url               # 1-1 canonical
        attr_accessor :mode              # 1-1 code
        attr_accessor :alias             # 0-1 string
        attr_accessor :documentation     # 0-1 string
      end

      class Group < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Group.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Group.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Group.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'path'=>'Group.name', 'type'=>'id', 'min'=>1, 'max'=>1},
          'extends' => {'path'=>'Group.extends', 'type'=>'id', 'min'=>0, 'max'=>1},
          'typeMode' => {'valid_codes'=>{'http://hl7.org/fhir/map-group-type-mode'=>['none', 'types', 'type-and-types']}, 'path'=>'Group.typeMode', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/map-group-type-mode'}},
          'documentation' => {'path'=>'Group.documentation', 'type'=>'string', 'min'=>0, 'max'=>1},
          'input' => {'path'=>'Group.input', 'type'=>'StructureMap::Group::Input', 'min'=>1, 'max'=>Float::INFINITY},
          'rule' => {'path'=>'Group.rule', 'type'=>'StructureMap::Group::Rule', 'min'=>1, 'max'=>Float::INFINITY}
        }

        class Input < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Input.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Input.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Input.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'name' => {'path'=>'Input.name', 'type'=>'id', 'min'=>1, 'max'=>1},
            'type' => {'path'=>'Input.type', 'type'=>'string', 'min'=>0, 'max'=>1},
            'mode' => {'valid_codes'=>{'http://hl7.org/fhir/map-input-mode'=>['source', 'target']}, 'path'=>'Input.mode', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/map-input-mode'}},
            'documentation' => {'path'=>'Input.documentation', 'type'=>'string', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :name              # 1-1 id
          attr_accessor :type              # 0-1 string
          attr_accessor :mode              # 1-1 code
          attr_accessor :documentation     # 0-1 string
        end

        class Rule < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Rule.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Rule.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Rule.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'name' => {'path'=>'Rule.name', 'type'=>'id', 'min'=>1, 'max'=>1},
            'source' => {'path'=>'Rule.source', 'type'=>'StructureMap::Group::Rule::Source', 'min'=>1, 'max'=>Float::INFINITY},
            'target' => {'path'=>'Rule.target', 'type'=>'StructureMap::Group::Rule::Target', 'min'=>0, 'max'=>Float::INFINITY},
            'rule' => {'path'=>'Rule.rule', 'type'=>'StructureMap::Group::Rule', 'min'=>0, 'max'=>Float::INFINITY},
            'dependent' => {'path'=>'Rule.dependent', 'type'=>'StructureMap::Group::Rule::Dependent', 'min'=>0, 'max'=>Float::INFINITY},
            'documentation' => {'path'=>'Rule.documentation', 'type'=>'string', 'min'=>0, 'max'=>1}
          }

          class Source < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            MULTIPLE_TYPES = {
              'defaultValue' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'Contributor', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Dosage', 'Meta']
            }
            METADATA = {
              'id' => {'path'=>'Source.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Source.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Source.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'context' => {'path'=>'Source.context', 'type'=>'id', 'min'=>1, 'max'=>1},
              'min' => {'path'=>'Source.min', 'type'=>'integer', 'min'=>0, 'max'=>1},
              'max' => {'path'=>'Source.max', 'type'=>'string', 'min'=>0, 'max'=>1},
              'type' => {'path'=>'Source.type', 'type'=>'string', 'min'=>0, 'max'=>1},
              'defaultValueBase64Binary' => {'path'=>'Source.defaultValue[x]', 'type'=>'base64Binary', 'min'=>0, 'max'=>1},
              'defaultValueBoolean' => {'path'=>'Source.defaultValue[x]', 'type'=>'boolean', 'min'=>0, 'max'=>1},
              'defaultValueCanonical' => {'path'=>'Source.defaultValue[x]', 'type'=>'canonical', 'min'=>0, 'max'=>1},
              'defaultValueCode' => {'path'=>'Source.defaultValue[x]', 'type'=>'code', 'min'=>0, 'max'=>1},
              'defaultValueDate' => {'path'=>'Source.defaultValue[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
              'defaultValueDateTime' => {'path'=>'Source.defaultValue[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
              'defaultValueDecimal' => {'path'=>'Source.defaultValue[x]', 'type'=>'decimal', 'min'=>0, 'max'=>1},
              'defaultValueId' => {'path'=>'Source.defaultValue[x]', 'type'=>'id', 'min'=>0, 'max'=>1},
              'defaultValueInstant' => {'path'=>'Source.defaultValue[x]', 'type'=>'instant', 'min'=>0, 'max'=>1},
              'defaultValueInteger' => {'path'=>'Source.defaultValue[x]', 'type'=>'integer', 'min'=>0, 'max'=>1},
              'defaultValueMarkdown' => {'path'=>'Source.defaultValue[x]', 'type'=>'markdown', 'min'=>0, 'max'=>1},
              'defaultValueOid' => {'path'=>'Source.defaultValue[x]', 'type'=>'oid', 'min'=>0, 'max'=>1},
              'defaultValuePositiveInt' => {'path'=>'Source.defaultValue[x]', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
              'defaultValueString' => {'path'=>'Source.defaultValue[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
              'defaultValueTime' => {'path'=>'Source.defaultValue[x]', 'type'=>'time', 'min'=>0, 'max'=>1},
              'defaultValueUnsignedInt' => {'path'=>'Source.defaultValue[x]', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
              'defaultValueUri' => {'path'=>'Source.defaultValue[x]', 'type'=>'uri', 'min'=>0, 'max'=>1},
              'defaultValueUrl' => {'path'=>'Source.defaultValue[x]', 'type'=>'url', 'min'=>0, 'max'=>1},
              'defaultValueUuid' => {'path'=>'Source.defaultValue[x]', 'type'=>'uuid', 'min'=>0, 'max'=>1},
              'defaultValueAddress' => {'path'=>'Source.defaultValue[x]', 'type'=>'Address', 'min'=>0, 'max'=>1},
              'defaultValueAge' => {'path'=>'Source.defaultValue[x]', 'type'=>'Age', 'min'=>0, 'max'=>1},
              'defaultValueAnnotation' => {'path'=>'Source.defaultValue[x]', 'type'=>'Annotation', 'min'=>0, 'max'=>1},
              'defaultValueAttachment' => {'path'=>'Source.defaultValue[x]', 'type'=>'Attachment', 'min'=>0, 'max'=>1},
              'defaultValueCodeableConcept' => {'path'=>'Source.defaultValue[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
              'defaultValueCoding' => {'path'=>'Source.defaultValue[x]', 'type'=>'Coding', 'min'=>0, 'max'=>1},
              'defaultValueContactPoint' => {'path'=>'Source.defaultValue[x]', 'type'=>'ContactPoint', 'min'=>0, 'max'=>1},
              'defaultValueCount' => {'path'=>'Source.defaultValue[x]', 'type'=>'Count', 'min'=>0, 'max'=>1},
              'defaultValueDistance' => {'path'=>'Source.defaultValue[x]', 'type'=>'Distance', 'min'=>0, 'max'=>1},
              'defaultValueDuration' => {'path'=>'Source.defaultValue[x]', 'type'=>'Duration', 'min'=>0, 'max'=>1},
              'defaultValueHumanName' => {'path'=>'Source.defaultValue[x]', 'type'=>'HumanName', 'min'=>0, 'max'=>1},
              'defaultValueIdentifier' => {'path'=>'Source.defaultValue[x]', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
              'defaultValueMoney' => {'path'=>'Source.defaultValue[x]', 'type'=>'Money', 'min'=>0, 'max'=>1},
              'defaultValuePeriod' => {'path'=>'Source.defaultValue[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
              'defaultValueQuantity' => {'path'=>'Source.defaultValue[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
              'defaultValueRange' => {'path'=>'Source.defaultValue[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
              'defaultValueRatio' => {'path'=>'Source.defaultValue[x]', 'type'=>'Ratio', 'min'=>0, 'max'=>1},
              'defaultValueReference' => {'path'=>'Source.defaultValue[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
              'defaultValueSampledData' => {'path'=>'Source.defaultValue[x]', 'type'=>'SampledData', 'min'=>0, 'max'=>1},
              'defaultValueSignature' => {'path'=>'Source.defaultValue[x]', 'type'=>'Signature', 'min'=>0, 'max'=>1},
              'defaultValueTiming' => {'path'=>'Source.defaultValue[x]', 'type'=>'Timing', 'min'=>0, 'max'=>1},
              'defaultValueContactDetail' => {'path'=>'Source.defaultValue[x]', 'type'=>'ContactDetail', 'min'=>0, 'max'=>1},
              'defaultValueContributor' => {'path'=>'Source.defaultValue[x]', 'type'=>'Contributor', 'min'=>0, 'max'=>1},
              'defaultValueDataRequirement' => {'path'=>'Source.defaultValue[x]', 'type'=>'DataRequirement', 'min'=>0, 'max'=>1},
              'defaultValueExpression' => {'path'=>'Source.defaultValue[x]', 'type'=>'Expression', 'min'=>0, 'max'=>1},
              'defaultValueParameterDefinition' => {'path'=>'Source.defaultValue[x]', 'type'=>'ParameterDefinition', 'min'=>0, 'max'=>1},
              'defaultValueRelatedArtifact' => {'path'=>'Source.defaultValue[x]', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>1},
              'defaultValueTriggerDefinition' => {'path'=>'Source.defaultValue[x]', 'type'=>'TriggerDefinition', 'min'=>0, 'max'=>1},
              'defaultValueUsageContext' => {'path'=>'Source.defaultValue[x]', 'type'=>'UsageContext', 'min'=>0, 'max'=>1},
              'defaultValueDosage' => {'path'=>'Source.defaultValue[x]', 'type'=>'Dosage', 'min'=>0, 'max'=>1},
              'defaultValueMeta' => {'path'=>'Source.defaultValue[x]', 'type'=>'Meta', 'min'=>0, 'max'=>1},
              'element' => {'path'=>'Source.element', 'type'=>'string', 'min'=>0, 'max'=>1},
              'listMode' => {'valid_codes'=>{'http://hl7.org/fhir/map-source-list-mode'=>['first', 'not_first', 'last', 'not_last', 'only_one']}, 'path'=>'Source.listMode', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/map-source-list-mode'}},
              'variable' => {'path'=>'Source.variable', 'type'=>'id', 'min'=>0, 'max'=>1},
              'condition' => {'path'=>'Source.condition', 'type'=>'string', 'min'=>0, 'max'=>1},
              'check' => {'path'=>'Source.check', 'type'=>'string', 'min'=>0, 'max'=>1},
              'logMessage' => {'path'=>'Source.logMessage', 'type'=>'string', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                              # 0-1 string
            attr_accessor :extension                       # 0-* [ Extension ]
            attr_accessor :modifierExtension               # 0-* [ Extension ]
            attr_accessor :context                         # 1-1 id
            attr_accessor :min                             # 0-1 integer
            attr_accessor :max                             # 0-1 string
            attr_accessor :type                            # 0-1 string
            attr_accessor :defaultValueBase64Binary        # 0-1 base64Binary
            attr_accessor :defaultValueBoolean             # 0-1 boolean
            attr_accessor :defaultValueCanonical           # 0-1 canonical
            attr_accessor :defaultValueCode                # 0-1 code
            attr_accessor :defaultValueDate                # 0-1 date
            attr_accessor :defaultValueDateTime            # 0-1 dateTime
            attr_accessor :defaultValueDecimal             # 0-1 decimal
            attr_accessor :defaultValueId                  # 0-1 id
            attr_accessor :defaultValueInstant             # 0-1 instant
            attr_accessor :defaultValueInteger             # 0-1 integer
            attr_accessor :defaultValueMarkdown            # 0-1 markdown
            attr_accessor :defaultValueOid                 # 0-1 oid
            attr_accessor :defaultValuePositiveInt         # 0-1 positiveInt
            attr_accessor :defaultValueString              # 0-1 string
            attr_accessor :defaultValueTime                # 0-1 time
            attr_accessor :defaultValueUnsignedInt         # 0-1 unsignedInt
            attr_accessor :defaultValueUri                 # 0-1 uri
            attr_accessor :defaultValueUrl                 # 0-1 url
            attr_accessor :defaultValueUuid                # 0-1 uuid
            attr_accessor :defaultValueAddress             # 0-1 Address
            attr_accessor :defaultValueAge                 # 0-1 Age
            attr_accessor :defaultValueAnnotation          # 0-1 Annotation
            attr_accessor :defaultValueAttachment          # 0-1 Attachment
            attr_accessor :defaultValueCodeableConcept     # 0-1 CodeableConcept
            attr_accessor :defaultValueCoding              # 0-1 Coding
            attr_accessor :defaultValueContactPoint        # 0-1 ContactPoint
            attr_accessor :defaultValueCount               # 0-1 Count
            attr_accessor :defaultValueDistance            # 0-1 Distance
            attr_accessor :defaultValueDuration            # 0-1 Duration
            attr_accessor :defaultValueHumanName           # 0-1 HumanName
            attr_accessor :defaultValueIdentifier          # 0-1 Identifier
            attr_accessor :defaultValueMoney               # 0-1 Money
            attr_accessor :defaultValuePeriod              # 0-1 Period
            attr_accessor :defaultValueQuantity            # 0-1 Quantity
            attr_accessor :defaultValueRange               # 0-1 Range
            attr_accessor :defaultValueRatio               # 0-1 Ratio
            attr_accessor :defaultValueReference           # 0-1 Reference()
            attr_accessor :defaultValueSampledData         # 0-1 SampledData
            attr_accessor :defaultValueSignature           # 0-1 Signature
            attr_accessor :defaultValueTiming              # 0-1 Timing
            attr_accessor :defaultValueContactDetail       # 0-1 ContactDetail
            attr_accessor :defaultValueContributor         # 0-1 Contributor
            attr_accessor :defaultValueDataRequirement     # 0-1 DataRequirement
            attr_accessor :defaultValueExpression          # 0-1 Expression
            attr_accessor :defaultValueParameterDefinition # 0-1 ParameterDefinition
            attr_accessor :defaultValueRelatedArtifact     # 0-1 RelatedArtifact
            attr_accessor :defaultValueTriggerDefinition   # 0-1 TriggerDefinition
            attr_accessor :defaultValueUsageContext        # 0-1 UsageContext
            attr_accessor :defaultValueDosage              # 0-1 Dosage
            attr_accessor :defaultValueMeta                # 0-1 Meta
            attr_accessor :element                         # 0-1 string
            attr_accessor :listMode                        # 0-1 code
            attr_accessor :variable                        # 0-1 id
            attr_accessor :condition                       # 0-1 string
            attr_accessor :check                           # 0-1 string
            attr_accessor :logMessage                      # 0-1 string
          end

          class Target < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Target.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Target.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Target.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'context' => {'path'=>'Target.context', 'type'=>'id', 'min'=>0, 'max'=>1},
              'contextType' => {'valid_codes'=>{'http://hl7.org/fhir/map-context-type'=>['type', 'variable']}, 'path'=>'Target.contextType', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/map-context-type'}},
              'element' => {'path'=>'Target.element', 'type'=>'string', 'min'=>0, 'max'=>1},
              'variable' => {'path'=>'Target.variable', 'type'=>'id', 'min'=>0, 'max'=>1},
              'listMode' => {'valid_codes'=>{'http://hl7.org/fhir/map-target-list-mode'=>['first', 'share', 'last', 'collate']}, 'path'=>'Target.listMode', 'type'=>'code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/map-target-list-mode'}},
              'listRuleId' => {'path'=>'Target.listRuleId', 'type'=>'id', 'min'=>0, 'max'=>1},
              'transform' => {'valid_codes'=>{'http://hl7.org/fhir/map-transform'=>['create', 'copy', 'truncate', 'escape', 'cast', 'append', 'translate', 'reference', 'dateOp', 'uuid', 'pointer', 'evaluate', 'cc', 'c', 'qty', 'id', 'cp']}, 'path'=>'Target.transform', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/map-transform'}},
              'parameter' => {'path'=>'Target.parameter', 'type'=>'StructureMap::Group::Rule::Target::Parameter', 'min'=>0, 'max'=>Float::INFINITY}
            }

            class Parameter < Model
              include FHIR::Hashable
              include FHIR::Json
              include FHIR::Xml

              MULTIPLE_TYPES = {
                'value' => ['id', 'string', 'boolean', 'integer', 'decimal']
              }
              METADATA = {
                'id' => {'path'=>'Parameter.id', 'type'=>'string', 'min'=>0, 'max'=>1},
                'extension' => {'path'=>'Parameter.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
                'modifierExtension' => {'path'=>'Parameter.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
                'valueId' => {'path'=>'Parameter.value[x]', 'type'=>'id', 'min'=>1, 'max'=>1},
                'valueString' => {'path'=>'Parameter.value[x]', 'type'=>'string', 'min'=>1, 'max'=>1},
                'valueBoolean' => {'path'=>'Parameter.value[x]', 'type'=>'boolean', 'min'=>1, 'max'=>1},
                'valueInteger' => {'path'=>'Parameter.value[x]', 'type'=>'integer', 'min'=>1, 'max'=>1},
                'valueDecimal' => {'path'=>'Parameter.value[x]', 'type'=>'decimal', 'min'=>1, 'max'=>1}
              }

              attr_accessor :id                # 0-1 string
              attr_accessor :extension         # 0-* [ Extension ]
              attr_accessor :modifierExtension # 0-* [ Extension ]
              attr_accessor :valueId           # 1-1 id
              attr_accessor :valueString       # 1-1 string
              attr_accessor :valueBoolean      # 1-1 boolean
              attr_accessor :valueInteger      # 1-1 integer
              attr_accessor :valueDecimal      # 1-1 decimal
            end

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :context           # 0-1 id
            attr_accessor :contextType       # 0-1 code
            attr_accessor :element           # 0-1 string
            attr_accessor :variable          # 0-1 id
            attr_accessor :listMode          # 0-* [ code ]
            attr_accessor :listRuleId        # 0-1 id
            attr_accessor :transform         # 0-1 code
            attr_accessor :parameter         # 0-* [ StructureMap::Group::Rule::Target::Parameter ]
          end

          class Dependent < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Dependent.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Dependent.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Dependent.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'name' => {'path'=>'Dependent.name', 'type'=>'id', 'min'=>1, 'max'=>1},
              'variable' => {'path'=>'Dependent.variable', 'type'=>'string', 'min'=>1, 'max'=>Float::INFINITY}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :name              # 1-1 id
            attr_accessor :variable          # 1-* [ string ]
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :name              # 1-1 id
          attr_accessor :source            # 1-* [ StructureMap::Group::Rule::Source ]
          attr_accessor :target            # 0-* [ StructureMap::Group::Rule::Target ]
          attr_accessor :rule              # 0-* [ StructureMap::Group::Rule ]
          attr_accessor :dependent         # 0-* [ StructureMap::Group::Rule::Dependent ]
          attr_accessor :documentation     # 0-1 string
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 1-1 id
        attr_accessor :extends           # 0-1 id
        attr_accessor :typeMode          # 1-1 code
        attr_accessor :documentation     # 0-1 string
        attr_accessor :input             # 1-* [ StructureMap::Group::Input ]
        attr_accessor :rule              # 1-* [ StructureMap::Group::Rule ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :url               # 1-1 uri
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :version           # 0-1 string
      attr_accessor :name              # 1-1 string
      attr_accessor :title             # 0-1 string
      attr_accessor :status            # 1-1 code
      attr_accessor :experimental      # 0-1 boolean
      attr_accessor :date              # 0-1 dateTime
      attr_accessor :publisher         # 0-1 string
      attr_accessor :contact           # 0-* [ ContactDetail ]
      attr_accessor :description       # 0-1 markdown
      attr_accessor :useContext        # 0-* [ UsageContext ]
      attr_accessor :jurisdiction      # 0-* [ CodeableConcept ]
      attr_accessor :purpose           # 0-1 markdown
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :structure         # 0-* [ StructureMap::Structure ]
      attr_accessor :import            # 0-* [ canonical ]
      attr_accessor :group             # 1-* [ StructureMap::Group ]

      def resourceType
        'StructureMap'
      end
    end
  end
  StructureMap = FHIR::R4::StructureMap
end