module FHIR
  module R4B
    class Evidence < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'citeAs' => ['Reference', 'markdown']
      }
      SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'context-type-quantity', 'context-type-value', 'date', 'description', 'identifier', 'publisher', 'status', 'title', 'url', 'version']
      METADATA = {
        'id' => {'path'=>'Evidence.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Evidence.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Evidence.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Evidence.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'Evidence.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Evidence.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Evidence.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Evidence.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'path'=>'Evidence.url', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'identifier' => {'path'=>'Evidence.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'path'=>'Evidence.version', 'type'=>'string', 'min'=>0, 'max'=>1},
        'title' => {'path'=>'Evidence.title', 'type'=>'string', 'min'=>0, 'max'=>1},
        'citeAsReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Citation'], 'path'=>'Evidence.citeAs[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'citeAsMarkdown' => {'path'=>'Evidence.citeAs[x]', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'Evidence.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'date' => {'path'=>'Evidence.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'useContext' => {'path'=>'Evidence.useContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
        'approvalDate' => {'path'=>'Evidence.approvalDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'lastReviewDate' => {'path'=>'Evidence.lastReviewDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'publisher' => {'path'=>'Evidence.publisher', 'type'=>'string', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'Evidence.contact', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'author' => {'path'=>'Evidence.author', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'editor' => {'path'=>'Evidence.editor', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'reviewer' => {'path'=>'Evidence.reviewer', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'endorser' => {'path'=>'Evidence.endorser', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'relatedArtifact' => {'path'=>'Evidence.relatedArtifact', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'Evidence.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'assertion' => {'path'=>'Evidence.assertion', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'note' => {'path'=>'Evidence.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
        'variableDefinition' => {'path'=>'Evidence.variableDefinition', 'type'=>'Evidence::VariableDefinition', 'min'=>1, 'max'=>Float::INFINITY},
        'synthesisType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/synthesis-type'=>['std-MA', 'IPD-MA', 'indirect-NMA', 'combined-NMA', 'range', 'classification', 'NotApplicable']}, 'path'=>'Evidence.synthesisType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/synthesis-type'}},
        'studyType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/study-type'=>['RCT', 'CCT', 'cohort', 'case-control', 'series', 'case-report', 'mixed']}, 'path'=>'Evidence.studyType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/study-type'}},
        'statistic' => {'path'=>'Evidence.statistic', 'type'=>'Evidence::Statistic', 'min'=>0, 'max'=>Float::INFINITY},
        'certainty' => {'path'=>'Evidence.certainty', 'type'=>'Evidence::Certainty', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class VariableDefinition < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'VariableDefinition.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'VariableDefinition.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'VariableDefinition.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'path'=>'VariableDefinition.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
          'note' => {'path'=>'VariableDefinition.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
          'variableRole' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/variable-role'=>['population', 'subpopulation', 'exposure', 'referenceExposure', 'measuredVariable', 'confounder']}, 'path'=>'VariableDefinition.variableRole', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/variable-role'}},
          'observed' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/EvidenceVariable'], 'path'=>'VariableDefinition.observed', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'intended' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/EvidenceVariable'], 'path'=>'VariableDefinition.intended', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'directnessMatch' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/directness'=>['low', 'moderate', 'high', 'exact']}, 'path'=>'VariableDefinition.directnessMatch', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/directness'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :description       # 0-1 markdown
        attr_accessor :note              # 0-* [ Annotation ]
        attr_accessor :variableRole      # 1-1 CodeableConcept
        attr_accessor :observed          # 0-1 Reference(Group|EvidenceVariable)
        attr_accessor :intended          # 0-1 Reference(Group|EvidenceVariable)
        attr_accessor :directnessMatch   # 0-1 CodeableConcept
      end

      class Statistic < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Statistic.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Statistic.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Statistic.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'path'=>'Statistic.description', 'type'=>'string', 'min'=>0, 'max'=>1},
          'note' => {'path'=>'Statistic.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
          'statisticType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/statistic-type'=>['absolute-MedianDiff', 'C25463', '0000301', 'predictedRisk', 'descriptive', 'C93150', 'C16726', 'rate-ratio', 'C25564', 'C53319', '0000457', 'C28007', 'C25570', 'C16932', 'C65172', 'C17010', 'C44256', '0000565', 'C93152', '0000424', 'C65171', '0000100']}, 'path'=>'Statistic.statisticType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/statistic-type'}},
          'category' => {'path'=>'Statistic.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'quantity' => {'path'=>'Statistic.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'numberOfEvents' => {'path'=>'Statistic.numberOfEvents', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
          'numberAffected' => {'path'=>'Statistic.numberAffected', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
          'sampleSize' => {'path'=>'Statistic.sampleSize', 'type'=>'Evidence::Statistic::SampleSize', 'min'=>0, 'max'=>1},
          'attributeEstimate' => {'path'=>'Statistic.attributeEstimate', 'type'=>'Evidence::Statistic::AttributeEstimate', 'min'=>0, 'max'=>Float::INFINITY},
          'modelCharacteristic' => {'path'=>'Statistic.modelCharacteristic', 'type'=>'Evidence::Statistic::ModelCharacteristic', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class SampleSize < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'SampleSize.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'SampleSize.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'SampleSize.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'description' => {'path'=>'SampleSize.description', 'type'=>'string', 'min'=>0, 'max'=>1},
            'note' => {'path'=>'SampleSize.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
            'numberOfStudies' => {'path'=>'SampleSize.numberOfStudies', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
            'numberOfParticipants' => {'path'=>'SampleSize.numberOfParticipants', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
            'knownDataCount' => {'path'=>'SampleSize.knownDataCount', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                   # 0-1 string
          attr_accessor :extension            # 0-* [ Extension ]
          attr_accessor :modifierExtension    # 0-* [ Extension ]
          attr_accessor :description          # 0-1 string
          attr_accessor :note                 # 0-* [ Annotation ]
          attr_accessor :numberOfStudies      # 0-1 unsignedInt
          attr_accessor :numberOfParticipants # 0-1 unsignedInt
          attr_accessor :knownDataCount       # 0-1 unsignedInt
        end

        class AttributeEstimate < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'AttributeEstimate.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'AttributeEstimate.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'AttributeEstimate.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'description' => {'path'=>'AttributeEstimate.description', 'type'=>'string', 'min'=>0, 'max'=>1},
            'note' => {'path'=>'AttributeEstimate.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/attribute-estimate-type'=>['0000419', 'C53324', '0000455', '0000420', 'C53245', 'C44185', 'C38013', 'C53322', '0000037', '0000421', 'C48918']}, 'path'=>'AttributeEstimate.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/attribute-estimate-type'}},
            'quantity' => {'path'=>'AttributeEstimate.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
            'level' => {'path'=>'AttributeEstimate.level', 'type'=>'decimal', 'min'=>0, 'max'=>1},
            'range' => {'path'=>'AttributeEstimate.range', 'type'=>'Range', 'min'=>0, 'max'=>1},
            'attributeEstimate' => {'path'=>'AttributeEstimate.attributeEstimate', 'type'=>'Evidence::Statistic::AttributeEstimate', 'min'=>0, 'max'=>Float::INFINITY}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :description       # 0-1 string
          attr_accessor :note              # 0-* [ Annotation ]
          attr_accessor :type              # 0-1 CodeableConcept
          attr_accessor :quantity          # 0-1 Quantity
          attr_accessor :level             # 0-1 decimal
          attr_accessor :range             # 0-1 Range
          attr_accessor :attributeEstimate # 0-* [ Evidence::Statistic::AttributeEstimate ]
        end

        class ModelCharacteristic < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'ModelCharacteristic.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'ModelCharacteristic.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'ModelCharacteristic.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/statistic-model-code'=>['oneTailedTest', 'twoTailedTest', 'zTest', 'oneSampleTTest', 'twoSampleTTest', 'pairedTTest', 'chiSquareTest', 'chiSquareTestTrend', 'pearsonCorrelation', 'anova', 'anovaOneWay', 'anovaTwoWay', 'anovaTwoWayReplication', 'manova', 'anovaThreeWay', 'signTest', 'wilcoxonSignedRankTest', 'wilcoxonRankSumTest', 'mannWhitneyUTest', 'fishersExactTest', 'mcnemarsTest', 'kruskalWallisTest', 'spearmanCorrelation', 'kendallCorrelation', 'friedmanTest', 'goodmanKruskasGamma', 'glm', 'glmProbit', 'glmLogit', 'glmIdentity', 'glmLog', 'glmGeneralizedLogit', 'glmm', 'glmmProbit', 'glmmLogit', 'glmmIdentity', 'glmmLog', 'glmmGeneralizedLogit', 'linearRegression', 'logisticRegression', 'polynomialRegression', 'coxProportionalHazards', 'binomialDistributionRegression', 'multinomialDistributionRegression', 'poissonRegression', 'negativeBinomialRegression', 'zeroCellConstant', 'zeroCellContinuityCorrection', 'adjusted', 'interactionTerm', 'manteHaenszelMethod', 'metaAnalysis', 'inverseVariance', 'petoMethod', 'hartungKnapp', 'modifiedHartungKnapp', 'effectsFixed', 'effectsRandom', 'chiSquareTestHomogeneity', 'dersimonianLairdMethod', 'pauleMandelMethod', 'restrictedLikelihood', 'maximumLikelihood', 'empiricalBayes', 'hunterSchmidt', 'sidikJonkman', 'hedgesMethod', 'tauDersimonianLaird', 'tauPauleMandel', 'tauRestrictedMaximumLikelihood', 'tauMaximumLikelihood', 'tauEmpiricalBayes', 'tauHunterSchmidt', 'tauSidikJonkman', 'tauHedges', 'poolMantelHaenzsel', 'poolInverseVariance', 'poolPeto', 'poolGeneralizedLinearMixedModel']}, 'path'=>'ModelCharacteristic.code', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/statistic-model-code'}},
            'value' => {'path'=>'ModelCharacteristic.value', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
            'variable' => {'path'=>'ModelCharacteristic.variable', 'type'=>'Evidence::Statistic::ModelCharacteristic::Variable', 'min'=>0, 'max'=>Float::INFINITY},
            'attributeEstimate' => {'path'=>'ModelCharacteristic.attributeEstimate', 'type'=>'Evidence::Statistic::AttributeEstimate', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Variable < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Variable.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Variable.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Variable.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'variableDefinition' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/EvidenceVariable'], 'path'=>'Variable.variableDefinition', 'type'=>'Reference', 'min'=>1, 'max'=>1},
              'handling' => {'valid_codes'=>{'http://hl7.org/fhir/variable-handling'=>['continuous', 'dichotomous', 'ordinal', 'polychotomous']}, 'path'=>'Variable.handling', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/variable-handling'}},
              'valueCategory' => {'path'=>'Variable.valueCategory', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
              'valueQuantity' => {'path'=>'Variable.valueQuantity', 'type'=>'Quantity', 'min'=>0, 'max'=>Float::INFINITY},
              'valueRange' => {'path'=>'Variable.valueRange', 'type'=>'Range', 'min'=>0, 'max'=>Float::INFINITY}
            }

            attr_accessor :id                 # 0-1 string
            attr_accessor :extension          # 0-* [ Extension ]
            attr_accessor :modifierExtension  # 0-* [ Extension ]
            attr_accessor :variableDefinition # 1-1 Reference(Group|EvidenceVariable)
            attr_accessor :handling           # 0-1 code
            attr_accessor :valueCategory      # 0-* [ CodeableConcept ]
            attr_accessor :valueQuantity      # 0-* [ Quantity ]
            attr_accessor :valueRange         # 0-* [ Range ]
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 1-1 CodeableConcept
          attr_accessor :value             # 0-1 Quantity
          attr_accessor :variable          # 0-* [ Evidence::Statistic::ModelCharacteristic::Variable ]
          attr_accessor :attributeEstimate # 0-* [ Evidence::Statistic::AttributeEstimate ]
        end

        attr_accessor :id                  # 0-1 string
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :description         # 0-1 string
        attr_accessor :note                # 0-* [ Annotation ]
        attr_accessor :statisticType       # 0-1 CodeableConcept
        attr_accessor :category            # 0-1 CodeableConcept
        attr_accessor :quantity            # 0-1 Quantity
        attr_accessor :numberOfEvents      # 0-1 unsignedInt
        attr_accessor :numberAffected      # 0-1 unsignedInt
        attr_accessor :sampleSize          # 0-1 Evidence::Statistic::SampleSize
        attr_accessor :attributeEstimate   # 0-* [ Evidence::Statistic::AttributeEstimate ]
        attr_accessor :modelCharacteristic # 0-* [ Evidence::Statistic::ModelCharacteristic ]
      end

      class Certainty < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Certainty.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Certainty.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Certainty.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'path'=>'Certainty.description', 'type'=>'string', 'min'=>0, 'max'=>1},
          'note' => {'path'=>'Certainty.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/certainty-type'=>['Overall', 'RiskOfBias', 'Inconsistency', 'Indirectness', 'Imprecision', 'PublicationBias', 'DoseResponseGradient', 'PlausibleConfounding', 'LargeEffect']}, 'path'=>'Certainty.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/certainty-type'}},
          'rating' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/certainty-rating'=>['high', 'moderate', 'low', 'very-low', 'no-concern', 'serious-concern', 'very-serious-concern', 'extremely-serious-concern', 'present', 'absent', 'no-change', 'downcode1', 'downcode2', 'downcode3', 'upcode1', 'upcode2']}, 'path'=>'Certainty.rating', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/certainty-rating'}},
          'rater' => {'path'=>'Certainty.rater', 'type'=>'string', 'min'=>0, 'max'=>1},
          'subcomponent' => {'path'=>'Certainty.subcomponent', 'type'=>'Evidence::Certainty', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :description       # 0-1 string
        attr_accessor :note              # 0-* [ Annotation ]
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :rating            # 0-1 CodeableConcept
        attr_accessor :rater             # 0-1 string
        attr_accessor :subcomponent      # 0-* [ Evidence::Certainty ]
      end

      attr_accessor :id                 # 0-1 id
      attr_accessor :meta               # 0-1 Meta
      attr_accessor :implicitRules      # 0-1 uri
      attr_accessor :language           # 0-1 code
      attr_accessor :text               # 0-1 Narrative
      attr_accessor :contained          # 0-* [ Resource ]
      attr_accessor :extension          # 0-* [ Extension ]
      attr_accessor :modifierExtension  # 0-* [ Extension ]
      attr_accessor :url                # 0-1 uri
      attr_accessor :identifier         # 0-* [ Identifier ]
      attr_accessor :version            # 0-1 string
      attr_accessor :title              # 0-1 string
      attr_accessor :citeAsReference    # 0-1 Reference(Citation)
      attr_accessor :citeAsMarkdown     # 0-1 markdown
      attr_accessor :status             # 1-1 code
      attr_accessor :date               # 0-1 dateTime
      attr_accessor :useContext         # 0-* [ UsageContext ]
      attr_accessor :approvalDate       # 0-1 date
      attr_accessor :lastReviewDate     # 0-1 date
      attr_accessor :publisher          # 0-1 string
      attr_accessor :contact            # 0-* [ ContactDetail ]
      attr_accessor :author             # 0-* [ ContactDetail ]
      attr_accessor :editor             # 0-* [ ContactDetail ]
      attr_accessor :reviewer           # 0-* [ ContactDetail ]
      attr_accessor :endorser           # 0-* [ ContactDetail ]
      attr_accessor :relatedArtifact    # 0-* [ RelatedArtifact ]
      attr_accessor :description        # 0-1 markdown
      attr_accessor :assertion          # 0-1 markdown
      attr_accessor :note               # 0-* [ Annotation ]
      attr_accessor :variableDefinition # 1-* [ Evidence::VariableDefinition ]
      attr_accessor :synthesisType      # 0-1 CodeableConcept
      attr_accessor :studyType          # 0-1 CodeableConcept
      attr_accessor :statistic          # 0-* [ Evidence::Statistic ]
      attr_accessor :certainty          # 0-* [ Evidence::Certainty ]

      def resourceType
        'Evidence'
      end
    end
  end
end