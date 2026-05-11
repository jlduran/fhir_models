module FHIR
  module R4
    class MedicinalProductIngredient < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'MedicinalProductIngredient.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'MedicinalProductIngredient.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'MedicinalProductIngredient.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'MedicinalProductIngredient.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'MedicinalProductIngredient.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'MedicinalProductIngredient.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'MedicinalProductIngredient.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'MedicinalProductIngredient.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'MedicinalProductIngredient.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'role' => {'path'=>'MedicinalProductIngredient.role', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
        'allergenicIndicator' => {'path'=>'MedicinalProductIngredient.allergenicIndicator', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'manufacturer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'MedicinalProductIngredient.manufacturer', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'specifiedSubstance' => {'path'=>'MedicinalProductIngredient.specifiedSubstance', 'type'=>'MedicinalProductIngredient::SpecifiedSubstance', 'min'=>0, 'max'=>Float::INFINITY},
        'substance' => {'path'=>'MedicinalProductIngredient.substance', 'type'=>'MedicinalProductIngredient::Substance', 'min'=>0, 'max'=>1}
      }

      class SpecifiedSubstance < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'SpecifiedSubstance.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'SpecifiedSubstance.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'SpecifiedSubstance.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'path'=>'SpecifiedSubstance.code', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'group' => {'path'=>'SpecifiedSubstance.group', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'confidentiality' => {'path'=>'SpecifiedSubstance.confidentiality', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'strength' => {'path'=>'SpecifiedSubstance.strength', 'type'=>'MedicinalProductIngredient::SpecifiedSubstance::Strength', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Strength < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Strength.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Strength.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Strength.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'presentation' => {'path'=>'Strength.presentation', 'type'=>'Ratio', 'min'=>1, 'max'=>1},
            'presentationLowLimit' => {'path'=>'Strength.presentationLowLimit', 'type'=>'Ratio', 'min'=>0, 'max'=>1},
            'concentration' => {'path'=>'Strength.concentration', 'type'=>'Ratio', 'min'=>0, 'max'=>1},
            'concentrationLowLimit' => {'path'=>'Strength.concentrationLowLimit', 'type'=>'Ratio', 'min'=>0, 'max'=>1},
            'measurementPoint' => {'path'=>'Strength.measurementPoint', 'type'=>'string', 'min'=>0, 'max'=>1},
            'country' => {'path'=>'Strength.country', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
            'referenceStrength' => {'path'=>'Strength.referenceStrength', 'type'=>'MedicinalProductIngredient::SpecifiedSubstance::Strength::ReferenceStrength', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class ReferenceStrength < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'ReferenceStrength.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'ReferenceStrength.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'ReferenceStrength.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'substance' => {'path'=>'ReferenceStrength.substance', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
              'strength' => {'path'=>'ReferenceStrength.strength', 'type'=>'Ratio', 'min'=>1, 'max'=>1},
              'strengthLowLimit' => {'path'=>'ReferenceStrength.strengthLowLimit', 'type'=>'Ratio', 'min'=>0, 'max'=>1},
              'measurementPoint' => {'path'=>'ReferenceStrength.measurementPoint', 'type'=>'string', 'min'=>0, 'max'=>1},
              'country' => {'path'=>'ReferenceStrength.country', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :substance         # 0-1 CodeableConcept
            attr_accessor :strength          # 1-1 Ratio
            attr_accessor :strengthLowLimit  # 0-1 Ratio
            attr_accessor :measurementPoint  # 0-1 string
            attr_accessor :country           # 0-* [ CodeableConcept ]
          end

          attr_accessor :id                    # 0-1 string
          attr_accessor :extension             # 0-* [ Extension ]
          attr_accessor :modifierExtension     # 0-* [ Extension ]
          attr_accessor :presentation          # 1-1 Ratio
          attr_accessor :presentationLowLimit  # 0-1 Ratio
          attr_accessor :concentration         # 0-1 Ratio
          attr_accessor :concentrationLowLimit # 0-1 Ratio
          attr_accessor :measurementPoint      # 0-1 string
          attr_accessor :country               # 0-* [ CodeableConcept ]
          attr_accessor :referenceStrength     # 0-* [ MedicinalProductIngredient::SpecifiedSubstance::Strength::ReferenceStrength ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 1-1 CodeableConcept
        attr_accessor :group             # 1-1 CodeableConcept
        attr_accessor :confidentiality   # 0-1 CodeableConcept
        attr_accessor :strength          # 0-* [ MedicinalProductIngredient::SpecifiedSubstance::Strength ]
      end

      class Substance < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Substance.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Substance.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Substance.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'path'=>'Substance.code', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'strength' => {'path'=>'Substance.strength', 'type'=>'MedicinalProductIngredient::SpecifiedSubstance::Strength', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 1-1 CodeableConcept
        attr_accessor :strength          # 0-* [ MedicinalProductIngredient::SpecifiedSubstance::Strength ]
      end

      attr_accessor :id                  # 0-1 id
      attr_accessor :meta                # 0-1 Meta
      attr_accessor :implicitRules       # 0-1 uri
      attr_accessor :language            # 0-1 code
      attr_accessor :text                # 0-1 Narrative
      attr_accessor :contained           # 0-* [ Resource ]
      attr_accessor :extension           # 0-* [ Extension ]
      attr_accessor :modifierExtension   # 0-* [ Extension ]
      attr_accessor :identifier          # 0-1 Identifier
      attr_accessor :role                # 1-1 CodeableConcept
      attr_accessor :allergenicIndicator # 0-1 boolean
      attr_accessor :manufacturer        # 0-* [ Reference(Organization) ]
      attr_accessor :specifiedSubstance  # 0-* [ MedicinalProductIngredient::SpecifiedSubstance ]
      attr_accessor :substance           # 0-1 MedicinalProductIngredient::Substance

      def resourceType
        'MedicinalProductIngredient'
      end
    end
  end
  MedicinalProductIngredient = FHIR::R4::MedicinalProductIngredient
end