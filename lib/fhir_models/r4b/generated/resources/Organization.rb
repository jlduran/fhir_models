module FHIR
  module R4B
    class Organization < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['active', 'address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'endpoint', 'identifier', 'name', 'partof', 'phonetic', 'type']
      METADATA = {
        'id' => {'path'=>'Organization.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Organization.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Organization.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Organization.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'Organization.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Organization.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Organization.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Organization.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Organization.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'active' => {'path'=>'Organization.active', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/organization-type'=>['prov', 'dept', 'team', 'govt', 'ins', 'pay', 'edu', 'reli', 'crs', 'cg', 'bus', 'other']}, 'path'=>'Organization.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/organization-type'}},
        'name' => {'path'=>'Organization.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'alias' => {'path'=>'Organization.alias', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'telecom' => {'path'=>'Organization.telecom', 'type'=>'ContactPoint', 'min'=>0, 'max'=>Float::INFINITY},
        'address' => {'path'=>'Organization.address', 'type'=>'Address', 'min'=>0, 'max'=>Float::INFINITY},
        'partOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Organization.partOf', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'Organization.contact', 'type'=>'Organization::Contact', 'min'=>0, 'max'=>Float::INFINITY},
        'endpoint' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Endpoint'], 'path'=>'Organization.endpoint', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Contact < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Contact.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Contact.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Contact.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'purpose' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contactentity-type'=>['BILL', 'ADMIN', 'HR', 'PAYOR', 'PATINF', 'PRESS']}, 'path'=>'Contact.purpose', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/contactentity-type'}},
          'name' => {'path'=>'Contact.name', 'type'=>'HumanName', 'min'=>0, 'max'=>1},
          'telecom' => {'path'=>'Contact.telecom', 'type'=>'ContactPoint', 'min'=>0, 'max'=>Float::INFINITY},
          'address' => {'path'=>'Contact.address', 'type'=>'Address', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :purpose           # 0-1 CodeableConcept
        attr_accessor :name              # 0-1 HumanName
        attr_accessor :telecom           # 0-* [ ContactPoint ]
        attr_accessor :address           # 0-1 Address
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
      attr_accessor :type              # 0-* [ CodeableConcept ]
      attr_accessor :name              # 0-1 string
      attr_accessor :alias             # 0-* [ string ]
      attr_accessor :telecom           # 0-* [ ContactPoint ]
      attr_accessor :address           # 0-* [ Address ]
      attr_accessor :partOf            # 0-1 Reference(Organization)
      attr_accessor :contact           # 0-* [ Organization::Contact ]
      attr_accessor :endpoint          # 0-* [ Reference(Endpoint) ]

      def resourceType
        'Organization'
      end
    end
  end
end