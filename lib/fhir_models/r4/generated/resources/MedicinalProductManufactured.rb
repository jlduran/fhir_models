module FHIR
  module R4
    class MedicinalProductManufactured < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'MedicinalProductManufactured.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'MedicinalProductManufactured.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'MedicinalProductManufactured.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'MedicinalProductManufactured.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'MedicinalProductManufactured.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'MedicinalProductManufactured.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'MedicinalProductManufactured.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'MedicinalProductManufactured.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'manufacturedDoseForm' => {'path'=>'MedicinalProductManufactured.manufacturedDoseForm', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
        'unitOfPresentation' => {'path'=>'MedicinalProductManufactured.unitOfPresentation', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'quantity' => {'path'=>'MedicinalProductManufactured.quantity', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
        'manufacturer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'MedicinalProductManufactured.manufacturer', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'ingredient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProductIngredient'], 'path'=>'MedicinalProductManufactured.ingredient', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'physicalCharacteristics' => {'path'=>'MedicinalProductManufactured.physicalCharacteristics', 'type'=>'ProdCharacteristic', 'min'=>0, 'max'=>1},
        'otherCharacteristics' => {'path'=>'MedicinalProductManufactured.otherCharacteristics', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY}
      }

      attr_accessor :id                      # 0-1 id
      attr_accessor :meta                    # 0-1 Meta
      attr_accessor :implicitRules           # 0-1 uri
      attr_accessor :language                # 0-1 code
      attr_accessor :text                    # 0-1 Narrative
      attr_accessor :contained               # 0-* [ Resource ]
      attr_accessor :extension               # 0-* [ Extension ]
      attr_accessor :modifierExtension       # 0-* [ Extension ]
      attr_accessor :manufacturedDoseForm    # 1-1 CodeableConcept
      attr_accessor :unitOfPresentation      # 0-1 CodeableConcept
      attr_accessor :quantity                # 1-1 Quantity
      attr_accessor :manufacturer            # 0-* [ Reference(Organization) ]
      attr_accessor :ingredient              # 0-* [ Reference(MedicinalProductIngredient) ]
      attr_accessor :physicalCharacteristics # 0-1 ProdCharacteristic
      attr_accessor :otherCharacteristics    # 0-* [ CodeableConcept ]

      def resourceType
        'MedicinalProductManufactured'
      end
    end
  end
  MedicinalProductManufactured = FHIR::R4::MedicinalProductManufactured
end