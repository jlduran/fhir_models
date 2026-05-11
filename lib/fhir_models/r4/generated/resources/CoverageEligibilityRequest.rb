module FHIR
  module R4
    class CoverageEligibilityRequest < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'serviced' => ['date', 'Period']
      }
      SEARCH_PARAMS = ['created', 'enterer', 'facility', 'identifier', 'patient', 'provider', 'status']
      METADATA = {
        'id' => {'path'=>'CoverageEligibilityRequest.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'CoverageEligibilityRequest.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'CoverageEligibilityRequest.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'CoverageEligibilityRequest.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'CoverageEligibilityRequest.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'CoverageEligibilityRequest.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'CoverageEligibilityRequest.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'CoverageEligibilityRequest.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'CoverageEligibilityRequest.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/fm-status'=>['active', 'cancelled', 'draft', 'entered-in-error']}, 'path'=>'CoverageEligibilityRequest.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/fm-status'}},
        'priority' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/processpriority'=>['stat', 'normal', 'deferred']}, 'path'=>'CoverageEligibilityRequest.priority', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/process-priority'}},
        'purpose' => {'valid_codes'=>{'http://hl7.org/fhir/eligibilityrequest-purpose'=>['auth-requirements', 'benefits', 'discovery', 'validation']}, 'path'=>'CoverageEligibilityRequest.purpose', 'type'=>'code', 'min'=>1, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/eligibilityrequest-purpose'}},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'path'=>'CoverageEligibilityRequest.patient', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'servicedDate' => {'path'=>'CoverageEligibilityRequest.serviced[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
        'servicedPeriod' => {'path'=>'CoverageEligibilityRequest.serviced[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'created' => {'path'=>'CoverageEligibilityRequest.created', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
        'enterer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'CoverageEligibilityRequest.enterer', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'provider' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'CoverageEligibilityRequest.provider', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'insurer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'CoverageEligibilityRequest.insurer', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'facility' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'CoverageEligibilityRequest.facility', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'supportingInfo' => {'path'=>'CoverageEligibilityRequest.supportingInfo', 'type'=>'CoverageEligibilityRequest::SupportingInfo', 'min'=>0, 'max'=>Float::INFINITY},
        'insurance' => {'path'=>'CoverageEligibilityRequest.insurance', 'type'=>'CoverageEligibilityRequest::Insurance', 'min'=>0, 'max'=>Float::INFINITY},
        'item' => {'path'=>'CoverageEligibilityRequest.item', 'type'=>'CoverageEligibilityRequest::Item', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class SupportingInfo < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'SupportingInfo.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'SupportingInfo.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'SupportingInfo.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'sequence' => {'path'=>'SupportingInfo.sequence', 'type'=>'positiveInt', 'min'=>1, 'max'=>1},
          'information' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'SupportingInfo.information', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'appliesToAll' => {'path'=>'SupportingInfo.appliesToAll', 'type'=>'boolean', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :sequence          # 1-1 positiveInt
        attr_accessor :information       # 1-1 Reference(Resource)
        attr_accessor :appliesToAll      # 0-1 boolean
      end

      class Insurance < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Insurance.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Insurance.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Insurance.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'focal' => {'path'=>'Insurance.focal', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'coverage' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Coverage'], 'path'=>'Insurance.coverage', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'businessArrangement' => {'path'=>'Insurance.businessArrangement', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                  # 0-1 string
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :focal               # 0-1 boolean
        attr_accessor :coverage            # 1-1 Reference(Coverage)
        attr_accessor :businessArrangement # 0-1 string
      end

      class Item < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Item.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Item.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Item.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'supportingInfoSequence' => {'path'=>'Item.supportingInfoSequence', 'type'=>'positiveInt', 'min'=>0, 'max'=>Float::INFINITY},
          'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-benefitcategory'=>['1', '2', '3', '4', '5', '14', '23', '24', '25', '26', '27', '28', '30', '35', '36', '37', '49', '55', '56', '61', '62', '63', '69', '76', 'F1', 'F3', 'F4', 'F6']}, 'path'=>'Item.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-benefitcategory'}},
          'productOrService' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-USCLS'=>['1101', '1102', '1103', '1201', '1205', '2101', '2102', '2141', '2601', '11101', '11102', '11103', '11104', '21211', '21212', '27211', '67211', '99111', '99333', '99555']}, 'path'=>'Item.productOrService', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-uscls'}},
          'modifier' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/modifiers'=>['a', 'b', 'c', 'e', 'rooh', 'x']}, 'path'=>'Item.modifier', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-modifiers'}},
          'provider' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'Item.provider', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'quantity' => {'path'=>'Item.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'unitPrice' => {'path'=>'Item.unitPrice', 'type'=>'Money', 'min'=>0, 'max'=>1},
          'facility' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Item.facility', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'diagnosis' => {'path'=>'Item.diagnosis', 'type'=>'CoverageEligibilityRequest::Item::Diagnosis', 'min'=>0, 'max'=>Float::INFINITY},
          'detail' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Item.detail', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Diagnosis < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'diagnosis' => ['CodeableConcept', 'Reference']
          }
          METADATA = {
            'id' => {'path'=>'Diagnosis.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Diagnosis.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Diagnosis.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'diagnosisCodeableConcept' => {'valid_codes'=>{'http://hl7.org/fhir/sid/icd-10'=>['123456', '123457', '987654', '123987', '112233', '997755', '321789']}, 'path'=>'Diagnosis.diagnosis[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/icd-10'}},
            'diagnosisReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition'], 'path'=>'Diagnosis.diagnosis[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                       # 0-1 string
          attr_accessor :extension                # 0-* [ Extension ]
          attr_accessor :modifierExtension        # 0-* [ Extension ]
          attr_accessor :diagnosisCodeableConcept # 0-1 CodeableConcept
          attr_accessor :diagnosisReference       # 0-1 Reference(Condition)
        end

        attr_accessor :id                     # 0-1 string
        attr_accessor :extension              # 0-* [ Extension ]
        attr_accessor :modifierExtension      # 0-* [ Extension ]
        attr_accessor :supportingInfoSequence # 0-* [ positiveInt ]
        attr_accessor :category               # 0-1 CodeableConcept
        attr_accessor :productOrService       # 0-1 CodeableConcept
        attr_accessor :modifier               # 0-* [ CodeableConcept ]
        attr_accessor :provider               # 0-1 Reference(Practitioner|PractitionerRole)
        attr_accessor :quantity               # 0-1 Quantity
        attr_accessor :unitPrice              # 0-1 Money
        attr_accessor :facility               # 0-1 Reference(Location|Organization)
        attr_accessor :diagnosis              # 0-* [ CoverageEligibilityRequest::Item::Diagnosis ]
        attr_accessor :detail                 # 0-* [ Reference(Resource) ]
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
      attr_accessor :priority          # 0-1 CodeableConcept
      attr_accessor :purpose           # 1-* [ code ]
      attr_accessor :patient           # 1-1 Reference(Patient)
      attr_accessor :servicedDate      # 0-1 date
      attr_accessor :servicedPeriod    # 0-1 Period
      attr_accessor :created           # 1-1 dateTime
      attr_accessor :enterer           # 0-1 Reference(Practitioner|PractitionerRole)
      attr_accessor :provider          # 0-1 Reference(Practitioner|PractitionerRole|Organization)
      attr_accessor :insurer           # 1-1 Reference(Organization)
      attr_accessor :facility          # 0-1 Reference(Location)
      attr_accessor :supportingInfo    # 0-* [ CoverageEligibilityRequest::SupportingInfo ]
      attr_accessor :insurance         # 0-* [ CoverageEligibilityRequest::Insurance ]
      attr_accessor :item              # 0-* [ CoverageEligibilityRequest::Item ]

      def resourceType
        'CoverageEligibilityRequest'
      end
    end
  end
  CoverageEligibilityRequest = FHIR::R4::CoverageEligibilityRequest
end