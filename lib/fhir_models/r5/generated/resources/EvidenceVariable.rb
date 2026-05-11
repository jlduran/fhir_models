module FHIR
  module R5
    class EvidenceVariable < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'versionAlgorithm' => ['string', 'Coding']
      }
      SEARCH_PARAMS = ['composed-of', 'context', 'context-quantity', 'context-type', 'context-type-quantity', 'context-type-value', 'date', 'depends-on', 'derived-from', 'description', 'identifier', 'name', 'predecessor', 'publisher', 'status', 'successor', 'title', 'topic', 'url', 'version']
      METADATA = {
        'id' => {'path'=>'EvidenceVariable.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'EvidenceVariable.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'EvidenceVariable.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'EvidenceVariable.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'EvidenceVariable.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'EvidenceVariable.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'EvidenceVariable.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'EvidenceVariable.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'path'=>'EvidenceVariable.url', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'identifier' => {'path'=>'EvidenceVariable.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'path'=>'EvidenceVariable.version', 'type'=>'string', 'min'=>0, 'max'=>1},
        'versionAlgorithmString' => {'path'=>'EvidenceVariable.versionAlgorithm[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
        'versionAlgorithmCoding' => {'valid_codes'=>{'http://hl7.org/fhir/version-algorithm'=>['semver', 'integer', 'alpha', 'date', 'natural']}, 'path'=>'EvidenceVariable.versionAlgorithm[x]', 'type'=>'Coding', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/version-algorithm'}},
        'name' => {'path'=>'EvidenceVariable.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'title' => {'path'=>'EvidenceVariable.title', 'type'=>'string', 'min'=>0, 'max'=>1},
        'shortTitle' => {'path'=>'EvidenceVariable.shortTitle', 'type'=>'string', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'EvidenceVariable.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'experimental' => {'path'=>'EvidenceVariable.experimental', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'date' => {'path'=>'EvidenceVariable.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'publisher' => {'path'=>'EvidenceVariable.publisher', 'type'=>'string', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'EvidenceVariable.contact', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'EvidenceVariable.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'note' => {'path'=>'EvidenceVariable.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
        'useContext' => {'path'=>'EvidenceVariable.useContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
        'purpose' => {'path'=>'EvidenceVariable.purpose', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'copyright' => {'path'=>'EvidenceVariable.copyright', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'copyrightLabel' => {'path'=>'EvidenceVariable.copyrightLabel', 'type'=>'string', 'min'=>0, 'max'=>1},
        'approvalDate' => {'path'=>'EvidenceVariable.approvalDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'lastReviewDate' => {'path'=>'EvidenceVariable.lastReviewDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'effectivePeriod' => {'path'=>'EvidenceVariable.effectivePeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'author' => {'path'=>'EvidenceVariable.author', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'editor' => {'path'=>'EvidenceVariable.editor', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'reviewer' => {'path'=>'EvidenceVariable.reviewer', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'endorser' => {'path'=>'EvidenceVariable.endorser', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'relatedArtifact' => {'path'=>'EvidenceVariable.relatedArtifact', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>Float::INFINITY},
        'actual' => {'path'=>'EvidenceVariable.actual', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'characteristic' => {'path'=>'EvidenceVariable.characteristic', 'type'=>'EvidenceVariable::Characteristic', 'min'=>0, 'max'=>Float::INFINITY},
        'handling' => {'valid_codes'=>{'http://hl7.org/fhir/variable-handling'=>['continuous', 'dichotomous', 'ordinal', 'polychotomous']}, 'path'=>'EvidenceVariable.handling', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/variable-handling'}},
        'category' => {'path'=>'EvidenceVariable.category', 'type'=>'EvidenceVariable::Category', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Characteristic < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'instances' => ['Quantity', 'Range'],
          'duration' => ['Quantity', 'Range']
        }
        METADATA = {
          'id' => {'path'=>'Characteristic.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Characteristic.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Characteristic.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'linkId' => {'path'=>'Characteristic.linkId', 'type'=>'id', 'min'=>0, 'max'=>1},
          'description' => {'path'=>'Characteristic.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
          'note' => {'path'=>'Characteristic.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
          'exclude' => {'path'=>'Characteristic.exclude', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'definitionReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/EvidenceVariable', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Evidence'], 'path'=>'Characteristic.definitionReference', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'definitionCanonical' => {'path'=>'Characteristic.definitionCanonical', 'type'=>'canonical', 'min'=>0, 'max'=>1},
          'definitionCodeableConcept' => {'path'=>'Characteristic.definitionCodeableConcept', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'definitionExpression' => {'path'=>'Characteristic.definitionExpression', 'type'=>'Expression', 'min'=>0, 'max'=>1},
          'definitionId' => {'path'=>'Characteristic.definitionId', 'type'=>'id', 'min'=>0, 'max'=>1},
          'definitionByTypeAndValue' => {'path'=>'Characteristic.definitionByTypeAndValue', 'type'=>'EvidenceVariable::Characteristic::DefinitionByTypeAndValue', 'min'=>0, 'max'=>1},
          'definitionByCombination' => {'path'=>'Characteristic.definitionByCombination', 'type'=>'EvidenceVariable::Characteristic::DefinitionByCombination', 'min'=>0, 'max'=>1},
          'instancesQuantity' => {'path'=>'Characteristic.instances[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'instancesRange' => {'path'=>'Characteristic.instances[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
          'durationQuantity' => {'path'=>'Characteristic.duration[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'durationRange' => {'path'=>'Characteristic.duration[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
          'timeFromEvent' => {'path'=>'Characteristic.timeFromEvent', 'type'=>'EvidenceVariable::Characteristic::TimeFromEvent', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class DefinitionByTypeAndValue < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'value' => ['CodeableConcept', 'boolean', 'Quantity', 'Range', 'Reference', 'id']
          }
          METADATA = {
            'id' => {'path'=>'DefinitionByTypeAndValue.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'DefinitionByTypeAndValue.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'DefinitionByTypeAndValue.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/usage-context-type'=>['gender', 'age', 'focus', 'user', 'workflow', 'task', 'venue', 'species', 'program']}, 'path'=>'DefinitionByTypeAndValue.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/usage-context-type'}},
            'method' => {'local_name'=>'local_method', 'valid_codes'=>{'http://hl7.org/fhir/definition-method'=>['systematic-assessment', 'non-systematic-assessment', 'mean', 'median', 'mean-of-mean', 'mean-of-median', 'median-of-mean', 'median-of-median']}, 'path'=>'DefinitionByTypeAndValue.method', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/definition-method'}},
            'device' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/DeviceMetric'], 'path'=>'DefinitionByTypeAndValue.device', 'type'=>'Reference', 'min'=>0, 'max'=>1},
            'valueCodeableConcept' => {'path'=>'DefinitionByTypeAndValue.value[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
            'valueBoolean' => {'path'=>'DefinitionByTypeAndValue.value[x]', 'type'=>'boolean', 'min'=>1, 'max'=>1},
            'valueQuantity' => {'path'=>'DefinitionByTypeAndValue.value[x]', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
            'valueRange' => {'path'=>'DefinitionByTypeAndValue.value[x]', 'type'=>'Range', 'min'=>1, 'max'=>1},
            'valueReference' => {'path'=>'DefinitionByTypeAndValue.value[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1},
            'valueId' => {'path'=>'DefinitionByTypeAndValue.value[x]', 'type'=>'id', 'min'=>1, 'max'=>1},
            'offset' => {'valid_codes'=>{'http://hl7.org/fhir/characteristic-offset'=>['UNL', 'LNL']}, 'path'=>'DefinitionByTypeAndValue.offset', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/characteristic-offset'}}
          }

          attr_accessor :id                   # 0-1 string
          attr_accessor :extension            # 0-* [ Extension ]
          attr_accessor :modifierExtension    # 0-* [ Extension ]
          attr_accessor :type                 # 1-1 CodeableConcept
          attr_accessor :local_method         # 0-* [ CodeableConcept ]
          attr_accessor :device               # 0-1 Reference(Device|DeviceMetric)
          attr_accessor :valueCodeableConcept # 1-1 CodeableConcept
          attr_accessor :valueBoolean         # 1-1 boolean
          attr_accessor :valueQuantity        # 1-1 Quantity
          attr_accessor :valueRange           # 1-1 Range
          attr_accessor :valueReference       # 1-1 Reference()
          attr_accessor :valueId              # 1-1 id
          attr_accessor :offset               # 0-1 CodeableConcept
        end

        class DefinitionByCombination < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'DefinitionByCombination.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'DefinitionByCombination.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'DefinitionByCombination.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'valid_codes'=>{'http://hl7.org/fhir/characteristic-combination'=>['all-of', 'any-of', 'at-least', 'at-most', 'statistical', 'net-effect', 'dataset']}, 'path'=>'DefinitionByCombination.code', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/characteristic-combination'}},
            'threshold' => {'path'=>'DefinitionByCombination.threshold', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
            'characteristic' => {'path'=>'DefinitionByCombination.characteristic', 'type'=>'EvidenceVariable::Characteristic', 'min'=>1, 'max'=>Float::INFINITY}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 1-1 code
          attr_accessor :threshold         # 0-1 positiveInt
          attr_accessor :characteristic    # 1-* [ EvidenceVariable::Characteristic ]
        end

        class TimeFromEvent < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'event' => ['CodeableConcept', 'Reference', 'dateTime', 'id']
          }
          METADATA = {
            'id' => {'path'=>'TimeFromEvent.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'TimeFromEvent.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'TimeFromEvent.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'description' => {'path'=>'TimeFromEvent.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
            'note' => {'path'=>'TimeFromEvent.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
            'eventCodeableConcept' => {'valid_codes'=>{'http://hl7.org/fhir/evidence-variable-event'=>['study-start', 'treatment-start', 'condition-detection', 'condition-treatment', 'hospital-admission', 'hospital-discharge', 'operative-procedure']}, 'path'=>'TimeFromEvent.event[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/evidence-variable-event'}},
            'eventReference' => {'path'=>'TimeFromEvent.event[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
            'eventDateTime' => {'path'=>'TimeFromEvent.event[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
            'eventId' => {'path'=>'TimeFromEvent.event[x]', 'type'=>'id', 'min'=>0, 'max'=>1},
            'quantity' => {'path'=>'TimeFromEvent.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
            'range' => {'path'=>'TimeFromEvent.range', 'type'=>'Range', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                   # 0-1 string
          attr_accessor :extension            # 0-* [ Extension ]
          attr_accessor :modifierExtension    # 0-* [ Extension ]
          attr_accessor :description          # 0-1 markdown
          attr_accessor :note                 # 0-* [ Annotation ]
          attr_accessor :eventCodeableConcept # 0-1 CodeableConcept
          attr_accessor :eventReference       # 0-1 Reference()
          attr_accessor :eventDateTime        # 0-1 dateTime
          attr_accessor :eventId              # 0-1 id
          attr_accessor :quantity             # 0-1 Quantity
          attr_accessor :range                # 0-1 Range
        end

        attr_accessor :id                        # 0-1 string
        attr_accessor :extension                 # 0-* [ Extension ]
        attr_accessor :modifierExtension         # 0-* [ Extension ]
        attr_accessor :linkId                    # 0-1 id
        attr_accessor :description               # 0-1 markdown
        attr_accessor :note                      # 0-* [ Annotation ]
        attr_accessor :exclude                   # 0-1 boolean
        attr_accessor :definitionReference       # 0-1 Reference(EvidenceVariable|Group|Evidence)
        attr_accessor :definitionCanonical       # 0-1 canonical
        attr_accessor :definitionCodeableConcept # 0-1 CodeableConcept
        attr_accessor :definitionExpression      # 0-1 Expression
        attr_accessor :definitionId              # 0-1 id
        attr_accessor :definitionByTypeAndValue  # 0-1 EvidenceVariable::Characteristic::DefinitionByTypeAndValue
        attr_accessor :definitionByCombination   # 0-1 EvidenceVariable::Characteristic::DefinitionByCombination
        attr_accessor :instancesQuantity         # 0-1 Quantity
        attr_accessor :instancesRange            # 0-1 Range
        attr_accessor :durationQuantity          # 0-1 Quantity
        attr_accessor :durationRange             # 0-1 Range
        attr_accessor :timeFromEvent             # 0-* [ EvidenceVariable::Characteristic::TimeFromEvent ]
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

      attr_accessor :id                     # 0-1 id
      attr_accessor :meta                   # 0-1 Meta
      attr_accessor :implicitRules          # 0-1 uri
      attr_accessor :language               # 0-1 code
      attr_accessor :text                   # 0-1 Narrative
      attr_accessor :contained              # 0-* [ Resource ]
      attr_accessor :extension              # 0-* [ Extension ]
      attr_accessor :modifierExtension      # 0-* [ Extension ]
      attr_accessor :url                    # 0-1 uri
      attr_accessor :identifier             # 0-* [ Identifier ]
      attr_accessor :version                # 0-1 string
      attr_accessor :versionAlgorithmString # 0-1 string
      attr_accessor :versionAlgorithmCoding # 0-1 Coding
      attr_accessor :name                   # 0-1 string
      attr_accessor :title                  # 0-1 string
      attr_accessor :shortTitle             # 0-1 string
      attr_accessor :status                 # 1-1 code
      attr_accessor :experimental           # 0-1 boolean
      attr_accessor :date                   # 0-1 dateTime
      attr_accessor :publisher              # 0-1 string
      attr_accessor :contact                # 0-* [ ContactDetail ]
      attr_accessor :description            # 0-1 markdown
      attr_accessor :note                   # 0-* [ Annotation ]
      attr_accessor :useContext             # 0-* [ UsageContext ]
      attr_accessor :purpose                # 0-1 markdown
      attr_accessor :copyright              # 0-1 markdown
      attr_accessor :copyrightLabel         # 0-1 string
      attr_accessor :approvalDate           # 0-1 date
      attr_accessor :lastReviewDate         # 0-1 date
      attr_accessor :effectivePeriod        # 0-1 Period
      attr_accessor :author                 # 0-* [ ContactDetail ]
      attr_accessor :editor                 # 0-* [ ContactDetail ]
      attr_accessor :reviewer               # 0-* [ ContactDetail ]
      attr_accessor :endorser               # 0-* [ ContactDetail ]
      attr_accessor :relatedArtifact        # 0-* [ RelatedArtifact ]
      attr_accessor :actual                 # 0-1 boolean
      attr_accessor :characteristic         # 0-* [ EvidenceVariable::Characteristic ]
      attr_accessor :handling               # 0-1 code
      attr_accessor :category               # 0-* [ EvidenceVariable::Category ]

      def resourceType
        'EvidenceVariable'
      end
    end
  end
end