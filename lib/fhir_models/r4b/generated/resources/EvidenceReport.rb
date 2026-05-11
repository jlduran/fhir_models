module FHIR
  module R4B
    class EvidenceReport < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'citeAs' => ['Reference', 'markdown']
      }
      SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'context-type-quantity', 'context-type-value', 'identifier', 'publisher', 'status', 'url']
      METADATA = {
        'id' => {'path'=>'EvidenceReport.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'EvidenceReport.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'EvidenceReport.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'EvidenceReport.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'EvidenceReport.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'EvidenceReport.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'EvidenceReport.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'EvidenceReport.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'path'=>'EvidenceReport.url', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'EvidenceReport.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'useContext' => {'path'=>'EvidenceReport.useContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'EvidenceReport.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'relatedIdentifier' => {'path'=>'EvidenceReport.relatedIdentifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'citeAsReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Citation'], 'path'=>'EvidenceReport.citeAs[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'citeAsMarkdown' => {'path'=>'EvidenceReport.citeAs[x]', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/evidence-report-type'=>['classification', 'search-results', 'resources-compiled', 'text-structured']}, 'path'=>'EvidenceReport.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/evidence-report-type'}},
        'note' => {'path'=>'EvidenceReport.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
        'relatedArtifact' => {'path'=>'EvidenceReport.relatedArtifact', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>Float::INFINITY},
        'subject' => {'path'=>'EvidenceReport.subject', 'type'=>'EvidenceReport::Subject', 'min'=>1, 'max'=>1},
        'publisher' => {'path'=>'EvidenceReport.publisher', 'type'=>'string', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'EvidenceReport.contact', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'author' => {'path'=>'EvidenceReport.author', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'editor' => {'path'=>'EvidenceReport.editor', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'reviewer' => {'path'=>'EvidenceReport.reviewer', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'endorser' => {'path'=>'EvidenceReport.endorser', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'relatesTo' => {'path'=>'EvidenceReport.relatesTo', 'type'=>'EvidenceReport::RelatesTo', 'min'=>0, 'max'=>Float::INFINITY},
        'section' => {'path'=>'EvidenceReport.section', 'type'=>'EvidenceReport::Section', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Subject < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Subject.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Subject.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Subject.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'characteristic' => {'path'=>'Subject.characteristic', 'type'=>'EvidenceReport::Subject::Characteristic', 'min'=>0, 'max'=>Float::INFINITY},
          'note' => {'path'=>'Subject.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Characteristic < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'value' => ['Reference', 'CodeableConcept', 'boolean', 'Quantity', 'Range']
          }
          METADATA = {
            'id' => {'path'=>'Characteristic.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Characteristic.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Characteristic.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/focus-characteristic-code'=>['citation', 'clinical-outcomes-observed', 'population', 'exposure', 'comparator', 'outcome', 'medication-exposures', 'study-type']}, 'path'=>'Characteristic.code', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/focus-characteristic-code'}},
            'valueReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Characteristic.value[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1},
            'valueCodeableConcept' => {'path'=>'Characteristic.value[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
            'valueBoolean' => {'path'=>'Characteristic.value[x]', 'type'=>'boolean', 'min'=>1, 'max'=>1},
            'valueQuantity' => {'path'=>'Characteristic.value[x]', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
            'valueRange' => {'path'=>'Characteristic.value[x]', 'type'=>'Range', 'min'=>1, 'max'=>1},
            'exclude' => {'path'=>'Characteristic.exclude', 'type'=>'boolean', 'min'=>0, 'max'=>1},
            'period' => {'path'=>'Characteristic.period', 'type'=>'Period', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                   # 0-1 string
          attr_accessor :extension            # 0-* [ Extension ]
          attr_accessor :modifierExtension    # 0-* [ Extension ]
          attr_accessor :code                 # 1-1 CodeableConcept
          attr_accessor :valueReference       # 1-1 Reference(Resource)
          attr_accessor :valueCodeableConcept # 1-1 CodeableConcept
          attr_accessor :valueBoolean         # 1-1 boolean
          attr_accessor :valueQuantity        # 1-1 Quantity
          attr_accessor :valueRange           # 1-1 Range
          attr_accessor :exclude              # 0-1 boolean
          attr_accessor :period               # 0-1 Period
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :characteristic    # 0-* [ EvidenceReport::Subject::Characteristic ]
        attr_accessor :note              # 0-* [ Annotation ]
      end

      class RelatesTo < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'target' => ['Identifier', 'Reference']
        }
        METADATA = {
          'id' => {'path'=>'RelatesTo.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'RelatesTo.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'RelatesTo.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'valid_codes'=>{'http://hl7.org/fhir/report-relation-type'=>['replaces', 'amends', 'appends', 'transforms', 'replacedWith', 'amendedWith', 'appendedWith', 'transformedWith']}, 'path'=>'RelatesTo.code', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/report-relation-type'}},
          'targetIdentifier' => {'path'=>'RelatesTo.target[x]', 'type'=>'Identifier', 'min'=>1, 'max'=>1},
          'targetReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/EvidenceReport'], 'path'=>'RelatesTo.target[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 1-1 code
        attr_accessor :targetIdentifier  # 1-1 Identifier
        attr_accessor :targetReference   # 1-1 Reference(EvidenceReport)
      end

      class Section < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Section.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Section.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Section.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'title' => {'path'=>'Section.title', 'type'=>'string', 'min'=>0, 'max'=>1},
          'focus' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/evidence-report-section'=>['Evidence', 'Intervention-group-alone-Evidence', 'Intervention-vs-Control-Evidence', 'Control-group-alone-Evidence', 'EvidenceVariable', 'EvidenceVariable-observed', 'EvidenceVariable-intended', 'EvidenceVariable-population', 'EvidenceVariable-exposure', 'EvidenceVariable-outcome', 'Efficacy-outcomes', 'Harms-outcomes', 'SampleSize', 'References', 'Assertion', 'Reasons', 'Certainty-of-Evidence', 'Evidence-Classifier', 'Warnings', 'Text-Summary', 'SummaryOfBodyOfEvidenceFindings', 'SummaryOfIndividualStudyFindings', 'Header', 'Tables', 'Table', 'Row-Headers', 'Column-Header', 'Column-Headers']}, 'path'=>'Section.focus', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/evidence-report-section'}},
          'focusReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Section.focusReference', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'author' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Person', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Section.author', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
          'text' => {'path'=>'Section.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
          'mode' => {'valid_codes'=>{'http://hl7.org/fhir/list-mode'=>['working', 'snapshot', 'changes']}, 'path'=>'Section.mode', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/list-mode'}},
          'orderedBy' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/list-order'=>['user', 'system', 'event-date', 'entry-date', 'priority', 'alphabetic', 'category', 'patient']}, 'path'=>'Section.orderedBy', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/list-order'}},
          'entryClassifier' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/evidence-classifier-code'=>['COVID19Specific', 'COVID19Relevant', 'COVID19HumanResearch', 'OriginalResearch', 'ResearchSynthesis', 'Guideline', 'ResearchProtocol', 'NotResearchNotGuideline', 'Treatment', 'PreventionAndControl', 'Diagnosis', 'PrognosisPrediction', 'RatedAsYes', 'RatedAsNo', 'NotAssessed', 'RatedAsRCT', 'RatedAsControlledTrial', 'RatedAsComparativeCohort', 'RatedAsCaseControl', 'RatedAsUncontrolledSeries', 'RatedAsMixedMethods', 'RatedAsOther', 'RiskOfBias', 'NoBlinding', 'AllocConcealNotStated', 'EarlyTrialTermination', 'NoITT', 'Preprint', 'PreliminaryAnalysis', 'BaselineImbalance', 'SubgroupAnalysis']}, 'path'=>'Section.entryClassifier', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/evidence-classifier-code'}},
          'entryReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Section.entryReference', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
          'entryQuantity' => {'path'=>'Section.entryQuantity', 'type'=>'Quantity', 'min'=>0, 'max'=>Float::INFINITY},
          'emptyReason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/list-empty-reason'=>['nilknown', 'notasked', 'withheld', 'unavailable', 'notstarted', 'closed']}, 'path'=>'Section.emptyReason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/list-empty-reason'}},
          'section' => {'path'=>'Section.section', 'type'=>'EvidenceReport::Section', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :title             # 0-1 string
        attr_accessor :focus             # 0-1 CodeableConcept
        attr_accessor :focusReference    # 0-1 Reference(Resource)
        attr_accessor :author            # 0-* [ Reference(Person|Device|Group|Organization) ]
        attr_accessor :text              # 0-1 Narrative
        attr_accessor :mode              # 0-1 code
        attr_accessor :orderedBy         # 0-1 CodeableConcept
        attr_accessor :entryClassifier   # 0-* [ CodeableConcept ]
        attr_accessor :entryReference    # 0-* [ Reference(Resource) ]
        attr_accessor :entryQuantity     # 0-* [ Quantity ]
        attr_accessor :emptyReason       # 0-1 CodeableConcept
        attr_accessor :section           # 0-* [ EvidenceReport::Section ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :url               # 0-1 uri
      attr_accessor :status            # 1-1 code
      attr_accessor :useContext        # 0-* [ UsageContext ]
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :relatedIdentifier # 0-* [ Identifier ]
      attr_accessor :citeAsReference   # 0-1 Reference(Citation)
      attr_accessor :citeAsMarkdown    # 0-1 markdown
      attr_accessor :type              # 0-1 CodeableConcept
      attr_accessor :note              # 0-* [ Annotation ]
      attr_accessor :relatedArtifact   # 0-* [ RelatedArtifact ]
      attr_accessor :subject           # 1-1 EvidenceReport::Subject
      attr_accessor :publisher         # 0-1 string
      attr_accessor :contact           # 0-* [ ContactDetail ]
      attr_accessor :author            # 0-* [ ContactDetail ]
      attr_accessor :editor            # 0-* [ ContactDetail ]
      attr_accessor :reviewer          # 0-* [ ContactDetail ]
      attr_accessor :endorser          # 0-* [ ContactDetail ]
      attr_accessor :relatesTo         # 0-* [ EvidenceReport::RelatesTo ]
      attr_accessor :section           # 0-* [ EvidenceReport::Section ]

      def resourceType
        'EvidenceReport'
      end
    end
  end
end