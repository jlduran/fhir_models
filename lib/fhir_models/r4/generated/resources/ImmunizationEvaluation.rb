module FHIR
  module R4
    class ImmunizationEvaluation < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'doseNumber' => ['positiveInt', 'string'],
        'seriesDoses' => ['positiveInt', 'string']
      }
      SEARCH_PARAMS = ['date', 'dose-status', 'identifier', 'immunization-event', 'patient', 'status', 'target-disease']
      METADATA = {
        'id' => {'path'=>'ImmunizationEvaluation.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'ImmunizationEvaluation.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'ImmunizationEvaluation.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'ImmunizationEvaluation.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'ImmunizationEvaluation.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'ImmunizationEvaluation.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'ImmunizationEvaluation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'ImmunizationEvaluation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'ImmunizationEvaluation.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/medication-admin-status'=>['completed', 'entered-in-error']}, 'path'=>'ImmunizationEvaluation.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-evaluation-status'}},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'path'=>'ImmunizationEvaluation.patient', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'date' => {'path'=>'ImmunizationEvaluation.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'authority' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'ImmunizationEvaluation.authority', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'targetDisease' => {'valid_codes'=>{'http://snomed.info/sct'=>['1857005', '397430003', '14189004', '36989005', '36653000', '76902006', '709410003', '27836007', '398102009']}, 'path'=>'ImmunizationEvaluation.targetDisease', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-evaluation-target-disease'}},
        'immunizationEvent' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Immunization'], 'path'=>'ImmunizationEvaluation.immunizationEvent', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'doseStatus' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/immunization-evaluation-dose-status'=>['valid', 'notvalid']}, 'path'=>'ImmunizationEvaluation.doseStatus', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-evaluation-dose-status'}},
        'doseStatusReason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/immunization-evaluation-dose-status-reason'=>['advstorage', 'coldchbrk', 'explot', 'outsidesched', 'prodrecall']}, 'path'=>'ImmunizationEvaluation.doseStatusReason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-evaluation-dose-status-reason'}},
        'description' => {'path'=>'ImmunizationEvaluation.description', 'type'=>'string', 'min'=>0, 'max'=>1},
        'series' => {'path'=>'ImmunizationEvaluation.series', 'type'=>'string', 'min'=>0, 'max'=>1},
        'doseNumberPositiveInt' => {'path'=>'ImmunizationEvaluation.doseNumber[x]', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
        'doseNumberString' => {'path'=>'ImmunizationEvaluation.doseNumber[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
        'seriesDosesPositiveInt' => {'path'=>'ImmunizationEvaluation.seriesDoses[x]', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
        'seriesDosesString' => {'path'=>'ImmunizationEvaluation.seriesDoses[x]', 'type'=>'string', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id                     # 0-1 id
      attr_accessor :meta                   # 0-1 Meta
      attr_accessor :implicitRules          # 0-1 uri
      attr_accessor :language               # 0-1 code
      attr_accessor :text                   # 0-1 Narrative
      attr_accessor :contained              # 0-* [ Resource ]
      attr_accessor :extension              # 0-* [ Extension ]
      attr_accessor :modifierExtension      # 0-* [ Extension ]
      attr_accessor :identifier             # 0-* [ Identifier ]
      attr_accessor :status                 # 1-1 code
      attr_accessor :patient                # 1-1 Reference(Patient)
      attr_accessor :date                   # 0-1 dateTime
      attr_accessor :authority              # 0-1 Reference(Organization)
      attr_accessor :targetDisease          # 1-1 CodeableConcept
      attr_accessor :immunizationEvent      # 1-1 Reference(Immunization)
      attr_accessor :doseStatus             # 1-1 CodeableConcept
      attr_accessor :doseStatusReason       # 0-* [ CodeableConcept ]
      attr_accessor :description            # 0-1 string
      attr_accessor :series                 # 0-1 string
      attr_accessor :doseNumberPositiveInt  # 0-1 positiveInt
      attr_accessor :doseNumberString       # 0-1 string
      attr_accessor :seriesDosesPositiveInt # 0-1 positiveInt
      attr_accessor :seriesDosesString      # 0-1 string

      def resourceType
        'ImmunizationEvaluation'
      end
    end
  end
  ImmunizationEvaluation = FHIR::R4::ImmunizationEvaluation
end