module FHIR
  module R4B
    class MeasureReport < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['date', 'evaluated-resource', 'identifier', 'measure', 'patient', 'period', 'reporter', 'status', 'subject']
      METADATA = {
        'id' => {'path'=>'MeasureReport.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'MeasureReport.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'MeasureReport.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'MeasureReport.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'MeasureReport.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'MeasureReport.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'MeasureReport.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'MeasureReport.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'MeasureReport.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/measure-report-status'=>['complete', 'pending', 'error']}, 'path'=>'MeasureReport.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-report-status'}},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/measure-report-type'=>['individual', 'subject-list', 'summary', 'data-collection']}, 'path'=>'MeasureReport.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-report-type'}},
        'measure' => {'path'=>'MeasureReport.measure', 'type'=>'canonical', 'min'=>1, 'max'=>1},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Group'], 'path'=>'MeasureReport.subject', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'date' => {'path'=>'MeasureReport.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'reporter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'MeasureReport.reporter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'period' => {'path'=>'MeasureReport.period', 'type'=>'Period', 'min'=>1, 'max'=>1},
        'improvementNotation' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/measure-improvement-notation'=>['increase', 'decrease']}, 'path'=>'MeasureReport.improvementNotation', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-improvement-notation'}},
        'group' => {'path'=>'MeasureReport.group', 'type'=>'MeasureReport::Group', 'min'=>0, 'max'=>Float::INFINITY},
        'evaluatedResource' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'MeasureReport.evaluatedResource', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Group < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Group.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Group.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Group.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/measure-group-example'=>['primary-rate', 'secondary-rate']}, 'path'=>'Group.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-group-example'}},
          'population' => {'path'=>'Group.population', 'type'=>'MeasureReport::Group::Population', 'min'=>0, 'max'=>Float::INFINITY},
          'measureScore' => {'path'=>'Group.measureScore', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
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
            'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/measure-population'=>['initial-population', 'numerator', 'numerator-exclusion', 'denominator', 'denominator-exclusion', 'denominator-exception', 'measure-population', 'measure-population-exclusion', 'measure-observation']}, 'path'=>'Population.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-population'}},
            'count' => {'path'=>'Population.count', 'type'=>'integer', 'min'=>0, 'max'=>1},
            'subjectResults' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/List'], 'path'=>'Population.subjectResults', 'type'=>'Reference', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 0-1 CodeableConcept
          attr_accessor :count             # 0-1 integer
          attr_accessor :subjectResults    # 0-1 Reference(List)
        end

        class Stratifier < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Stratifier.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Stratifier.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Stratifier.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/measure-stratifier-example'=>['age', 'gender', 'region']}, 'path'=>'Stratifier.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-stratifier-example'}},
            'stratum' => {'path'=>'Stratifier.stratum', 'type'=>'MeasureReport::Group::Stratifier::Stratum', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Stratum < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Stratum.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Stratum.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Stratum.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'value' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/measurereport-stratifier-value-example'=>['northwest', 'northeast', 'southwest', 'southeast']}, 'path'=>'Stratum.value', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/measurereport-stratifier-value-example'}},
              'component' => {'path'=>'Stratum.component', 'type'=>'MeasureReport::Group::Stratifier::Stratum::Component', 'min'=>0, 'max'=>Float::INFINITY},
              'population' => {'path'=>'Stratum.population', 'type'=>'MeasureReport::Group::Stratifier::Stratum::Population', 'min'=>0, 'max'=>Float::INFINITY},
              'measureScore' => {'path'=>'Stratum.measureScore', 'type'=>'Quantity', 'min'=>0, 'max'=>1}
            }

            class Component < Model
              include FHIR::Hashable
              include FHIR::Json
              include FHIR::Xml

              METADATA = {
                'id' => {'path'=>'Component.id', 'type'=>'string', 'min'=>0, 'max'=>1},
                'extension' => {'path'=>'Component.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
                'modifierExtension' => {'path'=>'Component.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
                'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/measure-stratifier-example'=>['age', 'gender', 'region']}, 'path'=>'Component.code', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-stratifier-example'}},
                'value' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/measurereport-stratifier-value-example'=>['northwest', 'northeast', 'southwest', 'southeast']}, 'path'=>'Component.value', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/measurereport-stratifier-value-example'}}
              }

              attr_accessor :id                # 0-1 string
              attr_accessor :extension         # 0-* [ Extension ]
              attr_accessor :modifierExtension # 0-* [ Extension ]
              attr_accessor :code              # 1-1 CodeableConcept
              attr_accessor :value             # 1-1 CodeableConcept
            end

            class Population < Model
              include FHIR::Hashable
              include FHIR::Json
              include FHIR::Xml

              METADATA = {
                'id' => {'path'=>'Population.id', 'type'=>'string', 'min'=>0, 'max'=>1},
                'extension' => {'path'=>'Population.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
                'modifierExtension' => {'path'=>'Population.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
                'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/measure-population'=>['initial-population', 'numerator', 'numerator-exclusion', 'denominator', 'denominator-exclusion', 'denominator-exception', 'measure-population', 'measure-population-exclusion', 'measure-observation']}, 'path'=>'Population.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/measure-population'}},
                'count' => {'path'=>'Population.count', 'type'=>'integer', 'min'=>0, 'max'=>1},
                'subjectResults' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/List'], 'path'=>'Population.subjectResults', 'type'=>'Reference', 'min'=>0, 'max'=>1}
              }

              attr_accessor :id                # 0-1 string
              attr_accessor :extension         # 0-* [ Extension ]
              attr_accessor :modifierExtension # 0-* [ Extension ]
              attr_accessor :code              # 0-1 CodeableConcept
              attr_accessor :count             # 0-1 integer
              attr_accessor :subjectResults    # 0-1 Reference(List)
            end

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :value             # 0-1 CodeableConcept
            attr_accessor :component         # 0-* [ MeasureReport::Group::Stratifier::Stratum::Component ]
            attr_accessor :population        # 0-* [ MeasureReport::Group::Stratifier::Stratum::Population ]
            attr_accessor :measureScore      # 0-1 Quantity
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 0-* [ CodeableConcept ]
          attr_accessor :stratum           # 0-* [ MeasureReport::Group::Stratifier::Stratum ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 0-1 CodeableConcept
        attr_accessor :population        # 0-* [ MeasureReport::Group::Population ]
        attr_accessor :measureScore      # 0-1 Quantity
        attr_accessor :stratifier        # 0-* [ MeasureReport::Group::Stratifier ]
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
      attr_accessor :measure             # 1-1 canonical
      attr_accessor :subject             # 0-1 Reference(Patient|Practitioner|PractitionerRole|Location|Device|RelatedPerson|Group)
      attr_accessor :date                # 0-1 dateTime
      attr_accessor :reporter            # 0-1 Reference(Practitioner|PractitionerRole|Location|Organization)
      attr_accessor :period              # 1-1 Period
      attr_accessor :improvementNotation # 0-1 CodeableConcept
      attr_accessor :group               # 0-* [ MeasureReport::Group ]
      attr_accessor :evaluatedResource   # 0-* [ Reference(Resource) ]

      def resourceType
        'MeasureReport'
      end
    end
  end
end