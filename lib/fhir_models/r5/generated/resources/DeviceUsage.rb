module FHIR
  module R5
    class DeviceUsage < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'timing' => ['Timing', 'Period', 'dateTime']
      }
      SEARCH_PARAMS = ['device', 'identifier', 'patient', 'status']
      METADATA = {
        'id' => {'path'=>'DeviceUsage.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'DeviceUsage.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'DeviceUsage.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'DeviceUsage.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'DeviceUsage.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'DeviceUsage.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'DeviceUsage.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'DeviceUsage.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'DeviceUsage.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ServiceRequest'], 'path'=>'DeviceUsage.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/deviceusage-status'=>['active', 'completed', 'not-done', 'entered-in-error', 'intended', 'stopped', 'on-hold']}, 'path'=>'DeviceUsage.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/deviceusage-status'}},
        'category' => {'path'=>'DeviceUsage.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'path'=>'DeviceUsage.patient', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'derivedFrom' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ServiceRequest', 'http://hl7.org/fhir/StructureDefinition/Procedure', 'http://hl7.org/fhir/StructureDefinition/Claim', 'http://hl7.org/fhir/StructureDefinition/Observation', 'http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse', 'http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'path'=>'DeviceUsage.derivedFrom', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'context' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter', 'http://hl7.org/fhir/StructureDefinition/EpisodeOfCare'], 'path'=>'DeviceUsage.context', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'timingTiming' => {'path'=>'DeviceUsage.timing[x]', 'type'=>'Timing', 'min'=>0, 'max'=>1},
        'timingPeriod' => {'path'=>'DeviceUsage.timing[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'timingDateTime' => {'path'=>'DeviceUsage.timing[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'dateAsserted' => {'path'=>'DeviceUsage.dateAsserted', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'usageStatus' => {'valid_codes'=>{'http://hl7.org/fhir/deviceusage-status'=>['active', 'completed', 'not-done', 'entered-in-error', 'intended', 'stopped', 'on-hold']}, 'path'=>'DeviceUsage.usageStatus', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/deviceusage-status'}},
        'usageReason' => {'path'=>'DeviceUsage.usageReason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
        'adherence' => {'path'=>'DeviceUsage.adherence', 'type'=>'DeviceUsage::Adherence', 'min'=>0, 'max'=>1},
        'informationSource' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'DeviceUsage.informationSource', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'device' => {'path'=>'DeviceUsage.device', 'type'=>'CodeableReference', 'min'=>1, 'max'=>1},
        'reason' => {'path'=>'DeviceUsage.reason', 'type'=>'CodeableReference', 'min'=>0, 'max'=>Float::INFINITY},
        'bodySite' => {'path'=>'DeviceUsage.bodySite', 'type'=>'CodeableReference', 'min'=>0, 'max'=>1},
        'note' => {'path'=>'DeviceUsage.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Adherence < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Adherence.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Adherence.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Adherence.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'valid_codes'=>{'http://hl7.org/fhir/deviceusage-adherence-code'=>['always', 'never', 'sometimes']}, 'path'=>'Adherence.code', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/deviceusage-adherence-code'}},
          'reason' => {'valid_codes'=>{'http://hl7.org/fhir/deviceusage-adherence-reason'=>['lost', 'stolen', 'prescribed', 'broken', 'burned', 'forgot']}, 'path'=>'Adherence.reason', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/deviceusage-adherence-reason'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 1-1 CodeableConcept
        attr_accessor :reason            # 1-* [ CodeableConcept ]
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
      attr_accessor :basedOn           # 0-* [ Reference(ServiceRequest) ]
      attr_accessor :status            # 1-1 code
      attr_accessor :category          # 0-* [ CodeableConcept ]
      attr_accessor :patient           # 1-1 Reference(Patient)
      attr_accessor :derivedFrom       # 0-* [ Reference(ServiceRequest|Procedure|Claim|Observation|QuestionnaireResponse|DocumentReference) ]
      attr_accessor :context           # 0-1 Reference(Encounter|EpisodeOfCare)
      attr_accessor :timingTiming      # 0-1 Timing
      attr_accessor :timingPeriod      # 0-1 Period
      attr_accessor :timingDateTime    # 0-1 dateTime
      attr_accessor :dateAsserted      # 0-1 dateTime
      attr_accessor :usageStatus       # 0-1 CodeableConcept
      attr_accessor :usageReason       # 0-* [ CodeableConcept ]
      attr_accessor :adherence         # 0-1 DeviceUsage::Adherence
      attr_accessor :informationSource # 0-1 Reference(Patient|Practitioner|PractitionerRole|RelatedPerson|Organization)
      attr_accessor :device            # 1-1 CodeableReference
      attr_accessor :reason            # 0-* [ CodeableReference ]
      attr_accessor :bodySite          # 0-1 CodeableReference
      attr_accessor :note              # 0-* [ Annotation ]

      def resourceType
        'DeviceUsage'
      end
    end
  end
end