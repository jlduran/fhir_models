module FHIR
  module R4
    class Group < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['actual', 'characteristic', 'characteristic-value', 'code', 'exclude', 'identifier', 'managing-entity', 'member', 'type', 'value']
      METADATA = {
        'id' => {'path'=>'Group.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Group.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Group.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Group.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'Group.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Group.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Group.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Group.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Group.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'active' => {'path'=>'Group.active', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/group-type'=>['person', 'animal', 'practitioner', 'device', 'medication', 'substance']}, 'path'=>'Group.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/group-type'}},
        'actual' => {'path'=>'Group.actual', 'type'=>'boolean', 'min'=>1, 'max'=>1},
        'code' => {'path'=>'Group.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
        'name' => {'path'=>'Group.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'quantity' => {'path'=>'Group.quantity', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
        'managingEntity' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'Group.managingEntity', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'characteristic' => {'path'=>'Group.characteristic', 'type'=>'Group::Characteristic', 'min'=>0, 'max'=>Float::INFINITY},
        'member' => {'path'=>'Group.member', 'type'=>'Group::Member', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Characteristic < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'value' => ['CodeableConcept', 'boolean', 'Quantity', 'Range', 'Reference']
        }
        METADATA = {
          'id' => {'path'=>'Characteristic.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Characteristic.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Characteristic.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'path'=>'Characteristic.code', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example'}},
          'valueCodeableConcept' => {'path'=>'Characteristic.value[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example'}},
          'valueBoolean' => {'path'=>'Characteristic.value[x]', 'type'=>'boolean', 'min'=>1, 'max'=>1},
          'valueQuantity' => {'path'=>'Characteristic.value[x]', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
          'valueRange' => {'path'=>'Characteristic.value[x]', 'type'=>'Range', 'min'=>1, 'max'=>1},
          'valueReference' => {'path'=>'Characteristic.value[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'exclude' => {'path'=>'Characteristic.exclude', 'type'=>'boolean', 'min'=>1, 'max'=>1},
          'period' => {'path'=>'Characteristic.period', 'type'=>'Period', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                   # 0-1 string
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :code                 # 1-1 CodeableConcept
        attr_accessor :valueCodeableConcept # 1-1 CodeableConcept
        attr_accessor :valueBoolean         # 1-1 boolean
        attr_accessor :valueQuantity        # 1-1 Quantity
        attr_accessor :valueRange           # 1-1 Range
        attr_accessor :valueReference       # 1-1 Reference()
        attr_accessor :exclude              # 1-1 boolean
        attr_accessor :period               # 0-1 Period
      end

      class Member < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Member.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Member.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Member.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'entity' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Medication', 'http://hl7.org/fhir/StructureDefinition/Substance', 'http://hl7.org/fhir/StructureDefinition/Group'], 'path'=>'Member.entity', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'period' => {'path'=>'Member.period', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'inactive' => {'path'=>'Member.inactive', 'type'=>'boolean', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :entity            # 1-1 Reference(Patient|Practitioner|PractitionerRole|Device|Medication|Substance|Group)
        attr_accessor :period            # 0-1 Period
        attr_accessor :inactive          # 0-1 boolean
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
      attr_accessor :type              # 1-1 code
      attr_accessor :actual            # 1-1 boolean
      attr_accessor :code              # 0-1 CodeableConcept
      attr_accessor :name              # 0-1 string
      attr_accessor :quantity          # 0-1 unsignedInt
      attr_accessor :managingEntity    # 0-1 Reference(Organization|RelatedPerson|Practitioner|PractitionerRole)
      attr_accessor :characteristic    # 0-* [ Group::Characteristic ]
      attr_accessor :member            # 0-* [ Group::Member ]

      def resourceType
        'Group'
      end
    end
  end
  Group = FHIR::R4::Group
end