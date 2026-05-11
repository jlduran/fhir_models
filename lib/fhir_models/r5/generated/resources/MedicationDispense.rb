module FHIR
  module R5
    class MedicationDispense < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['code', 'destination', 'encounter', 'identifier', 'location', 'medication', 'patient', 'performer', 'prescription', 'receiver', 'recorded', 'responsibleparty', 'status', 'subject', 'type', 'whenhandedover', 'whenprepared']
      METADATA = {
        'id' => {'path'=>'MedicationDispense.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'MedicationDispense.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'MedicationDispense.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'MedicationDispense.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'MedicationDispense.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'MedicationDispense.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'MedicationDispense.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'MedicationDispense.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'MedicationDispense.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CarePlan'], 'path'=>'MedicationDispense.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'partOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Procedure', 'http://hl7.org/fhir/StructureDefinition/MedicationAdministration'], 'path'=>'MedicationDispense.partOf', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/CodeSystem/medicationdispense-status'=>['preparation', 'in-progress', 'cancelled', 'on-hold', 'completed', 'entered-in-error', 'stopped', 'declined', 'unknown']}, 'path'=>'MedicationDispense.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/medicationdispense-status'}},
        'notPerformedReason' => {'path'=>'MedicationDispense.notPerformedReason', 'type'=>'CodeableReference', 'min'=>0, 'max'=>1},
        'statusChanged' => {'path'=>'MedicationDispense.statusChanged', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'category' => {'valid_codes'=>{'http://hl7.org/fhir/medicationdispense-admin-location'=>['inpatient', 'outpatient', 'community']}, 'path'=>'MedicationDispense.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/medicationdispense-admin-location'}},
        'medication' => {'path'=>'MedicationDispense.medication', 'type'=>'CodeableReference', 'min'=>1, 'max'=>1},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group'], 'path'=>'MedicationDispense.subject', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'MedicationDispense.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'supportingInformation' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'MedicationDispense.supportingInformation', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'performer' => {'path'=>'MedicationDispense.performer', 'type'=>'MedicationDispense::Performer', 'min'=>0, 'max'=>Float::INFINITY},
        'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'MedicationDispense.location', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'authorizingPrescription' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicationRequest'], 'path'=>'MedicationDispense.authorizingPrescription', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['DF', 'EM', 'SO', 'FF', 'FFS', 'FFPS', 'FFCS', 'TFS', 'FFC', 'FFP', 'FFSS', 'TF', 'FS', 'MS', 'RF', 'UD', 'RFC', 'RFCS', 'RFF', 'RFFS', 'RFP', 'RFPS', 'RFS', 'TB', 'TBS', 'UDE']}, 'path'=>'MedicationDispense.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-ActPharmacySupplyType'}},
        'quantity' => {'path'=>'MedicationDispense.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'daysSupply' => {'path'=>'MedicationDispense.daysSupply', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'recorded' => {'path'=>'MedicationDispense.recorded', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'whenPrepared' => {'path'=>'MedicationDispense.whenPrepared', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'whenHandedOver' => {'path'=>'MedicationDispense.whenHandedOver', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'destination' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'MedicationDispense.destination', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'receiver' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'MedicationDispense.receiver', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'path'=>'MedicationDispense.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
        'renderedDosageInstruction' => {'path'=>'MedicationDispense.renderedDosageInstruction', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'dosageInstruction' => {'path'=>'MedicationDispense.dosageInstruction', 'type'=>'Dosage', 'min'=>0, 'max'=>Float::INFINITY},
        'substitution' => {'path'=>'MedicationDispense.substitution', 'type'=>'MedicationDispense::Substitution', 'min'=>0, 'max'=>1},
        'eventHistory' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Provenance'], 'path'=>'MedicationDispense.eventHistory', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Performer < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Performer.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Performer.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Performer.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'function' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/medicationdispense-performer-function'=>['dataenterer', 'packager', 'checker', 'finalchecker', 'counsellor']}, 'path'=>'Performer.function', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/medicationdispense-performer-function'}},
          'actor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/CareTeam'], 'path'=>'Performer.actor', 'type'=>'Reference', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :function          # 0-1 CodeableConcept
        attr_accessor :actor             # 1-1 Reference(Practitioner|PractitionerRole|Organization|Patient|Device|RelatedPerson|CareTeam)
      end

      class Substitution < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Substitution.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Substitution.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Substitution.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'wasSubstituted' => {'path'=>'Substitution.wasSubstituted', 'type'=>'boolean', 'min'=>1, 'max'=>1},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-substanceAdminSubstitution'=>['E', 'EC', 'BC', 'G', 'TE', 'TB', 'TG', 'F', 'N']}, 'path'=>'Substitution.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-ActSubstanceAdminSubstitutionCode'}},
          'reason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['CT', 'FP', 'OS', 'RR']}, 'path'=>'Substitution.reason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-SubstanceAdminSubstitutionReason'}},
          'responsibleParty' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Substitution.responsibleParty', 'type'=>'Reference', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :wasSubstituted    # 1-1 boolean
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :reason            # 0-* [ CodeableConcept ]
        attr_accessor :responsibleParty  # 0-1 Reference(Practitioner|PractitionerRole|Organization)
      end

      attr_accessor :id                        # 0-1 id
      attr_accessor :meta                      # 0-1 Meta
      attr_accessor :implicitRules             # 0-1 uri
      attr_accessor :language                  # 0-1 code
      attr_accessor :text                      # 0-1 Narrative
      attr_accessor :contained                 # 0-* [ Resource ]
      attr_accessor :extension                 # 0-* [ Extension ]
      attr_accessor :modifierExtension         # 0-* [ Extension ]
      attr_accessor :identifier                # 0-* [ Identifier ]
      attr_accessor :basedOn                   # 0-* [ Reference(CarePlan) ]
      attr_accessor :partOf                    # 0-* [ Reference(Procedure|MedicationAdministration) ]
      attr_accessor :status                    # 1-1 code
      attr_accessor :notPerformedReason        # 0-1 CodeableReference
      attr_accessor :statusChanged             # 0-1 dateTime
      attr_accessor :category                  # 0-* [ CodeableConcept ]
      attr_accessor :medication                # 1-1 CodeableReference
      attr_accessor :subject                   # 1-1 Reference(Patient|Group)
      attr_accessor :encounter                 # 0-1 Reference(Encounter)
      attr_accessor :supportingInformation     # 0-* [ Reference(Resource) ]
      attr_accessor :performer                 # 0-* [ MedicationDispense::Performer ]
      attr_accessor :location                  # 0-1 Reference(Location)
      attr_accessor :authorizingPrescription   # 0-* [ Reference(MedicationRequest) ]
      attr_accessor :type                      # 0-1 CodeableConcept
      attr_accessor :quantity                  # 0-1 Quantity
      attr_accessor :daysSupply                # 0-1 Quantity
      attr_accessor :recorded                  # 0-1 dateTime
      attr_accessor :whenPrepared              # 0-1 dateTime
      attr_accessor :whenHandedOver            # 0-1 dateTime
      attr_accessor :destination               # 0-1 Reference(Location)
      attr_accessor :receiver                  # 0-* [ Reference(Patient|Practitioner|RelatedPerson|Location|PractitionerRole) ]
      attr_accessor :note                      # 0-* [ Annotation ]
      attr_accessor :renderedDosageInstruction # 0-1 markdown
      attr_accessor :dosageInstruction         # 0-* [ Dosage ]
      attr_accessor :substitution              # 0-1 MedicationDispense::Substitution
      attr_accessor :eventHistory              # 0-* [ Reference(Provenance) ]

      def resourceType
        'MedicationDispense'
      end
    end
  end
end