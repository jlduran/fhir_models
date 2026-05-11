module FHIR
  module R5
    class GenomicStudy < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['focus', 'identifier', 'patient', 'status', 'subject']
      METADATA = {
        'id' => {'path'=>'GenomicStudy.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'GenomicStudy.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'GenomicStudy.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'GenomicStudy.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'GenomicStudy.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'GenomicStudy.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'GenomicStudy.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'GenomicStudy.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'GenomicStudy.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/genomicstudy-status'=>['registered', 'available', 'cancelled', 'entered-in-error', 'unknown']}, 'path'=>'GenomicStudy.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/genomicstudy-status'}},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/genomicstudy-type'=>['alt-splc', 'chromatin', 'cnv', 'epi-alt-hist', 'epi-alt-dna', 'fam-var-segr', 'func-var', 'gene-expression', 'post-trans-mod', 'snp', 'str', 'struc-var']}, 'path'=>'GenomicStudy.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/genomicstudy-type'}},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Substance', 'http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct', 'http://hl7.org/fhir/StructureDefinition/NutritionProduct'], 'path'=>'GenomicStudy.subject', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'GenomicStudy.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'startDate' => {'path'=>'GenomicStudy.startDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ServiceRequest', 'http://hl7.org/fhir/StructureDefinition/Task'], 'path'=>'GenomicStudy.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'referrer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'GenomicStudy.referrer', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'interpreter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'GenomicStudy.interpreter', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'reason' => {'path'=>'GenomicStudy.reason', 'type'=>'CodeableReference', 'min'=>0, 'max'=>Float::INFINITY},
        'instantiatesCanonical' => {'path'=>'GenomicStudy.instantiatesCanonical', 'type'=>'canonical', 'min'=>0, 'max'=>1},
        'instantiatesUri' => {'path'=>'GenomicStudy.instantiatesUri', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'note' => {'path'=>'GenomicStudy.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'GenomicStudy.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'analysis' => {'path'=>'GenomicStudy.analysis', 'type'=>'GenomicStudy::Analysis', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Analysis < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Analysis.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Analysis.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Analysis.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'path'=>'Analysis.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
          'methodType' => {'valid_codes'=>{'http://hl7.org/fhir/genomicstudy-methodtype'=>['biochemical-genetics', 'cytogenetics', 'molecular-genetics', 'analyte', 'chromosome-breakage-studies', 'deletion-duplication-analysis', 'detection-of-homozygosity', 'enzyme-assay', 'fish-interphase', 'fish-metaphase', 'flow-cytometry', 'fish', 'immunohistochemistry', 'karyotyping', 'linkage-analysis', 'methylation-analysis', 'msi', 'm-fish', 'mutation-scanning-of-select-exons', 'mutation-scanning-of-the-entire-coding-region', 'protein-analysis', 'protein-expression', 'rna-analysis', 'sequence-analysis-of-select-exons', 'sequence-analysis-of-the-entire-coding-region', 'sister-chromatid-exchange', 'targeted-variant-analysis', 'udp', 'aspe', 'alternative-splicing-detection', 'bi-directional-sanger-sequence-analysis', 'c-banding', 'cia', 'chromatin-immunoprecipitation-on-chip', 'comparative-genomic-hybridization', 'damid', 'digital-virtual-karyotyping', 'digital-microfluidic-microspheres', 'enzymatic-levels', 'enzyme-activity', 'elisa', 'fluorometry', 'fusion-genes-microarrays', 'g-banding', 'gc-ms', 'gene-expression-profiling', 'gene-id', 'gold-nanoparticle-probe-technology', 'hplc', 'lc-ms', 'lc-ms-ms', 'metabolite-levels', 'methylation-specific-pcr', 'microarray', 'mlpa', 'ngs-mps', 'ola', 'oligonucleotide-hybridization-based-dna-sequencing', 'other', 'pcr', 'pcr-with-allele-specific-hybridization', 'pcr-rflp-with-southern-hybridization', 'protein-truncation-test', 'pyrosequencing', 'q-banding', 'qpcr', 'r-banding', 'rflp', 'rt-lamp', 'rt-pcr', 'rt-pcr-with-gel-analysis', 'rt-qpcr', 'snp-detection', 'silver-staining', 'sky', 't-banding', 'ms-ms', 'tetra-nucleotide-repeat-by-pcr-or-southern-blot', 'tiling-arrays', 'trinucleotide-repeat-by-pcr-or-southern-blot', 'uni-directional-sanger-sequencing']}, 'path'=>'Analysis.methodType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/genomicstudy-methodtype'}},
          'changeType' => {'valid_codes'=>{'http://hl7.org/fhir/genomicstudy-changetype'=>['DNA', 'RNA', 'AA', 'CHR', 'CNV']}, 'path'=>'Analysis.changeType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/genomicstudy-changetype'}},
          'genomeBuild' => {'path'=>'Analysis.genomeBuild', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://loinc.org/vs/LL1040-6'}},
          'instantiatesCanonical' => {'path'=>'Analysis.instantiatesCanonical', 'type'=>'canonical', 'min'=>0, 'max'=>1},
          'instantiatesUri' => {'path'=>'Analysis.instantiatesUri', 'type'=>'uri', 'min'=>0, 'max'=>1},
          'title' => {'path'=>'Analysis.title', 'type'=>'string', 'min'=>0, 'max'=>1},
          'focus' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Analysis.focus', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
          'specimen' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Specimen'], 'path'=>'Analysis.specimen', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
          'date' => {'path'=>'Analysis.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'note' => {'path'=>'Analysis.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
          'protocolPerformed' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Procedure', 'http://hl7.org/fhir/StructureDefinition/Task'], 'path'=>'Analysis.protocolPerformed', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'regionsStudied' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference', 'http://hl7.org/fhir/StructureDefinition/Observation'], 'path'=>'Analysis.regionsStudied', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
          'regionsCalled' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference', 'http://hl7.org/fhir/StructureDefinition/Observation'], 'path'=>'Analysis.regionsCalled', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
          'input' => {'path'=>'Analysis.input', 'type'=>'GenomicStudy::Analysis::Input', 'min'=>0, 'max'=>Float::INFINITY},
          'output' => {'path'=>'Analysis.output', 'type'=>'GenomicStudy::Analysis::Output', 'min'=>0, 'max'=>Float::INFINITY},
          'performer' => {'path'=>'Analysis.performer', 'type'=>'GenomicStudy::Analysis::Performer', 'min'=>0, 'max'=>Float::INFINITY},
          'device' => {'path'=>'Analysis.device', 'type'=>'GenomicStudy::Analysis::Device', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Input < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'generatedBy' => ['Identifier', 'Reference']
          }
          METADATA = {
            'id' => {'path'=>'Input.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Input.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Input.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'file' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'path'=>'Input.file', 'type'=>'Reference', 'min'=>0, 'max'=>1},
            'type' => {'valid_codes'=>{'http://hl7.org/fhir/genomicstudy-dataformat'=>['bam', 'bed', 'bedpe', 'bedgraph', 'bigbed', 'bigWig', 'birdsuite-files', 'broadpeak', 'cbs', 'chemical-reactivity-probing-profiles', 'chrom-sizes', 'cn', 'custom-file-formats', 'cytoband', 'fasta', 'gct', 'cram', 'genepred', 'gff-gtf', 'gistic', 'goby', 'gwas', 'igv', 'loh', 'maf-multiple-alignment-format', 'maf-mutation-annotation-format', 'merged-bam-file', 'mut', 'narrowpeak', 'psl', 'res', 'rna-secondary-structure-formats', 'sam', 'sample-info-attributes-file', 'seg', 'tdf', 'track-line', 'type-line', 'vcf', 'wig']}, 'path'=>'Input.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/genomicstudy-dataformat'}},
            'generatedByIdentifier' => {'path'=>'Input.generatedBy[x]', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
            'generatedByReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/GenomicStudy'], 'path'=>'Input.generatedBy[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                    # 0-1 string
          attr_accessor :extension             # 0-* [ Extension ]
          attr_accessor :modifierExtension     # 0-* [ Extension ]
          attr_accessor :file                  # 0-1 Reference(DocumentReference)
          attr_accessor :type                  # 0-1 CodeableConcept
          attr_accessor :generatedByIdentifier # 0-1 Identifier
          attr_accessor :generatedByReference  # 0-1 Reference(GenomicStudy)
        end

        class Output < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Output.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Output.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Output.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'file' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'path'=>'Output.file', 'type'=>'Reference', 'min'=>0, 'max'=>1},
            'type' => {'valid_codes'=>{'http://hl7.org/fhir/genomicstudy-dataformat'=>['bam', 'bed', 'bedpe', 'bedgraph', 'bigbed', 'bigWig', 'birdsuite-files', 'broadpeak', 'cbs', 'chemical-reactivity-probing-profiles', 'chrom-sizes', 'cn', 'custom-file-formats', 'cytoband', 'fasta', 'gct', 'cram', 'genepred', 'gff-gtf', 'gistic', 'goby', 'gwas', 'igv', 'loh', 'maf-multiple-alignment-format', 'maf-mutation-annotation-format', 'merged-bam-file', 'mut', 'narrowpeak', 'psl', 'res', 'rna-secondary-structure-formats', 'sam', 'sample-info-attributes-file', 'seg', 'tdf', 'track-line', 'type-line', 'vcf', 'wig']}, 'path'=>'Output.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/genomicstudy-dataformat'}}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :file              # 0-1 Reference(DocumentReference)
          attr_accessor :type              # 0-1 CodeableConcept
        end

        class Performer < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Performer.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Performer.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Performer.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'actor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'Performer.actor', 'type'=>'Reference', 'min'=>0, 'max'=>1},
            'role' => {'path'=>'Performer.role', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :actor             # 0-1 Reference(Practitioner|PractitionerRole|Organization|Device)
          attr_accessor :role              # 0-1 CodeableConcept
        end

        class Device < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Device.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Device.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Device.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'device' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'Device.device', 'type'=>'Reference', 'min'=>0, 'max'=>1},
            'function' => {'path'=>'Device.function', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :device            # 0-1 Reference(Device)
          attr_accessor :function          # 0-1 CodeableConcept
        end

        attr_accessor :id                    # 0-1 string
        attr_accessor :extension             # 0-* [ Extension ]
        attr_accessor :modifierExtension     # 0-* [ Extension ]
        attr_accessor :identifier            # 0-* [ Identifier ]
        attr_accessor :methodType            # 0-* [ CodeableConcept ]
        attr_accessor :changeType            # 0-* [ CodeableConcept ]
        attr_accessor :genomeBuild           # 0-1 CodeableConcept
        attr_accessor :instantiatesCanonical # 0-1 canonical
        attr_accessor :instantiatesUri       # 0-1 uri
        attr_accessor :title                 # 0-1 string
        attr_accessor :focus                 # 0-* [ Reference(Resource) ]
        attr_accessor :specimen              # 0-* [ Reference(Specimen) ]
        attr_accessor :date                  # 0-1 dateTime
        attr_accessor :note                  # 0-* [ Annotation ]
        attr_accessor :protocolPerformed     # 0-1 Reference(Procedure|Task)
        attr_accessor :regionsStudied        # 0-* [ Reference(DocumentReference|Observation) ]
        attr_accessor :regionsCalled         # 0-* [ Reference(DocumentReference|Observation) ]
        attr_accessor :input                 # 0-* [ GenomicStudy::Analysis::Input ]
        attr_accessor :output                # 0-* [ GenomicStudy::Analysis::Output ]
        attr_accessor :performer             # 0-* [ GenomicStudy::Analysis::Performer ]
        attr_accessor :device                # 0-* [ GenomicStudy::Analysis::Device ]
      end

      attr_accessor :id                    # 0-1 id
      attr_accessor :meta                  # 0-1 Meta
      attr_accessor :implicitRules         # 0-1 uri
      attr_accessor :language              # 0-1 code
      attr_accessor :text                  # 0-1 Narrative
      attr_accessor :contained             # 0-* [ Resource ]
      attr_accessor :extension             # 0-* [ Extension ]
      attr_accessor :modifierExtension     # 0-* [ Extension ]
      attr_accessor :identifier            # 0-* [ Identifier ]
      attr_accessor :status                # 1-1 code
      attr_accessor :type                  # 0-* [ CodeableConcept ]
      attr_accessor :subject               # 1-1 Reference(Patient|Group|Substance|BiologicallyDerivedProduct|NutritionProduct)
      attr_accessor :encounter             # 0-1 Reference(Encounter)
      attr_accessor :startDate             # 0-1 dateTime
      attr_accessor :basedOn               # 0-* [ Reference(ServiceRequest|Task) ]
      attr_accessor :referrer              # 0-1 Reference(Practitioner|PractitionerRole)
      attr_accessor :interpreter           # 0-* [ Reference(Practitioner|PractitionerRole) ]
      attr_accessor :reason                # 0-* [ CodeableReference ]
      attr_accessor :instantiatesCanonical # 0-1 canonical
      attr_accessor :instantiatesUri       # 0-1 uri
      attr_accessor :note                  # 0-* [ Annotation ]
      attr_accessor :description           # 0-1 markdown
      attr_accessor :analysis              # 0-* [ GenomicStudy::Analysis ]

      def resourceType
        'GenomicStudy'
      end
    end
  end
end