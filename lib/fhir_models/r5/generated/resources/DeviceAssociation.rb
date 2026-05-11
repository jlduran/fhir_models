module FHIR
  module R5
    class DeviceAssociation < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['device', 'identifier', 'operator', 'patient', 'status', 'subject']
      METADATA = {
        'id' => {'path'=>'DeviceAssociation.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'DeviceAssociation.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'DeviceAssociation.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'DeviceAssociation.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'DeviceAssociation.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'DeviceAssociation.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'DeviceAssociation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'DeviceAssociation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'DeviceAssociation.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'device' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'DeviceAssociation.device', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'category' => {'path'=>'DeviceAssociation.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/deviceassociation-status'=>['implanted', 'explanted', 'entered-in-error', 'attached', 'unknown']}, 'path'=>'DeviceAssociation.status', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/deviceassociation-status'}},
        'statusReason' => {'valid_codes'=>{'http://hl7.org/fhir/deviceassociation-status-reason'=>['attached', 'disconnected', 'failed', 'placed', 'replaced']}, 'path'=>'DeviceAssociation.statusReason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/deviceassociation-status-reason'}},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'DeviceAssociation.subject', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'bodyStructure' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/BodyStructure'], 'path'=>'DeviceAssociation.bodyStructure', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'period' => {'path'=>'DeviceAssociation.period', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'operation' => {'path'=>'DeviceAssociation.operation', 'type'=>'DeviceAssociation::Operation', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Operation < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Operation.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Operation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Operation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'status' => {'valid_codes'=>{'http://hl7.org/fhir/deviceassociation-operationstatus'=>['on', 'off', 'standby', 'defective', 'unknown']}, 'path'=>'Operation.status', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/deviceassociation-operationstatus'}},
          'operator' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'Operation.operator', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
          'period' => {'path'=>'Operation.period', 'type'=>'Period', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :status            # 1-1 CodeableConcept
        attr_accessor :operator          # 0-* [ Reference(Patient|Practitioner|RelatedPerson) ]
        attr_accessor :period            # 0-1 Period
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :device            # 1-1 Reference(Device)
      attr_accessor :category          # 0-* [ CodeableConcept ]
      attr_accessor :status            # 1-1 CodeableConcept
      attr_accessor :statusReason      # 0-* [ CodeableConcept ]
      attr_accessor :subject           # 0-1 Reference(Patient|Group|Practitioner|RelatedPerson|Device)
      attr_accessor :bodyStructure     # 0-1 Reference(BodyStructure)
      attr_accessor :period            # 0-1 Period
      attr_accessor :operation         # 0-* [ DeviceAssociation::Operation ]

      def resourceType
        'DeviceAssociation'
      end
    end
  end
end