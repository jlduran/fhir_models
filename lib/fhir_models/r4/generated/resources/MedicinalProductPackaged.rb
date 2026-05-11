module FHIR
  module R4
    class MedicinalProductPackaged < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['identifier', 'subject']
      METADATA = {
        'id' => {'path'=>'MedicinalProductPackaged.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'MedicinalProductPackaged.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'MedicinalProductPackaged.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'MedicinalProductPackaged.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'MedicinalProductPackaged.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'MedicinalProductPackaged.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'MedicinalProductPackaged.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'MedicinalProductPackaged.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'MedicinalProductPackaged.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProduct'], 'path'=>'MedicinalProductPackaged.subject', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'MedicinalProductPackaged.description', 'type'=>'string', 'min'=>0, 'max'=>1},
        'legalStatusOfSupply' => {'path'=>'MedicinalProductPackaged.legalStatusOfSupply', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'marketingStatus' => {'path'=>'MedicinalProductPackaged.marketingStatus', 'type'=>'MarketingStatus', 'min'=>0, 'max'=>Float::INFINITY},
        'marketingAuthorization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProductAuthorization'], 'path'=>'MedicinalProductPackaged.marketingAuthorization', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'manufacturer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'MedicinalProductPackaged.manufacturer', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'batchIdentifier' => {'path'=>'MedicinalProductPackaged.batchIdentifier', 'type'=>'MedicinalProductPackaged::BatchIdentifier', 'min'=>0, 'max'=>Float::INFINITY},
        'packageItem' => {'path'=>'MedicinalProductPackaged.packageItem', 'type'=>'MedicinalProductPackaged::PackageItem', 'min'=>1, 'max'=>Float::INFINITY}
      }

      class BatchIdentifier < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'BatchIdentifier.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'BatchIdentifier.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'BatchIdentifier.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'outerPackaging' => {'path'=>'BatchIdentifier.outerPackaging', 'type'=>'Identifier', 'min'=>1, 'max'=>1},
          'immediatePackaging' => {'path'=>'BatchIdentifier.immediatePackaging', 'type'=>'Identifier', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                 # 0-1 string
        attr_accessor :extension          # 0-* [ Extension ]
        attr_accessor :modifierExtension  # 0-* [ Extension ]
        attr_accessor :outerPackaging     # 1-1 Identifier
        attr_accessor :immediatePackaging # 0-1 Identifier
      end

      class PackageItem < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'PackageItem.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'PackageItem.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'PackageItem.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'path'=>'PackageItem.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'path'=>'PackageItem.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'quantity' => {'path'=>'PackageItem.quantity', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
          'material' => {'path'=>'PackageItem.material', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
          'alternateMaterial' => {'path'=>'PackageItem.alternateMaterial', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
          'device' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DeviceDefinition'], 'path'=>'PackageItem.device', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
          'manufacturedItem' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProductManufactured'], 'path'=>'PackageItem.manufacturedItem', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
          'packageItem' => {'path'=>'PackageItem.packageItem', 'type'=>'MedicinalProductPackaged::PackageItem', 'min'=>0, 'max'=>Float::INFINITY},
          'physicalCharacteristics' => {'path'=>'PackageItem.physicalCharacteristics', 'type'=>'ProdCharacteristic', 'min'=>0, 'max'=>1},
          'otherCharacteristics' => {'path'=>'PackageItem.otherCharacteristics', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
          'shelfLifeStorage' => {'path'=>'PackageItem.shelfLifeStorage', 'type'=>'ProductShelfLife', 'min'=>0, 'max'=>Float::INFINITY},
          'manufacturer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'PackageItem.manufacturer', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                      # 0-1 string
        attr_accessor :extension               # 0-* [ Extension ]
        attr_accessor :modifierExtension       # 0-* [ Extension ]
        attr_accessor :identifier              # 0-* [ Identifier ]
        attr_accessor :type                    # 1-1 CodeableConcept
        attr_accessor :quantity                # 1-1 Quantity
        attr_accessor :material                # 0-* [ CodeableConcept ]
        attr_accessor :alternateMaterial       # 0-* [ CodeableConcept ]
        attr_accessor :device                  # 0-* [ Reference(DeviceDefinition) ]
        attr_accessor :manufacturedItem        # 0-* [ Reference(MedicinalProductManufactured) ]
        attr_accessor :packageItem             # 0-* [ MedicinalProductPackaged::PackageItem ]
        attr_accessor :physicalCharacteristics # 0-1 ProdCharacteristic
        attr_accessor :otherCharacteristics    # 0-* [ CodeableConcept ]
        attr_accessor :shelfLifeStorage        # 0-* [ ProductShelfLife ]
        attr_accessor :manufacturer            # 0-* [ Reference(Organization) ]
      end

      attr_accessor :id                     # 0-1 id
      attr_accessor :meta                   # 0-1 Meta
      attr_accessor :implicitRules          # 0-1 uri
      attr_accessor :language               # 0-1 code
      attr_accessor :text                   # 0-1 Narrative
      attr_accessor :contained              # 0-* [ Resource ]
      attr_accessor :extension              # 0-* [ Extension ]
      attr_accessor :modifierExtension      # 0-* [ Extension ]
      attr_accessor :identifier             # 0-* [ Identifier ]
      attr_accessor :subject                # 0-* [ Reference(MedicinalProduct) ]
      attr_accessor :description            # 0-1 string
      attr_accessor :legalStatusOfSupply    # 0-1 CodeableConcept
      attr_accessor :marketingStatus        # 0-* [ MarketingStatus ]
      attr_accessor :marketingAuthorization # 0-1 Reference(MedicinalProductAuthorization)
      attr_accessor :manufacturer           # 0-* [ Reference(Organization) ]
      attr_accessor :batchIdentifier        # 0-* [ MedicinalProductPackaged::BatchIdentifier ]
      attr_accessor :packageItem            # 1-* [ MedicinalProductPackaged::PackageItem ]

      def resourceType
        'MedicinalProductPackaged'
      end
    end
  end
  MedicinalProductPackaged = FHIR::R4::MedicinalProductPackaged
end