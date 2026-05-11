module FHIR
  module R5
    class ClinicalImpression < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'effective' => ['dateTime', 'Period']
      }
      SEARCH_PARAMS = ['date', 'encounter', 'finding-code', 'finding-ref', 'identifier', 'patient', 'performer', 'previous', 'problem', 'status', 'subject', 'supporting-info']
      METADATA = {
        'id' => {'path'=>'ClinicalImpression.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'ClinicalImpression.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'ClinicalImpression.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'ClinicalImpression.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'ClinicalImpression.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'ClinicalImpression.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'ClinicalImpression.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'ClinicalImpression.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'ClinicalImpression.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/event-status'=>['preparation', 'in-progress', 'not-done', 'on-hold', 'stopped', 'completed', 'entered-in-error', 'unknown']}, 'path'=>'ClinicalImpression.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/event-status'}},
        'statusReason' => {'valid_codes'=>{'http://snomed.info/sct'=>['397709008', '105480006', '719500002', '445060000', '704273008', '704274002', '704458005', '704275001', '704276000', '704277009', '398090008']}, 'path'=>'ClinicalImpression.statusReason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/clinicalimpression-status-reason'}},
        'description' => {'path'=>'ClinicalImpression.description', 'type'=>'string', 'min'=>0, 'max'=>1},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group'], 'path'=>'ClinicalImpression.subject', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'ClinicalImpression.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'effectiveDateTime' => {'path'=>'ClinicalImpression.effective[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'effectivePeriod' => {'path'=>'ClinicalImpression.effective[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'date' => {'path'=>'ClinicalImpression.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'performer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'ClinicalImpression.performer', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'previous' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ClinicalImpression'], 'path'=>'ClinicalImpression.previous', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'problem' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition', 'http://hl7.org/fhir/StructureDefinition/AllergyIntolerance'], 'path'=>'ClinicalImpression.problem', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'changePattern' => {'valid_codes'=>{'http://snomed.info/sct'=>['230993007', '385633008', '260388006']}, 'path'=>'ClinicalImpression.changePattern', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/clinicalimpression-change-pattern'}},
        'protocol' => {'path'=>'ClinicalImpression.protocol', 'type'=>'uri', 'min'=>0, 'max'=>Float::INFINITY},
        'summary' => {'path'=>'ClinicalImpression.summary', 'type'=>'string', 'min'=>0, 'max'=>1},
        'finding' => {'path'=>'ClinicalImpression.finding', 'type'=>'ClinicalImpression::Finding', 'min'=>0, 'max'=>Float::INFINITY},
        'prognosisCodeableConcept' => {'valid_codes'=>{'http://snomed.info/sct'=>['365858006', '60484009', '65872000', '67334001', '170968001', '170969009', '170970005']}, 'path'=>'ClinicalImpression.prognosisCodeableConcept', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/clinicalimpression-prognosis'}},
        'prognosisReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/RiskAssessment'], 'path'=>'ClinicalImpression.prognosisReference', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'supportingInfo' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'ClinicalImpression.supportingInfo', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'path'=>'ClinicalImpression.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Finding < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Finding.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Finding.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Finding.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'item' => {'path'=>'Finding.item', 'type'=>'CodeableReference', 'min'=>0, 'max'=>1},
          'basis' => {'path'=>'Finding.basis', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :item              # 0-1 CodeableReference
        attr_accessor :basis             # 0-1 string
      end

      attr_accessor :id                       # 0-1 id
      attr_accessor :meta                     # 0-1 Meta
      attr_accessor :implicitRules            # 0-1 uri
      attr_accessor :language                 # 0-1 code
      attr_accessor :text                     # 0-1 Narrative
      attr_accessor :contained                # 0-* [ Resource ]
      attr_accessor :extension                # 0-* [ Extension ]
      attr_accessor :modifierExtension        # 0-* [ Extension ]
      attr_accessor :identifier               # 0-* [ Identifier ]
      attr_accessor :status                   # 1-1 code
      attr_accessor :statusReason             # 0-1 CodeableConcept
      attr_accessor :description              # 0-1 string
      attr_accessor :subject                  # 1-1 Reference(Patient|Group)
      attr_accessor :encounter                # 0-1 Reference(Encounter)
      attr_accessor :effectiveDateTime        # 0-1 dateTime
      attr_accessor :effectivePeriod          # 0-1 Period
      attr_accessor :date                     # 0-1 dateTime
      attr_accessor :performer                # 0-1 Reference(Practitioner|PractitionerRole)
      attr_accessor :previous                 # 0-1 Reference(ClinicalImpression)
      attr_accessor :problem                  # 0-* [ Reference(Condition|AllergyIntolerance) ]
      attr_accessor :changePattern            # 0-1 CodeableConcept
      attr_accessor :protocol                 # 0-* [ uri ]
      attr_accessor :summary                  # 0-1 string
      attr_accessor :finding                  # 0-* [ ClinicalImpression::Finding ]
      attr_accessor :prognosisCodeableConcept # 0-* [ CodeableConcept ]
      attr_accessor :prognosisReference       # 0-* [ Reference(RiskAssessment) ]
      attr_accessor :supportingInfo           # 0-* [ Reference(Resource) ]
      attr_accessor :note                     # 0-* [ Annotation ]

      def resourceType
        'ClinicalImpression'
      end
    end
  end
end