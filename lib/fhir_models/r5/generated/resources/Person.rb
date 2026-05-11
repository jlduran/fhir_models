module FHIR
  module R5
    class Person < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'deceased' => ['boolean', 'dateTime']
      }
      SEARCH_PARAMS = ['address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'birthdate', 'death-date', 'deceased', 'email', 'family', 'gender', 'given', 'identifier', 'link', 'name', 'organization', 'patient', 'phone', 'phonetic', 'practitioner', 'relatedperson', 'telecom']
      METADATA = {
        'id' => {'path'=>'Person.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Person.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Person.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'Person.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'Person.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Person.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Person.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Person.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Person.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'active' => {'path'=>'Person.active', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'name' => {'path'=>'Person.name', 'type'=>'HumanName', 'min'=>0, 'max'=>Float::INFINITY},
        'telecom' => {'path'=>'Person.telecom', 'type'=>'ContactPoint', 'min'=>0, 'max'=>Float::INFINITY},
        'gender' => {'valid_codes'=>{'http://hl7.org/fhir/administrative-gender'=>['male', 'female', 'other', 'unknown']}, 'path'=>'Person.gender', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/administrative-gender'}},
        'birthDate' => {'path'=>'Person.birthDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'deceasedBoolean' => {'path'=>'Person.deceased[x]', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'deceasedDateTime' => {'path'=>'Person.deceased[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'address' => {'path'=>'Person.address', 'type'=>'Address', 'min'=>0, 'max'=>Float::INFINITY},
        'maritalStatus' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus'=>['A', 'D', 'I', 'L', 'M', 'C', 'P', 'T', 'U', 'S', 'W'], 'http://terminology.hl7.org/CodeSystem/v3-NullFlavor'=>['UNK']}, 'path'=>'Person.maritalStatus', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/marital-status'}},
        'photo' => {'path'=>'Person.photo', 'type'=>'Attachment', 'min'=>0, 'max'=>Float::INFINITY},
        'communication' => {'path'=>'Person.communication', 'type'=>'Person::Communication', 'min'=>0, 'max'=>Float::INFINITY},
        'managingOrganization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Person.managingOrganization', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'link' => {'path'=>'Person.link', 'type'=>'Person::Link', 'min'=>0, 'max'=>Float::INFINITY}
      }

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

      class Link < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Link.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Link.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Link.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'target' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Person'], 'path'=>'Link.target', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'assurance' => {'valid_codes'=>{'http://hl7.org/fhir/identity-assuranceLevel'=>['level1', 'level2', 'level3', 'level4']}, 'path'=>'Link.assurance', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/identity-assuranceLevel'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :target            # 1-1 Reference(Patient|Practitioner|RelatedPerson|Person)
        attr_accessor :assurance         # 0-1 code
      end

      attr_accessor :id                   # 0-1 id
      attr_accessor :meta                 # 0-1 Meta
      attr_accessor :implicitRules        # 0-1 uri
      attr_accessor :language             # 0-1 code
      attr_accessor :text                 # 0-1 Narrative
      attr_accessor :contained            # 0-* [ Resource ]
      attr_accessor :extension            # 0-* [ Extension ]
      attr_accessor :modifierExtension    # 0-* [ Extension ]
      attr_accessor :identifier           # 0-* [ Identifier ]
      attr_accessor :active               # 0-1 boolean
      attr_accessor :name                 # 0-* [ HumanName ]
      attr_accessor :telecom              # 0-* [ ContactPoint ]
      attr_accessor :gender               # 0-1 code
      attr_accessor :birthDate            # 0-1 date
      attr_accessor :deceasedBoolean      # 0-1 boolean
      attr_accessor :deceasedDateTime     # 0-1 dateTime
      attr_accessor :address              # 0-* [ Address ]
      attr_accessor :maritalStatus        # 0-1 CodeableConcept
      attr_accessor :photo                # 0-* [ Attachment ]
      attr_accessor :communication        # 0-* [ Person::Communication ]
      attr_accessor :managingOrganization # 0-1 Reference(Organization)
      attr_accessor :link                 # 0-* [ Person::Link ]

      def resourceType
        'Person'
      end
    end
  end
end