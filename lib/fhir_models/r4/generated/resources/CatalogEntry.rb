module FHIR
  module R4
    class CatalogEntry < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'CatalogEntry.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'CatalogEntry.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'CatalogEntry.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'CatalogEntry.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'CatalogEntry.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'CatalogEntry.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'CatalogEntry.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'CatalogEntry.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'CatalogEntry.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'path'=>'CatalogEntry.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'orderable' => {'path'=>'CatalogEntry.orderable', 'type'=>'boolean', 'min'=>1, 'max'=>1},
        'referencedItem' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Medication', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/HealthcareService', 'http://hl7.org/fhir/StructureDefinition/ActivityDefinition', 'http://hl7.org/fhir/StructureDefinition/PlanDefinition', 'http://hl7.org/fhir/StructureDefinition/SpecimenDefinition', 'http://hl7.org/fhir/StructureDefinition/ObservationDefinition', 'http://hl7.org/fhir/StructureDefinition/Binary'], 'path'=>'CatalogEntry.referencedItem', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'additionalIdentifier' => {'path'=>'CatalogEntry.additionalIdentifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'classification' => {'path'=>'CatalogEntry.classification', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'CatalogEntry.status', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'validityPeriod' => {'path'=>'CatalogEntry.validityPeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'validTo' => {'path'=>'CatalogEntry.validTo', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'lastUpdated' => {'path'=>'CatalogEntry.lastUpdated', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'additionalCharacteristic' => {'path'=>'CatalogEntry.additionalCharacteristic', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
        'additionalClassification' => {'path'=>'CatalogEntry.additionalClassification', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
        'relatedEntry' => {'path'=>'CatalogEntry.relatedEntry', 'type'=>'CatalogEntry::RelatedEntry', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class RelatedEntry < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'RelatedEntry.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'RelatedEntry.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'RelatedEntry.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'relationtype' => {'valid_codes'=>{'http://hl7.org/fhir/relation-type'=>['triggers', 'is-replaced-by']}, 'path'=>'RelatedEntry.relationtype', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/relation-type'}},
          'item' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CatalogEntry'], 'path'=>'RelatedEntry.item', 'type'=>'Reference', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :relationtype      # 1-1 code
        attr_accessor :item              # 1-1 Reference(CatalogEntry)
      end

      attr_accessor :id                       # 0-1 id
      attr_accessor :meta                     # 0-1 Meta
      attr_accessor :implicitRules            # 0-1 uri
      attr_accessor :language                 # 0-1 code
      attr_accessor :text                     # 0-1 Narrative
      attr_accessor :contained                # 0-* [ Resource ]
      attr_accessor :extension                # 0-* [ Extension ]
      attr_accessor :modifierExtension        # 0-* [ Extension ]
      attr_accessor :identifier               # 0-* [ Identifier ]
      attr_accessor :type                     # 0-1 CodeableConcept
      attr_accessor :orderable                # 1-1 boolean
      attr_accessor :referencedItem           # 1-1 Reference(Medication|Device|Organization|Practitioner|PractitionerRole|HealthcareService|ActivityDefinition|PlanDefinition|SpecimenDefinition|ObservationDefinition|Binary)
      attr_accessor :additionalIdentifier     # 0-* [ Identifier ]
      attr_accessor :classification           # 0-* [ CodeableConcept ]
      attr_accessor :status                   # 0-1 code
      attr_accessor :validityPeriod           # 0-1 Period
      attr_accessor :validTo                  # 0-1 dateTime
      attr_accessor :lastUpdated              # 0-1 dateTime
      attr_accessor :additionalCharacteristic # 0-* [ CodeableConcept ]
      attr_accessor :additionalClassification # 0-* [ CodeableConcept ]
      attr_accessor :relatedEntry             # 0-* [ CatalogEntry::RelatedEntry ]

      def resourceType
        'CatalogEntry'
      end
    end
  end
  CatalogEntry = FHIR::R4::CatalogEntry
end