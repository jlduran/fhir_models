module FHIR
  module R4B
    class ManufacturedItemDefinition < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['dose-form', 'identifier', 'ingredient']
      METADATA = {
        'id' => {'path'=>'ManufacturedItemDefinition.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'ManufacturedItemDefinition.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'ManufacturedItemDefinition.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'ManufacturedItemDefinition.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'ManufacturedItemDefinition.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'ManufacturedItemDefinition.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'ManufacturedItemDefinition.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'ManufacturedItemDefinition.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'ManufacturedItemDefinition.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'ManufacturedItemDefinition.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'manufacturedDoseForm' => {'path'=>'ManufacturedItemDefinition.manufacturedDoseForm', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/manufactured-dose-form'}},
        'unitOfPresentation' => {'valid_codes'=>{'http://hl7.org/fhir/unit-of-presentation'=>['200000002108', '200000002109', '200000002110', '200000002111', '200000002112', '200000002113', '200000002114', '200000002115', '200000002116', '200000002117', '200000002118', '200000002119', '200000002120', '200000002121', '200000002122', '200000002123', '200000002124', '200000002125', '200000002126', '200000002127', '200000002128', '200000002129', '200000002130', '200000002131', '200000002132', '200000002133', '200000002134', '200000002135', '200000002136', '200000002137', '200000002138', '200000002139', '200000002140', '200000002141', '200000002142', '200000002143', '200000002144', '200000002145', '200000002146', '200000002147', '200000002148', '200000002149', '200000002150', '200000002151', '200000002152', '200000002153', '200000002154', '200000002155', '200000002156', '200000002157', '200000002158', '200000002159', '200000002163', '200000002164', '200000002165', '200000002166']}, 'path'=>'ManufacturedItemDefinition.unitOfPresentation', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/unit-of-presentation'}},
        'manufacturer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'ManufacturedItemDefinition.manufacturer', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'ingredient' => {'path'=>'ManufacturedItemDefinition.ingredient', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/substance-codes'}},
        'property' => {'path'=>'ManufacturedItemDefinition.property', 'type'=>'ManufacturedItemDefinition::Property', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Property < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'value' => ['CodeableConcept', 'Quantity', 'date', 'boolean', 'Attachment']
        }
        METADATA = {
          'id' => {'path'=>'Property.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Property.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Property.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'path'=>'Property.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/product-characteristic-codes'}},
          'valueCodeableConcept' => {'path'=>'Property.value[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'valueQuantity' => {'path'=>'Property.value[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'valueDate' => {'path'=>'Property.value[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
          'valueBoolean' => {'path'=>'Property.value[x]', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'valueAttachment' => {'path'=>'Property.value[x]', 'type'=>'Attachment', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                   # 0-1 string
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :type                 # 1-1 CodeableConcept
        attr_accessor :valueCodeableConcept # 0-1 CodeableConcept
        attr_accessor :valueQuantity        # 0-1 Quantity
        attr_accessor :valueDate            # 0-1 date
        attr_accessor :valueBoolean         # 0-1 boolean
        attr_accessor :valueAttachment      # 0-1 Attachment
      end

      attr_accessor :id                   # 0-1 id
      attr_accessor :meta                 # 0-1 Meta
      attr_accessor :implicitRules        # 0-1 uri
      attr_accessor :language             # 0-1 code
      attr_accessor :text                 # 0-1 Narrative
      attr_accessor :contained            # 0-* [ Resource ]
      attr_accessor :extension            # 0-* [ Extension ]
      attr_accessor :modifierExtension    # 0-* [ Extension ]
      attr_accessor :identifier           # 0-* [ Identifier ]
      attr_accessor :status               # 1-1 code
      attr_accessor :manufacturedDoseForm # 1-1 CodeableConcept
      attr_accessor :unitOfPresentation   # 0-1 CodeableConcept
      attr_accessor :manufacturer         # 0-* [ Reference(Organization) ]
      attr_accessor :ingredient           # 0-* [ CodeableConcept ]
      attr_accessor :property             # 0-* [ ManufacturedItemDefinition::Property ]

      def resourceType
        'ManufacturedItemDefinition'
      end
    end
  end
end