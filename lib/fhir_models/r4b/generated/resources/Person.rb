module FHIR
  module R4B
    class Person < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'birthdate', 'email', 'gender', 'identifier', 'link', 'name', 'organization', 'patient', 'phone', 'phonetic', 'practitioner', 'relatedperson', 'telecom']
      METADATA = {
        'id' => {'path'=>'Person.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Person.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Person.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Person.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'Person.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Person.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Person.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Person.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Person.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'name' => {'path'=>'Person.name', 'type'=>'HumanName', 'min'=>0, 'max'=>Float::INFINITY},
        'telecom' => {'path'=>'Person.telecom', 'type'=>'ContactPoint', 'min'=>0, 'max'=>Float::INFINITY},
        'gender' => {'valid_codes'=>{'http://hl7.org/fhir/administrative-gender'=>['male', 'female', 'other', 'unknown']}, 'path'=>'Person.gender', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/administrative-gender'}},
        'birthDate' => {'path'=>'Person.birthDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'address' => {'path'=>'Person.address', 'type'=>'Address', 'min'=>0, 'max'=>Float::INFINITY},
        'photo' => {'path'=>'Person.photo', 'type'=>'Attachment', 'min'=>0, 'max'=>1},
        'managingOrganization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Person.managingOrganization', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'active' => {'path'=>'Person.active', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'link' => {'path'=>'Person.link', 'type'=>'Person::Link', 'min'=>0, 'max'=>Float::INFINITY}
      }

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
      attr_accessor :name                 # 0-* [ HumanName ]
      attr_accessor :telecom              # 0-* [ ContactPoint ]
      attr_accessor :gender               # 0-1 code
      attr_accessor :birthDate            # 0-1 date
      attr_accessor :address              # 0-* [ Address ]
      attr_accessor :photo                # 0-1 Attachment
      attr_accessor :managingOrganization # 0-1 Reference(Organization)
      attr_accessor :active               # 0-1 boolean
      attr_accessor :link                 # 0-* [ Person::Link ]

      def resourceType
        'Person'
      end
    end
  end
end