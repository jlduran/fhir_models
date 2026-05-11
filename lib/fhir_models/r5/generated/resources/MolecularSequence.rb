module FHIR
  module R5
    class MolecularSequence < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['focus', 'identifier', 'patient', 'subject', 'type']
      METADATA = {
        'id' => {'path'=>'MolecularSequence.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'MolecularSequence.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'MolecularSequence.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'MolecularSequence.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'MolecularSequence.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'MolecularSequence.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'MolecularSequence.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'MolecularSequence.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'MolecularSequence.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/sequence-type'=>['aa', 'dna', 'rna']}, 'path'=>'MolecularSequence.type', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/sequence-type'}},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Substance', 'http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct', 'http://hl7.org/fhir/StructureDefinition/NutritionProduct'], 'path'=>'MolecularSequence.subject', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'focus' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'MolecularSequence.focus', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'specimen' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Specimen'], 'path'=>'MolecularSequence.specimen', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'device' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'MolecularSequence.device', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'performer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'MolecularSequence.performer', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'literal' => {'path'=>'MolecularSequence.literal', 'type'=>'string', 'min'=>0, 'max'=>1},
        'formatted' => {'path'=>'MolecularSequence.formatted', 'type'=>'Attachment', 'min'=>0, 'max'=>Float::INFINITY},
        'relative' => {'path'=>'MolecularSequence.relative', 'type'=>'MolecularSequence::Relative', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Relative < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Relative.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Relative.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Relative.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'coordinateSystem' => {'path'=>'Relative.coordinateSystem', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://loinc.org/LL5323-2/'}},
          'ordinalPosition' => {'path'=>'Relative.ordinalPosition', 'type'=>'integer', 'min'=>0, 'max'=>1},
          'sequenceRange' => {'path'=>'Relative.sequenceRange', 'type'=>'Range', 'min'=>0, 'max'=>1},
          'startingSequence' => {'path'=>'Relative.startingSequence', 'type'=>'MolecularSequence::Relative::StartingSequence', 'min'=>0, 'max'=>1},
          'edit' => {'path'=>'Relative.edit', 'type'=>'MolecularSequence::Relative::Edit', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class StartingSequence < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'sequence' => ['CodeableConcept', 'string', 'Reference']
          }
          METADATA = {
            'id' => {'path'=>'StartingSequence.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'StartingSequence.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'StartingSequence.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'genomeAssembly' => {'path'=>'StartingSequence.genomeAssembly', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://loinc.org/LL1040-6/'}},
            'chromosome' => {'path'=>'StartingSequence.chromosome', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://loinc.org/LL2938-0/'}},
            'sequenceCodeableConcept' => {'path'=>'StartingSequence.sequence[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
            'sequenceString' => {'path'=>'StartingSequence.sequence[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
            'sequenceReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MolecularSequence'], 'path'=>'StartingSequence.sequence[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
            'windowStart' => {'path'=>'StartingSequence.windowStart', 'type'=>'integer', 'min'=>0, 'max'=>1},
            'windowEnd' => {'path'=>'StartingSequence.windowEnd', 'type'=>'integer', 'min'=>0, 'max'=>1},
            'orientation' => {'valid_codes'=>{'http://hl7.org/fhir/orientation-type'=>['sense', 'antisense']}, 'path'=>'StartingSequence.orientation', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/orientation-type'}},
            'strand' => {'valid_codes'=>{'http://hl7.org/fhir/strand-type'=>['watson', 'crick']}, 'path'=>'StartingSequence.strand', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/strand-type'}}
          }

          attr_accessor :id                      # 0-1 string
          attr_accessor :extension               # 0-* [ Extension ]
          attr_accessor :modifierExtension       # 0-* [ Extension ]
          attr_accessor :genomeAssembly          # 0-1 CodeableConcept
          attr_accessor :chromosome              # 0-1 CodeableConcept
          attr_accessor :sequenceCodeableConcept # 0-1 CodeableConcept
          attr_accessor :sequenceString          # 0-1 string
          attr_accessor :sequenceReference       # 0-1 Reference(MolecularSequence)
          attr_accessor :windowStart             # 0-1 integer
          attr_accessor :windowEnd               # 0-1 integer
          attr_accessor :orientation             # 0-1 code
          attr_accessor :strand                  # 0-1 code
        end

        class Edit < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Edit.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Edit.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Edit.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'start' => {'path'=>'Edit.start', 'type'=>'integer', 'min'=>0, 'max'=>1},
            'end' => {'path'=>'Edit.end', 'type'=>'integer', 'min'=>0, 'max'=>1},
            'replacementSequence' => {'path'=>'Edit.replacementSequence', 'type'=>'string', 'min'=>0, 'max'=>1},
            'replacedSequence' => {'path'=>'Edit.replacedSequence', 'type'=>'string', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                  # 0-1 string
          attr_accessor :extension           # 0-* [ Extension ]
          attr_accessor :modifierExtension   # 0-* [ Extension ]
          attr_accessor :start               # 0-1 integer
          attr_accessor :end                 # 0-1 integer
          attr_accessor :replacementSequence # 0-1 string
          attr_accessor :replacedSequence    # 0-1 string
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :coordinateSystem  # 1-1 CodeableConcept
        attr_accessor :ordinalPosition   # 0-1 integer
        attr_accessor :sequenceRange     # 0-1 Range
        attr_accessor :startingSequence  # 0-1 MolecularSequence::Relative::StartingSequence
        attr_accessor :edit              # 0-* [ MolecularSequence::Relative::Edit ]
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
      attr_accessor :type              # 0-1 code
      attr_accessor :subject           # 0-1 Reference(Patient|Group|Substance|BiologicallyDerivedProduct|NutritionProduct)
      attr_accessor :focus             # 0-* [ Reference(Resource) ]
      attr_accessor :specimen          # 0-1 Reference(Specimen)
      attr_accessor :device            # 0-1 Reference(Device)
      attr_accessor :performer         # 0-1 Reference(Organization)
      attr_accessor :literal           # 0-1 string
      attr_accessor :formatted         # 0-* [ Attachment ]
      attr_accessor :relative          # 0-* [ MolecularSequence::Relative ]

      def resourceType
        'MolecularSequence'
      end
    end
  end
end