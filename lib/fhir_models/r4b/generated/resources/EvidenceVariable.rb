module FHIR
  module R4B
    class EvidenceVariable < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'context-type-quantity', 'context-type-value', 'date', 'description', 'identifier', 'name', 'publisher', 'status', 'title', 'url', 'version']
      METADATA = {
        'id' => {'path'=>'EvidenceVariable.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'EvidenceVariable.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'EvidenceVariable.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'EvidenceVariable.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'EvidenceVariable.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'EvidenceVariable.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'EvidenceVariable.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'EvidenceVariable.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'path'=>'EvidenceVariable.url', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'identifier' => {'path'=>'EvidenceVariable.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'path'=>'EvidenceVariable.version', 'type'=>'string', 'min'=>0, 'max'=>1},
        'name' => {'path'=>'EvidenceVariable.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'title' => {'path'=>'EvidenceVariable.title', 'type'=>'string', 'min'=>0, 'max'=>1},
        'shortTitle' => {'path'=>'EvidenceVariable.shortTitle', 'type'=>'string', 'min'=>0, 'max'=>1},
        'subtitle' => {'path'=>'EvidenceVariable.subtitle', 'type'=>'string', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'EvidenceVariable.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'date' => {'path'=>'EvidenceVariable.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'description' => {'path'=>'EvidenceVariable.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'note' => {'path'=>'EvidenceVariable.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
        'useContext' => {'path'=>'EvidenceVariable.useContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
        'publisher' => {'path'=>'EvidenceVariable.publisher', 'type'=>'string', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'EvidenceVariable.contact', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'author' => {'path'=>'EvidenceVariable.author', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'editor' => {'path'=>'EvidenceVariable.editor', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'reviewer' => {'path'=>'EvidenceVariable.reviewer', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'endorser' => {'path'=>'EvidenceVariable.endorser', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'relatedArtifact' => {'path'=>'EvidenceVariable.relatedArtifact', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>Float::INFINITY},
        'actual' => {'path'=>'EvidenceVariable.actual', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'characteristicCombination' => {'valid_codes'=>{'http://hl7.org/fhir/characteristic-combination'=>['intersection', 'union']}, 'path'=>'EvidenceVariable.characteristicCombination', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/characteristic-combination'}},
        'characteristic' => {'path'=>'EvidenceVariable.characteristic', 'type'=>'EvidenceVariable::Characteristic', 'min'=>0, 'max'=>Float::INFINITY},
        'handling' => {'valid_codes'=>{'http://hl7.org/fhir/variable-handling'=>['continuous', 'dichotomous', 'ordinal', 'polychotomous']}, 'path'=>'EvidenceVariable.handling', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/variable-handling'}},
        'category' => {'path'=>'EvidenceVariable.category', 'type'=>'EvidenceVariable::Category', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Characteristic < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'definition' => ['Reference', 'canonical', 'CodeableConcept', 'Expression']
        }
        METADATA = {
          'id' => {'path'=>'Characteristic.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Characteristic.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Characteristic.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'path'=>'Characteristic.description', 'type'=>'string', 'min'=>0, 'max'=>1},
          'definitionReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/EvidenceVariable'], 'path'=>'Characteristic.definition[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'definitionCanonical' => {'path'=>'Characteristic.definition[x]', 'type'=>'canonical', 'min'=>1, 'max'=>1},
          'definitionCodeableConcept' => {'path'=>'Characteristic.definition[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'definitionExpression' => {'path'=>'Characteristic.definition[x]', 'type'=>'Expression', 'min'=>1, 'max'=>1},
          'method' => {'local_name'=>'local_method', 'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/characteristic-method'=>['Default']}, 'path'=>'Characteristic.method', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/characteristic-method'}},
          'device' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/DeviceMetric'], 'path'=>'Characteristic.device', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'exclude' => {'path'=>'Characteristic.exclude', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'timeFromStart' => {'path'=>'Characteristic.timeFromStart', 'type'=>'EvidenceVariable::Characteristic::TimeFromStart', 'min'=>0, 'max'=>1},
          'groupMeasure' => {'valid_codes'=>{'http://hl7.org/fhir/group-measure'=>['mean', 'median', 'mean-of-mean', 'mean-of-median', 'median-of-mean', 'median-of-median']}, 'path'=>'Characteristic.groupMeasure', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/group-measure'}}
        }

        class TimeFromStart < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'TimeFromStart.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'TimeFromStart.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'TimeFromStart.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'description' => {'path'=>'TimeFromStart.description', 'type'=>'string', 'min'=>0, 'max'=>1},
            'quantity' => {'path'=>'TimeFromStart.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
            'range' => {'path'=>'TimeFromStart.range', 'type'=>'Range', 'min'=>0, 'max'=>1},
            'note' => {'path'=>'TimeFromStart.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :description       # 0-1 string
          attr_accessor :quantity          # 0-1 Quantity
          attr_accessor :range             # 0-1 Range
          attr_accessor :note              # 0-* [ Annotation ]
        end

        attr_accessor :id                        # 0-1 string
        attr_accessor :extension                 # 0-* [ Extension ]
        attr_accessor :modifierExtension         # 0-* [ Extension ]
        attr_accessor :description               # 0-1 string
        attr_accessor :definitionReference       # 1-1 Reference(Group|EvidenceVariable)
        attr_accessor :definitionCanonical       # 1-1 canonical
        attr_accessor :definitionCodeableConcept # 1-1 CodeableConcept
        attr_accessor :definitionExpression      # 1-1 Expression
        attr_accessor :local_method              # 0-1 CodeableConcept
        attr_accessor :device                    # 0-1 Reference(Device|DeviceMetric)
        attr_accessor :exclude                   # 0-1 boolean
        attr_accessor :timeFromStart             # 0-1 EvidenceVariable::Characteristic::TimeFromStart
        attr_accessor :groupMeasure              # 0-1 code
      end

      class Category < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'value' => ['CodeableConcept', 'Quantity', 'Range']
        }
        METADATA = {
          'id' => {'path'=>'Category.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Category.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Category.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'path'=>'Category.name', 'type'=>'string', 'min'=>0, 'max'=>1},
          'valueCodeableConcept' => {'path'=>'Category.value[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'valueQuantity' => {'path'=>'Category.value[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'valueRange' => {'path'=>'Category.value[x]', 'type'=>'Range', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                   # 0-1 string
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :name                 # 0-1 string
        attr_accessor :valueCodeableConcept # 0-1 CodeableConcept
        attr_accessor :valueQuantity        # 0-1 Quantity
        attr_accessor :valueRange           # 0-1 Range
      end

      attr_accessor :id                        # 0-1 id
      attr_accessor :meta                      # 0-1 Meta
      attr_accessor :implicitRules             # 0-1 uri
      attr_accessor :language                  # 0-1 code
      attr_accessor :text                      # 0-1 Narrative
      attr_accessor :contained                 # 0-* [ Resource ]
      attr_accessor :extension                 # 0-* [ Extension ]
      attr_accessor :modifierExtension         # 0-* [ Extension ]
      attr_accessor :url                       # 0-1 uri
      attr_accessor :identifier                # 0-* [ Identifier ]
      attr_accessor :version                   # 0-1 string
      attr_accessor :name                      # 0-1 string
      attr_accessor :title                     # 0-1 string
      attr_accessor :shortTitle                # 0-1 string
      attr_accessor :subtitle                  # 0-1 string
      attr_accessor :status                    # 1-1 code
      attr_accessor :date                      # 0-1 dateTime
      attr_accessor :description               # 0-1 markdown
      attr_accessor :note                      # 0-* [ Annotation ]
      attr_accessor :useContext                # 0-* [ UsageContext ]
      attr_accessor :publisher                 # 0-1 string
      attr_accessor :contact                   # 0-* [ ContactDetail ]
      attr_accessor :author                    # 0-* [ ContactDetail ]
      attr_accessor :editor                    # 0-* [ ContactDetail ]
      attr_accessor :reviewer                  # 0-* [ ContactDetail ]
      attr_accessor :endorser                  # 0-* [ ContactDetail ]
      attr_accessor :relatedArtifact           # 0-* [ RelatedArtifact ]
      attr_accessor :actual                    # 0-1 boolean
      attr_accessor :characteristicCombination # 0-1 code
      attr_accessor :characteristic            # 0-* [ EvidenceVariable::Characteristic ]
      attr_accessor :handling                  # 0-1 code
      attr_accessor :category                  # 0-* [ EvidenceVariable::Category ]

      def resourceType
        'EvidenceVariable'
      end
    end
  end
end