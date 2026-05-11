module FHIR
  module R5
    class Provenance < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'occurred' => ['Period', 'dateTime']
      }
      SEARCH_PARAMS = ['activity', 'agent', 'agent-role', 'agent-type', 'based-on', 'encounter', 'entity', 'location', 'patient', 'recorded', 'signature-type', 'target', 'when']
      METADATA = {
        'id' => {'path'=>'Provenance.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Provenance.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Provenance.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'Provenance.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'Provenance.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Provenance.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Provenance.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Provenance.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'target' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Provenance.target', 'type'=>'Reference', 'min'=>1, 'max'=>Float::INFINITY},
        'occurredPeriod' => {'path'=>'Provenance.occurred[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'occurredDateTime' => {'path'=>'Provenance.occurred[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'recorded' => {'path'=>'Provenance.recorded', 'type'=>'instant', 'min'=>0, 'max'=>1},
        'policy' => {'path'=>'Provenance.policy', 'type'=>'uri', 'min'=>0, 'max'=>Float::INFINITY},
        'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'Provenance.location', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'authorization' => {'path'=>'Provenance.authorization', 'type'=>'CodeableReference', 'min'=>0, 'max'=>Float::INFINITY},
        'activity' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/iso-21089-lifecycle'=>['amend', 'originate', 'merge', 'deidentify', 'receive', 'transform', 'verify']}, 'path'=>'Provenance.activity', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/provenance-activity-type'}},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CarePlan', 'http://hl7.org/fhir/StructureDefinition/DeviceRequest', 'http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation', 'http://hl7.org/fhir/StructureDefinition/MedicationRequest', 'http://hl7.org/fhir/StructureDefinition/NutritionOrder', 'http://hl7.org/fhir/StructureDefinition/ServiceRequest', 'http://hl7.org/fhir/StructureDefinition/Task'], 'path'=>'Provenance.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'path'=>'Provenance.patient', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'Provenance.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'agent' => {'path'=>'Provenance.agent', 'type'=>'Provenance::Agent', 'min'=>1, 'max'=>Float::INFINITY},
        'entity' => {'path'=>'Provenance.entity', 'type'=>'Provenance::Entity', 'min'=>0, 'max'=>Float::INFINITY},
        'signature' => {'path'=>'Provenance.signature', 'type'=>'Signature', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Agent < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Agent.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Agent.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Agent.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/provenance-participant-type'=>['enterer', 'performer', 'author', 'verifier', 'legal', 'attester', 'informant', 'custodian', 'assembler', 'composer'], 'http://dicom.nema.org/resources/ontology/DCM'=>['110150', '110151', '110152', '110153', '110154', '110155'], 'http://terminology.hl7.org/CodeSystem/extra-security-role-type'=>['authserver', 'datacollector', 'dataprocessor', 'datasubject', 'humanuser']}, 'path'=>'Agent.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/participation-role-type'}},
          'role' => {'valid_codes'=>{'sample-security-structural-roles'=>['regulated-health-professionals', 'general-medicine', 'general-nursing', 'dentist', 'veterinarian', 'pharmacy', 'dietician', 'pediatrics', 'non-regulated-health-professionals', 'receptionist', 'business-manager', 'transcriptionist', 'claims-adjudicator']}, 'path'=>'Agent.role', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/security-role-type'}},
          'who' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'Agent.who', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'onBehalfOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/Patient'], 'path'=>'Agent.onBehalfOf', 'type'=>'Reference', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :role              # 0-* [ CodeableConcept ]
        attr_accessor :who               # 1-1 Reference(Practitioner|PractitionerRole|Organization|CareTeam|Patient|Device|RelatedPerson)
        attr_accessor :onBehalfOf        # 0-1 Reference(Practitioner|PractitionerRole|Organization|CareTeam|Patient)
      end

      class Entity < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Entity.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Entity.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Entity.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'role' => {'valid_codes'=>{'http://hl7.org/fhir/provenance-entity-role'=>['revision', 'quotation', 'source', 'instantiates', 'removal']}, 'path'=>'Entity.role', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/provenance-entity-role'}},
          'what' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Entity.what', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'agent' => {'path'=>'Entity.agent', 'type'=>'Provenance::Agent', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :role              # 1-1 code
        attr_accessor :what              # 1-1 Reference(Resource)
        attr_accessor :agent             # 0-* [ Provenance::Agent ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :target            # 1-* [ Reference(Resource) ]
      attr_accessor :occurredPeriod    # 0-1 Period
      attr_accessor :occurredDateTime  # 0-1 dateTime
      attr_accessor :recorded          # 0-1 instant
      attr_accessor :policy            # 0-* [ uri ]
      attr_accessor :location          # 0-1 Reference(Location)
      attr_accessor :authorization     # 0-* [ CodeableReference ]
      attr_accessor :activity          # 0-1 CodeableConcept
      attr_accessor :basedOn           # 0-* [ Reference(CarePlan|DeviceRequest|ImmunizationRecommendation|MedicationRequest|NutritionOrder|ServiceRequest|Task) ]
      attr_accessor :patient           # 0-1 Reference(Patient)
      attr_accessor :encounter         # 0-1 Reference(Encounter)
      attr_accessor :agent             # 1-* [ Provenance::Agent ]
      attr_accessor :entity            # 0-* [ Provenance::Entity ]
      attr_accessor :signature         # 0-* [ Signature ]

      def resourceType
        'Provenance'
      end
    end
  end
end