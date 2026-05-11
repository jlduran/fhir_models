module FHIR
  module R5
    class InventoryItem < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['code', 'identifier', 'status', 'subject']
      METADATA = {
        'id' => {'path'=>'InventoryItem.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'InventoryItem.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'InventoryItem.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'InventoryItem.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'InventoryItem.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'InventoryItem.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'InventoryItem.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'InventoryItem.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'InventoryItem.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/inventoryitem-status'=>['active', 'inactive', 'entered-in-error', 'unknown']}, 'path'=>'InventoryItem.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/inventoryitem-status'}},
        'category' => {'path'=>'InventoryItem.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
        'code' => {'path'=>'InventoryItem.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
        'name' => {'path'=>'InventoryItem.name', 'type'=>'InventoryItem::Name', 'min'=>0, 'max'=>Float::INFINITY},
        'responsibleOrganization' => {'path'=>'InventoryItem.responsibleOrganization', 'type'=>'InventoryItem::ResponsibleOrganization', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'InventoryItem.description', 'type'=>'InventoryItem::Description', 'min'=>0, 'max'=>1},
        'inventoryStatus' => {'path'=>'InventoryItem.inventoryStatus', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
        'baseUnit' => {'path'=>'InventoryItem.baseUnit', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'netContent' => {'path'=>'InventoryItem.netContent', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'association' => {'path'=>'InventoryItem.association', 'type'=>'InventoryItem::Association', 'min'=>0, 'max'=>Float::INFINITY},
        'characteristic' => {'path'=>'InventoryItem.characteristic', 'type'=>'InventoryItem::Characteristic', 'min'=>0, 'max'=>Float::INFINITY},
        'instance' => {'path'=>'InventoryItem.instance', 'type'=>'InventoryItem::Instance', 'min'=>0, 'max'=>1},
        'productReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Medication', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/NutritionProduct', 'http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct'], 'path'=>'InventoryItem.productReference', 'type'=>'Reference', 'min'=>0, 'max'=>1}
      }

      class Name < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Name.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Name.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Name.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'nameType' => {'valid_codes'=>{'http://hl7.org/fhir/inventoryitem-nametype'=>['trade-name', 'alias', 'original-name', 'preferred']}, 'path'=>'Name.nameType', 'type'=>'Coding', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/inventoryitem-nametype'}},
          'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bg', 'bg-BG', 'bn', 'cs', 'cs-CZ', 'bs', 'bs-BA', 'da', 'da-DK', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'el-GR', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'et', 'et-EE', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fi-FI', 'fr-CA', 'fy', 'fy-NL', 'hi', 'hr', 'hr-HR', 'is', 'is-IS', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'lt', 'lt-LT', 'lv', 'lv-LV', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pl-PL', 'pt', 'pt-PT', 'pt-BR', 'ro', 'ro-RO', 'ru', 'ru-RU', 'sk', 'sk-SK', 'sl', 'sl-SI', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Name.language', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
          'name' => {'path'=>'Name.name', 'type'=>'string', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :nameType          # 1-1 Coding
        attr_accessor :language          # 1-1 code
        attr_accessor :name              # 1-1 string
      end

      class ResponsibleOrganization < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'ResponsibleOrganization.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'ResponsibleOrganization.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'ResponsibleOrganization.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'role' => {'path'=>'ResponsibleOrganization.role', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'organization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'ResponsibleOrganization.organization', 'type'=>'Reference', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :role              # 1-1 CodeableConcept
        attr_accessor :organization      # 1-1 Reference(Organization)
      end

      class Description < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Description.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Description.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Description.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bg', 'bg-BG', 'bn', 'cs', 'cs-CZ', 'bs', 'bs-BA', 'da', 'da-DK', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'el-GR', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'et', 'et-EE', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fi-FI', 'fr-CA', 'fy', 'fy-NL', 'hi', 'hr', 'hr-HR', 'is', 'is-IS', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'lt', 'lt-LT', 'lv', 'lv-LV', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pl-PL', 'pt', 'pt-PT', 'pt-BR', 'ro', 'ro-RO', 'ru', 'ru-RU', 'sk', 'sk-SK', 'sl', 'sl-SI', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Description.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
          'description' => {'path'=>'Description.description', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :language          # 0-1 code
        attr_accessor :description       # 0-1 string
      end

      class Association < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Association.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Association.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Association.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'associationType' => {'path'=>'Association.associationType', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'relatedItem' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/InventoryItem', 'http://hl7.org/fhir/StructureDefinition/Medication', 'http://hl7.org/fhir/StructureDefinition/MedicationKnowledge', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/DeviceDefinition', 'http://hl7.org/fhir/StructureDefinition/NutritionProduct', 'http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct'], 'path'=>'Association.relatedItem', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'quantity' => {'path'=>'Association.quantity', 'type'=>'Ratio', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :associationType   # 1-1 CodeableConcept
        attr_accessor :relatedItem       # 1-1 Reference(InventoryItem|Medication|MedicationKnowledge|Device|DeviceDefinition|NutritionProduct|BiologicallyDerivedProduct)
        attr_accessor :quantity          # 1-1 Ratio
      end

      class Characteristic < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'value' => ['string', 'integer', 'decimal', 'boolean', 'url', 'dateTime', 'Quantity', 'Range', 'Ratio', 'Annotation', 'Address', 'Duration', 'CodeableConcept']
        }
        METADATA = {
          'id' => {'path'=>'Characteristic.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Characteristic.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Characteristic.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'characteristicType' => {'path'=>'Characteristic.characteristicType', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'valueString' => {'path'=>'Characteristic.value[x]', 'type'=>'string', 'min'=>1, 'max'=>1},
          'valueInteger' => {'path'=>'Characteristic.value[x]', 'type'=>'integer', 'min'=>1, 'max'=>1},
          'valueDecimal' => {'path'=>'Characteristic.value[x]', 'type'=>'decimal', 'min'=>1, 'max'=>1},
          'valueBoolean' => {'path'=>'Characteristic.value[x]', 'type'=>'boolean', 'min'=>1, 'max'=>1},
          'valueUrl' => {'path'=>'Characteristic.value[x]', 'type'=>'url', 'min'=>1, 'max'=>1},
          'valueDateTime' => {'path'=>'Characteristic.value[x]', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
          'valueQuantity' => {'path'=>'Characteristic.value[x]', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
          'valueRange' => {'path'=>'Characteristic.value[x]', 'type'=>'Range', 'min'=>1, 'max'=>1},
          'valueRatio' => {'path'=>'Characteristic.value[x]', 'type'=>'Ratio', 'min'=>1, 'max'=>1},
          'valueAnnotation' => {'path'=>'Characteristic.value[x]', 'type'=>'Annotation', 'min'=>1, 'max'=>1},
          'valueAddress' => {'path'=>'Characteristic.value[x]', 'type'=>'Address', 'min'=>1, 'max'=>1},
          'valueDuration' => {'path'=>'Characteristic.value[x]', 'type'=>'Duration', 'min'=>1, 'max'=>1},
          'valueCodeableConcept' => {'path'=>'Characteristic.value[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                   # 0-1 string
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :characteristicType   # 1-1 CodeableConcept
        attr_accessor :valueString          # 1-1 string
        attr_accessor :valueInteger         # 1-1 integer
        attr_accessor :valueDecimal         # 1-1 decimal
        attr_accessor :valueBoolean         # 1-1 boolean
        attr_accessor :valueUrl             # 1-1 url
        attr_accessor :valueDateTime        # 1-1 dateTime
        attr_accessor :valueQuantity        # 1-1 Quantity
        attr_accessor :valueRange           # 1-1 Range
        attr_accessor :valueRatio           # 1-1 Ratio
        attr_accessor :valueAnnotation      # 1-1 Annotation
        attr_accessor :valueAddress         # 1-1 Address
        attr_accessor :valueDuration        # 1-1 Duration
        attr_accessor :valueCodeableConcept # 1-1 CodeableConcept
      end

      class Instance < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Instance.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Instance.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Instance.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'path'=>'Instance.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
          'lotNumber' => {'path'=>'Instance.lotNumber', 'type'=>'string', 'min'=>0, 'max'=>1},
          'expiry' => {'path'=>'Instance.expiry', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Instance.subject', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'Instance.location', 'type'=>'Reference', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :identifier        # 0-* [ Identifier ]
        attr_accessor :lotNumber         # 0-1 string
        attr_accessor :expiry            # 0-1 dateTime
        attr_accessor :subject           # 0-1 Reference(Patient|Organization)
        attr_accessor :location          # 0-1 Reference(Location)
      end

      attr_accessor :id                      # 0-1 id
      attr_accessor :meta                    # 0-1 Meta
      attr_accessor :implicitRules           # 0-1 uri
      attr_accessor :language                # 0-1 code
      attr_accessor :text                    # 0-1 Narrative
      attr_accessor :contained               # 0-* [ Resource ]
      attr_accessor :extension               # 0-* [ Extension ]
      attr_accessor :modifierExtension       # 0-* [ Extension ]
      attr_accessor :identifier              # 0-* [ Identifier ]
      attr_accessor :status                  # 1-1 code
      attr_accessor :category                # 0-* [ CodeableConcept ]
      attr_accessor :code                    # 0-* [ CodeableConcept ]
      attr_accessor :name                    # 0-* [ InventoryItem::Name ]
      attr_accessor :responsibleOrganization # 0-* [ InventoryItem::ResponsibleOrganization ]
      attr_accessor :description             # 0-1 InventoryItem::Description
      attr_accessor :inventoryStatus         # 0-* [ CodeableConcept ]
      attr_accessor :baseUnit                # 0-1 CodeableConcept
      attr_accessor :netContent              # 0-1 Quantity
      attr_accessor :association             # 0-* [ InventoryItem::Association ]
      attr_accessor :characteristic          # 0-* [ InventoryItem::Characteristic ]
      attr_accessor :instance                # 0-1 InventoryItem::Instance
      attr_accessor :productReference        # 0-1 Reference(Medication|Device|NutritionProduct|BiologicallyDerivedProduct)

      def resourceType
        'InventoryItem'
      end
    end
  end
end