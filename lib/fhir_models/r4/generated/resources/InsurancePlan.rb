module FHIR
  module R4
    class InsurancePlan < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'administered-by', 'endpoint', 'identifier', 'name', 'owned-by', 'phonetic', 'status', 'type']
      METADATA = {
        'id' => {'path'=>'InsurancePlan.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'InsurancePlan.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'InsurancePlan.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'InsurancePlan.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'InsurancePlan.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'InsurancePlan.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'InsurancePlan.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'InsurancePlan.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'InsurancePlan.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'InsurancePlan.status', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/insurance-plan-type'=>['medical', 'dental', 'mental', 'subst-ab', 'vision', 'Drug', 'short-term', 'long-term', 'hospice', 'home']}, 'path'=>'InsurancePlan.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/insuranceplan-type'}},
        'name' => {'path'=>'InsurancePlan.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'alias' => {'path'=>'InsurancePlan.alias', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'period' => {'path'=>'InsurancePlan.period', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'ownedBy' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'InsurancePlan.ownedBy', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'administeredBy' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'InsurancePlan.administeredBy', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'coverageArea' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'InsurancePlan.coverageArea', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'contact' => {'path'=>'InsurancePlan.contact', 'type'=>'InsurancePlan::Contact', 'min'=>0, 'max'=>Float::INFINITY},
        'endpoint' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Endpoint'], 'path'=>'InsurancePlan.endpoint', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'network' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'InsurancePlan.network', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'coverage' => {'path'=>'InsurancePlan.coverage', 'type'=>'InsurancePlan::Coverage', 'min'=>0, 'max'=>Float::INFINITY},
        'plan' => {'path'=>'InsurancePlan.plan', 'type'=>'InsurancePlan::Plan', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Contact < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Contact.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Contact.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Contact.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'purpose' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contactentity-type'=>['BILL', 'ADMIN', 'HR', 'PAYOR', 'PATINF', 'PRESS']}, 'path'=>'Contact.purpose', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/contactentity-type'}},
          'name' => {'path'=>'Contact.name', 'type'=>'HumanName', 'min'=>0, 'max'=>1},
          'telecom' => {'path'=>'Contact.telecom', 'type'=>'ContactPoint', 'min'=>0, 'max'=>Float::INFINITY},
          'address' => {'path'=>'Contact.address', 'type'=>'Address', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :purpose           # 0-1 CodeableConcept
        attr_accessor :name              # 0-1 HumanName
        attr_accessor :telecom           # 0-* [ ContactPoint ]
        attr_accessor :address           # 0-1 Address
      end

      class Coverage < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Coverage.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Coverage.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Coverage.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'path'=>'Coverage.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'network' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Coverage.network', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
          'benefit' => {'path'=>'Coverage.benefit', 'type'=>'InsurancePlan::Coverage::Benefit', 'min'=>1, 'max'=>Float::INFINITY}
        }

        class Benefit < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Benefit.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Benefit.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Benefit.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'path'=>'Benefit.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
            'requirement' => {'path'=>'Benefit.requirement', 'type'=>'string', 'min'=>0, 'max'=>1},
            'limit' => {'path'=>'Benefit.limit', 'type'=>'InsurancePlan::Coverage::Benefit::Limit', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Limit < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Limit.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Limit.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Limit.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'value' => {'path'=>'Limit.value', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
              'code' => {'path'=>'Limit.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :value             # 0-1 Quantity
            attr_accessor :code              # 0-1 CodeableConcept
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 1-1 CodeableConcept
          attr_accessor :requirement       # 0-1 string
          attr_accessor :limit             # 0-* [ InsurancePlan::Coverage::Benefit::Limit ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 CodeableConcept
        attr_accessor :network           # 0-* [ Reference(Organization) ]
        attr_accessor :benefit           # 1-* [ InsurancePlan::Coverage::Benefit ]
      end

      class Plan < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Plan.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Plan.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Plan.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'path'=>'Plan.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'path'=>'Plan.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'coverageArea' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'Plan.coverageArea', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
          'network' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Plan.network', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
          'generalCost' => {'path'=>'Plan.generalCost', 'type'=>'InsurancePlan::Plan::GeneralCost', 'min'=>0, 'max'=>Float::INFINITY},
          'specificCost' => {'path'=>'Plan.specificCost', 'type'=>'InsurancePlan::Plan::SpecificCost', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class GeneralCost < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'GeneralCost.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'GeneralCost.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'GeneralCost.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'path'=>'GeneralCost.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
            'groupSize' => {'path'=>'GeneralCost.groupSize', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
            'cost' => {'path'=>'GeneralCost.cost', 'type'=>'Money', 'min'=>0, 'max'=>1},
            'comment' => {'path'=>'GeneralCost.comment', 'type'=>'string', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 0-1 CodeableConcept
          attr_accessor :groupSize         # 0-1 positiveInt
          attr_accessor :cost              # 0-1 Money
          attr_accessor :comment           # 0-1 string
        end

        class SpecificCost < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'SpecificCost.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'SpecificCost.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'SpecificCost.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'category' => {'path'=>'SpecificCost.category', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
            'benefit' => {'path'=>'SpecificCost.benefit', 'type'=>'InsurancePlan::Plan::SpecificCost::Benefit', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Benefit < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Benefit.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Benefit.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Benefit.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'type' => {'path'=>'Benefit.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
              'cost' => {'path'=>'Benefit.cost', 'type'=>'InsurancePlan::Plan::SpecificCost::Benefit::Cost', 'min'=>0, 'max'=>Float::INFINITY}
            }

            class Cost < Model
              include FHIR::Hashable
              include FHIR::Json
              include FHIR::Xml

              METADATA = {
                'id' => {'path'=>'Cost.id', 'type'=>'string', 'min'=>0, 'max'=>1},
                'extension' => {'path'=>'Cost.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
                'modifierExtension' => {'path'=>'Cost.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
                'type' => {'path'=>'Cost.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
                'applicability' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/applicability'=>['in-network', 'out-of-network', 'other']}, 'path'=>'Cost.applicability', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/insuranceplan-applicability'}},
                'qualifiers' => {'path'=>'Cost.qualifiers', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
                'value' => {'path'=>'Cost.value', 'type'=>'Quantity', 'min'=>0, 'max'=>1}
              }

              attr_accessor :id                # 0-1 string
              attr_accessor :extension         # 0-* [ Extension ]
              attr_accessor :modifierExtension # 0-* [ Extension ]
              attr_accessor :type              # 1-1 CodeableConcept
              attr_accessor :applicability     # 0-1 CodeableConcept
              attr_accessor :qualifiers        # 0-* [ CodeableConcept ]
              attr_accessor :value             # 0-1 Quantity
            end

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :type              # 1-1 CodeableConcept
            attr_accessor :cost              # 0-* [ InsurancePlan::Plan::SpecificCost::Benefit::Cost ]
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :category          # 1-1 CodeableConcept
          attr_accessor :benefit           # 0-* [ InsurancePlan::Plan::SpecificCost::Benefit ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :identifier        # 0-* [ Identifier ]
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :coverageArea      # 0-* [ Reference(Location) ]
        attr_accessor :network           # 0-* [ Reference(Organization) ]
        attr_accessor :generalCost       # 0-* [ InsurancePlan::Plan::GeneralCost ]
        attr_accessor :specificCost      # 0-* [ InsurancePlan::Plan::SpecificCost ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :status            # 0-1 code
      attr_accessor :type              # 0-* [ CodeableConcept ]
      attr_accessor :name              # 0-1 string
      attr_accessor :alias             # 0-* [ string ]
      attr_accessor :period            # 0-1 Period
      attr_accessor :ownedBy           # 0-1 Reference(Organization)
      attr_accessor :administeredBy    # 0-1 Reference(Organization)
      attr_accessor :coverageArea      # 0-* [ Reference(Location) ]
      attr_accessor :contact           # 0-* [ InsurancePlan::Contact ]
      attr_accessor :endpoint          # 0-* [ Reference(Endpoint) ]
      attr_accessor :network           # 0-* [ Reference(Organization) ]
      attr_accessor :coverage          # 0-* [ InsurancePlan::Coverage ]
      attr_accessor :plan              # 0-* [ InsurancePlan::Plan ]

      def resourceType
        'InsurancePlan'
      end
    end
  end
  InsurancePlan = FHIR::R4::InsurancePlan
end