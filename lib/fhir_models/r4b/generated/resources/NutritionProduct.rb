module FHIR
  module R4B
    class NutritionProduct < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['identifier', 'status']
      METADATA = {
        'id' => {'path'=>'NutritionProduct.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'NutritionProduct.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'NutritionProduct.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'NutritionProduct.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'NutritionProduct.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'NutritionProduct.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'NutritionProduct.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'NutritionProduct.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/nutritionproduct-status'=>['active', 'inactive', 'entered-in-error']}, 'path'=>'NutritionProduct.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/nutritionproduct-status'}},
        'category' => {'path'=>'NutritionProduct.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/nutrition-product-category'}},
        'code' => {'path'=>'NutritionProduct.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/edible-substance-type'}},
        'manufacturer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'NutritionProduct.manufacturer', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'nutrient' => {'path'=>'NutritionProduct.nutrient', 'type'=>'NutritionProduct::Nutrient', 'min'=>0, 'max'=>Float::INFINITY},
        'ingredient' => {'path'=>'NutritionProduct.ingredient', 'type'=>'NutritionProduct::Ingredient', 'min'=>0, 'max'=>Float::INFINITY},
        'knownAllergen' => {'path'=>'NutritionProduct.knownAllergen', 'type'=>'CodeableReference', 'min'=>0, 'max'=>Float::INFINITY},
        'productCharacteristic' => {'path'=>'NutritionProduct.productCharacteristic', 'type'=>'NutritionProduct::ProductCharacteristic', 'min'=>0, 'max'=>Float::INFINITY},
        'instance' => {'path'=>'NutritionProduct.instance', 'type'=>'NutritionProduct::Instance', 'min'=>0, 'max'=>1},
        'note' => {'path'=>'NutritionProduct.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Nutrient < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Nutrient.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Nutrient.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Nutrient.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'item' => {'path'=>'Nutrient.item', 'type'=>'CodeableReference', 'min'=>0, 'max'=>1},
          'amount' => {'path'=>'Nutrient.amount', 'type'=>'Ratio', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :item              # 0-1 CodeableReference
        attr_accessor :amount            # 0-* [ Ratio ]
      end

      class Ingredient < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Ingredient.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Ingredient.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Ingredient.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'item' => {'path'=>'Ingredient.item', 'type'=>'CodeableReference', 'min'=>1, 'max'=>1},
          'amount' => {'path'=>'Ingredient.amount', 'type'=>'Ratio', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :item              # 1-1 CodeableReference
        attr_accessor :amount            # 0-* [ Ratio ]
      end

      class ProductCharacteristic < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'value' => ['CodeableConcept', 'string', 'Quantity', 'base64Binary', 'Attachment', 'boolean']
        }
        METADATA = {
          'id' => {'path'=>'ProductCharacteristic.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'ProductCharacteristic.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'ProductCharacteristic.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'path'=>'ProductCharacteristic.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/measurement-property'}},
          'valueCodeableConcept' => {'path'=>'ProductCharacteristic.value[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'valueString' => {'path'=>'ProductCharacteristic.value[x]', 'type'=>'string', 'min'=>1, 'max'=>1},
          'valueQuantity' => {'path'=>'ProductCharacteristic.value[x]', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
          'valueBase64Binary' => {'path'=>'ProductCharacteristic.value[x]', 'type'=>'base64Binary', 'min'=>1, 'max'=>1},
          'valueAttachment' => {'path'=>'ProductCharacteristic.value[x]', 'type'=>'Attachment', 'min'=>1, 'max'=>1},
          'valueBoolean' => {'path'=>'ProductCharacteristic.value[x]', 'type'=>'boolean', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                   # 0-1 string
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :type                 # 1-1 CodeableConcept
        attr_accessor :valueCodeableConcept # 1-1 CodeableConcept
        attr_accessor :valueString          # 1-1 string
        attr_accessor :valueQuantity        # 1-1 Quantity
        attr_accessor :valueBase64Binary    # 1-1 base64Binary
        attr_accessor :valueAttachment      # 1-1 Attachment
        attr_accessor :valueBoolean         # 1-1 boolean
      end

      class Instance < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Instance.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Instance.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Instance.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'quantity' => {'path'=>'Instance.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'identifier' => {'path'=>'Instance.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
          'lotNumber' => {'path'=>'Instance.lotNumber', 'type'=>'string', 'min'=>0, 'max'=>1},
          'expiry' => {'path'=>'Instance.expiry', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'useBy' => {'path'=>'Instance.useBy', 'type'=>'dateTime', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :quantity          # 0-1 Quantity
        attr_accessor :identifier        # 0-* [ Identifier ]
        attr_accessor :lotNumber         # 0-1 string
        attr_accessor :expiry            # 0-1 dateTime
        attr_accessor :useBy             # 0-1 dateTime
      end

      attr_accessor :id                    # 0-1 id
      attr_accessor :meta                  # 0-1 Meta
      attr_accessor :implicitRules         # 0-1 uri
      attr_accessor :language              # 0-1 code
      attr_accessor :text                  # 0-1 Narrative
      attr_accessor :contained             # 0-* [ Resource ]
      attr_accessor :extension             # 0-* [ Extension ]
      attr_accessor :modifierExtension     # 0-* [ Extension ]
      attr_accessor :status                # 1-1 code
      attr_accessor :category              # 0-* [ CodeableConcept ]
      attr_accessor :code                  # 0-1 CodeableConcept
      attr_accessor :manufacturer          # 0-* [ Reference(Organization) ]
      attr_accessor :nutrient              # 0-* [ NutritionProduct::Nutrient ]
      attr_accessor :ingredient            # 0-* [ NutritionProduct::Ingredient ]
      attr_accessor :knownAllergen         # 0-* [ CodeableReference ]
      attr_accessor :productCharacteristic # 0-* [ NutritionProduct::ProductCharacteristic ]
      attr_accessor :instance              # 0-1 NutritionProduct::Instance
      attr_accessor :note                  # 0-* [ Annotation ]

      def resourceType
        'NutritionProduct'
      end
    end
  end
end