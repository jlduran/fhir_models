module FHIR
  module R5
    class DeviceRequest < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'occurrence' => ['dateTime', 'Period', 'Timing']
      }
      SEARCH_PARAMS = ['authored-on', 'based-on', 'code', 'device', 'encounter', 'event-date', 'group-identifier', 'identifier', 'instantiates-canonical', 'instantiates-uri', 'insurance', 'intent', 'patient', 'performer', 'performer-code', 'prior-request', 'requester', 'status', 'subject']
      METADATA = {
        'id' => {'path'=>'DeviceRequest.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'DeviceRequest.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'DeviceRequest.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'DeviceRequest.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'DeviceRequest.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'DeviceRequest.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'DeviceRequest.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'DeviceRequest.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'DeviceRequest.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'instantiatesCanonical' => {'path'=>'DeviceRequest.instantiatesCanonical', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY},
        'instantiatesUri' => {'path'=>'DeviceRequest.instantiatesUri', 'type'=>'uri', 'min'=>0, 'max'=>Float::INFINITY},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'DeviceRequest.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'replaces' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DeviceRequest'], 'path'=>'DeviceRequest.replaces', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'groupIdentifier' => {'path'=>'DeviceRequest.groupIdentifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/request-status'=>['draft', 'active', 'on-hold', 'revoked', 'completed', 'entered-in-error', 'unknown']}, 'path'=>'DeviceRequest.status', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-status'}},
        'intent' => {'valid_codes'=>{'http://hl7.org/fhir/request-intent'=>['proposal', 'plan', 'directive', 'order', 'original-order', 'reflex-order', 'filler-order', 'instance-order', 'option']}, 'path'=>'DeviceRequest.intent', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-intent'}},
        'priority' => {'valid_codes'=>{'http://hl7.org/fhir/request-priority'=>['routine', 'urgent', 'asap', 'stat']}, 'path'=>'DeviceRequest.priority', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-priority'}},
        'doNotPerform' => {'path'=>'DeviceRequest.doNotPerform', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'code' => {'path'=>'DeviceRequest.code', 'type'=>'CodeableReference', 'min'=>1, 'max'=>1},
        'quantity' => {'path'=>'DeviceRequest.quantity', 'type'=>'integer', 'min'=>0, 'max'=>1},
        'parameter' => {'path'=>'DeviceRequest.parameter', 'type'=>'DeviceRequest::Parameter', 'min'=>0, 'max'=>Float::INFINITY},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'DeviceRequest.subject', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'DeviceRequest.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'occurrenceDateTime' => {'path'=>'DeviceRequest.occurrence[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'occurrencePeriod' => {'path'=>'DeviceRequest.occurrence[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'occurrenceTiming' => {'path'=>'DeviceRequest.occurrence[x]', 'type'=>'Timing', 'min'=>0, 'max'=>1},
        'authoredOn' => {'path'=>'DeviceRequest.authoredOn', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'requester' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'DeviceRequest.requester', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'performer' => {'path'=>'DeviceRequest.performer', 'type'=>'CodeableReference', 'min'=>0, 'max'=>1},
        'reason' => {'path'=>'DeviceRequest.reason', 'type'=>'CodeableReference', 'min'=>0, 'max'=>Float::INFINITY},
        'asNeeded' => {'path'=>'DeviceRequest.asNeeded', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'asNeededFor' => {'path'=>'DeviceRequest.asNeededFor', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'insurance' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Coverage', 'http://hl7.org/fhir/StructureDefinition/ClaimResponse'], 'path'=>'DeviceRequest.insurance', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'supportingInfo' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'DeviceRequest.supportingInfo', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'path'=>'DeviceRequest.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
        'relevantHistory' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Provenance'], 'path'=>'DeviceRequest.relevantHistory', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Parameter < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'value' => ['CodeableConcept', 'Quantity', 'Range', 'boolean']
        }
        METADATA = {
          'id' => {'path'=>'Parameter.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Parameter.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Parameter.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'path'=>'Parameter.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
          'valueCodeableConcept' => {'path'=>'Parameter.value[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'valueQuantity' => {'path'=>'Parameter.value[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'valueRange' => {'path'=>'Parameter.value[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
          'valueBoolean' => {'path'=>'Parameter.value[x]', 'type'=>'boolean', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                   # 0-1 string
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :code                 # 0-1 CodeableConcept
        attr_accessor :valueCodeableConcept # 0-1 CodeableConcept
        attr_accessor :valueQuantity        # 0-1 Quantity
        attr_accessor :valueRange           # 0-1 Range
        attr_accessor :valueBoolean         # 0-1 boolean
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
      attr_accessor :replaces              # 0-* [ Reference(DeviceRequest) ]
      attr_accessor :groupIdentifier       # 0-1 Identifier
      attr_accessor :status                # 0-1 code
      attr_accessor :intent                # 1-1 code
      attr_accessor :priority              # 0-1 code
      attr_accessor :doNotPerform          # 0-1 boolean
      attr_accessor :code                  # 1-1 CodeableReference
      attr_accessor :quantity              # 0-1 integer
      attr_accessor :parameter             # 0-* [ DeviceRequest::Parameter ]
      attr_accessor :subject               # 1-1 Reference(Patient|Group|Location|Device)
      attr_accessor :encounter             # 0-1 Reference(Encounter)
      attr_accessor :occurrenceDateTime    # 0-1 dateTime
      attr_accessor :occurrencePeriod      # 0-1 Period
      attr_accessor :occurrenceTiming      # 0-1 Timing
      attr_accessor :authoredOn            # 0-1 dateTime
      attr_accessor :requester             # 0-1 Reference(Device|Practitioner|PractitionerRole|Organization)
      attr_accessor :performer             # 0-1 CodeableReference
      attr_accessor :reason                # 0-* [ CodeableReference ]
      attr_accessor :asNeeded              # 0-1 boolean
      attr_accessor :asNeededFor           # 0-1 CodeableConcept
      attr_accessor :insurance             # 0-* [ Reference(Coverage|ClaimResponse) ]
      attr_accessor :supportingInfo        # 0-* [ Reference(Resource) ]
      attr_accessor :note                  # 0-* [ Annotation ]
      attr_accessor :relevantHistory       # 0-* [ Reference(Provenance) ]

      def resourceType
        'DeviceRequest'
      end
    end
  end
end