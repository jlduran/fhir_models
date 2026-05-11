module FHIR
  module R5
    class EncounterHistory < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['encounter', 'identifier', 'patient', 'status', 'subject']
      METADATA = {
        'id' => {'path'=>'EncounterHistory.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'EncounterHistory.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'EncounterHistory.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'EncounterHistory.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'EncounterHistory.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'EncounterHistory.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'EncounterHistory.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'EncounterHistory.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'EncounterHistory.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'identifier' => {'path'=>'EncounterHistory.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/encounter-status'=>['planned', 'in-progress', 'on-hold', 'discharged', 'completed', 'cancelled', 'discontinued', 'entered-in-error', 'unknown']}, 'path'=>'EncounterHistory.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/encounter-status'}},
        'class' => {'local_name'=>'local_class', 'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['AMB', 'EMER', 'FLD', 'HH', 'IMP', 'ACUTE', 'NONAC', 'OBSENC', 'PRENC', 'SS', 'VR']}, 'path'=>'EncounterHistory.class', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-ActEncounterCode'}},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/encounter-type'=>['ADMS', 'BD/BM-clin', 'CCS60', 'OKI']}, 'path'=>'EncounterHistory.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/encounter-type'}},
        'serviceType' => {'path'=>'EncounterHistory.serviceType', 'type'=>'CodeableReference', 'min'=>0, 'max'=>Float::INFINITY},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group'], 'path'=>'EncounterHistory.subject', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'subjectStatus' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/encounter-subject-status'=>['arrived', 'triaged', 'receiving-care', 'on-leave', 'departed']}, 'path'=>'EncounterHistory.subjectStatus', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/encounter-subject-status'}},
        'actualPeriod' => {'path'=>'EncounterHistory.actualPeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'plannedStartDate' => {'path'=>'EncounterHistory.plannedStartDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'plannedEndDate' => {'path'=>'EncounterHistory.plannedEndDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'length' => {'path'=>'EncounterHistory.length', 'type'=>'Duration', 'min'=>0, 'max'=>1},
        'location' => {'path'=>'EncounterHistory.location', 'type'=>'EncounterHistory::Location', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Location < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Location.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Location.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Location.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'Location.location', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'form' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/location-physical-type'=>['si', 'bu', 'wi', 'wa', 'lvl', 'co', 'ro', 'bd', 've', 'ho', 'ca', 'rd', 'area', 'jdn', 'vi']}, 'path'=>'Location.form', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/location-form'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :location          # 1-1 Reference(Location)
        attr_accessor :form              # 0-1 CodeableConcept
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :encounter         # 0-1 Reference(Encounter)
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :status            # 1-1 code
      attr_accessor :local_class       # 1-1 CodeableConcept
      attr_accessor :type              # 0-* [ CodeableConcept ]
      attr_accessor :serviceType       # 0-* [ CodeableReference ]
      attr_accessor :subject           # 0-1 Reference(Patient|Group)
      attr_accessor :subjectStatus     # 0-1 CodeableConcept
      attr_accessor :actualPeriod      # 0-1 Period
      attr_accessor :plannedStartDate  # 0-1 dateTime
      attr_accessor :plannedEndDate    # 0-1 dateTime
      attr_accessor :length            # 0-1 Duration
      attr_accessor :location          # 0-* [ EncounterHistory::Location ]

      def resourceType
        'EncounterHistory'
      end
    end
  end
end