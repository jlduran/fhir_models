module FHIR
  module R4
    class MedicinalProductIndication < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['subject']
      METADATA = {
        'id' => {'path'=>'MedicinalProductIndication.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'MedicinalProductIndication.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'MedicinalProductIndication.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'MedicinalProductIndication.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'MedicinalProductIndication.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'MedicinalProductIndication.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'MedicinalProductIndication.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'MedicinalProductIndication.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProduct', 'http://hl7.org/fhir/StructureDefinition/Medication'], 'path'=>'MedicinalProductIndication.subject', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'diseaseSymptomProcedure' => {'path'=>'MedicinalProductIndication.diseaseSymptomProcedure', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'diseaseStatus' => {'path'=>'MedicinalProductIndication.diseaseStatus', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'comorbidity' => {'path'=>'MedicinalProductIndication.comorbidity', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
        'intendedEffect' => {'path'=>'MedicinalProductIndication.intendedEffect', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'duration' => {'path'=>'MedicinalProductIndication.duration', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'otherTherapy' => {'path'=>'MedicinalProductIndication.otherTherapy', 'type'=>'MedicinalProductIndication::OtherTherapy', 'min'=>0, 'max'=>Float::INFINITY},
        'undesirableEffect' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProductUndesirableEffect'], 'path'=>'MedicinalProductIndication.undesirableEffect', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'population' => {'path'=>'MedicinalProductIndication.population', 'type'=>'Population', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class OtherTherapy < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'medication' => ['CodeableConcept', 'Reference']
        }
        METADATA = {
          'id' => {'path'=>'OtherTherapy.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'OtherTherapy.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'OtherTherapy.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'therapyRelationshipType' => {'path'=>'OtherTherapy.therapyRelationshipType', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'medicationCodeableConcept' => {'path'=>'OtherTherapy.medication[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'medicationReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProduct', 'http://hl7.org/fhir/StructureDefinition/Medication', 'http://hl7.org/fhir/StructureDefinition/Substance', 'http://hl7.org/fhir/StructureDefinition/SubstanceSpecification'], 'path'=>'OtherTherapy.medication[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                        # 0-1 string
        attr_accessor :extension                 # 0-* [ Extension ]
        attr_accessor :modifierExtension         # 0-* [ Extension ]
        attr_accessor :therapyRelationshipType   # 1-1 CodeableConcept
        attr_accessor :medicationCodeableConcept # 1-1 CodeableConcept
        attr_accessor :medicationReference       # 1-1 Reference(MedicinalProduct|Medication|Substance|SubstanceSpecification)
      end

      attr_accessor :id                      # 0-1 id
      attr_accessor :meta                    # 0-1 Meta
      attr_accessor :implicitRules           # 0-1 uri
      attr_accessor :language                # 0-1 code
      attr_accessor :text                    # 0-1 Narrative
      attr_accessor :contained               # 0-* [ Resource ]
      attr_accessor :extension               # 0-* [ Extension ]
      attr_accessor :modifierExtension       # 0-* [ Extension ]
      attr_accessor :subject                 # 0-* [ Reference(MedicinalProduct|Medication) ]
      attr_accessor :diseaseSymptomProcedure # 0-1 CodeableConcept
      attr_accessor :diseaseStatus           # 0-1 CodeableConcept
      attr_accessor :comorbidity             # 0-* [ CodeableConcept ]
      attr_accessor :intendedEffect          # 0-1 CodeableConcept
      attr_accessor :duration                # 0-1 Quantity
      attr_accessor :otherTherapy            # 0-* [ MedicinalProductIndication::OtherTherapy ]
      attr_accessor :undesirableEffect       # 0-* [ Reference(MedicinalProductUndesirableEffect) ]
      attr_accessor :population              # 0-* [ Population ]

      def resourceType
        'MedicinalProductIndication'
      end
    end
  end
  MedicinalProductIndication = FHIR::R4::MedicinalProductIndication
end