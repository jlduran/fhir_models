module FHIR
  module R4
    class MolecularSequence < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['chromosome', 'chromosome-variant-coordinate', 'chromosome-window-coordinate', 'identifier', 'patient', 'referenceseqid', 'referenceseqid-variant-coordinate', 'referenceseqid-window-coordinate', 'type', 'variant-end', 'variant-start', 'window-end', 'window-start']
      METADATA = {
        'id' => {'path'=>'MolecularSequence.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'MolecularSequence.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'MolecularSequence.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'MolecularSequence.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'MolecularSequence.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'MolecularSequence.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'MolecularSequence.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'MolecularSequence.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'MolecularSequence.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/sequence-type'=>['aa', 'dna', 'rna']}, 'path'=>'MolecularSequence.type', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/sequence-type'}},
        'coordinateSystem' => {'path'=>'MolecularSequence.coordinateSystem', 'type'=>'integer', 'min'=>1, 'max'=>1},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'path'=>'MolecularSequence.patient', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'specimen' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Specimen'], 'path'=>'MolecularSequence.specimen', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'device' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'MolecularSequence.device', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'performer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'MolecularSequence.performer', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'quantity' => {'path'=>'MolecularSequence.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'referenceSeq' => {'path'=>'MolecularSequence.referenceSeq', 'type'=>'MolecularSequence::ReferenceSeq', 'min'=>0, 'max'=>1},
        'variant' => {'path'=>'MolecularSequence.variant', 'type'=>'MolecularSequence::Variant', 'min'=>0, 'max'=>Float::INFINITY},
        'observedSeq' => {'path'=>'MolecularSequence.observedSeq', 'type'=>'string', 'min'=>0, 'max'=>1},
        'quality' => {'path'=>'MolecularSequence.quality', 'type'=>'MolecularSequence::Quality', 'min'=>0, 'max'=>Float::INFINITY},
        'readCoverage' => {'path'=>'MolecularSequence.readCoverage', 'type'=>'integer', 'min'=>0, 'max'=>1},
        'repository' => {'path'=>'MolecularSequence.repository', 'type'=>'MolecularSequence::Repository', 'min'=>0, 'max'=>Float::INFINITY},
        'pointer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MolecularSequence'], 'path'=>'MolecularSequence.pointer', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'structureVariant' => {'path'=>'MolecularSequence.structureVariant', 'type'=>'MolecularSequence::StructureVariant', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class ReferenceSeq < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'ReferenceSeq.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'ReferenceSeq.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'ReferenceSeq.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'chromosome' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/chromosome-human'=>['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', 'X', 'Y']}, 'path'=>'ReferenceSeq.chromosome', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/chromosome-human'}},
          'genomeBuild' => {'path'=>'ReferenceSeq.genomeBuild', 'type'=>'string', 'min'=>0, 'max'=>1},
          'orientation' => {'valid_codes'=>{'http://hl7.org/fhir/orientation-type'=>['sense', 'antisense']}, 'path'=>'ReferenceSeq.orientation', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/orientation-type'}},
          'referenceSeqId' => {'path'=>'ReferenceSeq.referenceSeqId', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/sequence-referenceSeq'}},
          'referenceSeqPointer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MolecularSequence'], 'path'=>'ReferenceSeq.referenceSeqPointer', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'referenceSeqString' => {'path'=>'ReferenceSeq.referenceSeqString', 'type'=>'string', 'min'=>0, 'max'=>1},
          'strand' => {'valid_codes'=>{'http://hl7.org/fhir/strand-type'=>['watson', 'crick']}, 'path'=>'ReferenceSeq.strand', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/strand-type'}},
          'windowStart' => {'path'=>'ReferenceSeq.windowStart', 'type'=>'integer', 'min'=>0, 'max'=>1},
          'windowEnd' => {'path'=>'ReferenceSeq.windowEnd', 'type'=>'integer', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                  # 0-1 string
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :chromosome          # 0-1 CodeableConcept
        attr_accessor :genomeBuild         # 0-1 string
        attr_accessor :orientation         # 0-1 code
        attr_accessor :referenceSeqId      # 0-1 CodeableConcept
        attr_accessor :referenceSeqPointer # 0-1 Reference(MolecularSequence)
        attr_accessor :referenceSeqString  # 0-1 string
        attr_accessor :strand              # 0-1 code
        attr_accessor :windowStart         # 0-1 integer
        attr_accessor :windowEnd           # 0-1 integer
      end

      class Variant < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Variant.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Variant.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Variant.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'start' => {'path'=>'Variant.start', 'type'=>'integer', 'min'=>0, 'max'=>1},
          'end' => {'path'=>'Variant.end', 'type'=>'integer', 'min'=>0, 'max'=>1},
          'observedAllele' => {'path'=>'Variant.observedAllele', 'type'=>'string', 'min'=>0, 'max'=>1},
          'referenceAllele' => {'path'=>'Variant.referenceAllele', 'type'=>'string', 'min'=>0, 'max'=>1},
          'cigar' => {'path'=>'Variant.cigar', 'type'=>'string', 'min'=>0, 'max'=>1},
          'variantPointer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Observation'], 'path'=>'Variant.variantPointer', 'type'=>'Reference', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :start             # 0-1 integer
        attr_accessor :end               # 0-1 integer
        attr_accessor :observedAllele    # 0-1 string
        attr_accessor :referenceAllele   # 0-1 string
        attr_accessor :cigar             # 0-1 string
        attr_accessor :variantPointer    # 0-1 Reference(Observation)
      end

      class Quality < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Quality.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Quality.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Quality.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/quality-type'=>['indel', 'snp', 'unknown']}, 'path'=>'Quality.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/quality-type'}},
          'standardSequence' => {'path'=>'Quality.standardSequence', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/sequence-quality-standardSequence'}},
          'start' => {'path'=>'Quality.start', 'type'=>'integer', 'min'=>0, 'max'=>1},
          'end' => {'path'=>'Quality.end', 'type'=>'integer', 'min'=>0, 'max'=>1},
          'score' => {'path'=>'Quality.score', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'method' => {'local_name'=>'local_method', 'path'=>'Quality.method', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/sequence-quality-method'}},
          'truthTP' => {'path'=>'Quality.truthTP', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'queryTP' => {'path'=>'Quality.queryTP', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'truthFN' => {'path'=>'Quality.truthFN', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'queryFP' => {'path'=>'Quality.queryFP', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'gtFP' => {'path'=>'Quality.gtFP', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'precision' => {'path'=>'Quality.precision', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'recall' => {'path'=>'Quality.recall', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'fScore' => {'path'=>'Quality.fScore', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'roc' => {'path'=>'Quality.roc', 'type'=>'MolecularSequence::Quality::Roc', 'min'=>0, 'max'=>1}
        }

        class Roc < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Roc.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Roc.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Roc.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'score' => {'path'=>'Roc.score', 'type'=>'integer', 'min'=>0, 'max'=>Float::INFINITY},
            'numTP' => {'path'=>'Roc.numTP', 'type'=>'integer', 'min'=>0, 'max'=>Float::INFINITY},
            'numFP' => {'path'=>'Roc.numFP', 'type'=>'integer', 'min'=>0, 'max'=>Float::INFINITY},
            'numFN' => {'path'=>'Roc.numFN', 'type'=>'integer', 'min'=>0, 'max'=>Float::INFINITY},
            'precision' => {'path'=>'Roc.precision', 'type'=>'decimal', 'min'=>0, 'max'=>Float::INFINITY},
            'sensitivity' => {'path'=>'Roc.sensitivity', 'type'=>'decimal', 'min'=>0, 'max'=>Float::INFINITY},
            'fMeasure' => {'path'=>'Roc.fMeasure', 'type'=>'decimal', 'min'=>0, 'max'=>Float::INFINITY}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :score             # 0-* [ integer ]
          attr_accessor :numTP             # 0-* [ integer ]
          attr_accessor :numFP             # 0-* [ integer ]
          attr_accessor :numFN             # 0-* [ integer ]
          attr_accessor :precision         # 0-* [ decimal ]
          attr_accessor :sensitivity       # 0-* [ decimal ]
          attr_accessor :fMeasure          # 0-* [ decimal ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 code
        attr_accessor :standardSequence  # 0-1 CodeableConcept
        attr_accessor :start             # 0-1 integer
        attr_accessor :end               # 0-1 integer
        attr_accessor :score             # 0-1 Quantity
        attr_accessor :local_method      # 0-1 CodeableConcept
        attr_accessor :truthTP           # 0-1 decimal
        attr_accessor :queryTP           # 0-1 decimal
        attr_accessor :truthFN           # 0-1 decimal
        attr_accessor :queryFP           # 0-1 decimal
        attr_accessor :gtFP              # 0-1 decimal
        attr_accessor :precision         # 0-1 decimal
        attr_accessor :recall            # 0-1 decimal
        attr_accessor :fScore            # 0-1 decimal
        attr_accessor :roc               # 0-1 MolecularSequence::Quality::Roc
      end

      class Repository < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Repository.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Repository.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Repository.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/repository-type'=>['directlink', 'openapi', 'login', 'oauth', 'other']}, 'path'=>'Repository.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/repository-type'}},
          'url' => {'path'=>'Repository.url', 'type'=>'uri', 'min'=>0, 'max'=>1},
          'name' => {'path'=>'Repository.name', 'type'=>'string', 'min'=>0, 'max'=>1},
          'datasetId' => {'path'=>'Repository.datasetId', 'type'=>'string', 'min'=>0, 'max'=>1},
          'variantsetId' => {'path'=>'Repository.variantsetId', 'type'=>'string', 'min'=>0, 'max'=>1},
          'readsetId' => {'path'=>'Repository.readsetId', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 code
        attr_accessor :url               # 0-1 uri
        attr_accessor :name              # 0-1 string
        attr_accessor :datasetId         # 0-1 string
        attr_accessor :variantsetId      # 0-1 string
        attr_accessor :readsetId         # 0-1 string
      end

      class StructureVariant < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'StructureVariant.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'StructureVariant.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'StructureVariant.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'variantType' => {'path'=>'StructureVariant.variantType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://loinc.org/vs/LL379-9'}},
          'exact' => {'path'=>'StructureVariant.exact', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'length' => {'path'=>'StructureVariant.length', 'type'=>'integer', 'min'=>0, 'max'=>1},
          'outer' => {'path'=>'StructureVariant.outer', 'type'=>'MolecularSequence::StructureVariant::Outer', 'min'=>0, 'max'=>1},
          'inner' => {'path'=>'StructureVariant.inner', 'type'=>'MolecularSequence::StructureVariant::Inner', 'min'=>0, 'max'=>1}
        }

        class Outer < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Outer.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Outer.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Outer.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'start' => {'path'=>'Outer.start', 'type'=>'integer', 'min'=>0, 'max'=>1},
            'end' => {'path'=>'Outer.end', 'type'=>'integer', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :start             # 0-1 integer
          attr_accessor :end               # 0-1 integer
        end

        class Inner < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Inner.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Inner.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Inner.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'start' => {'path'=>'Inner.start', 'type'=>'integer', 'min'=>0, 'max'=>1},
            'end' => {'path'=>'Inner.end', 'type'=>'integer', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :start             # 0-1 integer
          attr_accessor :end               # 0-1 integer
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :variantType       # 0-1 CodeableConcept
        attr_accessor :exact             # 0-1 boolean
        attr_accessor :length            # 0-1 integer
        attr_accessor :outer             # 0-1 MolecularSequence::StructureVariant::Outer
        attr_accessor :inner             # 0-1 MolecularSequence::StructureVariant::Inner
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
      attr_accessor :coordinateSystem  # 1-1 integer
      attr_accessor :patient           # 0-1 Reference(Patient)
      attr_accessor :specimen          # 0-1 Reference(Specimen)
      attr_accessor :device            # 0-1 Reference(Device)
      attr_accessor :performer         # 0-1 Reference(Organization)
      attr_accessor :quantity          # 0-1 Quantity
      attr_accessor :referenceSeq      # 0-1 MolecularSequence::ReferenceSeq
      attr_accessor :variant           # 0-* [ MolecularSequence::Variant ]
      attr_accessor :observedSeq       # 0-1 string
      attr_accessor :quality           # 0-* [ MolecularSequence::Quality ]
      attr_accessor :readCoverage      # 0-1 integer
      attr_accessor :repository        # 0-* [ MolecularSequence::Repository ]
      attr_accessor :pointer           # 0-* [ Reference(MolecularSequence) ]
      attr_accessor :structureVariant  # 0-* [ MolecularSequence::StructureVariant ]

      def resourceType
        'MolecularSequence'
      end
    end
  end
  MolecularSequence = FHIR::R4::MolecularSequence
end