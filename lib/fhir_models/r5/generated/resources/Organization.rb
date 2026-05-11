module FHIR
  module R5
    class Organization < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['active', 'address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'endpoint', 'identifier', 'name', 'partof', 'phonetic', 'type']
      METADATA = {
        'id' => {'path'=>'Organization.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Organization.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Organization.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'Organization.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'Organization.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Organization.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Organization.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Organization.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Organization.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'active' => {'path'=>'Organization.active', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/organization-type'=>['prov', 'dept', 'team', 'govt', 'ins', 'pay', 'edu', 'reli', 'crs', 'cg', 'bus', 'other']}, 'path'=>'Organization.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/organization-type'}},
        'name' => {'path'=>'Organization.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'alias' => {'path'=>'Organization.alias', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'Organization.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'Organization.contact', 'type'=>'ExtendedContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'partOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Organization.partOf', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'endpoint' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Endpoint'], 'path'=>'Organization.endpoint', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'qualification' => {'path'=>'Organization.qualification', 'type'=>'Organization::Qualification', 'min'=>0, 'max'=>Float::INFINITY}
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
          'code' => {'path'=>'Qualification.code', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example'}},
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
      attr_accessor :type              # 0-* [ CodeableConcept ]
      attr_accessor :name              # 0-1 string
      attr_accessor :alias             # 0-* [ string ]
      attr_accessor :description       # 0-1 markdown
      attr_accessor :contact           # 0-* [ ExtendedContactDetail ]
      attr_accessor :partOf            # 0-1 Reference(Organization)
      attr_accessor :endpoint          # 0-* [ Reference(Endpoint) ]
      attr_accessor :qualification     # 0-* [ Organization::Qualification ]

      def resourceType
        'Organization'
      end
    end
  end
end