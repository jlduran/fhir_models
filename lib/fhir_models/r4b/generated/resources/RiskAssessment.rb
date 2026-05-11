module FHIR
  module R4B
    class RiskAssessment < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'occurrence' => ['dateTime', 'Period']
      }
      SEARCH_PARAMS = ['condition', 'date', 'encounter', 'identifier', 'method', 'patient', 'performer', 'probability', 'risk', 'subject']
      METADATA = {
        'id' => {'path'=>'RiskAssessment.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'RiskAssessment.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'RiskAssessment.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'RiskAssessment.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'RiskAssessment.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'RiskAssessment.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'RiskAssessment.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'RiskAssessment.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'RiskAssessment.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'RiskAssessment.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'parent' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'RiskAssessment.parent', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/observation-status'=>['registered', 'preliminary', 'final', 'amended', 'corrected', 'cancelled', 'entered-in-error', 'unknown']}, 'path'=>'RiskAssessment.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/observation-status'}},
        'method' => {'local_name'=>'local_method', 'path'=>'RiskAssessment.method', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
        'code' => {'path'=>'RiskAssessment.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group'], 'path'=>'RiskAssessment.subject', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'RiskAssessment.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'occurrenceDateTime' => {'path'=>'RiskAssessment.occurrence[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'occurrencePeriod' => {'path'=>'RiskAssessment.occurrence[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'condition' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition'], 'path'=>'RiskAssessment.condition', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'performer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'RiskAssessment.performer', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'reasonCode' => {'path'=>'RiskAssessment.reasonCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
        'reasonReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition', 'http://hl7.org/fhir/StructureDefinition/Observation', 'http://hl7.org/fhir/StructureDefinition/DiagnosticReport', 'http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'path'=>'RiskAssessment.reasonReference', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'basis' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'RiskAssessment.basis', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'prediction' => {'path'=>'RiskAssessment.prediction', 'type'=>'RiskAssessment::Prediction', 'min'=>0, 'max'=>Float::INFINITY},
        'mitigation' => {'path'=>'RiskAssessment.mitigation', 'type'=>'string', 'min'=>0, 'max'=>1},
        'note' => {'path'=>'RiskAssessment.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Prediction < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'probability' => ['decimal', 'Range'],
          'when' => ['Period', 'Range']
        }
        METADATA = {
          'id' => {'path'=>'Prediction.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Prediction.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Prediction.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'outcome' => {'path'=>'Prediction.outcome', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
          'probabilityDecimal' => {'path'=>'Prediction.probability[x]', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'probabilityRange' => {'path'=>'Prediction.probability[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
          'qualitativeRisk' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/risk-probability'=>['negligible', 'low', 'moderate', 'high', 'certain']}, 'path'=>'Prediction.qualitativeRisk', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/risk-probability'}},
          'relativeRisk' => {'path'=>'Prediction.relativeRisk', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'whenPeriod' => {'path'=>'Prediction.when[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'whenRange' => {'path'=>'Prediction.when[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
          'rationale' => {'path'=>'Prediction.rationale', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                 # 0-1 string
        attr_accessor :extension          # 0-* [ Extension ]
        attr_accessor :modifierExtension  # 0-* [ Extension ]
        attr_accessor :outcome            # 0-1 CodeableConcept
        attr_accessor :probabilityDecimal # 0-1 decimal
        attr_accessor :probabilityRange   # 0-1 Range
        attr_accessor :qualitativeRisk    # 0-1 CodeableConcept
        attr_accessor :relativeRisk       # 0-1 decimal
        attr_accessor :whenPeriod         # 0-1 Period
        attr_accessor :whenRange          # 0-1 Range
        attr_accessor :rationale          # 0-1 string
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
      attr_accessor :basedOn            # 0-1 Reference(Resource)
      attr_accessor :parent             # 0-1 Reference(Resource)
      attr_accessor :status             # 1-1 code
      attr_accessor :local_method       # 0-1 CodeableConcept
      attr_accessor :code               # 0-1 CodeableConcept
      attr_accessor :subject            # 1-1 Reference(Patient|Group)
      attr_accessor :encounter          # 0-1 Reference(Encounter)
      attr_accessor :occurrenceDateTime # 0-1 dateTime
      attr_accessor :occurrencePeriod   # 0-1 Period
      attr_accessor :condition          # 0-1 Reference(Condition)
      attr_accessor :performer          # 0-1 Reference(Practitioner|PractitionerRole|Device)
      attr_accessor :reasonCode         # 0-* [ CodeableConcept ]
      attr_accessor :reasonReference    # 0-* [ Reference(Condition|Observation|DiagnosticReport|DocumentReference) ]
      attr_accessor :basis              # 0-* [ Reference(Resource) ]
      attr_accessor :prediction         # 0-* [ RiskAssessment::Prediction ]
      attr_accessor :mitigation         # 0-1 string
      attr_accessor :note               # 0-* [ Annotation ]

      def resourceType
        'RiskAssessment'
      end
    end
  end
end