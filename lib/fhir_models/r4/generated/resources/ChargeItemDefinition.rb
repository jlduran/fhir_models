module FHIR
  module R4
    class ChargeItemDefinition < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'context-type-quantity', 'context-type-value', 'date', 'description', 'effective', 'identifier', 'jurisdiction', 'publisher', 'status', 'title', 'url', 'version']
      METADATA = {
        'id' => {'path'=>'ChargeItemDefinition.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'ChargeItemDefinition.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'ChargeItemDefinition.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'ChargeItemDefinition.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'ChargeItemDefinition.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'ChargeItemDefinition.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'ChargeItemDefinition.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'ChargeItemDefinition.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'path'=>'ChargeItemDefinition.url', 'type'=>'uri', 'min'=>1, 'max'=>1},
        'identifier' => {'path'=>'ChargeItemDefinition.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'path'=>'ChargeItemDefinition.version', 'type'=>'string', 'min'=>0, 'max'=>1},
        'title' => {'path'=>'ChargeItemDefinition.title', 'type'=>'string', 'min'=>0, 'max'=>1},
        'derivedFromUri' => {'path'=>'ChargeItemDefinition.derivedFromUri', 'type'=>'uri', 'min'=>0, 'max'=>Float::INFINITY},
        'partOf' => {'path'=>'ChargeItemDefinition.partOf', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY},
        'replaces' => {'path'=>'ChargeItemDefinition.replaces', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'ChargeItemDefinition.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'experimental' => {'path'=>'ChargeItemDefinition.experimental', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'date' => {'path'=>'ChargeItemDefinition.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'publisher' => {'path'=>'ChargeItemDefinition.publisher', 'type'=>'string', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'ChargeItemDefinition.contact', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'ChargeItemDefinition.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'useContext' => {'path'=>'ChargeItemDefinition.useContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'path'=>'ChargeItemDefinition.jurisdiction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'copyright' => {'path'=>'ChargeItemDefinition.copyright', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'approvalDate' => {'path'=>'ChargeItemDefinition.approvalDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'lastReviewDate' => {'path'=>'ChargeItemDefinition.lastReviewDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'effectivePeriod' => {'path'=>'ChargeItemDefinition.effectivePeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/chargeitem-billingcodes'=>['1100', '1210', '1320']}, 'path'=>'ChargeItemDefinition.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/chargeitem-billingcodes'}},
        'instance' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Medication', 'http://hl7.org/fhir/StructureDefinition/Substance', 'http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'ChargeItemDefinition.instance', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'applicability' => {'path'=>'ChargeItemDefinition.applicability', 'type'=>'ChargeItemDefinition::Applicability', 'min'=>0, 'max'=>Float::INFINITY},
        'propertyGroup' => {'path'=>'ChargeItemDefinition.propertyGroup', 'type'=>'ChargeItemDefinition::PropertyGroup', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Applicability < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Applicability.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Applicability.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Applicability.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'path'=>'Applicability.description', 'type'=>'string', 'min'=>0, 'max'=>1},
          'language' => {'path'=>'Applicability.language', 'type'=>'string', 'min'=>0, 'max'=>1},
          'expression' => {'path'=>'Applicability.expression', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :description       # 0-1 string
        attr_accessor :language          # 0-1 string
        attr_accessor :expression        # 0-1 string
      end

      class PropertyGroup < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'PropertyGroup.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'PropertyGroup.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'PropertyGroup.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'applicability' => {'path'=>'PropertyGroup.applicability', 'type'=>'ChargeItemDefinition::Applicability', 'min'=>0, 'max'=>Float::INFINITY},
          'priceComponent' => {'path'=>'PropertyGroup.priceComponent', 'type'=>'ChargeItemDefinition::PropertyGroup::PriceComponent', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class PriceComponent < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'PriceComponent.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'PriceComponent.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'PriceComponent.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://hl7.org/fhir/invoice-priceComponentType'=>['base', 'surcharge', 'deduction', 'discount', 'tax', 'informational']}, 'path'=>'PriceComponent.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/invoice-priceComponentType'}},
            'code' => {'path'=>'PriceComponent.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
            'factor' => {'path'=>'PriceComponent.factor', 'type'=>'decimal', 'min'=>0, 'max'=>1},
            'amount' => {'path'=>'PriceComponent.amount', 'type'=>'Money', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 1-1 code
          attr_accessor :code              # 0-1 CodeableConcept
          attr_accessor :factor            # 0-1 decimal
          attr_accessor :amount            # 0-1 Money
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :applicability     # 0-* [ ChargeItemDefinition::Applicability ]
        attr_accessor :priceComponent    # 0-* [ ChargeItemDefinition::PropertyGroup::PriceComponent ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :url               # 1-1 uri
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :version           # 0-1 string
      attr_accessor :title             # 0-1 string
      attr_accessor :derivedFromUri    # 0-* [ uri ]
      attr_accessor :partOf            # 0-* [ canonical ]
      attr_accessor :replaces          # 0-* [ canonical ]
      attr_accessor :status            # 1-1 code
      attr_accessor :experimental      # 0-1 boolean
      attr_accessor :date              # 0-1 dateTime
      attr_accessor :publisher         # 0-1 string
      attr_accessor :contact           # 0-* [ ContactDetail ]
      attr_accessor :description       # 0-1 markdown
      attr_accessor :useContext        # 0-* [ UsageContext ]
      attr_accessor :jurisdiction      # 0-* [ CodeableConcept ]
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :approvalDate      # 0-1 date
      attr_accessor :lastReviewDate    # 0-1 date
      attr_accessor :effectivePeriod   # 0-1 Period
      attr_accessor :code              # 0-1 CodeableConcept
      attr_accessor :instance          # 0-* [ Reference(Medication|Substance|Device) ]
      attr_accessor :applicability     # 0-* [ ChargeItemDefinition::Applicability ]
      attr_accessor :propertyGroup     # 0-* [ ChargeItemDefinition::PropertyGroup ]

      def resourceType
        'ChargeItemDefinition'
      end
    end
  end
  ChargeItemDefinition = FHIR::R4::ChargeItemDefinition
end