module FHIR
  module R5
    class Practitioner < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'deceased' => ['boolean', 'dateTime']
      }
      SEARCH_PARAMS = ['active', 'address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'communication', 'death-date', 'deceased', 'email', 'family', 'gender', 'given', 'identifier', 'name', 'phone', 'phonetic', 'qualification-period', 'telecom']
      METADATA = {
        'id' => {'path'=>'Practitioner.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Practitioner.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Practitioner.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'Practitioner.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'Practitioner.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Practitioner.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Practitioner.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Practitioner.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Practitioner.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'active' => {'path'=>'Practitioner.active', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'name' => {'path'=>'Practitioner.name', 'type'=>'HumanName', 'min'=>0, 'max'=>Float::INFINITY},
        'telecom' => {'path'=>'Practitioner.telecom', 'type'=>'ContactPoint', 'min'=>0, 'max'=>Float::INFINITY},
        'gender' => {'valid_codes'=>{'http://hl7.org/fhir/administrative-gender'=>['male', 'female', 'other', 'unknown']}, 'path'=>'Practitioner.gender', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/administrative-gender'}},
        'birthDate' => {'path'=>'Practitioner.birthDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'deceasedBoolean' => {'path'=>'Practitioner.deceased[x]', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'deceasedDateTime' => {'path'=>'Practitioner.deceased[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'address' => {'path'=>'Practitioner.address', 'type'=>'Address', 'min'=>0, 'max'=>Float::INFINITY},
        'photo' => {'path'=>'Practitioner.photo', 'type'=>'Attachment', 'min'=>0, 'max'=>Float::INFINITY},
        'qualification' => {'path'=>'Practitioner.qualification', 'type'=>'Practitioner::Qualification', 'min'=>0, 'max'=>Float::INFINITY},
        'communication' => {'path'=>'Practitioner.communication', 'type'=>'Practitioner::Communication', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Qualification < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Qualification.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Qualification.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Qualification.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'path'=>'Qualification.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v2-0360'=>['PN', 'AAS', 'AA', 'ABA', 'AE', 'AS', 'BA', 'BBA', 'BE', 'BFA', 'BN', 'BS', 'BSL', 'BSN', 'BT', 'CER', 'CANP', 'CMA', 'CNP', 'CNM', 'CRN', 'CNS', 'CPNP', 'CTR', 'DIP', 'DBA', 'DED', 'PharmD', 'PHE', 'PHD', 'PHS', 'MD', 'DO', 'EMT', 'EMTP', 'FPNP', 'HS', 'JD', 'MA', 'MBA', 'MCE', 'MDI', 'MED', 'MEE', 'ME', 'MFA', 'MME', 'MS', 'MSL', 'MSN', 'MTH', 'MDA', 'MT', 'NG', 'NP', 'PA', 'RMA', 'RN', 'RPH', 'SEC', 'TS']}, 'path'=>'Qualification.code', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v2-0360'}},
          'period' => {'path'=>'Qualification.period', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'issuer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Qualification.issuer', 'type'=>'Reference', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :identifier        # 0-* [ Identifier ]
        attr_accessor :code              # 1-1 CodeableConcept
        attr_accessor :period            # 0-1 Period
        attr_accessor :issuer            # 0-1 Reference(Organization)
      end

      class Communication < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Communication.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Communication.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Communication.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'language' => {'path'=>'Communication.language', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
          'preferred' => {'path'=>'Communication.preferred', 'type'=>'boolean', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :language          # 1-1 CodeableConcept
        attr_accessor :preferred         # 0-1 boolean
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
      attr_accessor :active            # 0-1 boolean
      attr_accessor :name              # 0-* [ HumanName ]
      attr_accessor :telecom           # 0-* [ ContactPoint ]
      attr_accessor :gender            # 0-1 code
      attr_accessor :birthDate         # 0-1 date
      attr_accessor :deceasedBoolean   # 0-1 boolean
      attr_accessor :deceasedDateTime  # 0-1 dateTime
      attr_accessor :address           # 0-* [ Address ]
      attr_accessor :photo             # 0-* [ Attachment ]
      attr_accessor :qualification     # 0-* [ Practitioner::Qualification ]
      attr_accessor :communication     # 0-* [ Practitioner::Communication ]

      def resourceType
        'Practitioner'
      end
    end
  end
end