module FHIR
  module R4
    class CoverageEligibilityResponse < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'serviced' => ['date', 'Period']
      }
      SEARCH_PARAMS = ['created', 'disposition', 'identifier', 'insurer', 'outcome', 'patient', 'request', 'requestor', 'status']
      METADATA = {
        'id' => {'path'=>'CoverageEligibilityResponse.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'CoverageEligibilityResponse.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'CoverageEligibilityResponse.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'CoverageEligibilityResponse.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'CoverageEligibilityResponse.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'CoverageEligibilityResponse.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'CoverageEligibilityResponse.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'CoverageEligibilityResponse.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'CoverageEligibilityResponse.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/fm-status'=>['active', 'cancelled', 'draft', 'entered-in-error']}, 'path'=>'CoverageEligibilityResponse.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/fm-status'}},
        'purpose' => {'valid_codes'=>{'http://hl7.org/fhir/eligibilityresponse-purpose'=>['auth-requirements', 'benefits', 'discovery', 'validation']}, 'path'=>'CoverageEligibilityResponse.purpose', 'type'=>'code', 'min'=>1, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/eligibilityresponse-purpose'}},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'path'=>'CoverageEligibilityResponse.patient', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'servicedDate' => {'path'=>'CoverageEligibilityResponse.serviced[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
        'servicedPeriod' => {'path'=>'CoverageEligibilityResponse.serviced[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'created' => {'path'=>'CoverageEligibilityResponse.created', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
        'requestor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'CoverageEligibilityResponse.requestor', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'request' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CoverageEligibilityRequest'], 'path'=>'CoverageEligibilityResponse.request', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'outcome' => {'valid_codes'=>{'http://hl7.org/fhir/remittance-outcome'=>['queued', 'complete', 'error', 'partial']}, 'path'=>'CoverageEligibilityResponse.outcome', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/remittance-outcome'}},
        'disposition' => {'path'=>'CoverageEligibilityResponse.disposition', 'type'=>'string', 'min'=>0, 'max'=>1},
        'insurer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'CoverageEligibilityResponse.insurer', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'insurance' => {'path'=>'CoverageEligibilityResponse.insurance', 'type'=>'CoverageEligibilityResponse::Insurance', 'min'=>0, 'max'=>Float::INFINITY},
        'preAuthRef' => {'path'=>'CoverageEligibilityResponse.preAuthRef', 'type'=>'string', 'min'=>0, 'max'=>1},
        'form' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/forms-codes'=>['1', '2']}, 'path'=>'CoverageEligibilityResponse.form', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/forms'}},
        'error' => {'path'=>'CoverageEligibilityResponse.error', 'type'=>'CoverageEligibilityResponse::Error', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Insurance < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Insurance.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Insurance.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Insurance.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'coverage' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Coverage'], 'path'=>'Insurance.coverage', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'inforce' => {'path'=>'Insurance.inforce', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'benefitPeriod' => {'path'=>'Insurance.benefitPeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'item' => {'path'=>'Insurance.item', 'type'=>'CoverageEligibilityResponse::Insurance::Item', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Item < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Item.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Item.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Item.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-benefitcategory'=>['1', '2', '3', '4', '5', '14', '23', '24', '25', '26', '27', '28', '30', '35', '36', '37', '49', '55', '56', '61', '62', '63', '69', '76', 'F1', 'F3', 'F4', 'F6']}, 'path'=>'Item.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-benefitcategory'}},
            'productOrService' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-USCLS'=>['1101', '1102', '1103', '1201', '1205', '2101', '2102', '2141', '2601', '11101', '11102', '11103', '11104', '21211', '21212', '27211', '67211', '99111', '99333', '99555']}, 'path'=>'Item.productOrService', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-uscls'}},
            'modifier' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/modifiers'=>['a', 'b', 'c', 'e', 'rooh', 'x']}, 'path'=>'Item.modifier', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-modifiers'}},
            'provider' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'Item.provider', 'type'=>'Reference', 'min'=>0, 'max'=>1},
            'excluded' => {'path'=>'Item.excluded', 'type'=>'boolean', 'min'=>0, 'max'=>1},
            'name' => {'path'=>'Item.name', 'type'=>'string', 'min'=>0, 'max'=>1},
            'description' => {'path'=>'Item.description', 'type'=>'string', 'min'=>0, 'max'=>1},
            'network' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/benefit-network'=>['in', 'out']}, 'path'=>'Item.network', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/benefit-network'}},
            'unit' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/benefit-unit'=>['individual', 'family']}, 'path'=>'Item.unit', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/benefit-unit'}},
            'term' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/benefit-term'=>['annual', 'day', 'lifetime']}, 'path'=>'Item.term', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/benefit-term'}},
            'benefit' => {'path'=>'Item.benefit', 'type'=>'CoverageEligibilityResponse::Insurance::Item::Benefit', 'min'=>0, 'max'=>Float::INFINITY},
            'authorizationRequired' => {'path'=>'Item.authorizationRequired', 'type'=>'boolean', 'min'=>0, 'max'=>1},
            'authorizationSupporting' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/coverageeligibilityresponse-ex-auth-support'=>['laborder', 'labreport', 'diagnosticimageorder', 'diagnosticimagereport', 'professionalreport', 'accidentreport', 'model', 'picture']}, 'path'=>'Item.authorizationSupporting', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/coverageeligibilityresponse-ex-auth-support'}},
            'authorizationUrl' => {'path'=>'Item.authorizationUrl', 'type'=>'uri', 'min'=>0, 'max'=>1}
          }

          class Benefit < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            MULTIPLE_TYPES = {
              'allowed' => ['unsignedInt', 'string', 'Money'],
              'used' => ['unsignedInt', 'string', 'Money']
            }
            METADATA = {
              'id' => {'path'=>'Benefit.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Benefit.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Benefit.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/benefit-type'=>['benefit', 'deductible', 'visit', 'room', 'copay', 'copay-percent', 'copay-maximum', 'vision-exam', 'vision-glasses', 'vision-contacts', 'medical-primarycare', 'pharmacy-dispense']}, 'path'=>'Benefit.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/benefit-type'}},
              'allowedUnsignedInt' => {'path'=>'Benefit.allowed[x]', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
              'allowedString' => {'path'=>'Benefit.allowed[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
              'allowedMoney' => {'path'=>'Benefit.allowed[x]', 'type'=>'Money', 'min'=>0, 'max'=>1},
              'usedUnsignedInt' => {'path'=>'Benefit.used[x]', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
              'usedString' => {'path'=>'Benefit.used[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
              'usedMoney' => {'path'=>'Benefit.used[x]', 'type'=>'Money', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                 # 0-1 string
            attr_accessor :extension          # 0-* [ Extension ]
            attr_accessor :modifierExtension  # 0-* [ Extension ]
            attr_accessor :type               # 1-1 CodeableConcept
            attr_accessor :allowedUnsignedInt # 0-1 unsignedInt
            attr_accessor :allowedString      # 0-1 string
            attr_accessor :allowedMoney       # 0-1 Money
            attr_accessor :usedUnsignedInt    # 0-1 unsignedInt
            attr_accessor :usedString         # 0-1 string
            attr_accessor :usedMoney          # 0-1 Money
          end

          attr_accessor :id                      # 0-1 string
          attr_accessor :extension               # 0-* [ Extension ]
          attr_accessor :modifierExtension       # 0-* [ Extension ]
          attr_accessor :category                # 0-1 CodeableConcept
          attr_accessor :productOrService        # 0-1 CodeableConcept
          attr_accessor :modifier                # 0-* [ CodeableConcept ]
          attr_accessor :provider                # 0-1 Reference(Practitioner|PractitionerRole)
          attr_accessor :excluded                # 0-1 boolean
          attr_accessor :name                    # 0-1 string
          attr_accessor :description             # 0-1 string
          attr_accessor :network                 # 0-1 CodeableConcept
          attr_accessor :unit                    # 0-1 CodeableConcept
          attr_accessor :term                    # 0-1 CodeableConcept
          attr_accessor :benefit                 # 0-* [ CoverageEligibilityResponse::Insurance::Item::Benefit ]
          attr_accessor :authorizationRequired   # 0-1 boolean
          attr_accessor :authorizationSupporting # 0-* [ CodeableConcept ]
          attr_accessor :authorizationUrl        # 0-1 uri
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :coverage          # 1-1 Reference(Coverage)
        attr_accessor :inforce           # 0-1 boolean
        attr_accessor :benefitPeriod     # 0-1 Period
        attr_accessor :item              # 0-* [ CoverageEligibilityResponse::Insurance::Item ]
      end

      class Error < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Error.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Error.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Error.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/adjudication-error'=>['a001', 'a002']}, 'path'=>'Error.code', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/adjudication-error'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 1-1 CodeableConcept
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
      attr_accessor :status            # 1-1 code
      attr_accessor :purpose           # 1-* [ code ]
      attr_accessor :patient           # 1-1 Reference(Patient)
      attr_accessor :servicedDate      # 0-1 date
      attr_accessor :servicedPeriod    # 0-1 Period
      attr_accessor :created           # 1-1 dateTime
      attr_accessor :requestor         # 0-1 Reference(Practitioner|PractitionerRole|Organization)
      attr_accessor :request           # 1-1 Reference(CoverageEligibilityRequest)
      attr_accessor :outcome           # 1-1 code
      attr_accessor :disposition       # 0-1 string
      attr_accessor :insurer           # 1-1 Reference(Organization)
      attr_accessor :insurance         # 0-* [ CoverageEligibilityResponse::Insurance ]
      attr_accessor :preAuthRef        # 0-1 string
      attr_accessor :form              # 0-1 CodeableConcept
      attr_accessor :error             # 0-* [ CoverageEligibilityResponse::Error ]

      def resourceType
        'CoverageEligibilityResponse'
      end
    end
  end
  CoverageEligibilityResponse = FHIR::R4::CoverageEligibilityResponse
end