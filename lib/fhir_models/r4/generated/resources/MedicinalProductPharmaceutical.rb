module FHIR
  module R4
    class MedicinalProductPharmaceutical < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['identifier', 'route', 'target-species']
      METADATA = {
        'id' => {'path'=>'MedicinalProductPharmaceutical.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'MedicinalProductPharmaceutical.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'MedicinalProductPharmaceutical.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'MedicinalProductPharmaceutical.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'MedicinalProductPharmaceutical.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'MedicinalProductPharmaceutical.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'MedicinalProductPharmaceutical.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'MedicinalProductPharmaceutical.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'MedicinalProductPharmaceutical.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'administrableDoseForm' => {'path'=>'MedicinalProductPharmaceutical.administrableDoseForm', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
        'unitOfPresentation' => {'path'=>'MedicinalProductPharmaceutical.unitOfPresentation', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'ingredient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProductIngredient'], 'path'=>'MedicinalProductPharmaceutical.ingredient', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'device' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DeviceDefinition'], 'path'=>'MedicinalProductPharmaceutical.device', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'characteristics' => {'path'=>'MedicinalProductPharmaceutical.characteristics', 'type'=>'MedicinalProductPharmaceutical::Characteristics', 'min'=>0, 'max'=>Float::INFINITY},
        'routeOfAdministration' => {'path'=>'MedicinalProductPharmaceutical.routeOfAdministration', 'type'=>'MedicinalProductPharmaceutical::RouteOfAdministration', 'min'=>1, 'max'=>Float::INFINITY}
      }

      class Characteristics < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Characteristics.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Characteristics.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Characteristics.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'path'=>'Characteristics.code', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'status' => {'path'=>'Characteristics.status', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 1-1 CodeableConcept
        attr_accessor :status            # 0-1 CodeableConcept
      end

      class RouteOfAdministration < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'RouteOfAdministration.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'RouteOfAdministration.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'RouteOfAdministration.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'path'=>'RouteOfAdministration.code', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'firstDose' => {'path'=>'RouteOfAdministration.firstDose', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'maxSingleDose' => {'path'=>'RouteOfAdministration.maxSingleDose', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'maxDosePerDay' => {'path'=>'RouteOfAdministration.maxDosePerDay', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'maxDosePerTreatmentPeriod' => {'path'=>'RouteOfAdministration.maxDosePerTreatmentPeriod', 'type'=>'Ratio', 'min'=>0, 'max'=>1},
          'maxTreatmentPeriod' => {'path'=>'RouteOfAdministration.maxTreatmentPeriod', 'type'=>'Duration', 'min'=>0, 'max'=>1},
          'targetSpecies' => {'path'=>'RouteOfAdministration.targetSpecies', 'type'=>'MedicinalProductPharmaceutical::RouteOfAdministration::TargetSpecies', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class TargetSpecies < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'TargetSpecies.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'TargetSpecies.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'TargetSpecies.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'path'=>'TargetSpecies.code', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
            'withdrawalPeriod' => {'path'=>'TargetSpecies.withdrawalPeriod', 'type'=>'MedicinalProductPharmaceutical::RouteOfAdministration::TargetSpecies::WithdrawalPeriod', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class WithdrawalPeriod < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'WithdrawalPeriod.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'WithdrawalPeriod.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'WithdrawalPeriod.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'tissue' => {'path'=>'WithdrawalPeriod.tissue', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
              'value' => {'path'=>'WithdrawalPeriod.value', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
              'supportingInformation' => {'path'=>'WithdrawalPeriod.supportingInformation', 'type'=>'string', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                    # 0-1 string
            attr_accessor :extension             # 0-* [ Extension ]
            attr_accessor :modifierExtension     # 0-* [ Extension ]
            attr_accessor :tissue                # 1-1 CodeableConcept
            attr_accessor :value                 # 1-1 Quantity
            attr_accessor :supportingInformation # 0-1 string
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 1-1 CodeableConcept
          attr_accessor :withdrawalPeriod  # 0-* [ MedicinalProductPharmaceutical::RouteOfAdministration::TargetSpecies::WithdrawalPeriod ]
        end

        attr_accessor :id                        # 0-1 string
        attr_accessor :extension                 # 0-* [ Extension ]
        attr_accessor :modifierExtension         # 0-* [ Extension ]
        attr_accessor :code                      # 1-1 CodeableConcept
        attr_accessor :firstDose                 # 0-1 Quantity
        attr_accessor :maxSingleDose             # 0-1 Quantity
        attr_accessor :maxDosePerDay             # 0-1 Quantity
        attr_accessor :maxDosePerTreatmentPeriod # 0-1 Ratio
        attr_accessor :maxTreatmentPeriod        # 0-1 Duration
        attr_accessor :targetSpecies             # 0-* [ MedicinalProductPharmaceutical::RouteOfAdministration::TargetSpecies ]
      end

      attr_accessor :id                    # 0-1 id
      attr_accessor :meta                  # 0-1 Meta
      attr_accessor :implicitRules         # 0-1 uri
      attr_accessor :language              # 0-1 code
      attr_accessor :text                  # 0-1 Narrative
      attr_accessor :contained             # 0-* [ Resource ]
      attr_accessor :extension             # 0-* [ Extension ]
      attr_accessor :modifierExtension     # 0-* [ Extension ]
      attr_accessor :identifier            # 0-* [ Identifier ]
      attr_accessor :administrableDoseForm # 1-1 CodeableConcept
      attr_accessor :unitOfPresentation    # 0-1 CodeableConcept
      attr_accessor :ingredient            # 0-* [ Reference(MedicinalProductIngredient) ]
      attr_accessor :device                # 0-* [ Reference(DeviceDefinition) ]
      attr_accessor :characteristics       # 0-* [ MedicinalProductPharmaceutical::Characteristics ]
      attr_accessor :routeOfAdministration # 1-* [ MedicinalProductPharmaceutical::RouteOfAdministration ]

      def resourceType
        'MedicinalProductPharmaceutical'
      end
    end
  end
  MedicinalProductPharmaceutical = FHIR::R4::MedicinalProductPharmaceutical
end