module FHIR
  module R4
    class Measure < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'subject' => ['CodeableConcept', 'Reference']
      }
      SEARCH_PARAMS = ['composed-of', 'context', 'context-quantity', 'context-type', 'context-type-quantity', 'context-type-value', 'date', 'depends-on', 'derived-from', 'description', 'effective', 'identifier', 'jurisdiction', 'name', 'predecessor', 'publisher', 'status', 'successor', 'title', 'topic', 'url', 'version']
      METADATA = {
        'id' => {'path'=>'Measure.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Measure.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Measure.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Measure.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'Measure.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Measure.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Measure.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Measure.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'path'=>'Measure.url', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'identifier' => {'path'=>'Measure.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'path'=>'Measure.version', 'type'=>'string', 'min'=>0, 'max'=>1},
        'name' => {'path'=>'Measure.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'title' => {'path'=>'Measure.title', 'type'=>'string', 'min'=>0, 'max'=>1},
        'subtitle' => {'path'=>'Measure.subtitle', 'type'=>'string', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'Measure.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'experimental' => {'path'=>'Measure.experimental', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'subjectCodeableConcept' => {'valid_codes'=>{'http://hl7.org/fhir/resource-types'=>['Patient', 'Practitioner', 'Organization', 'Location', 'Device']}, 'path'=>'Measure.subject[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/subject-type'}},
        'subjectReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Group'], 'path'=>'Measure.subject[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'date' => {'path'=>'Measure.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'publisher' => {'path'=>'Measure.publisher', 'type'=>'string', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'Measure.contact', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'Measure.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'useContext' => {'path'=>'Measure.useContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'path'=>'Measure.jurisdiction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'path'=>'Measure.purpose', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'usage' => {'path'=>'Measure.usage', 'type'=>'string', 'min'=>0, 'max'=>1},
        'copyright' => {'path'=>'Measure.copyright', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'approvalDate' => {'path'=>'Measure.approvalDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'lastReviewDate' => {'path'=>'Measure.lastReviewDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'effectivePeriod' => {'path'=>'Measure.effectivePeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'topic' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/definition-topic'=>['treatment', 'education', 'assessment']}, 'path'=>'Measure.topic', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/definition-topic'}},
        'author' => {'path'=>'Measure.author', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'editor' => {'path'=>'Measure.editor', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'reviewer' => {'path'=>'Measure.reviewer', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'endorser' => {'path'=>'Measure.endorser', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'relatedArtifact' => {'path'=>'Measure.relatedArtifact', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>Float::INFINITY},
        'library' => {'path'=>'Measure.library', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY},
        'disclaimer' => {'path'=>'Measure.disclaimer', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'scoring' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/measure-scoring'=>['proportion', 'ratio', 'continuous-variable', 'cohort']}, 'path'=>'Measure.scoring', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-scoring'}},
        'compositeScoring' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/composite-measure-scoring'=>['opportunity', 'all-or-nothing', 'linear', 'weighted']}, 'path'=>'Measure.compositeScoring', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/composite-measure-scoring'}},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/measure-type'=>['process', 'outcome', 'structure', 'patient-reported-outcome', 'composite']}, 'path'=>'Measure.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-type'}},
        'riskAdjustment' => {'path'=>'Measure.riskAdjustment', 'type'=>'string', 'min'=>0, 'max'=>1},
        'rateAggregation' => {'path'=>'Measure.rateAggregation', 'type'=>'string', 'min'=>0, 'max'=>1},
        'rationale' => {'path'=>'Measure.rationale', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'clinicalRecommendationStatement' => {'path'=>'Measure.clinicalRecommendationStatement', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'improvementNotation' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/measure-improvement-notation'=>['increase', 'decrease']}, 'path'=>'Measure.improvementNotation', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-improvement-notation'}},
        'definition' => {'path'=>'Measure.definition', 'type'=>'markdown', 'min'=>0, 'max'=>Float::INFINITY},
        'guidance' => {'path'=>'Measure.guidance', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'group' => {'path'=>'Measure.group', 'type'=>'Measure::Group', 'min'=>0, 'max'=>Float::INFINITY},
        'supplementalData' => {'path'=>'Measure.supplementalData', 'type'=>'Measure::SupplementalData', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Group < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Group.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Group.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Group.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'path'=>'Group.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'description' => {'path'=>'Group.description', 'type'=>'string', 'min'=>0, 'max'=>1},
          'population' => {'path'=>'Group.population', 'type'=>'Measure::Group::Population', 'min'=>0, 'max'=>Float::INFINITY},
          'stratifier' => {'path'=>'Group.stratifier', 'type'=>'Measure::Group::Stratifier', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Population < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Population.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Population.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Population.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/measure-population'=>['initial-population', 'numerator', 'numerator-exclusion', 'denominator', 'denominator-exclusion', 'denominator-exception', 'measure-population', 'measure-population-exclusion', 'measure-observation']}, 'path'=>'Population.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-population'}},
            'description' => {'path'=>'Population.description', 'type'=>'string', 'min'=>0, 'max'=>1},
            'criteria' => {'path'=>'Population.criteria', 'type'=>'Expression', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 0-1 CodeableConcept
          attr_accessor :description       # 0-1 string
          attr_accessor :criteria          # 1-1 Expression
        end

        class Stratifier < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Stratifier.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Stratifier.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Stratifier.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'path'=>'Stratifier.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
            'description' => {'path'=>'Stratifier.description', 'type'=>'string', 'min'=>0, 'max'=>1},
            'criteria' => {'path'=>'Stratifier.criteria', 'type'=>'Expression', 'min'=>0, 'max'=>1},
            'component' => {'path'=>'Stratifier.component', 'type'=>'Measure::Group::Stratifier::Component', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Component < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Component.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Component.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Component.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'code' => {'path'=>'Component.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
              'description' => {'path'=>'Component.description', 'type'=>'string', 'min'=>0, 'max'=>1},
              'criteria' => {'path'=>'Component.criteria', 'type'=>'Expression', 'min'=>1, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :code              # 0-1 CodeableConcept
            attr_accessor :description       # 0-1 string
            attr_accessor :criteria          # 1-1 Expression
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 0-1 CodeableConcept
          attr_accessor :description       # 0-1 string
          attr_accessor :criteria          # 0-1 Expression
          attr_accessor :component         # 0-* [ Measure::Group::Stratifier::Component ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 0-1 CodeableConcept
        attr_accessor :description       # 0-1 string
        attr_accessor :population        # 0-* [ Measure::Group::Population ]
        attr_accessor :stratifier        # 0-* [ Measure::Group::Stratifier ]
      end

      class SupplementalData < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'SupplementalData.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'SupplementalData.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'SupplementalData.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'path'=>'SupplementalData.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'usage' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/measure-data-usage'=>['supplemental-data', 'risk-adjustment-factor']}, 'path'=>'SupplementalData.usage', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-data-usage'}},
          'description' => {'path'=>'SupplementalData.description', 'type'=>'string', 'min'=>0, 'max'=>1},
          'criteria' => {'path'=>'SupplementalData.criteria', 'type'=>'Expression', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 0-1 CodeableConcept
        attr_accessor :usage             # 0-* [ CodeableConcept ]
        attr_accessor :description       # 0-1 string
        attr_accessor :criteria          # 1-1 Expression
      end

      attr_accessor :id                              # 0-1 id
      attr_accessor :meta                            # 0-1 Meta
      attr_accessor :implicitRules                   # 0-1 uri
      attr_accessor :language                        # 0-1 code
      attr_accessor :text                            # 0-1 Narrative
      attr_accessor :contained                       # 0-* [ Resource ]
      attr_accessor :extension                       # 0-* [ Extension ]
      attr_accessor :modifierExtension               # 0-* [ Extension ]
      attr_accessor :url                             # 0-1 uri
      attr_accessor :identifier                      # 0-* [ Identifier ]
      attr_accessor :version                         # 0-1 string
      attr_accessor :name                            # 0-1 string
      attr_accessor :title                           # 0-1 string
      attr_accessor :subtitle                        # 0-1 string
      attr_accessor :status                          # 1-1 code
      attr_accessor :experimental                    # 0-1 boolean
      attr_accessor :subjectCodeableConcept          # 0-1 CodeableConcept
      attr_accessor :subjectReference                # 0-1 Reference(Group)
      attr_accessor :date                            # 0-1 dateTime
      attr_accessor :publisher                       # 0-1 string
      attr_accessor :contact                         # 0-* [ ContactDetail ]
      attr_accessor :description                     # 0-1 markdown
      attr_accessor :useContext                      # 0-* [ UsageContext ]
      attr_accessor :jurisdiction                    # 0-* [ CodeableConcept ]
      attr_accessor :purpose                         # 0-1 markdown
      attr_accessor :usage                           # 0-1 string
      attr_accessor :copyright                       # 0-1 markdown
      attr_accessor :approvalDate                    # 0-1 date
      attr_accessor :lastReviewDate                  # 0-1 date
      attr_accessor :effectivePeriod                 # 0-1 Period
      attr_accessor :topic                           # 0-* [ CodeableConcept ]
      attr_accessor :author                          # 0-* [ ContactDetail ]
      attr_accessor :editor                          # 0-* [ ContactDetail ]
      attr_accessor :reviewer                        # 0-* [ ContactDetail ]
      attr_accessor :endorser                        # 0-* [ ContactDetail ]
      attr_accessor :relatedArtifact                 # 0-* [ RelatedArtifact ]
      attr_accessor :library                         # 0-* [ canonical ]
      attr_accessor :disclaimer                      # 0-1 markdown
      attr_accessor :scoring                         # 0-1 CodeableConcept
      attr_accessor :compositeScoring                # 0-1 CodeableConcept
      attr_accessor :type                            # 0-* [ CodeableConcept ]
      attr_accessor :riskAdjustment                  # 0-1 string
      attr_accessor :rateAggregation                 # 0-1 string
      attr_accessor :rationale                       # 0-1 markdown
      attr_accessor :clinicalRecommendationStatement # 0-1 markdown
      attr_accessor :improvementNotation             # 0-1 CodeableConcept
      attr_accessor :definition                      # 0-* [ markdown ]
      attr_accessor :guidance                        # 0-1 markdown
      attr_accessor :group                           # 0-* [ Measure::Group ]
      attr_accessor :supplementalData                # 0-* [ Measure::SupplementalData ]

      def resourceType
        'Measure'
      end
    end
  end
  Measure = FHIR::R4::Measure
end