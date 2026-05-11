module FHIR
  module R5
    class DeviceDispense < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['code', 'identifier', 'patient', 'status', 'subject']
      METADATA = {
        'id' => {'path'=>'DeviceDispense.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'DeviceDispense.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'DeviceDispense.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'DeviceDispense.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'DeviceDispense.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'DeviceDispense.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'DeviceDispense.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'DeviceDispense.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'DeviceDispense.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CarePlan', 'http://hl7.org/fhir/StructureDefinition/DeviceRequest'], 'path'=>'DeviceDispense.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'partOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Procedure'], 'path'=>'DeviceDispense.partOf', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/devicedispense-status'=>['preparation', 'in-progress', 'cancelled', 'on-hold', 'completed', 'entered-in-error', 'stopped', 'declined', 'unknown']}, 'path'=>'DeviceDispense.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/devicedispense-status'}},
        'statusReason' => {'path'=>'DeviceDispense.statusReason', 'type'=>'CodeableReference', 'min'=>0, 'max'=>1},
        'category' => {'path'=>'DeviceDispense.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
        'device' => {'path'=>'DeviceDispense.device', 'type'=>'CodeableReference', 'min'=>1, 'max'=>1},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner'], 'path'=>'DeviceDispense.subject', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'receiver' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'DeviceDispense.receiver', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'DeviceDispense.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'supportingInformation' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'DeviceDispense.supportingInformation', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'performer' => {'path'=>'DeviceDispense.performer', 'type'=>'DeviceDispense::Performer', 'min'=>0, 'max'=>Float::INFINITY},
        'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'DeviceDispense.location', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'type' => {'path'=>'DeviceDispense.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'quantity' => {'path'=>'DeviceDispense.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'preparedDate' => {'path'=>'DeviceDispense.preparedDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'whenHandedOver' => {'path'=>'DeviceDispense.whenHandedOver', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'destination' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'DeviceDispense.destination', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'note' => {'path'=>'DeviceDispense.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
        'usageInstruction' => {'path'=>'DeviceDispense.usageInstruction', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'eventHistory' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Provenance'], 'path'=>'DeviceDispense.eventHistory', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Performer < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Performer.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Performer.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Performer.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'function' => {'path'=>'Performer.function', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'actor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/CareTeam'], 'path'=>'Performer.actor', 'type'=>'Reference', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :function          # 0-1 CodeableConcept
        attr_accessor :actor             # 1-1 Reference(Practitioner|PractitionerRole|Organization|Patient|Device|RelatedPerson|CareTeam)
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
      attr_accessor :basedOn               # 0-* [ Reference(CarePlan|DeviceRequest) ]
      attr_accessor :partOf                # 0-* [ Reference(Procedure) ]
      attr_accessor :status                # 1-1 code
      attr_accessor :statusReason          # 0-1 CodeableReference
      attr_accessor :category              # 0-* [ CodeableConcept ]
      attr_accessor :device                # 1-1 CodeableReference
      attr_accessor :subject               # 1-1 Reference(Patient|Practitioner)
      attr_accessor :receiver              # 0-1 Reference(Patient|Practitioner|RelatedPerson|Location|PractitionerRole)
      attr_accessor :encounter             # 0-1 Reference(Encounter)
      attr_accessor :supportingInformation # 0-* [ Reference(Resource) ]
      attr_accessor :performer             # 0-* [ DeviceDispense::Performer ]
      attr_accessor :location              # 0-1 Reference(Location)
      attr_accessor :type                  # 0-1 CodeableConcept
      attr_accessor :quantity              # 0-1 Quantity
      attr_accessor :preparedDate          # 0-1 dateTime
      attr_accessor :whenHandedOver        # 0-1 dateTime
      attr_accessor :destination           # 0-1 Reference(Location)
      attr_accessor :note                  # 0-* [ Annotation ]
      attr_accessor :usageInstruction      # 0-1 markdown
      attr_accessor :eventHistory          # 0-* [ Reference(Provenance) ]

      def resourceType
        'DeviceDispense'
      end
    end
  end
end