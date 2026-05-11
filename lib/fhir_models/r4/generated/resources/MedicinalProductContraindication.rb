module FHIR
  module R4
    class MedicinalProductContraindication < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['subject']
      METADATA = {
        'id' => {'path'=>'MedicinalProductContraindication.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'MedicinalProductContraindication.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'MedicinalProductContraindication.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'MedicinalProductContraindication.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'MedicinalProductContraindication.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'MedicinalProductContraindication.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'MedicinalProductContraindication.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'MedicinalProductContraindication.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProduct', 'http://hl7.org/fhir/StructureDefinition/Medication'], 'path'=>'MedicinalProductContraindication.subject', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'disease' => {'path'=>'MedicinalProductContraindication.disease', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'diseaseStatus' => {'path'=>'MedicinalProductContraindication.diseaseStatus', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'comorbidity' => {'path'=>'MedicinalProductContraindication.comorbidity', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
        'therapeuticIndication' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProductIndication'], 'path'=>'MedicinalProductContraindication.therapeuticIndication', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'otherTherapy' => {'path'=>'MedicinalProductContraindication.otherTherapy', 'type'=>'MedicinalProductContraindication::OtherTherapy', 'min'=>0, 'max'=>Float::INFINITY},
        'population' => {'path'=>'MedicinalProductContraindication.population', 'type'=>'Population', 'min'=>0, 'max'=>Float::INFINITY}
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

      attr_accessor :id                    # 0-1 id
      attr_accessor :meta                  # 0-1 Meta
      attr_accessor :implicitRules         # 0-1 uri
      attr_accessor :language              # 0-1 code
      attr_accessor :text                  # 0-1 Narrative
      attr_accessor :contained             # 0-* [ Resource ]
      attr_accessor :extension             # 0-* [ Extension ]
      attr_accessor :modifierExtension     # 0-* [ Extension ]
      attr_accessor :subject               # 0-* [ Reference(MedicinalProduct|Medication) ]
      attr_accessor :disease               # 0-1 CodeableConcept
      attr_accessor :diseaseStatus         # 0-1 CodeableConcept
      attr_accessor :comorbidity           # 0-* [ CodeableConcept ]
      attr_accessor :therapeuticIndication # 0-* [ Reference(MedicinalProductIndication) ]
      attr_accessor :otherTherapy          # 0-* [ MedicinalProductContraindication::OtherTherapy ]
      attr_accessor :population            # 0-* [ Population ]

      def resourceType
        'MedicinalProductContraindication'
      end
    end
  end
  MedicinalProductContraindication = FHIR::R4::MedicinalProductContraindication
end