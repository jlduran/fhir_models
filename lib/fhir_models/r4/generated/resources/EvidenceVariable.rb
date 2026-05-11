module FHIR
  module R4
    class EvidenceVariable < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['composed-of', 'context', 'context-quantity', 'context-type', 'context-type-quantity', 'context-type-value', 'date', 'depends-on', 'derived-from', 'description', 'effective', 'identifier', 'jurisdiction', 'name', 'predecessor', 'publisher', 'status', 'successor', 'title', 'topic', 'url', 'version']
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
        'publisher' => {'path'=>'EvidenceVariable.publisher', 'type'=>'string', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'EvidenceVariable.contact', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'EvidenceVariable.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'note' => {'path'=>'EvidenceVariable.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
        'useContext' => {'path'=>'EvidenceVariable.useContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'path'=>'EvidenceVariable.jurisdiction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'copyright' => {'path'=>'EvidenceVariable.copyright', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'approvalDate' => {'path'=>'EvidenceVariable.approvalDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'lastReviewDate' => {'path'=>'EvidenceVariable.lastReviewDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'effectivePeriod' => {'path'=>'EvidenceVariable.effectivePeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'topic' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/definition-topic'=>['treatment', 'education', 'assessment']}, 'path'=>'EvidenceVariable.topic', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/definition-topic'}},
        'author' => {'path'=>'EvidenceVariable.author', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'editor' => {'path'=>'EvidenceVariable.editor', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'reviewer' => {'path'=>'EvidenceVariable.reviewer', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'endorser' => {'path'=>'EvidenceVariable.endorser', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'relatedArtifact' => {'path'=>'EvidenceVariable.relatedArtifact', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/variable-type'=>['dichotomous', 'continuous', 'descriptive']}, 'path'=>'EvidenceVariable.type', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/variable-type'}},
        'characteristic' => {'path'=>'EvidenceVariable.characteristic', 'type'=>'EvidenceVariable::Characteristic', 'min'=>1, 'max'=>Float::INFINITY}
      }

      class Characteristic < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'definition' => ['Reference', 'canonical', 'CodeableConcept', 'Expression', 'DataRequirement', 'TriggerDefinition'],
          'participantEffective' => ['dateTime', 'Period', 'Duration', 'Timing']
        }
        METADATA = {
          'id' => {'path'=>'Characteristic.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Characteristic.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Characteristic.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'path'=>'Characteristic.description', 'type'=>'string', 'min'=>0, 'max'=>1},
          'definitionReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Group'], 'path'=>'Characteristic.definition[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'definitionCanonical' => {'path'=>'Characteristic.definition[x]', 'type'=>'canonical', 'min'=>1, 'max'=>1},
          'definitionCodeableConcept' => {'path'=>'Characteristic.definition[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'definitionExpression' => {'path'=>'Characteristic.definition[x]', 'type'=>'Expression', 'min'=>1, 'max'=>1},
          'definitionDataRequirement' => {'path'=>'Characteristic.definition[x]', 'type'=>'DataRequirement', 'min'=>1, 'max'=>1},
          'definitionTriggerDefinition' => {'path'=>'Characteristic.definition[x]', 'type'=>'TriggerDefinition', 'min'=>1, 'max'=>1},
          'usageContext' => {'path'=>'Characteristic.usageContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
          'exclude' => {'path'=>'Characteristic.exclude', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'participantEffectiveDateTime' => {'path'=>'Characteristic.participantEffective[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'participantEffectivePeriod' => {'path'=>'Characteristic.participantEffective[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'participantEffectiveDuration' => {'path'=>'Characteristic.participantEffective[x]', 'type'=>'Duration', 'min'=>0, 'max'=>1},
          'participantEffectiveTiming' => {'path'=>'Characteristic.participantEffective[x]', 'type'=>'Timing', 'min'=>0, 'max'=>1},
          'timeFromStart' => {'path'=>'Characteristic.timeFromStart', 'type'=>'Duration', 'min'=>0, 'max'=>1},
          'groupMeasure' => {'valid_codes'=>{'http://hl7.org/fhir/group-measure'=>['mean', 'median', 'mean-of-mean', 'mean-of-median', 'median-of-mean', 'median-of-median']}, 'path'=>'Characteristic.groupMeasure', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/group-measure'}}
        }

        attr_accessor :id                           # 0-1 string
        attr_accessor :extension                    # 0-* [ Extension ]
        attr_accessor :modifierExtension            # 0-* [ Extension ]
        attr_accessor :description                  # 0-1 string
        attr_accessor :definitionReference          # 1-1 Reference(Group)
        attr_accessor :definitionCanonical          # 1-1 canonical
        attr_accessor :definitionCodeableConcept    # 1-1 CodeableConcept
        attr_accessor :definitionExpression         # 1-1 Expression
        attr_accessor :definitionDataRequirement    # 1-1 DataRequirement
        attr_accessor :definitionTriggerDefinition  # 1-1 TriggerDefinition
        attr_accessor :usageContext                 # 0-* [ UsageContext ]
        attr_accessor :exclude                      # 0-1 boolean
        attr_accessor :participantEffectiveDateTime # 0-1 dateTime
        attr_accessor :participantEffectivePeriod   # 0-1 Period
        attr_accessor :participantEffectiveDuration # 0-1 Duration
        attr_accessor :participantEffectiveTiming   # 0-1 Timing
        attr_accessor :timeFromStart                # 0-1 Duration
        attr_accessor :groupMeasure                 # 0-1 code
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :url               # 0-1 uri
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :version           # 0-1 string
      attr_accessor :name              # 0-1 string
      attr_accessor :title             # 0-1 string
      attr_accessor :shortTitle        # 0-1 string
      attr_accessor :subtitle          # 0-1 string
      attr_accessor :status            # 1-1 code
      attr_accessor :date              # 0-1 dateTime
      attr_accessor :publisher         # 0-1 string
      attr_accessor :contact           # 0-* [ ContactDetail ]
      attr_accessor :description       # 0-1 markdown
      attr_accessor :note              # 0-* [ Annotation ]
      attr_accessor :useContext        # 0-* [ UsageContext ]
      attr_accessor :jurisdiction      # 0-* [ CodeableConcept ]
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :approvalDate      # 0-1 date
      attr_accessor :lastReviewDate    # 0-1 date
      attr_accessor :effectivePeriod   # 0-1 Period
      attr_accessor :topic             # 0-* [ CodeableConcept ]
      attr_accessor :author            # 0-* [ ContactDetail ]
      attr_accessor :editor            # 0-* [ ContactDetail ]
      attr_accessor :reviewer          # 0-* [ ContactDetail ]
      attr_accessor :endorser          # 0-* [ ContactDetail ]
      attr_accessor :relatedArtifact   # 0-* [ RelatedArtifact ]
      attr_accessor :type              # 0-1 code
      attr_accessor :characteristic    # 1-* [ EvidenceVariable::Characteristic ]

      def resourceType
        'EvidenceVariable'
      end
    end
  end
  EvidenceVariable = FHIR::R4::EvidenceVariable
end