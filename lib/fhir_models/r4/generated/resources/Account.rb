module FHIR
  module R4
    class Account < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['identifier', 'name', 'owner', 'patient', 'period', 'status', 'subject', 'type']
      METADATA = {
        'id' => {'path'=>'Account.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Account.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Account.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Account.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'Account.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Account.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Account.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Account.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Account.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/account-status'=>['active', 'inactive', 'entered-in-error', 'on-hold', 'unknown']}, 'path'=>'Account.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/account-status'}},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['ACCTRECEIVABLE', 'CASH', 'CC', 'AE', 'DN', 'DV', 'MC', 'V', 'PBILLACCT']}, 'path'=>'Account.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/account-type'}},
        'name' => {'path'=>'Account.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/HealthcareService', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Account.subject', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'servicePeriod' => {'path'=>'Account.servicePeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'coverage' => {'path'=>'Account.coverage', 'type'=>'Account::Coverage', 'min'=>0, 'max'=>Float::INFINITY},
        'owner' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Account.owner', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'description' => {'path'=>'Account.description', 'type'=>'string', 'min'=>0, 'max'=>1},
        'guarantor' => {'path'=>'Account.guarantor', 'type'=>'Account::Guarantor', 'min'=>0, 'max'=>Float::INFINITY},
        'partOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Account'], 'path'=>'Account.partOf', 'type'=>'Reference', 'min'=>0, 'max'=>1}
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
      attr_accessor :type              # 0-1 CodeableConcept
      attr_accessor :name              # 0-1 string
      attr_accessor :subject           # 0-* [ Reference(Patient|Device|Practitioner|PractitionerRole|Location|HealthcareService|Organization) ]
      attr_accessor :servicePeriod     # 0-1 Period
      attr_accessor :coverage          # 0-* [ Account::Coverage ]
      attr_accessor :owner             # 0-1 Reference(Organization)
      attr_accessor :description       # 0-1 string
      attr_accessor :guarantor         # 0-* [ Account::Guarantor ]
      attr_accessor :partOf            # 0-1 Reference(Account)

      def resourceType
        'Account'
      end
    end
  end
  Account = FHIR::R4::Account
end