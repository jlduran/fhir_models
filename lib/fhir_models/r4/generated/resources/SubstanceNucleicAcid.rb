module FHIR
  module R4
    class SubstanceNucleicAcid < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'SubstanceNucleicAcid.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'SubstanceNucleicAcid.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'SubstanceNucleicAcid.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'SubstanceNucleicAcid.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'SubstanceNucleicAcid.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'SubstanceNucleicAcid.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'SubstanceNucleicAcid.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'SubstanceNucleicAcid.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'sequenceType' => {'path'=>'SubstanceNucleicAcid.sequenceType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'numberOfSubunits' => {'path'=>'SubstanceNucleicAcid.numberOfSubunits', 'type'=>'integer', 'min'=>0, 'max'=>1},
        'areaOfHybridisation' => {'path'=>'SubstanceNucleicAcid.areaOfHybridisation', 'type'=>'string', 'min'=>0, 'max'=>1},
        'oligoNucleotideType' => {'path'=>'SubstanceNucleicAcid.oligoNucleotideType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'subunit' => {'path'=>'SubstanceNucleicAcid.subunit', 'type'=>'SubstanceNucleicAcid::Subunit', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Subunit < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Subunit.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Subunit.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Subunit.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'subunit' => {'path'=>'Subunit.subunit', 'type'=>'integer', 'min'=>0, 'max'=>1},
          'sequence' => {'path'=>'Subunit.sequence', 'type'=>'string', 'min'=>0, 'max'=>1},
          'length' => {'path'=>'Subunit.length', 'type'=>'integer', 'min'=>0, 'max'=>1},
          'sequenceAttachment' => {'path'=>'Subunit.sequenceAttachment', 'type'=>'Attachment', 'min'=>0, 'max'=>1},
          'fivePrime' => {'path'=>'Subunit.fivePrime', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'threePrime' => {'path'=>'Subunit.threePrime', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'linkage' => {'path'=>'Subunit.linkage', 'type'=>'SubstanceNucleicAcid::Subunit::Linkage', 'min'=>0, 'max'=>Float::INFINITY},
          'sugar' => {'path'=>'Subunit.sugar', 'type'=>'SubstanceNucleicAcid::Subunit::Sugar', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Linkage < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Linkage.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Linkage.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Linkage.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'connectivity' => {'path'=>'Linkage.connectivity', 'type'=>'string', 'min'=>0, 'max'=>1},
            'identifier' => {'path'=>'Linkage.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
            'name' => {'path'=>'Linkage.name', 'type'=>'string', 'min'=>0, 'max'=>1},
            'residueSite' => {'path'=>'Linkage.residueSite', 'type'=>'string', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :connectivity      # 0-1 string
          attr_accessor :identifier        # 0-1 Identifier
          attr_accessor :name              # 0-1 string
          attr_accessor :residueSite       # 0-1 string
        end

        class Sugar < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Sugar.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Sugar.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Sugar.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'identifier' => {'path'=>'Sugar.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
            'name' => {'path'=>'Sugar.name', 'type'=>'string', 'min'=>0, 'max'=>1},
            'residueSite' => {'path'=>'Sugar.residueSite', 'type'=>'string', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :identifier        # 0-1 Identifier
          attr_accessor :name              # 0-1 string
          attr_accessor :residueSite       # 0-1 string
        end

        attr_accessor :id                 # 0-1 string
        attr_accessor :extension          # 0-* [ Extension ]
        attr_accessor :modifierExtension  # 0-* [ Extension ]
        attr_accessor :subunit            # 0-1 integer
        attr_accessor :sequence           # 0-1 string
        attr_accessor :length             # 0-1 integer
        attr_accessor :sequenceAttachment # 0-1 Attachment
        attr_accessor :fivePrime          # 0-1 CodeableConcept
        attr_accessor :threePrime         # 0-1 CodeableConcept
        attr_accessor :linkage            # 0-* [ SubstanceNucleicAcid::Subunit::Linkage ]
        attr_accessor :sugar              # 0-* [ SubstanceNucleicAcid::Subunit::Sugar ]
      end

      attr_accessor :id                  # 0-1 id
      attr_accessor :meta                # 0-1 Meta
      attr_accessor :implicitRules       # 0-1 uri
      attr_accessor :language            # 0-1 code
      attr_accessor :text                # 0-1 Narrative
      attr_accessor :contained           # 0-* [ Resource ]
      attr_accessor :extension           # 0-* [ Extension ]
      attr_accessor :modifierExtension   # 0-* [ Extension ]
      attr_accessor :sequenceType        # 0-1 CodeableConcept
      attr_accessor :numberOfSubunits    # 0-1 integer
      attr_accessor :areaOfHybridisation # 0-1 string
      attr_accessor :oligoNucleotideType # 0-1 CodeableConcept
      attr_accessor :subunit             # 0-* [ SubstanceNucleicAcid::Subunit ]

      def resourceType
        'SubstanceNucleicAcid'
      end
    end
  end
  SubstanceNucleicAcid = FHIR::R4::SubstanceNucleicAcid
end