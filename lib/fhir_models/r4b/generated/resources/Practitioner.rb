module FHIR
  module R4B
    class Practitioner < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['active', 'address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'communication', 'email', 'family', 'gender', 'given', 'identifier', 'name', 'phone', 'phonetic', 'telecom']
      METADATA = {
        'id' => {'path'=>'Practitioner.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Practitioner.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Practitioner.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Practitioner.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'Practitioner.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Practitioner.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Practitioner.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Practitioner.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Practitioner.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'active' => {'path'=>'Practitioner.active', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'name' => {'path'=>'Practitioner.name', 'type'=>'HumanName', 'min'=>0, 'max'=>Float::INFINITY},
        'telecom' => {'path'=>'Practitioner.telecom', 'type'=>'ContactPoint', 'min'=>0, 'max'=>Float::INFINITY},
        'address' => {'path'=>'Practitioner.address', 'type'=>'Address', 'min'=>0, 'max'=>Float::INFINITY},
        'gender' => {'valid_codes'=>{'http://hl7.org/fhir/administrative-gender'=>['male', 'female', 'other', 'unknown']}, 'path'=>'Practitioner.gender', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/administrative-gender'}},
        'birthDate' => {'path'=>'Practitioner.birthDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'photo' => {'path'=>'Practitioner.photo', 'type'=>'Attachment', 'min'=>0, 'max'=>Float::INFINITY},
        'qualification' => {'path'=>'Practitioner.qualification', 'type'=>'Practitioner::Qualification', 'min'=>0, 'max'=>Float::INFINITY},
        'communication' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Practitioner.communication', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}}
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
          'code' => {'path'=>'Qualification.code', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v2-2.7-0360'}},
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
      attr_accessor :address           # 0-* [ Address ]
      attr_accessor :gender            # 0-1 code
      attr_accessor :birthDate         # 0-1 date
      attr_accessor :photo             # 0-* [ Attachment ]
      attr_accessor :qualification     # 0-* [ Practitioner::Qualification ]
      attr_accessor :communication     # 0-* [ CodeableConcept ]

      def resourceType
        'Practitioner'
      end
    end
  end
end