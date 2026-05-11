module FHIR
  module R5
    class ImmunizationEvaluation < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['date', 'dose-status', 'identifier', 'immunization-event', 'patient', 'status', 'target-disease']
      METADATA = {
        'id' => {'path'=>'ImmunizationEvaluation.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'ImmunizationEvaluation.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'ImmunizationEvaluation.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'ImmunizationEvaluation.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'ImmunizationEvaluation.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'ImmunizationEvaluation.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'ImmunizationEvaluation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'ImmunizationEvaluation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'ImmunizationEvaluation.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/CodeSystem/medication-admin-status'=>['completed', 'entered-in-error']}, 'path'=>'ImmunizationEvaluation.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-evaluation-status'}},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'path'=>'ImmunizationEvaluation.patient', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'date' => {'path'=>'ImmunizationEvaluation.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'authority' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'ImmunizationEvaluation.authority', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'targetDisease' => {'valid_codes'=>{'http://snomed.info/sct'=>['397428000', '27836007', '76902006', '721764008', '14189004', '36989005', '36653000', '16814004', '23511006', '709410003', '56717001', '363354003', '266113007', '415822001', '66071002', '40468003', '7111000119109', '719590007', '719865001', '38907003', '4740000', '55735004', '240613006', '4834000', '85904008', '63650001', '16541001', '38362002', '61462000', '14168008', '186772009', '712986001', '52947006', '186788009', '409498004', '58750007', '19265001', '23502006', '75702008', '80612004', '186747009', '67924001', '70090004']}, 'path'=>'ImmunizationEvaluation.targetDisease', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-target-disease'}},
        'immunizationEvent' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Immunization'], 'path'=>'ImmunizationEvaluation.immunizationEvent', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'doseStatus' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/immunization-evaluation-dose-status'=>['valid', 'notvalid']}, 'path'=>'ImmunizationEvaluation.doseStatus', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-evaluation-dose-status'}},
        'doseStatusReason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/immunization-evaluation-dose-status-reason'=>['partialdose', 'coldchainbreak', 'recall', 'adversestorage', 'expired', 'outsideschedule']}, 'path'=>'ImmunizationEvaluation.doseStatusReason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/immunization-evaluation-dose-status-reason'}},
        'description' => {'path'=>'ImmunizationEvaluation.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'series' => {'path'=>'ImmunizationEvaluation.series', 'type'=>'string', 'min'=>0, 'max'=>1},
        'doseNumber' => {'path'=>'ImmunizationEvaluation.doseNumber', 'type'=>'string', 'min'=>0, 'max'=>1},
        'seriesDoses' => {'path'=>'ImmunizationEvaluation.seriesDoses', 'type'=>'string', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :status            # 1-1 code
      attr_accessor :patient           # 1-1 Reference(Patient)
      attr_accessor :date              # 0-1 dateTime
      attr_accessor :authority         # 0-1 Reference(Organization)
      attr_accessor :targetDisease     # 1-1 CodeableConcept
      attr_accessor :immunizationEvent # 1-1 Reference(Immunization)
      attr_accessor :doseStatus        # 1-1 CodeableConcept
      attr_accessor :doseStatusReason  # 0-* [ CodeableConcept ]
      attr_accessor :description       # 0-1 markdown
      attr_accessor :series            # 0-1 string
      attr_accessor :doseNumber        # 0-1 string
      attr_accessor :seriesDoses       # 0-1 string

      def resourceType
        'ImmunizationEvaluation'
      end
    end
  end
end