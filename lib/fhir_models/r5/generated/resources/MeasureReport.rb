module FHIR
  module R5
    class MeasureReport < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['date', 'evaluated-resource', 'identifier', 'location', 'measure', 'patient', 'period', 'reporter', 'status', 'subject']
      METADATA = {
        'id' => {'path'=>'MeasureReport.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'MeasureReport.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'MeasureReport.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'MeasureReport.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'MeasureReport.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'MeasureReport.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'MeasureReport.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'MeasureReport.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'MeasureReport.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/measure-report-status'=>['complete', 'pending', 'error']}, 'path'=>'MeasureReport.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-report-status'}},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/measure-report-type'=>['individual', 'subject-list', 'summary', 'data-exchange']}, 'path'=>'MeasureReport.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-report-type'}},
        'dataUpdateType' => {'valid_codes'=>{'http://hl7.org/fhir/CodeSystem/submit-data-update-type'=>['incremental', 'snapshot']}, 'path'=>'MeasureReport.dataUpdateType', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/submit-data-update-type'}},
        'measure' => {'path'=>'MeasureReport.measure', 'type'=>'canonical', 'min'=>0, 'max'=>1},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/HealthcareService', 'http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'MeasureReport.subject', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'date' => {'path'=>'MeasureReport.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'reporter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Group'], 'path'=>'MeasureReport.reporter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'reportingVendor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'MeasureReport.reportingVendor', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'MeasureReport.location', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'period' => {'path'=>'MeasureReport.period', 'type'=>'Period', 'min'=>1, 'max'=>1},
        'inputParameters' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Parameters'], 'path'=>'MeasureReport.inputParameters', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'scoring' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/measure-scoring'=>['proportion', 'ratio', 'continuous-variable', 'cohort', 'composite']}, 'path'=>'MeasureReport.scoring', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://terminology.hl7.org/ValueSet/measure-scoring'}},
        'improvementNotation' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/measure-improvement-notation'=>['increase', 'decrease']}, 'path'=>'MeasureReport.improvementNotation', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-improvement-notation'}},
        'group' => {'path'=>'MeasureReport.group', 'type'=>'MeasureReport::Group', 'min'=>0, 'max'=>Float::INFINITY},
        'supplementalData' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'MeasureReport.supplementalData', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'evaluatedResource' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'MeasureReport.evaluatedResource', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Group < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'measureScore' => ['Quantity', 'dateTime', 'CodeableConcept', 'Period', 'Range', 'Duration']
        }
        METADATA = {
          'id' => {'path'=>'Group.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Group.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Group.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'linkId' => {'path'=>'Group.linkId', 'type'=>'string', 'min'=>0, 'max'=>1},
          'code' => {'valid_codes'=>{'http://hl7.org/fhir/measure-group-example'=>['primary-rate', 'secondary-rate']}, 'path'=>'Group.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-group-example'}},
          'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/HealthcareService', 'http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'Group.subject', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'population' => {'path'=>'Group.population', 'type'=>'MeasureReport::Group::Population', 'min'=>0, 'max'=>Float::INFINITY},
          'measureScoreQuantity' => {'path'=>'Group.measureScore[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'measureScoreDateTime' => {'path'=>'Group.measureScore[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'measureScoreCodeableConcept' => {'path'=>'Group.measureScore[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'measureScorePeriod' => {'path'=>'Group.measureScore[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'measureScoreRange' => {'path'=>'Group.measureScore[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
          'measureScoreDuration' => {'path'=>'Group.measureScore[x]', 'type'=>'Duration', 'min'=>0, 'max'=>1},
          'stratifier' => {'path'=>'Group.stratifier', 'type'=>'MeasureReport::Group::Stratifier', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Population < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Population.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Population.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Population.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'linkId' => {'path'=>'Population.linkId', 'type'=>'string', 'min'=>0, 'max'=>1},
            'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/measure-population'=>['initial-population', 'numerator', 'numerator-exclusion', 'denominator', 'denominator-exclusion', 'denominator-exception', 'measure-population', 'measure-population-exclusion', 'measure-observation']}, 'path'=>'Population.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-population'}},
            'count' => {'path'=>'Population.count', 'type'=>'integer', 'min'=>0, 'max'=>1},
            'subjectResults' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/List'], 'path'=>'Population.subjectResults', 'type'=>'Reference', 'min'=>0, 'max'=>1},
            'subjectReport' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MeasureReport'], 'path'=>'Population.subjectReport', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
            'subjects' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Group'], 'path'=>'Population.subjects', 'type'=>'Reference', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :linkId            # 0-1 string
          attr_accessor :code              # 0-1 CodeableConcept
          attr_accessor :count             # 0-1 integer
          attr_accessor :subjectResults    # 0-1 Reference(List)
          attr_accessor :subjectReport     # 0-* [ Reference(MeasureReport) ]
          attr_accessor :subjects          # 0-1 Reference(Group)
        end

        class Stratifier < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Stratifier.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Stratifier.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Stratifier.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'linkId' => {'path'=>'Stratifier.linkId', 'type'=>'string', 'min'=>0, 'max'=>1},
            'code' => {'valid_codes'=>{'http://hl7.org/fhir/measure-stratifier-example'=>['age', 'gender', 'region']}, 'path'=>'Stratifier.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-stratifier-example'}},
            'stratum' => {'path'=>'Stratifier.stratum', 'type'=>'MeasureReport::Group::Stratifier::Stratum', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Stratum < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            MULTIPLE_TYPES = {
              'value' => ['CodeableConcept', 'boolean', 'Quantity', 'Range', 'Reference'],
              'measureScore' => ['Quantity', 'dateTime', 'CodeableConcept', 'Period', 'Range', 'Duration']
            }
            METADATA = {
              'id' => {'path'=>'Stratum.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Stratum.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Stratum.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'valueCodeableConcept' => {'valid_codes'=>{'http://hl7.org/fhir/measurereport-stratifier-value-example'=>['northwest', 'northeast', 'southwest', 'southeast']}, 'path'=>'Stratum.value[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/measurereport-stratifier-value-example'}},
              'valueBoolean' => {'path'=>'Stratum.value[x]', 'type'=>'boolean', 'min'=>0, 'max'=>1},
              'valueQuantity' => {'path'=>'Stratum.value[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
              'valueRange' => {'path'=>'Stratum.value[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
              'valueReference' => {'path'=>'Stratum.value[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
              'component' => {'path'=>'Stratum.component', 'type'=>'MeasureReport::Group::Stratifier::Stratum::Component', 'min'=>0, 'max'=>Float::INFINITY},
              'population' => {'path'=>'Stratum.population', 'type'=>'MeasureReport::Group::Stratifier::Stratum::Population', 'min'=>0, 'max'=>Float::INFINITY},
              'measureScoreQuantity' => {'path'=>'Stratum.measureScore[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
              'measureScoreDateTime' => {'path'=>'Stratum.measureScore[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
              'measureScoreCodeableConcept' => {'path'=>'Stratum.measureScore[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
              'measureScorePeriod' => {'path'=>'Stratum.measureScore[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
              'measureScoreRange' => {'path'=>'Stratum.measureScore[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
              'measureScoreDuration' => {'path'=>'Stratum.measureScore[x]', 'type'=>'Duration', 'min'=>0, 'max'=>1}
            }

            class Component < Model
              include FHIR::Hashable
              include FHIR::Json
              include FHIR::Xml

              MULTIPLE_TYPES = {
                'value' => ['CodeableConcept', 'boolean', 'Quantity', 'Range', 'Reference']
              }
              METADATA = {
                'id' => {'path'=>'Component.id', 'type'=>'string', 'min'=>0, 'max'=>1},
                'extension' => {'path'=>'Component.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
                'modifierExtension' => {'path'=>'Component.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
                'linkId' => {'path'=>'Component.linkId', 'type'=>'string', 'min'=>0, 'max'=>1},
                'code' => {'valid_codes'=>{'http://hl7.org/fhir/measure-stratifier-example'=>['age', 'gender', 'region']}, 'path'=>'Component.code', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-stratifier-example'}},
                'valueCodeableConcept' => {'valid_codes'=>{'http://hl7.org/fhir/measurereport-stratifier-value-example'=>['northwest', 'northeast', 'southwest', 'southeast']}, 'path'=>'Component.value[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/measurereport-stratifier-value-example'}},
                'valueBoolean' => {'path'=>'Component.value[x]', 'type'=>'boolean', 'min'=>1, 'max'=>1},
                'valueQuantity' => {'path'=>'Component.value[x]', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
                'valueRange' => {'path'=>'Component.value[x]', 'type'=>'Range', 'min'=>1, 'max'=>1},
                'valueReference' => {'path'=>'Component.value[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1}
              }

              attr_accessor :id                   # 0-1 string
              attr_accessor :extension            # 0-* [ Extension ]
              attr_accessor :modifierExtension    # 0-* [ Extension ]
              attr_accessor :linkId               # 0-1 string
              attr_accessor :code                 # 1-1 CodeableConcept
              attr_accessor :valueCodeableConcept # 1-1 CodeableConcept
              attr_accessor :valueBoolean         # 1-1 boolean
              attr_accessor :valueQuantity        # 1-1 Quantity
              attr_accessor :valueRange           # 1-1 Range
              attr_accessor :valueReference       # 1-1 Reference()
            end

            class Population < Model
              include FHIR::Hashable
              include FHIR::Json
              include FHIR::Xml

              METADATA = {
                'id' => {'path'=>'Population.id', 'type'=>'string', 'min'=>0, 'max'=>1},
                'extension' => {'path'=>'Population.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
                'modifierExtension' => {'path'=>'Population.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
                'linkId' => {'path'=>'Population.linkId', 'type'=>'string', 'min'=>0, 'max'=>1},
                'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/measure-population'=>['initial-population', 'numerator', 'numerator-exclusion', 'denominator', 'denominator-exclusion', 'denominator-exception', 'measure-population', 'measure-population-exclusion', 'measure-observation']}, 'path'=>'Population.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-population'}},
                'count' => {'path'=>'Population.count', 'type'=>'integer', 'min'=>0, 'max'=>1},
                'subjectResults' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/List'], 'path'=>'Population.subjectResults', 'type'=>'Reference', 'min'=>0, 'max'=>1},
                'subjectReport' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MeasureReport'], 'path'=>'Population.subjectReport', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
                'subjects' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Group'], 'path'=>'Population.subjects', 'type'=>'Reference', 'min'=>0, 'max'=>1}
              }

              attr_accessor :id                # 0-1 string
              attr_accessor :extension         # 0-* [ Extension ]
              attr_accessor :modifierExtension # 0-* [ Extension ]
              attr_accessor :linkId            # 0-1 string
              attr_accessor :code              # 0-1 CodeableConcept
              attr_accessor :count             # 0-1 integer
              attr_accessor :subjectResults    # 0-1 Reference(List)
              attr_accessor :subjectReport     # 0-* [ Reference(MeasureReport) ]
              attr_accessor :subjects          # 0-1 Reference(Group)
            end

            attr_accessor :id                          # 0-1 string
            attr_accessor :extension                   # 0-* [ Extension ]
            attr_accessor :modifierExtension           # 0-* [ Extension ]
            attr_accessor :valueCodeableConcept        # 0-1 CodeableConcept
            attr_accessor :valueBoolean                # 0-1 boolean
            attr_accessor :valueQuantity               # 0-1 Quantity
            attr_accessor :valueRange                  # 0-1 Range
            attr_accessor :valueReference              # 0-1 Reference()
            attr_accessor :component                   # 0-* [ MeasureReport::Group::Stratifier::Stratum::Component ]
            attr_accessor :population                  # 0-* [ MeasureReport::Group::Stratifier::Stratum::Population ]
            attr_accessor :measureScoreQuantity        # 0-1 Quantity
            attr_accessor :measureScoreDateTime        # 0-1 dateTime
            attr_accessor :measureScoreCodeableConcept # 0-1 CodeableConcept
            attr_accessor :measureScorePeriod          # 0-1 Period
            attr_accessor :measureScoreRange           # 0-1 Range
            attr_accessor :measureScoreDuration        # 0-1 Duration
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :linkId            # 0-1 string
          attr_accessor :code              # 0-1 CodeableConcept
          attr_accessor :stratum           # 0-* [ MeasureReport::Group::Stratifier::Stratum ]
        end

        attr_accessor :id                          # 0-1 string
        attr_accessor :extension                   # 0-* [ Extension ]
        attr_accessor :modifierExtension           # 0-* [ Extension ]
        attr_accessor :linkId                      # 0-1 string
        attr_accessor :code                        # 0-1 CodeableConcept
        attr_accessor :subject                     # 0-1 Reference(CareTeam|Device|Group|HealthcareService|Location|Organization|Patient|Practitioner|PractitionerRole|RelatedPerson)
        attr_accessor :population                  # 0-* [ MeasureReport::Group::Population ]
        attr_accessor :measureScoreQuantity        # 0-1 Quantity
        attr_accessor :measureScoreDateTime        # 0-1 dateTime
        attr_accessor :measureScoreCodeableConcept # 0-1 CodeableConcept
        attr_accessor :measureScorePeriod          # 0-1 Period
        attr_accessor :measureScoreRange           # 0-1 Range
        attr_accessor :measureScoreDuration        # 0-1 Duration
        attr_accessor :stratifier                  # 0-* [ MeasureReport::Group::Stratifier ]
      end

      attr_accessor :id                  # 0-1 id
      attr_accessor :meta                # 0-1 Meta
      attr_accessor :implicitRules       # 0-1 uri
      attr_accessor :language            # 0-1 code
      attr_accessor :text                # 0-1 Narrative
      attr_accessor :contained           # 0-* [ Resource ]
      attr_accessor :extension           # 0-* [ Extension ]
      attr_accessor :modifierExtension   # 0-* [ Extension ]
      attr_accessor :identifier          # 0-* [ Identifier ]
      attr_accessor :status              # 1-1 code
      attr_accessor :type                # 1-1 code
      attr_accessor :dataUpdateType      # 0-1 code
      attr_accessor :measure             # 0-1 canonical
      attr_accessor :subject             # 0-1 Reference(CareTeam|Device|Group|HealthcareService|Location|Organization|Patient|Practitioner|PractitionerRole|RelatedPerson)
      attr_accessor :date                # 0-1 dateTime
      attr_accessor :reporter            # 0-1 Reference(Practitioner|PractitionerRole|Organization|Group)
      attr_accessor :reportingVendor     # 0-1 Reference(Organization)
      attr_accessor :location            # 0-1 Reference(Location)
      attr_accessor :period              # 1-1 Period
      attr_accessor :inputParameters     # 0-1 Reference(Parameters)
      attr_accessor :scoring             # 0-1 CodeableConcept
      attr_accessor :improvementNotation # 0-1 CodeableConcept
      attr_accessor :group               # 0-* [ MeasureReport::Group ]
      attr_accessor :supplementalData    # 0-* [ Reference(Resource) ]
      attr_accessor :evaluatedResource   # 0-* [ Reference(Resource) ]

      def resourceType
        'MeasureReport'
      end
    end
  end
end