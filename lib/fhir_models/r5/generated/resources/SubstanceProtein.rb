module FHIR
  module R5
    class SubstanceProtein < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'SubstanceProtein.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'SubstanceProtein.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'SubstanceProtein.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'SubstanceProtein.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'SubstanceProtein.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'SubstanceProtein.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'SubstanceProtein.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'SubstanceProtein.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'sequenceType' => {'path'=>'SubstanceProtein.sequenceType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'numberOfSubunits' => {'path'=>'SubstanceProtein.numberOfSubunits', 'type'=>'integer', 'min'=>0, 'max'=>1},
        'disulfideLinkage' => {'path'=>'SubstanceProtein.disulfideLinkage', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'subunit' => {'path'=>'SubstanceProtein.subunit', 'type'=>'SubstanceProtein::Subunit', 'min'=>0, 'max'=>Float::INFINITY}
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
          'nTerminalModificationId' => {'path'=>'Subunit.nTerminalModificationId', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
          'nTerminalModification' => {'path'=>'Subunit.nTerminalModification', 'type'=>'string', 'min'=>0, 'max'=>1},
          'cTerminalModificationId' => {'path'=>'Subunit.cTerminalModificationId', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
          'cTerminalModification' => {'path'=>'Subunit.cTerminalModification', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                      # 0-1 string
        attr_accessor :extension               # 0-* [ Extension ]
        attr_accessor :modifierExtension       # 0-* [ Extension ]
        attr_accessor :subunit                 # 0-1 integer
        attr_accessor :sequence                # 0-1 string
        attr_accessor :length                  # 0-1 integer
        attr_accessor :sequenceAttachment      # 0-1 Attachment
        attr_accessor :nTerminalModificationId # 0-1 Identifier
        attr_accessor :nTerminalModification   # 0-1 string
        attr_accessor :cTerminalModificationId # 0-1 Identifier
        attr_accessor :cTerminalModification   # 0-1 string
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :sequenceType      # 0-1 CodeableConcept
      attr_accessor :numberOfSubunits  # 0-1 integer
      attr_accessor :disulfideLinkage  # 0-* [ string ]
      attr_accessor :subunit           # 0-* [ SubstanceProtein::Subunit ]

      def resourceType
        'SubstanceProtein'
      end
    end
  end
end