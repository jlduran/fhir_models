module FHIR
  module R4
    class MedicinalProduct < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['identifier', 'name', 'name-language']
      METADATA = {
        'id' => {'path'=>'MedicinalProduct.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'MedicinalProduct.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'MedicinalProduct.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'MedicinalProduct.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'MedicinalProduct.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'MedicinalProduct.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'MedicinalProduct.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'MedicinalProduct.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'MedicinalProduct.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'path'=>'MedicinalProduct.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'domain' => {'path'=>'MedicinalProduct.domain', 'type'=>'Coding', 'min'=>0, 'max'=>1},
        'combinedPharmaceuticalDoseForm' => {'path'=>'MedicinalProduct.combinedPharmaceuticalDoseForm', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'legalStatusOfSupply' => {'path'=>'MedicinalProduct.legalStatusOfSupply', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'additionalMonitoringIndicator' => {'path'=>'MedicinalProduct.additionalMonitoringIndicator', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'specialMeasures' => {'path'=>'MedicinalProduct.specialMeasures', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'paediatricUseIndicator' => {'path'=>'MedicinalProduct.paediatricUseIndicator', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'productClassification' => {'path'=>'MedicinalProduct.productClassification', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
        'marketingStatus' => {'path'=>'MedicinalProduct.marketingStatus', 'type'=>'MarketingStatus', 'min'=>0, 'max'=>Float::INFINITY},
        'pharmaceuticalProduct' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProductPharmaceutical'], 'path'=>'MedicinalProduct.pharmaceuticalProduct', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'packagedMedicinalProduct' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProductPackaged'], 'path'=>'MedicinalProduct.packagedMedicinalProduct', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'attachedDocument' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'path'=>'MedicinalProduct.attachedDocument', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'masterFile' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'path'=>'MedicinalProduct.masterFile', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'contact' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'MedicinalProduct.contact', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'clinicalTrial' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ResearchStudy'], 'path'=>'MedicinalProduct.clinicalTrial', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'name' => {'path'=>'MedicinalProduct.name', 'type'=>'MedicinalProduct::Name', 'min'=>1, 'max'=>Float::INFINITY},
        'crossReference' => {'path'=>'MedicinalProduct.crossReference', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'manufacturingBusinessOperation' => {'path'=>'MedicinalProduct.manufacturingBusinessOperation', 'type'=>'MedicinalProduct::ManufacturingBusinessOperation', 'min'=>0, 'max'=>Float::INFINITY},
        'specialDesignation' => {'path'=>'MedicinalProduct.specialDesignation', 'type'=>'MedicinalProduct::SpecialDesignation', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Name < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Name.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Name.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Name.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'productName' => {'path'=>'Name.productName', 'type'=>'string', 'min'=>1, 'max'=>1},
          'namePart' => {'path'=>'Name.namePart', 'type'=>'MedicinalProduct::Name::NamePart', 'min'=>0, 'max'=>Float::INFINITY},
          'countryLanguage' => {'path'=>'Name.countryLanguage', 'type'=>'MedicinalProduct::Name::CountryLanguage', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class NamePart < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'NamePart.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'NamePart.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'NamePart.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'part' => {'path'=>'NamePart.part', 'type'=>'string', 'min'=>1, 'max'=>1},
            'type' => {'path'=>'NamePart.type', 'type'=>'Coding', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :part              # 1-1 string
          attr_accessor :type              # 1-1 Coding
        end

        class CountryLanguage < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'CountryLanguage.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'CountryLanguage.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'CountryLanguage.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'country' => {'path'=>'CountryLanguage.country', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
            'jurisdiction' => {'path'=>'CountryLanguage.jurisdiction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
            'language' => {'path'=>'CountryLanguage.language', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :country           # 1-1 CodeableConcept
          attr_accessor :jurisdiction      # 0-1 CodeableConcept
          attr_accessor :language          # 1-1 CodeableConcept
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :productName       # 1-1 string
        attr_accessor :namePart          # 0-* [ MedicinalProduct::Name::NamePart ]
        attr_accessor :countryLanguage   # 0-* [ MedicinalProduct::Name::CountryLanguage ]
      end

      class ManufacturingBusinessOperation < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'ManufacturingBusinessOperation.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'ManufacturingBusinessOperation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'ManufacturingBusinessOperation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'operationType' => {'path'=>'ManufacturingBusinessOperation.operationType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'authorisationReferenceNumber' => {'path'=>'ManufacturingBusinessOperation.authorisationReferenceNumber', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
          'effectiveDate' => {'path'=>'ManufacturingBusinessOperation.effectiveDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'confidentialityIndicator' => {'path'=>'ManufacturingBusinessOperation.confidentialityIndicator', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'manufacturer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'ManufacturingBusinessOperation.manufacturer', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
          'regulator' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'ManufacturingBusinessOperation.regulator', 'type'=>'Reference', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                           # 0-1 string
        attr_accessor :extension                    # 0-* [ Extension ]
        attr_accessor :modifierExtension            # 0-* [ Extension ]
        attr_accessor :operationType                # 0-1 CodeableConcept
        attr_accessor :authorisationReferenceNumber # 0-1 Identifier
        attr_accessor :effectiveDate                # 0-1 dateTime
        attr_accessor :confidentialityIndicator     # 0-1 CodeableConcept
        attr_accessor :manufacturer                 # 0-* [ Reference(Organization) ]
        attr_accessor :regulator                    # 0-1 Reference(Organization)
      end

      class SpecialDesignation < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'indication' => ['CodeableConcept', 'Reference']
        }
        METADATA = {
          'id' => {'path'=>'SpecialDesignation.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'SpecialDesignation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'SpecialDesignation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'path'=>'SpecialDesignation.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'path'=>'SpecialDesignation.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'intendedUse' => {'path'=>'SpecialDesignation.intendedUse', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'indicationCodeableConcept' => {'path'=>'SpecialDesignation.indication[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'indicationReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProductIndication'], 'path'=>'SpecialDesignation.indication[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'status' => {'path'=>'SpecialDesignation.status', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'date' => {'path'=>'SpecialDesignation.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'species' => {'path'=>'SpecialDesignation.species', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                        # 0-1 string
        attr_accessor :extension                 # 0-* [ Extension ]
        attr_accessor :modifierExtension         # 0-* [ Extension ]
        attr_accessor :identifier                # 0-* [ Identifier ]
        attr_accessor :type                      # 0-1 CodeableConcept
        attr_accessor :intendedUse               # 0-1 CodeableConcept
        attr_accessor :indicationCodeableConcept # 0-1 CodeableConcept
        attr_accessor :indicationReference       # 0-1 Reference(MedicinalProductIndication)
        attr_accessor :status                    # 0-1 CodeableConcept
        attr_accessor :date                      # 0-1 dateTime
        attr_accessor :species                   # 0-1 CodeableConcept
      end

      attr_accessor :id                             # 0-1 id
      attr_accessor :meta                           # 0-1 Meta
      attr_accessor :implicitRules                  # 0-1 uri
      attr_accessor :language                       # 0-1 code
      attr_accessor :text                           # 0-1 Narrative
      attr_accessor :contained                      # 0-* [ Resource ]
      attr_accessor :extension                      # 0-* [ Extension ]
      attr_accessor :modifierExtension              # 0-* [ Extension ]
      attr_accessor :identifier                     # 0-* [ Identifier ]
      attr_accessor :type                           # 0-1 CodeableConcept
      attr_accessor :domain                         # 0-1 Coding
      attr_accessor :combinedPharmaceuticalDoseForm # 0-1 CodeableConcept
      attr_accessor :legalStatusOfSupply            # 0-1 CodeableConcept
      attr_accessor :additionalMonitoringIndicator  # 0-1 CodeableConcept
      attr_accessor :specialMeasures                # 0-* [ string ]
      attr_accessor :paediatricUseIndicator         # 0-1 CodeableConcept
      attr_accessor :productClassification          # 0-* [ CodeableConcept ]
      attr_accessor :marketingStatus                # 0-* [ MarketingStatus ]
      attr_accessor :pharmaceuticalProduct          # 0-* [ Reference(MedicinalProductPharmaceutical) ]
      attr_accessor :packagedMedicinalProduct       # 0-* [ Reference(MedicinalProductPackaged) ]
      attr_accessor :attachedDocument               # 0-* [ Reference(DocumentReference) ]
      attr_accessor :masterFile                     # 0-* [ Reference(DocumentReference) ]
      attr_accessor :contact                        # 0-* [ Reference(Organization|PractitionerRole) ]
      attr_accessor :clinicalTrial                  # 0-* [ Reference(ResearchStudy) ]
      attr_accessor :name                           # 1-* [ MedicinalProduct::Name ]
      attr_accessor :crossReference                 # 0-* [ Identifier ]
      attr_accessor :manufacturingBusinessOperation # 0-* [ MedicinalProduct::ManufacturingBusinessOperation ]
      attr_accessor :specialDesignation             # 0-* [ MedicinalProduct::SpecialDesignation ]

      def resourceType
        'MedicinalProduct'
      end
    end
  end
  MedicinalProduct = FHIR::R4::MedicinalProduct
end