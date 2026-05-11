module FHIR
  module R5
    class Permission < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['status']
      METADATA = {
        'id' => {'path'=>'Permission.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Permission.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Permission.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'Permission.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'Permission.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Permission.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Permission.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Permission.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/permission-status'=>['active', 'entered-in-error', 'draft', 'rejected']}, 'path'=>'Permission.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/permission-status'}},
        'asserter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/HealthcareService'], 'path'=>'Permission.asserter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'date' => {'path'=>'Permission.date', 'type'=>'dateTime', 'min'=>0, 'max'=>Float::INFINITY},
        'validity' => {'path'=>'Permission.validity', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'justification' => {'path'=>'Permission.justification', 'type'=>'Permission::Justification', 'min'=>0, 'max'=>1},
        'combining' => {'valid_codes'=>{'http://hl7.org/fhir/permission-rule-combining'=>['deny-overrides', 'permit-overrides', 'ordered-deny-overrides', 'ordered-permit-overrides', 'deny-unless-permit', 'permit-unless-deny']}, 'path'=>'Permission.combining', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/permission-rule-combining'}},
        'rule' => {'path'=>'Permission.rule', 'type'=>'Permission::Rule', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Justification < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Justification.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Justification.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Justification.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'basis' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/consentpolicycodes'=>['cric', 'illinois-minor-procedure', 'hipaa-auth', 'hipaa-npp', 'hipaa-restrictions', 'hipaa-research', 'hipaa-self-pay', 'mdhhs-5515', 'nyssipp', 'va-10-0484', 'va-10-0485', 'va-10-5345', 'va-10-5345a', 'va-10-5345a-mhv', 'va-10-10116', 'va-21-4142', 'ssa-827', 'dch-3927', 'squaxin', 'nl-lsp', 'at-elga', 'nih-hipaa', 'nci', 'nih-grdr', 'nih-527', 'ga4gh', 'ch-epr']}, 'path'=>'Justification.basis', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/consent-policy'}},
          'evidence' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Justification.evidence', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :basis             # 0-* [ CodeableConcept ]
        attr_accessor :evidence          # 0-* [ Reference(Resource) ]
      end

      class Rule < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Rule.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Rule.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Rule.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/consent-provision-type'=>['deny', 'permit']}, 'path'=>'Rule.type', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/consent-provision-type'}},
          'data' => {'path'=>'Rule.data', 'type'=>'Permission::Rule::Data', 'min'=>0, 'max'=>Float::INFINITY},
          'activity' => {'path'=>'Rule.activity', 'type'=>'Permission::Rule::Activity', 'min'=>0, 'max'=>Float::INFINITY},
          'limit' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['TREAT', 'HPAYMT', 'ETREAT'], 'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['NOAUTH', 'DELAU', 'NORDSCLCD']}, 'path'=>'Rule.limit', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/security-label-event-examples'}}
        }

        class Data < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Data.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Data.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Data.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'resource' => {'path'=>'Data.resource', 'type'=>'Permission::Rule::Data::Resource', 'min'=>0, 'max'=>Float::INFINITY},
            'security' => {'path'=>'Data.security', 'type'=>'Coding', 'min'=>0, 'max'=>Float::INFINITY},
            'period' => {'path'=>'Data.period', 'type'=>'Period', 'min'=>0, 'max'=>Float::INFINITY},
            'expression' => {'path'=>'Data.expression', 'type'=>'Expression', 'min'=>0, 'max'=>1}
          }

          class Resource < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Resource.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Resource.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Resource.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'meaning' => {'valid_codes'=>{'http://hl7.org/fhir/consent-data-meaning'=>['instance', 'related', 'dependents', 'authoredby']}, 'path'=>'Resource.meaning', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/consent-data-meaning'}},
              'reference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Resource.reference', 'type'=>'Reference', 'min'=>1, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :meaning           # 1-1 code
            attr_accessor :reference         # 1-1 Reference(Resource)
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :resource          # 0-* [ Permission::Rule::Data::Resource ]
          attr_accessor :security          # 0-* [ Coding ]
          attr_accessor :period            # 0-* [ Period ]
          attr_accessor :expression        # 0-1 Expression
        end

        class Activity < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Activity.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Activity.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Activity.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'actor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'Activity.actor', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
            'action' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/consentaction'=>['collect', 'access', 'use', 'disclose', 'correct']}, 'path'=>'Activity.action', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/consent-action'}},
            'purpose' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['HMARKT', 'HOPERAT', 'CAREMGT', 'DONAT', 'FRAUD', 'GOV', 'HACCRED', 'HCOMPL', 'HDECD', 'HDIRECT', 'HDM', 'HLEGAL', 'HOUTCOMS', 'HPRGRP', 'HQUALIMP', 'HSYSADMIN', 'LABELING', 'METAMGT', 'MEMADMIN', 'MILCDM', 'PATADMIN', 'PATSFTY', 'PERFMSR', 'RECORDMGT', 'SYSDEV', 'HTEST', 'TRAIN', 'HPAYMT', 'CLMATTCH', 'COVAUTH', 'COVERAGE', 'ELIGDTRM', 'ELIGVER', 'ENROLLM', 'MILDCRG', 'REMITADV', 'HRESCH', 'BIORCH', 'CLINTRCH', 'CLINTRCHNPC', 'CLINTRCHPC', 'PRECLINTRCH', 'DSRCH', 'POARCH', 'TRANSRCH', 'PATRQT', 'FAMRQT', 'PWATRNY', 'SUPNWK', 'PUBHLTH', 'DISASTER', 'THREAT', 'TREAT', 'CLINTRL', 'COC', 'ETREAT', 'BTG', 'ERTREAT', 'POPHLTH']}, 'path'=>'Activity.purpose', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-PurposeOfUse'}}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :actor             # 0-* [ Reference(Device|Group|CareTeam|Organization|Patient|Practitioner|RelatedPerson|PractitionerRole) ]
          attr_accessor :action            # 0-* [ CodeableConcept ]
          attr_accessor :purpose           # 0-* [ CodeableConcept ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 code
        attr_accessor :data              # 0-* [ Permission::Rule::Data ]
        attr_accessor :activity          # 0-* [ Permission::Rule::Activity ]
        attr_accessor :limit             # 0-* [ CodeableConcept ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :status            # 1-1 code
      attr_accessor :asserter          # 0-1 Reference(Practitioner|PractitionerRole|Organization|CareTeam|Patient|RelatedPerson|HealthcareService)
      attr_accessor :date              # 0-* [ dateTime ]
      attr_accessor :validity          # 0-1 Period
      attr_accessor :justification     # 0-1 Permission::Justification
      attr_accessor :combining         # 1-1 code
      attr_accessor :rule              # 0-* [ Permission::Rule ]

      def resourceType
        'Permission'
      end
    end
  end
end