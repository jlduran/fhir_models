module FHIR
  module R5
    class PaymentReconciliation < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['allocation-account', 'allocation-encounter', 'created', 'disposition', 'identifier', 'outcome', 'payment-issuer', 'request', 'requestor', 'status']
      METADATA = {
        'id' => {'path'=>'PaymentReconciliation.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'PaymentReconciliation.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'PaymentReconciliation.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'PaymentReconciliation.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'PaymentReconciliation.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'PaymentReconciliation.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'PaymentReconciliation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'PaymentReconciliation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'PaymentReconciliation.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/payment-type'=>['payment', 'adjustment', 'advance']}, 'path'=>'PaymentReconciliation.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/payment-type'}},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/fm-status'=>['active', 'cancelled', 'draft', 'entered-in-error']}, 'path'=>'PaymentReconciliation.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/fm-status'}},
        'kind' => {'valid_codes'=>{'http://hl7.org/fhir/payment-kind'=>['deposit', 'periodic-payment', 'online', 'kiosk']}, 'path'=>'PaymentReconciliation.kind', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/payment-kind'}},
        'period' => {'path'=>'PaymentReconciliation.period', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'created' => {'path'=>'PaymentReconciliation.created', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
        'enterer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'PaymentReconciliation.enterer', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'issuerType' => {'valid_codes'=>{'http://hl7.org/fhir/payment-issuertype'=>['patient', 'insurance']}, 'path'=>'PaymentReconciliation.issuerType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/payment-issuertype'}},
        'paymentIssuer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'PaymentReconciliation.paymentIssuer', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'request' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Task'], 'path'=>'PaymentReconciliation.request', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'requestor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'PaymentReconciliation.requestor', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'outcome' => {'valid_codes'=>{'http://hl7.org/fhir/payment-outcome'=>['queued', 'complete', 'error', 'partial']}, 'path'=>'PaymentReconciliation.outcome', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/payment-outcome'}},
        'disposition' => {'path'=>'PaymentReconciliation.disposition', 'type'=>'string', 'min'=>0, 'max'=>1},
        'date' => {'path'=>'PaymentReconciliation.date', 'type'=>'date', 'min'=>1, 'max'=>1},
        'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'PaymentReconciliation.location', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'method' => {'local_name'=>'local_method', 'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v2-0570'=>['CASH', 'CCCA', 'CCHK', 'CDAC', 'CHCK', 'DDPO', 'DEBC', 'SWFT', 'TRAC', 'VISN']}, 'path'=>'PaymentReconciliation.method', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://terminology.hl7.org/ValueSet/v2-0570'}},
        'cardBrand' => {'path'=>'PaymentReconciliation.cardBrand', 'type'=>'string', 'min'=>0, 'max'=>1},
        'accountNumber' => {'path'=>'PaymentReconciliation.accountNumber', 'type'=>'string', 'min'=>0, 'max'=>1},
        'expirationDate' => {'path'=>'PaymentReconciliation.expirationDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'processor' => {'path'=>'PaymentReconciliation.processor', 'type'=>'string', 'min'=>0, 'max'=>1},
        'referenceNumber' => {'path'=>'PaymentReconciliation.referenceNumber', 'type'=>'string', 'min'=>0, 'max'=>1},
        'authorization' => {'path'=>'PaymentReconciliation.authorization', 'type'=>'string', 'min'=>0, 'max'=>1},
        'tenderedAmount' => {'path'=>'PaymentReconciliation.tenderedAmount', 'type'=>'Money', 'min'=>0, 'max'=>1},
        'returnedAmount' => {'path'=>'PaymentReconciliation.returnedAmount', 'type'=>'Money', 'min'=>0, 'max'=>1},
        'amount' => {'path'=>'PaymentReconciliation.amount', 'type'=>'Money', 'min'=>1, 'max'=>1},
        'paymentIdentifier' => {'path'=>'PaymentReconciliation.paymentIdentifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'allocation' => {'path'=>'PaymentReconciliation.allocation', 'type'=>'PaymentReconciliation::Allocation', 'min'=>0, 'max'=>Float::INFINITY},
        'formCode' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/forms-codes'=>['1', '2']}, 'path'=>'PaymentReconciliation.formCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/forms'}},
        'processNote' => {'path'=>'PaymentReconciliation.processNote', 'type'=>'PaymentReconciliation::ProcessNote', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Allocation < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'targetItem' => ['string', 'Identifier', 'positiveInt']
        }
        METADATA = {
          'id' => {'path'=>'Allocation.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Allocation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Allocation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'path'=>'Allocation.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
          'predecessor' => {'path'=>'Allocation.predecessor', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
          'target' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Claim', 'http://hl7.org/fhir/StructureDefinition/Account', 'http://hl7.org/fhir/StructureDefinition/Invoice', 'http://hl7.org/fhir/StructureDefinition/ChargeItem', 'http://hl7.org/fhir/StructureDefinition/Encounter', 'http://hl7.org/fhir/StructureDefinition/Contract'], 'path'=>'Allocation.target', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'targetItemString' => {'path'=>'Allocation.targetItem[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
          'targetItemIdentifier' => {'path'=>'Allocation.targetItem[x]', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
          'targetItemPositiveInt' => {'path'=>'Allocation.targetItem[x]', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
          'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'Allocation.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'account' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Account'], 'path'=>'Allocation.account', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/payment-type'=>['payment', 'adjustment', 'advance']}, 'path'=>'Allocation.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/payment-type'}},
          'submitter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Allocation.submitter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'response' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ClaimResponse'], 'path'=>'Allocation.response', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'date' => {'path'=>'Allocation.date', 'type'=>'date', 'min'=>0, 'max'=>1},
          'responsible' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'Allocation.responsible', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'payee' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Allocation.payee', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'amount' => {'path'=>'Allocation.amount', 'type'=>'Money', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                    # 0-1 string
        attr_accessor :extension             # 0-* [ Extension ]
        attr_accessor :modifierExtension     # 0-* [ Extension ]
        attr_accessor :identifier            # 0-1 Identifier
        attr_accessor :predecessor           # 0-1 Identifier
        attr_accessor :target                # 0-1 Reference(Claim|Account|Invoice|ChargeItem|Encounter|Contract)
        attr_accessor :targetItemString      # 0-1 string
        attr_accessor :targetItemIdentifier  # 0-1 Identifier
        attr_accessor :targetItemPositiveInt # 0-1 positiveInt
        attr_accessor :encounter             # 0-1 Reference(Encounter)
        attr_accessor :account               # 0-1 Reference(Account)
        attr_accessor :type                  # 0-1 CodeableConcept
        attr_accessor :submitter             # 0-1 Reference(Practitioner|PractitionerRole|Organization)
        attr_accessor :response              # 0-1 Reference(ClaimResponse)
        attr_accessor :date                  # 0-1 date
        attr_accessor :responsible           # 0-1 Reference(PractitionerRole)
        attr_accessor :payee                 # 0-1 Reference(Practitioner|PractitionerRole|Organization)
        attr_accessor :amount                # 0-1 Money
      end

      class ProcessNote < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'ProcessNote.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'ProcessNote.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'ProcessNote.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/note-type'=>['display', 'print', 'printoper']}, 'path'=>'ProcessNote.type', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/note-type'}},
          'text' => {'path'=>'ProcessNote.text', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 code
        attr_accessor :text              # 0-1 string
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
      attr_accessor :type              # 1-1 CodeableConcept
      attr_accessor :status            # 1-1 code
      attr_accessor :kind              # 0-1 CodeableConcept
      attr_accessor :period            # 0-1 Period
      attr_accessor :created           # 1-1 dateTime
      attr_accessor :enterer           # 0-1 Reference(Practitioner|PractitionerRole|Organization)
      attr_accessor :issuerType        # 0-1 CodeableConcept
      attr_accessor :paymentIssuer     # 0-1 Reference(Organization|Patient|RelatedPerson)
      attr_accessor :request           # 0-1 Reference(Task)
      attr_accessor :requestor         # 0-1 Reference(Practitioner|PractitionerRole|Organization)
      attr_accessor :outcome           # 0-1 code
      attr_accessor :disposition       # 0-1 string
      attr_accessor :date              # 1-1 date
      attr_accessor :location          # 0-1 Reference(Location)
      attr_accessor :local_method      # 0-1 CodeableConcept
      attr_accessor :cardBrand         # 0-1 string
      attr_accessor :accountNumber     # 0-1 string
      attr_accessor :expirationDate    # 0-1 date
      attr_accessor :processor         # 0-1 string
      attr_accessor :referenceNumber   # 0-1 string
      attr_accessor :authorization     # 0-1 string
      attr_accessor :tenderedAmount    # 0-1 Money
      attr_accessor :returnedAmount    # 0-1 Money
      attr_accessor :amount            # 1-1 Money
      attr_accessor :paymentIdentifier # 0-1 Identifier
      attr_accessor :allocation        # 0-* [ PaymentReconciliation::Allocation ]
      attr_accessor :formCode          # 0-1 CodeableConcept
      attr_accessor :processNote       # 0-* [ PaymentReconciliation::ProcessNote ]

      def resourceType
        'PaymentReconciliation'
      end
    end
  end
end