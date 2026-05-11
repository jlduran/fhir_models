module FHIR
  module R4
    class RequestGroup < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['author', 'authored', 'code', 'encounter', 'group-identifier', 'identifier', 'instantiates-canonical', 'instantiates-uri', 'intent', 'participant', 'patient', 'priority', 'status', 'subject']
      METADATA = {
        'id' => {'path'=>'RequestGroup.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'RequestGroup.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'RequestGroup.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'RequestGroup.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'RequestGroup.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'RequestGroup.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'RequestGroup.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'RequestGroup.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'RequestGroup.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'instantiatesCanonical' => {'path'=>'RequestGroup.instantiatesCanonical', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY},
        'instantiatesUri' => {'path'=>'RequestGroup.instantiatesUri', 'type'=>'uri', 'min'=>0, 'max'=>Float::INFINITY},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'RequestGroup.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'replaces' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'RequestGroup.replaces', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'groupIdentifier' => {'path'=>'RequestGroup.groupIdentifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/request-status'=>['draft', 'active', 'on-hold', 'revoked', 'completed', 'entered-in-error', 'unknown']}, 'path'=>'RequestGroup.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-status'}},
        'intent' => {'valid_codes'=>{'http://hl7.org/fhir/request-intent'=>['proposal', 'plan', 'directive', 'order', 'original-order', 'reflex-order', 'filler-order', 'instance-order', 'option']}, 'path'=>'RequestGroup.intent', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-intent'}},
        'priority' => {'valid_codes'=>{'http://hl7.org/fhir/request-priority'=>['routine', 'urgent', 'asap', 'stat']}, 'path'=>'RequestGroup.priority', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-priority'}},
        'code' => {'path'=>'RequestGroup.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group'], 'path'=>'RequestGroup.subject', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'RequestGroup.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'authoredOn' => {'path'=>'RequestGroup.authoredOn', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'author' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'RequestGroup.author', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'reasonCode' => {'path'=>'RequestGroup.reasonCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
        'reasonReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition', 'http://hl7.org/fhir/StructureDefinition/Observation', 'http://hl7.org/fhir/StructureDefinition/DiagnosticReport', 'http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'path'=>'RequestGroup.reasonReference', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'path'=>'RequestGroup.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
        'action' => {'path'=>'RequestGroup.action', 'type'=>'RequestGroup::Action', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Action < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'timing' => ['dateTime', 'Age', 'Period', 'Duration', 'Range', 'Timing']
        }
        METADATA = {
          'id' => {'path'=>'Action.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Action.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Action.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'prefix' => {'path'=>'Action.prefix', 'type'=>'string', 'min'=>0, 'max'=>1},
          'title' => {'path'=>'Action.title', 'type'=>'string', 'min'=>0, 'max'=>1},
          'description' => {'path'=>'Action.description', 'type'=>'string', 'min'=>0, 'max'=>1},
          'textEquivalent' => {'path'=>'Action.textEquivalent', 'type'=>'string', 'min'=>0, 'max'=>1},
          'priority' => {'valid_codes'=>{'http://hl7.org/fhir/request-priority'=>['routine', 'urgent', 'asap', 'stat']}, 'path'=>'Action.priority', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-priority'}},
          'code' => {'path'=>'Action.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
          'documentation' => {'path'=>'Action.documentation', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>Float::INFINITY},
          'condition' => {'path'=>'Action.condition', 'type'=>'RequestGroup::Action::Condition', 'min'=>0, 'max'=>Float::INFINITY},
          'relatedAction' => {'path'=>'Action.relatedAction', 'type'=>'RequestGroup::Action::RelatedAction', 'min'=>0, 'max'=>Float::INFINITY},
          'timingDateTime' => {'path'=>'Action.timing[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'timingAge' => {'path'=>'Action.timing[x]', 'type'=>'Age', 'min'=>0, 'max'=>1},
          'timingPeriod' => {'path'=>'Action.timing[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'timingDuration' => {'path'=>'Action.timing[x]', 'type'=>'Duration', 'min'=>0, 'max'=>1},
          'timingRange' => {'path'=>'Action.timing[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
          'timingTiming' => {'path'=>'Action.timing[x]', 'type'=>'Timing', 'min'=>0, 'max'=>1},
          'participant' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'Action.participant', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/action-type'=>['create', 'update', 'remove', 'fire-event']}, 'path'=>'Action.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/action-type'}},
          'groupingBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-grouping-behavior'=>['visual-group', 'logical-group', 'sentence-group']}, 'path'=>'Action.groupingBehavior', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-grouping-behavior'}},
          'selectionBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-selection-behavior'=>['any', 'all', 'all-or-none', 'exactly-one', 'at-most-one', 'one-or-more']}, 'path'=>'Action.selectionBehavior', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-selection-behavior'}},
          'requiredBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-required-behavior'=>['must', 'could', 'must-unless-documented']}, 'path'=>'Action.requiredBehavior', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-required-behavior'}},
          'precheckBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-precheck-behavior'=>['yes', 'no']}, 'path'=>'Action.precheckBehavior', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-precheck-behavior'}},
          'cardinalityBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-cardinality-behavior'=>['single', 'multiple']}, 'path'=>'Action.cardinalityBehavior', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-cardinality-behavior'}},
          'resource' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Action.resource', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'action' => {'path'=>'Action.action', 'type'=>'RequestGroup::Action', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Condition < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Condition.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Condition.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Condition.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'kind' => {'valid_codes'=>{'http://hl7.org/fhir/action-condition-kind'=>['applicability', 'start', 'stop']}, 'path'=>'Condition.kind', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-condition-kind'}},
            'expression' => {'path'=>'Condition.expression', 'type'=>'Expression', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :kind              # 1-1 code
          attr_accessor :expression        # 0-1 Expression
        end

        class RelatedAction < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'offset' => ['Duration', 'Range']
          }
          METADATA = {
            'id' => {'path'=>'RelatedAction.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'RelatedAction.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'RelatedAction.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'actionId' => {'path'=>'RelatedAction.actionId', 'type'=>'id', 'min'=>1, 'max'=>1},
            'relationship' => {'valid_codes'=>{'http://hl7.org/fhir/action-relationship-type'=>['before-start', 'before', 'before-end', 'concurrent-with-start', 'concurrent', 'concurrent-with-end', 'after-start', 'after', 'after-end']}, 'path'=>'RelatedAction.relationship', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-relationship-type'}},
            'offsetDuration' => {'path'=>'RelatedAction.offset[x]', 'type'=>'Duration', 'min'=>0, 'max'=>1},
            'offsetRange' => {'path'=>'RelatedAction.offset[x]', 'type'=>'Range', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :actionId          # 1-1 id
          attr_accessor :relationship      # 1-1 code
          attr_accessor :offsetDuration    # 0-1 Duration
          attr_accessor :offsetRange       # 0-1 Range
        end

        attr_accessor :id                  # 0-1 string
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :prefix              # 0-1 string
        attr_accessor :title               # 0-1 string
        attr_accessor :description         # 0-1 string
        attr_accessor :textEquivalent      # 0-1 string
        attr_accessor :priority            # 0-1 code
        attr_accessor :code                # 0-* [ CodeableConcept ]
        attr_accessor :documentation       # 0-* [ RelatedArtifact ]
        attr_accessor :condition           # 0-* [ RequestGroup::Action::Condition ]
        attr_accessor :relatedAction       # 0-* [ RequestGroup::Action::RelatedAction ]
        attr_accessor :timingDateTime      # 0-1 dateTime
        attr_accessor :timingAge           # 0-1 Age
        attr_accessor :timingPeriod        # 0-1 Period
        attr_accessor :timingDuration      # 0-1 Duration
        attr_accessor :timingRange         # 0-1 Range
        attr_accessor :timingTiming        # 0-1 Timing
        attr_accessor :participant         # 0-* [ Reference(Patient|Practitioner|PractitionerRole|RelatedPerson|Device) ]
        attr_accessor :type                # 0-1 CodeableConcept
        attr_accessor :groupingBehavior    # 0-1 code
        attr_accessor :selectionBehavior   # 0-1 code
        attr_accessor :requiredBehavior    # 0-1 code
        attr_accessor :precheckBehavior    # 0-1 code
        attr_accessor :cardinalityBehavior # 0-1 code
        attr_accessor :resource            # 0-1 Reference(Resource)
        attr_accessor :action              # 0-* [ RequestGroup::Action ]
      end

      attr_accessor :id                    # 0-1 id
      attr_accessor :meta                  # 0-1 Meta
      attr_accessor :implicitRules         # 0-1 uri
      attr_accessor :language              # 0-1 code
      attr_accessor :text                  # 0-1 Narrative
      attr_accessor :contained             # 0-* [ Resource ]
      attr_accessor :extension             # 0-* [ Extension ]
      attr_accessor :modifierExtension     # 0-* [ Extension ]
      attr_accessor :identifier            # 0-* [ Identifier ]
      attr_accessor :instantiatesCanonical # 0-* [ canonical ]
      attr_accessor :instantiatesUri       # 0-* [ uri ]
      attr_accessor :basedOn               # 0-* [ Reference(Resource) ]
      attr_accessor :replaces              # 0-* [ Reference(Resource) ]
      attr_accessor :groupIdentifier       # 0-1 Identifier
      attr_accessor :status                # 1-1 code
      attr_accessor :intent                # 1-1 code
      attr_accessor :priority              # 0-1 code
      attr_accessor :code                  # 0-1 CodeableConcept
      attr_accessor :subject               # 0-1 Reference(Patient|Group)
      attr_accessor :encounter             # 0-1 Reference(Encounter)
      attr_accessor :authoredOn            # 0-1 dateTime
      attr_accessor :author                # 0-1 Reference(Device|Practitioner|PractitionerRole)
      attr_accessor :reasonCode            # 0-* [ CodeableConcept ]
      attr_accessor :reasonReference       # 0-* [ Reference(Condition|Observation|DiagnosticReport|DocumentReference) ]
      attr_accessor :note                  # 0-* [ Annotation ]
      attr_accessor :action                # 0-* [ RequestGroup::Action ]

      def resourceType
        'RequestGroup'
      end
    end
  end
  RequestGroup = FHIR::R4::RequestGroup
end