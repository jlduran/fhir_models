module FHIR
  module R5
    class Coverage < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['beneficiary', 'class-type', 'class-value', 'dependent', 'identifier', 'insurer', 'patient', 'paymentby-party', 'policy-holder', 'status', 'subscriber', 'subscriberid', 'type']
      METADATA = {
        'id' => {'path'=>'Coverage.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Coverage.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Coverage.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'Coverage.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'Coverage.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Coverage.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Coverage.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Coverage.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Coverage.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/fm-status'=>['active', 'cancelled', 'draft', 'entered-in-error']}, 'path'=>'Coverage.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/fm-status'}},
        'kind' => {'valid_codes'=>{'http://hl7.org/fhir/coverage-kind'=>['insurance', 'self-pay', 'other']}, 'path'=>'Coverage.kind', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/coverage-kind'}},
        'paymentBy' => {'path'=>'Coverage.paymentBy', 'type'=>'Coverage::PaymentBy', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/coverage-selfpay'=>['pay'], 'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['_ActCoverageTypeCode', '_ActInsurancePolicyCode', 'EHCPOL', 'HSAPOL', 'AUTOPOL', 'COL', 'UNINSMOT', 'PUBLICPOL', 'DENTPRG', 'DISEASEPRG', 'CANPRG', 'ENDRENAL', 'HIVAIDS', 'MANDPOL', 'MENTPRG', 'SAFNET', 'SUBPRG', 'SUBSIDIZ', 'SUBSIDMC', 'SUBSUPP', 'WCBPOL', '_ActInsuranceTypeCode', '_ActHealthInsuranceTypeCode', 'DENTAL', 'DISEASE', 'DRUGPOL', 'HIP', 'LTC', 'MCPOL', 'POS', 'HMO', 'PPO', 'MENTPOL', 'SUBPOL', 'VISPOL', 'DIS', 'EWB', 'FLEXP', 'LIFE', 'ANNU', 'TLIFE', 'ULIFE', 'PNC', 'REI', 'SURPL', 'UMBRL', '_ActProgramTypeCode', 'CHAR', 'CRIME', 'EAP', 'GOVEMP', 'HIRISK', 'IND', 'MILITARY', 'RETIRE', 'SOCIAL', 'VET']}, 'path'=>'Coverage.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/coverage-type'}},
        'policyHolder' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Coverage.policyHolder', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'subscriber' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'Coverage.subscriber', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'subscriberId' => {'path'=>'Coverage.subscriberId', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'beneficiary' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'path'=>'Coverage.beneficiary', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'dependent' => {'path'=>'Coverage.dependent', 'type'=>'string', 'min'=>0, 'max'=>1},
        'relationship' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/subscriber-relationship'=>['child', 'parent', 'spouse', 'common', 'other', 'self', 'injured']}, 'path'=>'Coverage.relationship', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/subscriber-relationship'}},
        'period' => {'path'=>'Coverage.period', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'insurer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Coverage.insurer', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'class' => {'local_name'=>'local_class', 'path'=>'Coverage.class', 'type'=>'Coverage::Class', 'min'=>0, 'max'=>Float::INFINITY},
        'order' => {'path'=>'Coverage.order', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
        'network' => {'path'=>'Coverage.network', 'type'=>'string', 'min'=>0, 'max'=>1},
        'costToBeneficiary' => {'path'=>'Coverage.costToBeneficiary', 'type'=>'Coverage::CostToBeneficiary', 'min'=>0, 'max'=>Float::INFINITY},
        'subrogation' => {'path'=>'Coverage.subrogation', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'contract' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Contract'], 'path'=>'Coverage.contract', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'insurancePlan' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/InsurancePlan'], 'path'=>'Coverage.insurancePlan', 'type'=>'Reference', 'min'=>0, 'max'=>1}
      }

      class PaymentBy < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'PaymentBy.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'PaymentBy.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'PaymentBy.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'party' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'PaymentBy.party', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'responsibility' => {'path'=>'PaymentBy.responsibility', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :party             # 1-1 Reference(Patient|RelatedPerson|Organization)
        attr_accessor :responsibility    # 0-1 string
      end

      class Class < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Class.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Class.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Class.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/coverage-class'=>['group', 'subgroup', 'plan', 'subplan', 'class', 'subclass', 'sequence', 'rxbin', 'rxpcn', 'rxid', 'rxgroup']}, 'path'=>'Class.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/coverage-class'}},
          'value' => {'path'=>'Class.value', 'type'=>'Identifier', 'min'=>1, 'max'=>1},
          'name' => {'path'=>'Class.name', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 CodeableConcept
        attr_accessor :value             # 1-1 Identifier
        attr_accessor :name              # 0-1 string
      end

      class CostToBeneficiary < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'value' => ['Quantity', 'Money']
        }
        METADATA = {
          'id' => {'path'=>'CostToBeneficiary.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'CostToBeneficiary.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'CostToBeneficiary.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/coverage-copay-type'=>['gpvisit', 'spvisit', 'emergency', 'inpthosp', 'televisit', 'urgentcare', 'copaypct', 'copay', 'deductible', 'maxoutofpocket']}, 'path'=>'CostToBeneficiary.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/coverage-copay-type'}},
          'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-benefitcategory'=>['1', '2', '3', '4', '5', '14', '23', '24', '25', '26', '27', '28', '30', '35', '36', '37', '49', '55', '56', '61', '62', '63', '69', '76', 'F1', 'F3', 'F4', 'F6']}, 'path'=>'CostToBeneficiary.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-benefitcategory'}},
          'network' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/benefit-network'=>['in', 'out']}, 'path'=>'CostToBeneficiary.network', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/benefit-network'}},
          'unit' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/benefit-unit'=>['individual', 'family']}, 'path'=>'CostToBeneficiary.unit', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/benefit-unit'}},
          'term' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/benefit-term'=>['annual', 'day', 'lifetime']}, 'path'=>'CostToBeneficiary.term', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/benefit-term'}},
          'valueQuantity' => {'path'=>'CostToBeneficiary.value[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'valueMoney' => {'path'=>'CostToBeneficiary.value[x]', 'type'=>'Money', 'min'=>0, 'max'=>1},
          'exception' => {'path'=>'CostToBeneficiary.exception', 'type'=>'Coverage::CostToBeneficiary::Exception', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Exception < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Exception.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Exception.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Exception.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-coverage-financial-exception'=>['retired', 'foster']}, 'path'=>'Exception.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/coverage-financial-exception'}},
            'period' => {'path'=>'Exception.period', 'type'=>'Period', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 1-1 CodeableConcept
          attr_accessor :period            # 0-1 Period
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :category          # 0-1 CodeableConcept
        attr_accessor :network           # 0-1 CodeableConcept
        attr_accessor :unit              # 0-1 CodeableConcept
        attr_accessor :term              # 0-1 CodeableConcept
        attr_accessor :valueQuantity     # 0-1 Quantity
        attr_accessor :valueMoney        # 0-1 Money
        attr_accessor :exception         # 0-* [ Coverage::CostToBeneficiary::Exception ]
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
      attr_accessor :kind              # 1-1 code
      attr_accessor :paymentBy         # 0-* [ Coverage::PaymentBy ]
      attr_accessor :type              # 0-1 CodeableConcept
      attr_accessor :policyHolder      # 0-1 Reference(Patient|RelatedPerson|Organization)
      attr_accessor :subscriber        # 0-1 Reference(Patient|RelatedPerson)
      attr_accessor :subscriberId      # 0-* [ Identifier ]
      attr_accessor :beneficiary       # 1-1 Reference(Patient)
      attr_accessor :dependent         # 0-1 string
      attr_accessor :relationship      # 0-1 CodeableConcept
      attr_accessor :period            # 0-1 Period
      attr_accessor :insurer           # 0-1 Reference(Organization)
      attr_accessor :local_class       # 0-* [ Coverage::Class ]
      attr_accessor :order             # 0-1 positiveInt
      attr_accessor :network           # 0-1 string
      attr_accessor :costToBeneficiary # 0-* [ Coverage::CostToBeneficiary ]
      attr_accessor :subrogation       # 0-1 boolean
      attr_accessor :contract          # 0-* [ Reference(Contract) ]
      attr_accessor :insurancePlan     # 0-1 Reference(InsurancePlan)

      def resourceType
        'Coverage'
      end
    end
  end
end