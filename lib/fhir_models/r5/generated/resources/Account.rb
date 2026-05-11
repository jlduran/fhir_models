module FHIR
  module R5
    class Account < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['guarantor', 'identifier', 'name', 'owner', 'patient', 'period', 'relatedaccount', 'status', 'subject', 'type']
      METADATA = {
        'id' => {'path'=>'Account.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Account.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Account.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'Account.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'Account.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Account.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Account.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Account.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Account.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/account-status'=>['active', 'inactive', 'entered-in-error', 'on-hold', 'unknown']}, 'path'=>'Account.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/account-status'}},
        'billingStatus' => {'valid_codes'=>{'http://hl7.org/fhir/account-billing-status'=>['open', 'carecomplete-notbilled', 'billing', 'closed-baddebt', 'closed-voided', 'closed-completed', 'closed-combined']}, 'path'=>'Account.billingStatus', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/account-billing-status'}},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['_ActAccountCode', 'ACCTRECEIVABLE', 'CASH', 'CC', 'AE', 'DN', 'DV', 'MC', 'V', 'PBILLACCT', '_CreditCard']}, 'path'=>'Account.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/account-type'}},
        'name' => {'path'=>'Account.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/HealthcareService', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Account.subject', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'servicePeriod' => {'path'=>'Account.servicePeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'coverage' => {'path'=>'Account.coverage', 'type'=>'Account::Coverage', 'min'=>0, 'max'=>Float::INFINITY},
        'owner' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Account.owner', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'description' => {'path'=>'Account.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'guarantor' => {'path'=>'Account.guarantor', 'type'=>'Account::Guarantor', 'min'=>0, 'max'=>Float::INFINITY},
        'diagnosis' => {'path'=>'Account.diagnosis', 'type'=>'Account::Diagnosis', 'min'=>0, 'max'=>Float::INFINITY},
        'procedure' => {'path'=>'Account.procedure', 'type'=>'Account::Procedure', 'min'=>0, 'max'=>Float::INFINITY},
        'relatedAccount' => {'path'=>'Account.relatedAccount', 'type'=>'Account::RelatedAccount', 'min'=>0, 'max'=>Float::INFINITY},
        'currency' => {'valid_codes'=>{'urn:iso:std:iso:4217'=>['AED', 'AFN', 'ALL', 'AMD', 'ANG', 'AOA', 'ARS', 'AUD', 'AWG', 'AZN', 'BAM', 'BBD', 'BDT', 'BGN', 'BHD', 'BIF', 'BMD', 'BND', 'BOB', 'BOV', 'BRL', 'BSD', 'BTN', 'BWP', 'BYN', 'BZD', 'CAD', 'CDF', 'CHE', 'CHF', 'CHW', 'CLF', 'CLP', 'CNY', 'COP', 'COU', 'CRC', 'CUC', 'CUP', 'CVE', 'CZK', 'DJF', 'DKK', 'DOP', 'DZD', 'EGP', 'ERN', 'ETB', 'EUR', 'FJD', 'FKP', 'GBP', 'GEL', 'GGP', 'GHS', 'GIP', 'GMD', 'GNF', 'GTQ', 'GYD', 'HKD', 'HNL', 'HRK', 'HTG', 'HUF', 'IDR', 'ILS', 'IMP', 'INR', 'IQD', 'IRR', 'ISK', 'JEP', 'JMD', 'JOD', 'JPY', 'KES', 'KGS', 'KHR', 'KMF', 'KPW', 'KRW', 'KWD', 'KYD', 'KZT', 'LAK', 'LBP', 'LKR', 'LRD', 'LSL', 'LYD', 'MAD', 'MDL', 'MGA', 'MKD', 'MMK', 'MNT', 'MOP', 'MRU', 'MUR', 'MVR', 'MWK', 'MXN', 'MXV', 'MYR', 'MZN', 'NAD', 'NGN', 'NIO', 'NOK', 'NPR', 'NZD', 'OMR', 'PAB', 'PEN', 'PGK', 'PHP', 'PKR', 'PLN', 'PYG', 'QAR', 'RON', 'RSD', 'RUB', 'RWF', 'SAR', 'SBD', 'SCR', 'SDG', 'SEK', 'SGD', 'SHP', 'SLL', 'SOS', 'SRD', 'SSP', 'STN', 'SVC', 'SYP', 'SZL', 'THB', 'TJS', 'TMT', 'TND', 'TOP', 'TRY', 'TTD', 'TVD', 'TWD', 'TZS', 'UAH', 'UGX', 'USD', 'USN', 'UYI', 'UYU', 'UZS', 'VEF', 'VND', 'VUV', 'WST', 'XAF', 'XAG', 'XAU', 'XBA', 'XBB', 'XBC', 'XBD', 'XCD', 'XDR', 'XOF', 'XPD', 'XPF', 'XPT', 'XSU', 'XTS', 'XUA', 'XXX', 'YER', 'ZAR', 'ZMW', 'ZWL']}, 'path'=>'Account.currency', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/currencies'}},
        'balance' => {'path'=>'Account.balance', 'type'=>'Account::Balance', 'min'=>0, 'max'=>Float::INFINITY},
        'calculatedAt' => {'path'=>'Account.calculatedAt', 'type'=>'instant', 'min'=>0, 'max'=>1}
      }

      class Coverage < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Coverage.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Coverage.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Coverage.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'coverage' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Coverage'], 'path'=>'Coverage.coverage', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'priority' => {'path'=>'Coverage.priority', 'type'=>'positiveInt', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :coverage          # 1-1 Reference(Coverage)
        attr_accessor :priority          # 0-1 positiveInt
      end

      class Guarantor < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Guarantor.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Guarantor.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Guarantor.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'party' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Guarantor.party', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'onHold' => {'path'=>'Guarantor.onHold', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'period' => {'path'=>'Guarantor.period', 'type'=>'Period', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :party             # 1-1 Reference(Patient|RelatedPerson|Organization)
        attr_accessor :onHold            # 0-1 boolean
        attr_accessor :period            # 0-1 Period
      end

      class Diagnosis < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Diagnosis.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Diagnosis.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Diagnosis.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'sequence' => {'path'=>'Diagnosis.sequence', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
          'condition' => {'path'=>'Diagnosis.condition', 'type'=>'CodeableReference', 'min'=>1, 'max'=>1},
          'dateOfDiagnosis' => {'path'=>'Diagnosis.dateOfDiagnosis', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/encounter-diagnosis-use'=>['working', 'final']}, 'path'=>'Diagnosis.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/encounter-diagnosis-use'}},
          'onAdmission' => {'path'=>'Diagnosis.onAdmission', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'packageCode' => {'path'=>'Diagnosis.packageCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :sequence          # 0-1 positiveInt
        attr_accessor :condition         # 1-1 CodeableReference
        attr_accessor :dateOfDiagnosis   # 0-1 dateTime
        attr_accessor :type              # 0-* [ CodeableConcept ]
        attr_accessor :onAdmission       # 0-1 boolean
        attr_accessor :packageCode       # 0-* [ CodeableConcept ]
      end

      class Procedure < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Procedure.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Procedure.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Procedure.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'sequence' => {'path'=>'Procedure.sequence', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
          'code' => {'path'=>'Procedure.code', 'type'=>'CodeableReference', 'min'=>1, 'max'=>1},
          'dateOfService' => {'path'=>'Procedure.dateOfService', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'type' => {'path'=>'Procedure.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example'}},
          'packageCode' => {'path'=>'Procedure.packageCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example'}},
          'device' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'Procedure.device', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :sequence          # 0-1 positiveInt
        attr_accessor :code              # 1-1 CodeableReference
        attr_accessor :dateOfService     # 0-1 dateTime
        attr_accessor :type              # 0-* [ CodeableConcept ]
        attr_accessor :packageCode       # 0-* [ CodeableConcept ]
        attr_accessor :device            # 0-* [ Reference(Device) ]
      end

      class RelatedAccount < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'RelatedAccount.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'RelatedAccount.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'RelatedAccount.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'relationship' => {'valid_codes'=>{'http://hl7.org/fhir/account-relationship'=>['parent', 'guarantor']}, 'path'=>'RelatedAccount.relationship', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/account-relationship'}},
          'account' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Account'], 'path'=>'RelatedAccount.account', 'type'=>'Reference', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :relationship      # 0-1 CodeableConcept
        attr_accessor :account           # 1-1 Reference(Account)
      end

      class Balance < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Balance.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Balance.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Balance.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'aggregate' => {'valid_codes'=>{'http://hl7.org/fhir/account-aggregate'=>['patient', 'insurance', 'total']}, 'path'=>'Balance.aggregate', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/account-aggregate'}},
          'term' => {'valid_codes'=>{'http://hl7.org/fhir/account-balance-term'=>['current', '30', '60', '90', '120']}, 'path'=>'Balance.term', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/account-balance-term'}},
          'estimate' => {'path'=>'Balance.estimate', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'amount' => {'path'=>'Balance.amount', 'type'=>'Money', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :aggregate         # 0-1 CodeableConcept
        attr_accessor :term              # 0-1 CodeableConcept
        attr_accessor :estimate          # 0-1 boolean
        attr_accessor :amount            # 1-1 Money
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
      attr_accessor :billingStatus     # 0-1 CodeableConcept
      attr_accessor :type              # 0-1 CodeableConcept
      attr_accessor :name              # 0-1 string
      attr_accessor :subject           # 0-* [ Reference(Patient|Device|Practitioner|PractitionerRole|Location|HealthcareService|Organization) ]
      attr_accessor :servicePeriod     # 0-1 Period
      attr_accessor :coverage          # 0-* [ Account::Coverage ]
      attr_accessor :owner             # 0-1 Reference(Organization)
      attr_accessor :description       # 0-1 markdown
      attr_accessor :guarantor         # 0-* [ Account::Guarantor ]
      attr_accessor :diagnosis         # 0-* [ Account::Diagnosis ]
      attr_accessor :procedure         # 0-* [ Account::Procedure ]
      attr_accessor :relatedAccount    # 0-* [ Account::RelatedAccount ]
      attr_accessor :currency          # 0-1 CodeableConcept
      attr_accessor :balance           # 0-* [ Account::Balance ]
      attr_accessor :calculatedAt      # 0-1 instant

      def resourceType
        'Account'
      end
    end
  end
end