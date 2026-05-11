module FHIR
  module R5
    class Encounter < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['account', 'appointment', 'based-on', 'careteam', 'class', 'date', 'date-start', 'diagnosis-code', 'diagnosis-reference', 'end-date', 'episode-of-care', 'identifier', 'length', 'location', 'location-period', 'part-of', 'participant', 'participant-type', 'patient', 'practitioner', 'reason-code', 'reason-reference', 'service-provider', 'special-arrangement', 'status', 'subject', 'subject-status', 'type']
      METADATA = {
        'id' => {'path'=>'Encounter.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Encounter.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Encounter.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'Encounter.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'Encounter.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Encounter.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Encounter.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Encounter.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Encounter.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/encounter-status'=>['planned', 'in-progress', 'on-hold', 'discharged', 'completed', 'cancelled', 'discontinued', 'entered-in-error', 'unknown']}, 'path'=>'Encounter.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/encounter-status'}},
        'class' => {'local_name'=>'local_class', 'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['IMP', 'AMB', 'OBSENC', 'EMER', 'VR', 'HH']}, 'path'=>'Encounter.class', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://terminology.hl7.org/ValueSet/encounter-class'}},
        'priority' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActPriority'=>['A', 'CR', 'EL', 'EM', 'P', 'PRN', 'R', 'RR', 'S', 'T', 'UD', 'UR', 'CS', 'CSP', 'CSR']}, 'path'=>'Encounter.priority', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-ActPriority'}},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/encounter-type'=>['ADMS', 'BD/BM-clin', 'CCS60', 'OKI']}, 'path'=>'Encounter.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/encounter-type'}},
        'serviceType' => {'path'=>'Encounter.serviceType', 'type'=>'CodeableReference', 'min'=>0, 'max'=>Float::INFINITY},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group'], 'path'=>'Encounter.subject', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'subjectStatus' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/encounter-subject-status'=>['arrived', 'triaged', 'receiving-care', 'on-leave', 'departed']}, 'path'=>'Encounter.subjectStatus', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/encounter-subject-status'}},
        'episodeOfCare' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/EpisodeOfCare'], 'path'=>'Encounter.episodeOfCare', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CarePlan', 'http://hl7.org/fhir/StructureDefinition/DeviceRequest', 'http://hl7.org/fhir/StructureDefinition/MedicationRequest', 'http://hl7.org/fhir/StructureDefinition/ServiceRequest'], 'path'=>'Encounter.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'careTeam' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CareTeam'], 'path'=>'Encounter.careTeam', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'partOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'Encounter.partOf', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'serviceProvider' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Encounter.serviceProvider', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'participant' => {'path'=>'Encounter.participant', 'type'=>'Encounter::Participant', 'min'=>0, 'max'=>Float::INFINITY},
        'appointment' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Appointment'], 'path'=>'Encounter.appointment', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'virtualService' => {'path'=>'Encounter.virtualService', 'type'=>'VirtualServiceDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'actualPeriod' => {'path'=>'Encounter.actualPeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'plannedStartDate' => {'path'=>'Encounter.plannedStartDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'plannedEndDate' => {'path'=>'Encounter.plannedEndDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'length' => {'path'=>'Encounter.length', 'type'=>'Duration', 'min'=>0, 'max'=>1},
        'reason' => {'path'=>'Encounter.reason', 'type'=>'Encounter::Reason', 'min'=>0, 'max'=>Float::INFINITY},
        'diagnosis' => {'path'=>'Encounter.diagnosis', 'type'=>'Encounter::Diagnosis', 'min'=>0, 'max'=>Float::INFINITY},
        'account' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Account'], 'path'=>'Encounter.account', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'dietPreference' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/diet'=>['vegetarian', 'dairy-free', 'nut-free', 'gluten-free', 'vegan', 'halal', 'kosher']}, 'path'=>'Encounter.dietPreference', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/encounter-diet'}},
        'specialArrangement' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/encounter-special-arrangements'=>['wheel', 'add-bed', 'int', 'att', 'dog']}, 'path'=>'Encounter.specialArrangement', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/encounter-special-arrangements'}},
        'specialCourtesy' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-EncounterSpecialCourtesy'=>['EXT', 'NRM', 'PRF', 'STF', 'VIP'], 'http://terminology.hl7.org/CodeSystem/v3-NullFlavor'=>['UNK']}, 'path'=>'Encounter.specialCourtesy', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/encounter-special-courtesy'}},
        'admission' => {'path'=>'Encounter.admission', 'type'=>'Encounter::Admission', 'min'=>0, 'max'=>1},
        'location' => {'path'=>'Encounter.location', 'type'=>'Encounter::Location', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Participant < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Participant.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Participant.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Participant.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ParticipationType'=>['ADM', 'ATND', 'CALLBCK', 'CON', 'DIS', 'ESC', 'REF'], 'http://terminology.hl7.org/CodeSystem/participant-type'=>['translator', 'emergency']}, 'path'=>'Participant.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/encounter-participant-type'}},
          'period' => {'path'=>'Participant.period', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'actor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/HealthcareService'], 'path'=>'Participant.actor', 'type'=>'Reference', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-* [ CodeableConcept ]
        attr_accessor :period            # 0-1 Period
        attr_accessor :actor             # 0-1 Reference(Patient|Group|RelatedPerson|Practitioner|PractitionerRole|Device|HealthcareService)
      end

      class Reason < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Reason.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Reason.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Reason.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'use' => {'valid_codes'=>{'http://hl7.org/fhir/encounter-reason-use'=>['CC', 'HC', 'AD', 'RV', 'HM']}, 'path'=>'Reason.use', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/encounter-reason-use'}},
          'value' => {'path'=>'Reason.value', 'type'=>'CodeableReference', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :use               # 0-* [ CodeableConcept ]
        attr_accessor :value             # 0-* [ CodeableReference ]
      end

      class Diagnosis < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Diagnosis.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Diagnosis.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Diagnosis.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'condition' => {'path'=>'Diagnosis.condition', 'type'=>'CodeableReference', 'min'=>0, 'max'=>Float::INFINITY},
          'use' => {'valid_codes'=>{'http://hl7.org/fhir/encounter-diagnosis-use'=>['working', 'final']}, 'path'=>'Diagnosis.use', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/encounter-diagnosis-use'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :condition         # 0-* [ CodeableReference ]
        attr_accessor :use               # 0-* [ CodeableConcept ]
      end

      class Admission < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Admission.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Admission.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Admission.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'preAdmissionIdentifier' => {'path'=>'Admission.preAdmissionIdentifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
          'origin' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Admission.origin', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'admitSource' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/admit-source'=>['hosp-trans', 'emd', 'outp', 'born', 'gp', 'mp', 'nursing', 'psych', 'rehab', 'other']}, 'path'=>'Admission.admitSource', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/encounter-admit-source'}},
          'reAdmission' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v2-0092'=>['R']}, 'path'=>'Admission.reAdmission', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v2-0092'}},
          'destination' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Admission.destination', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'dischargeDisposition' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/discharge-disposition'=>['home', 'alt-home', 'other-hcf', 'hosp', 'long', 'aadvice', 'exp', 'psy', 'rehab', 'snf', 'oth']}, 'path'=>'Admission.dischargeDisposition', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/encounter-discharge-disposition'}}
        }

        attr_accessor :id                     # 0-1 string
        attr_accessor :extension              # 0-* [ Extension ]
        attr_accessor :modifierExtension      # 0-* [ Extension ]
        attr_accessor :preAdmissionIdentifier # 0-1 Identifier
        attr_accessor :origin                 # 0-1 Reference(Location|Organization)
        attr_accessor :admitSource            # 0-1 CodeableConcept
        attr_accessor :reAdmission            # 0-1 CodeableConcept
        attr_accessor :destination            # 0-1 Reference(Location|Organization)
        attr_accessor :dischargeDisposition   # 0-1 CodeableConcept
      end

      class Location < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Location.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Location.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Location.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'Location.location', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'status' => {'valid_codes'=>{'http://hl7.org/fhir/encounter-location-status'=>['planned', 'active', 'reserved', 'completed']}, 'path'=>'Location.status', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/encounter-location-status'}},
          'form' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/location-physical-type'=>['si', 'bu', 'wi', 'wa', 'lvl', 'co', 'ro', 'bd', 've', 'ho', 'ca', 'rd', 'area', 'jdn', 'vi']}, 'path'=>'Location.form', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/location-form'}},
          'period' => {'path'=>'Location.period', 'type'=>'Period', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :location          # 1-1 Reference(Location)
        attr_accessor :status            # 0-1 code
        attr_accessor :form              # 0-1 CodeableConcept
        attr_accessor :period            # 0-1 Period
      end

      attr_accessor :id                 # 0-1 id
      attr_accessor :meta               # 0-1 Meta
      attr_accessor :implicitRules      # 0-1 uri
      attr_accessor :language           # 0-1 code
      attr_accessor :text               # 0-1 Narrative
      attr_accessor :contained          # 0-* [ Resource ]
      attr_accessor :extension          # 0-* [ Extension ]
      attr_accessor :modifierExtension  # 0-* [ Extension ]
      attr_accessor :identifier         # 0-* [ Identifier ]
      attr_accessor :status             # 1-1 code
      attr_accessor :local_class        # 0-* [ CodeableConcept ]
      attr_accessor :priority           # 0-1 CodeableConcept
      attr_accessor :type               # 0-* [ CodeableConcept ]
      attr_accessor :serviceType        # 0-* [ CodeableReference ]
      attr_accessor :subject            # 0-1 Reference(Patient|Group)
      attr_accessor :subjectStatus      # 0-1 CodeableConcept
      attr_accessor :episodeOfCare      # 0-* [ Reference(EpisodeOfCare) ]
      attr_accessor :basedOn            # 0-* [ Reference(CarePlan|DeviceRequest|MedicationRequest|ServiceRequest) ]
      attr_accessor :careTeam           # 0-* [ Reference(CareTeam) ]
      attr_accessor :partOf             # 0-1 Reference(Encounter)
      attr_accessor :serviceProvider    # 0-1 Reference(Organization)
      attr_accessor :participant        # 0-* [ Encounter::Participant ]
      attr_accessor :appointment        # 0-* [ Reference(Appointment) ]
      attr_accessor :virtualService     # 0-* [ VirtualServiceDetail ]
      attr_accessor :actualPeriod       # 0-1 Period
      attr_accessor :plannedStartDate   # 0-1 dateTime
      attr_accessor :plannedEndDate     # 0-1 dateTime
      attr_accessor :length             # 0-1 Duration
      attr_accessor :reason             # 0-* [ Encounter::Reason ]
      attr_accessor :diagnosis          # 0-* [ Encounter::Diagnosis ]
      attr_accessor :account            # 0-* [ Reference(Account) ]
      attr_accessor :dietPreference     # 0-* [ CodeableConcept ]
      attr_accessor :specialArrangement # 0-* [ CodeableConcept ]
      attr_accessor :specialCourtesy    # 0-* [ CodeableConcept ]
      attr_accessor :admission          # 0-1 Encounter::Admission
      attr_accessor :location           # 0-* [ Encounter::Location ]

      def resourceType
        'Encounter'
      end
    end
  end
end