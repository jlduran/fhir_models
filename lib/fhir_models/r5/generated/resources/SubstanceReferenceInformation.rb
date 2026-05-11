module FHIR
  module R5
    class SubstanceReferenceInformation < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'SubstanceReferenceInformation.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'SubstanceReferenceInformation.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'SubstanceReferenceInformation.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'SubstanceReferenceInformation.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'SubstanceReferenceInformation.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'SubstanceReferenceInformation.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'SubstanceReferenceInformation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'SubstanceReferenceInformation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'comment' => {'path'=>'SubstanceReferenceInformation.comment', 'type'=>'string', 'min'=>0, 'max'=>1},
        'gene' => {'path'=>'SubstanceReferenceInformation.gene', 'type'=>'SubstanceReferenceInformation::Gene', 'min'=>0, 'max'=>Float::INFINITY},
        'geneElement' => {'path'=>'SubstanceReferenceInformation.geneElement', 'type'=>'SubstanceReferenceInformation::GeneElement', 'min'=>0, 'max'=>Float::INFINITY},
        'target' => {'path'=>'SubstanceReferenceInformation.target', 'type'=>'SubstanceReferenceInformation::Target', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Gene < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Gene.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Gene.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Gene.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'geneSequenceOrigin' => {'path'=>'Gene.geneSequenceOrigin', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'gene' => {'path'=>'Gene.gene', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'path'=>'Gene.source', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                 # 0-1 string
        attr_accessor :extension          # 0-* [ Extension ]
        attr_accessor :modifierExtension  # 0-* [ Extension ]
        attr_accessor :geneSequenceOrigin # 0-1 CodeableConcept
        attr_accessor :gene               # 0-1 CodeableConcept
        attr_accessor :source             # 0-* [ Reference(DocumentReference) ]
      end

      class GeneElement < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'GeneElement.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'GeneElement.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'GeneElement.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'path'=>'GeneElement.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'element' => {'path'=>'GeneElement.element', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
          'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'path'=>'GeneElement.source', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :element           # 0-1 Identifier
        attr_accessor :source            # 0-* [ Reference(DocumentReference) ]
      end

      class Target < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'amount' => ['Quantity', 'Range', 'string']
        }
        METADATA = {
          'id' => {'path'=>'Target.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Target.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Target.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'target' => {'path'=>'Target.target', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
          'type' => {'path'=>'Target.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'interaction' => {'path'=>'Target.interaction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'organism' => {'path'=>'Target.organism', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'organismType' => {'path'=>'Target.organismType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'amountQuantity' => {'path'=>'Target.amount[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'amountRange' => {'path'=>'Target.amount[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
          'amountString' => {'path'=>'Target.amount[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
          'amountType' => {'path'=>'Target.amountType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'path'=>'Target.source', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :target            # 0-1 Identifier
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :interaction       # 0-1 CodeableConcept
        attr_accessor :organism          # 0-1 CodeableConcept
        attr_accessor :organismType      # 0-1 CodeableConcept
        attr_accessor :amountQuantity    # 0-1 Quantity
        attr_accessor :amountRange       # 0-1 Range
        attr_accessor :amountString      # 0-1 string
        attr_accessor :amountType        # 0-1 CodeableConcept
        attr_accessor :source            # 0-* [ Reference(DocumentReference) ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :comment           # 0-1 string
      attr_accessor :gene              # 0-* [ SubstanceReferenceInformation::Gene ]
      attr_accessor :geneElement       # 0-* [ SubstanceReferenceInformation::GeneElement ]
      attr_accessor :target            # 0-* [ SubstanceReferenceInformation::Target ]

      def resourceType
        'SubstanceReferenceInformation'
      end
    end
  end
end