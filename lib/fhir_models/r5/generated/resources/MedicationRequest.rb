module FHIR
  module R5
    class MedicationRequest < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['authoredon', 'category', 'code', 'combo-date', 'encounter', 'group-identifier', 'identifier', 'intended-dispenser', 'intended-performer', 'intended-performertype', 'intent', 'medication', 'patient', 'priority', 'requester', 'status', 'subject']
      METADATA = {
        'id' => {'path'=>'MedicationRequest.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'MedicationRequest.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'MedicationRequest.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'MedicationRequest.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'MedicationRequest.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'MedicationRequest.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'MedicationRequest.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'MedicationRequest.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'MedicationRequest.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CarePlan', 'http://hl7.org/fhir/StructureDefinition/MedicationRequest', 'http://hl7.org/fhir/StructureDefinition/ServiceRequest', 'http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation'], 'path'=>'MedicationRequest.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'priorPrescription' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicationRequest'], 'path'=>'MedicationRequest.priorPrescription', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'groupIdentifier' => {'path'=>'MedicationRequest.groupIdentifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/CodeSystem/medicationrequest-status'=>['active', 'on-hold', 'ended', 'stopped', 'completed', 'cancelled', 'entered-in-error', 'draft', 'unknown']}, 'path'=>'MedicationRequest.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/medicationrequest-status'}},
        'statusReason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/medicationrequest-status-reason'=>['altchoice', 'clarif', 'drughigh', 'hospadm', 'labint', 'non-avail', 'preg', 'salg', 'sddi', 'sdupther', 'sintol', 'surg', 'washout']}, 'path'=>'MedicationRequest.statusReason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/medicationrequest-status-reason'}},
        'statusChanged' => {'path'=>'MedicationRequest.statusChanged', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'intent' => {'valid_codes'=>{'http://hl7.org/fhir/CodeSystem/medicationrequest-intent'=>['proposal', 'plan', 'order', 'original-order', 'reflex-order', 'filler-order', 'instance-order', 'option']}, 'path'=>'MedicationRequest.intent', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/medicationrequest-intent'}},
        'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/medicationrequest-admin-location'=>['inpatient', 'outpatient', 'community']}, 'path'=>'MedicationRequest.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/medicationrequest-admin-location'}},
        'priority' => {'valid_codes'=>{'http://hl7.org/fhir/request-priority'=>['routine', 'urgent', 'asap', 'stat']}, 'path'=>'MedicationRequest.priority', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-priority'}},
        'doNotPerform' => {'path'=>'MedicationRequest.doNotPerform', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'medication' => {'path'=>'MedicationRequest.medication', 'type'=>'CodeableReference', 'min'=>1, 'max'=>1},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group'], 'path'=>'MedicationRequest.subject', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'informationSource' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'MedicationRequest.informationSource', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'MedicationRequest.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'supportingInformation' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'MedicationRequest.supportingInformation', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'authoredOn' => {'path'=>'MedicationRequest.authoredOn', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'requester' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'MedicationRequest.requester', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'reported' => {'path'=>'MedicationRequest.reported', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'performerType' => {'valid_codes'=>{'http://hl7.org/fhir/CodeSystem/medication-intended-performer-role'=>['registerednurse', 'oncologynurse', 'paincontrolnurse', 'physician', 'pharmacist']}, 'path'=>'MedicationRequest.performerType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/medication-intended-performer-role'}},
        'performer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/DeviceDefinition', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/HealthcareService'], 'path'=>'MedicationRequest.performer', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'device' => {'path'=>'MedicationRequest.device', 'type'=>'CodeableReference', 'min'=>0, 'max'=>Float::INFINITY},
        'recorder' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'MedicationRequest.recorder', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'reason' => {'path'=>'MedicationRequest.reason', 'type'=>'CodeableReference', 'min'=>0, 'max'=>Float::INFINITY},
        'courseOfTherapyType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy'=>['continuous', 'acute', 'seasonal']}, 'path'=>'MedicationRequest.courseOfTherapyType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/medicationrequest-course-of-therapy'}},
        'insurance' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Coverage', 'http://hl7.org/fhir/StructureDefinition/ClaimResponse'], 'path'=>'MedicationRequest.insurance', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'path'=>'MedicationRequest.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
        'renderedDosageInstruction' => {'path'=>'MedicationRequest.renderedDosageInstruction', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'effectiveDosePeriod' => {'path'=>'MedicationRequest.effectiveDosePeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'dosageInstruction' => {'path'=>'MedicationRequest.dosageInstruction', 'type'=>'Dosage', 'min'=>0, 'max'=>Float::INFINITY},
        'dispenseRequest' => {'path'=>'MedicationRequest.dispenseRequest', 'type'=>'MedicationRequest::DispenseRequest', 'min'=>0, 'max'=>1},
        'substitution' => {'path'=>'MedicationRequest.substitution', 'type'=>'MedicationRequest::Substitution', 'min'=>0, 'max'=>1},
        'eventHistory' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Provenance'], 'path'=>'MedicationRequest.eventHistory', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class DispenseRequest < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'DispenseRequest.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'DispenseRequest.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'DispenseRequest.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'initialFill' => {'path'=>'DispenseRequest.initialFill', 'type'=>'MedicationRequest::DispenseRequest::InitialFill', 'min'=>0, 'max'=>1},
          'dispenseInterval' => {'path'=>'DispenseRequest.dispenseInterval', 'type'=>'Duration', 'min'=>0, 'max'=>1},
          'validityPeriod' => {'path'=>'DispenseRequest.validityPeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'numberOfRepeatsAllowed' => {'path'=>'DispenseRequest.numberOfRepeatsAllowed', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
          'quantity' => {'path'=>'DispenseRequest.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'expectedSupplyDuration' => {'path'=>'DispenseRequest.expectedSupplyDuration', 'type'=>'Duration', 'min'=>0, 'max'=>1},
          'dispenser' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'DispenseRequest.dispenser', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'dispenserInstruction' => {'path'=>'DispenseRequest.dispenserInstruction', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
          'doseAdministrationAid' => {'valid_codes'=>{'http://hl7.org/fhir/CodeSystem/medication-dose-aid'=>['blisterpack', 'dosette', 'sachets']}, 'path'=>'DispenseRequest.doseAdministrationAid', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/medication-dose-aid'}}
        }

        class InitialFill < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'InitialFill.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'InitialFill.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'InitialFill.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'quantity' => {'path'=>'InitialFill.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
            'duration' => {'path'=>'InitialFill.duration', 'type'=>'Duration', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :quantity          # 0-1 Quantity
          attr_accessor :duration          # 0-1 Duration
        end

        attr_accessor :id                     # 0-1 string
        attr_accessor :extension              # 0-* [ Extension ]
        attr_accessor :modifierExtension      # 0-* [ Extension ]
        attr_accessor :initialFill            # 0-1 MedicationRequest::DispenseRequest::InitialFill
        attr_accessor :dispenseInterval       # 0-1 Duration
        attr_accessor :validityPeriod         # 0-1 Period
        attr_accessor :numberOfRepeatsAllowed # 0-1 unsignedInt
        attr_accessor :quantity               # 0-1 Quantity
        attr_accessor :expectedSupplyDuration # 0-1 Duration
        attr_accessor :dispenser              # 0-1 Reference(Organization)
        attr_accessor :dispenserInstruction   # 0-* [ Annotation ]
        attr_accessor :doseAdministrationAid  # 0-1 CodeableConcept
      end

      class Substitution < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'allowed' => ['boolean', 'CodeableConcept']
        }
        METADATA = {
          'id' => {'path'=>'Substitution.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Substitution.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Substitution.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'allowedBoolean' => {'path'=>'Substitution.allowed[x]', 'type'=>'boolean', 'min'=>1, 'max'=>1},
          'allowedCodeableConcept' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-substanceAdminSubstitution'=>['E', 'EC', 'BC', 'G', 'TE', 'TB', 'TG', 'F', 'N']}, 'path'=>'Substitution.allowed[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-ActSubstanceAdminSubstitutionCode'}},
          'reason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['CT', 'FP', 'OS', 'RR']}, 'path'=>'Substitution.reason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-SubstanceAdminSubstitutionReason'}}
        }

        attr_accessor :id                     # 0-1 string
        attr_accessor :extension              # 0-* [ Extension ]
        attr_accessor :modifierExtension      # 0-* [ Extension ]
        attr_accessor :allowedBoolean         # 1-1 boolean
        attr_accessor :allowedCodeableConcept # 1-1 CodeableConcept
        attr_accessor :reason                 # 0-1 CodeableConcept
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
      attr_accessor :basedOn                   # 0-* [ Reference(CarePlan|MedicationRequest|ServiceRequest|ImmunizationRecommendation) ]
      attr_accessor :priorPrescription         # 0-1 Reference(MedicationRequest)
      attr_accessor :groupIdentifier           # 0-1 Identifier
      attr_accessor :status                    # 1-1 code
      attr_accessor :statusReason              # 0-1 CodeableConcept
      attr_accessor :statusChanged             # 0-1 dateTime
      attr_accessor :intent                    # 1-1 code
      attr_accessor :category                  # 0-* [ CodeableConcept ]
      attr_accessor :priority                  # 0-1 code
      attr_accessor :doNotPerform              # 0-1 boolean
      attr_accessor :medication                # 1-1 CodeableReference
      attr_accessor :subject                   # 1-1 Reference(Patient|Group)
      attr_accessor :informationSource         # 0-* [ Reference(Patient|Practitioner|PractitionerRole|RelatedPerson|Organization) ]
      attr_accessor :encounter                 # 0-1 Reference(Encounter)
      attr_accessor :supportingInformation     # 0-* [ Reference(Resource) ]
      attr_accessor :authoredOn                # 0-1 dateTime
      attr_accessor :requester                 # 0-1 Reference(Practitioner|PractitionerRole|Organization|Patient|RelatedPerson|Device)
      attr_accessor :reported                  # 0-1 boolean
      attr_accessor :performerType             # 0-1 CodeableConcept
      attr_accessor :performer                 # 0-* [ Reference(Practitioner|PractitionerRole|Organization|Patient|DeviceDefinition|RelatedPerson|CareTeam|HealthcareService) ]
      attr_accessor :device                    # 0-* [ CodeableReference ]
      attr_accessor :recorder                  # 0-1 Reference(Practitioner|PractitionerRole)
      attr_accessor :reason                    # 0-* [ CodeableReference ]
      attr_accessor :courseOfTherapyType       # 0-1 CodeableConcept
      attr_accessor :insurance                 # 0-* [ Reference(Coverage|ClaimResponse) ]
      attr_accessor :note                      # 0-* [ Annotation ]
      attr_accessor :renderedDosageInstruction # 0-1 markdown
      attr_accessor :effectiveDosePeriod       # 0-1 Period
      attr_accessor :dosageInstruction         # 0-* [ Dosage ]
      attr_accessor :dispenseRequest           # 0-1 MedicationRequest::DispenseRequest
      attr_accessor :substitution              # 0-1 MedicationRequest::Substitution
      attr_accessor :eventHistory              # 0-* [ Reference(Provenance) ]

      def resourceType
        'MedicationRequest'
      end
    end
  end
end