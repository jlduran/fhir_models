module FHIR
  module R5
    class RequestOrchestration < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['author', 'authored', 'based-on', 'code', 'encounter', 'group-identifier', 'identifier', 'instantiates-canonical', 'instantiates-uri', 'intent', 'participant', 'patient', 'priority', 'status', 'subject']
      METADATA = {
        'id' => {'path'=>'RequestOrchestration.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'RequestOrchestration.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'RequestOrchestration.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'RequestOrchestration.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'RequestOrchestration.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'RequestOrchestration.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'RequestOrchestration.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'RequestOrchestration.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'RequestOrchestration.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'instantiatesCanonical' => {'path'=>'RequestOrchestration.instantiatesCanonical', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY},
        'instantiatesUri' => {'path'=>'RequestOrchestration.instantiatesUri', 'type'=>'uri', 'min'=>0, 'max'=>Float::INFINITY},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'RequestOrchestration.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'replaces' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'RequestOrchestration.replaces', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'groupIdentifier' => {'path'=>'RequestOrchestration.groupIdentifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/request-status'=>['draft', 'active', 'on-hold', 'revoked', 'completed', 'entered-in-error', 'unknown']}, 'path'=>'RequestOrchestration.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-status'}},
        'intent' => {'valid_codes'=>{'http://hl7.org/fhir/request-intent'=>['proposal', 'plan', 'directive', 'order', 'original-order', 'reflex-order', 'filler-order', 'instance-order', 'option']}, 'path'=>'RequestOrchestration.intent', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-intent'}},
        'priority' => {'valid_codes'=>{'http://hl7.org/fhir/request-priority'=>['routine', 'urgent', 'asap', 'stat']}, 'path'=>'RequestOrchestration.priority', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-priority'}},
        'code' => {'valid_codes'=>{'http://hl7.org/fhir/action-code'=>['send-message', 'collect-information', 'prescribe-medication', 'recommend-immunization', 'order-service', 'propose-diagnosis', 'record-detected-issue', 'record-inference', 'report-flag']}, 'path'=>'RequestOrchestration.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/action-code'}},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/HealthcareService', 'http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'RequestOrchestration.subject', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'RequestOrchestration.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'authoredOn' => {'path'=>'RequestOrchestration.authoredOn', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'author' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'RequestOrchestration.author', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'reason' => {'path'=>'RequestOrchestration.reason', 'type'=>'CodeableReference', 'min'=>0, 'max'=>Float::INFINITY},
        'goal' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Goal'], 'path'=>'RequestOrchestration.goal', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'path'=>'RequestOrchestration.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
        'action' => {'path'=>'RequestOrchestration.action', 'type'=>'RequestOrchestration::Action', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Action < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'timing' => ['dateTime', 'Age', 'Period', 'Duration', 'Range', 'Timing'],
          'definition' => ['canonical', 'uri']
        }
        METADATA = {
          'id' => {'path'=>'Action.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Action.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Action.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'linkId' => {'path'=>'Action.linkId', 'type'=>'string', 'min'=>0, 'max'=>1},
          'prefix' => {'path'=>'Action.prefix', 'type'=>'string', 'min'=>0, 'max'=>1},
          'title' => {'path'=>'Action.title', 'type'=>'string', 'min'=>0, 'max'=>1},
          'description' => {'path'=>'Action.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
          'textEquivalent' => {'path'=>'Action.textEquivalent', 'type'=>'markdown', 'min'=>0, 'max'=>1},
          'priority' => {'valid_codes'=>{'http://hl7.org/fhir/request-priority'=>['routine', 'urgent', 'asap', 'stat']}, 'path'=>'Action.priority', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-priority'}},
          'code' => {'valid_codes'=>{'http://hl7.org/fhir/action-code'=>['send-message', 'collect-information', 'prescribe-medication', 'recommend-immunization', 'order-service', 'propose-diagnosis', 'record-detected-issue', 'record-inference', 'report-flag']}, 'path'=>'Action.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/action-code'}},
          'documentation' => {'path'=>'Action.documentation', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>Float::INFINITY},
          'goal' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Goal'], 'path'=>'Action.goal', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
          'condition' => {'path'=>'Action.condition', 'type'=>'RequestOrchestration::Action::Condition', 'min'=>0, 'max'=>Float::INFINITY},
          'input' => {'path'=>'Action.input', 'type'=>'RequestOrchestration::Action::Input', 'min'=>0, 'max'=>Float::INFINITY},
          'output' => {'path'=>'Action.output', 'type'=>'RequestOrchestration::Action::Output', 'min'=>0, 'max'=>Float::INFINITY},
          'relatedAction' => {'path'=>'Action.relatedAction', 'type'=>'RequestOrchestration::Action::RelatedAction', 'min'=>0, 'max'=>Float::INFINITY},
          'timingDateTime' => {'path'=>'Action.timing[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'timingAge' => {'path'=>'Action.timing[x]', 'type'=>'Age', 'min'=>0, 'max'=>1},
          'timingPeriod' => {'path'=>'Action.timing[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'timingDuration' => {'path'=>'Action.timing[x]', 'type'=>'Duration', 'min'=>0, 'max'=>1},
          'timingRange' => {'path'=>'Action.timing[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
          'timingTiming' => {'path'=>'Action.timing[x]', 'type'=>'Timing', 'min'=>0, 'max'=>1},
          'location' => {'path'=>'Action.location', 'type'=>'CodeableReference', 'min'=>0, 'max'=>1},
          'participant' => {'path'=>'Action.participant', 'type'=>'RequestOrchestration::Action::Participant', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/action-type'=>['create', 'update', 'remove', 'fire-event']}, 'path'=>'Action.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/action-type'}},
          'groupingBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-grouping-behavior'=>['visual-group', 'logical-group', 'sentence-group']}, 'path'=>'Action.groupingBehavior', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-grouping-behavior'}},
          'selectionBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-selection-behavior'=>['any', 'all', 'all-or-none', 'exactly-one', 'at-most-one', 'one-or-more']}, 'path'=>'Action.selectionBehavior', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-selection-behavior'}},
          'requiredBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-required-behavior'=>['must', 'could', 'must-unless-documented']}, 'path'=>'Action.requiredBehavior', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-required-behavior'}},
          'precheckBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-precheck-behavior'=>['yes', 'no']}, 'path'=>'Action.precheckBehavior', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-precheck-behavior'}},
          'cardinalityBehavior' => {'valid_codes'=>{'http://hl7.org/fhir/action-cardinality-behavior'=>['single', 'multiple']}, 'path'=>'Action.cardinalityBehavior', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-cardinality-behavior'}},
          'resource' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Action.resource', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'definitionCanonical' => {'path'=>'Action.definition[x]', 'type'=>'canonical', 'min'=>0, 'max'=>1},
          'definitionUri' => {'path'=>'Action.definition[x]', 'type'=>'uri', 'min'=>0, 'max'=>1},
          'transform' => {'path'=>'Action.transform', 'type'=>'canonical', 'min'=>0, 'max'=>1},
          'dynamicValue' => {'path'=>'Action.dynamicValue', 'type'=>'RequestOrchestration::Action::DynamicValue', 'min'=>0, 'max'=>Float::INFINITY},
          'action' => {'path'=>'Action.action', 'type'=>'RequestOrchestration::Action', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Condition < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Condition.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Condition.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Condition.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'kind' => {'valid_codes'=>{'http://hl7.org/fhir/action-condition-kind'=>['applicability', 'start', 'stop']}, 'path'=>'Condition.kind', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-condition-kind'}},
            'expression' => {'path'=>'Condition.expression', 'type'=>'Expression', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :kind              # 1-1 code
          attr_accessor :expression        # 0-1 Expression
        end

        class Input < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Input.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Input.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Input.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'title' => {'path'=>'Input.title', 'type'=>'string', 'min'=>0, 'max'=>1},
            'requirement' => {'path'=>'Input.requirement', 'type'=>'DataRequirement', 'min'=>0, 'max'=>1},
            'relatedData' => {'path'=>'Input.relatedData', 'type'=>'id', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :title             # 0-1 string
          attr_accessor :requirement       # 0-1 DataRequirement
          attr_accessor :relatedData       # 0-1 id
        end

        class Output < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Output.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Output.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Output.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'title' => {'path'=>'Output.title', 'type'=>'string', 'min'=>0, 'max'=>1},
            'requirement' => {'path'=>'Output.requirement', 'type'=>'DataRequirement', 'min'=>0, 'max'=>1},
            'relatedData' => {'path'=>'Output.relatedData', 'type'=>'string', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :title             # 0-1 string
          attr_accessor :requirement       # 0-1 DataRequirement
          attr_accessor :relatedData       # 0-1 string
        end

        class RelatedAction < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'offset' => ['Duration', 'Range']
          }
          METADATA = {
            'id' => {'path'=>'RelatedAction.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'RelatedAction.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'RelatedAction.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'targetId' => {'path'=>'RelatedAction.targetId', 'type'=>'id', 'min'=>1, 'max'=>1},
            'relationship' => {'valid_codes'=>{'http://hl7.org/fhir/action-relationship-type'=>['before', 'before-start', 'before-end', 'concurrent', 'concurrent-with-start', 'concurrent-with-end', 'after', 'after-start', 'after-end']}, 'path'=>'RelatedAction.relationship', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-relationship-type'}},
            'endRelationship' => {'valid_codes'=>{'http://hl7.org/fhir/action-relationship-type'=>['before', 'before-start', 'before-end', 'concurrent', 'concurrent-with-start', 'concurrent-with-end', 'after', 'after-start', 'after-end']}, 'path'=>'RelatedAction.endRelationship', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-relationship-type'}},
            'offsetDuration' => {'path'=>'RelatedAction.offset[x]', 'type'=>'Duration', 'min'=>0, 'max'=>1},
            'offsetRange' => {'path'=>'RelatedAction.offset[x]', 'type'=>'Range', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :targetId          # 1-1 id
          attr_accessor :relationship      # 1-1 code
          attr_accessor :endRelationship   # 0-1 code
          attr_accessor :offsetDuration    # 0-1 Duration
          attr_accessor :offsetRange       # 0-1 Range
        end

        class Participant < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'actor' => ['canonical', 'Reference']
          }
          METADATA = {
            'id' => {'path'=>'Participant.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Participant.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Participant.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://hl7.org/fhir/action-participant-type'=>['careteam', 'device', 'group', 'healthcareservice', 'location', 'organization', 'patient', 'practitioner', 'practitionerrole', 'relatedperson']}, 'path'=>'Participant.type', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/action-participant-type'}},
            'typeCanonical' => {'path'=>'Participant.typeCanonical', 'type'=>'canonical', 'min'=>0, 'max'=>1},
            'typeReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/DeviceDefinition', 'http://hl7.org/fhir/StructureDefinition/Endpoint', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/HealthcareService', 'http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'Participant.typeReference', 'type'=>'Reference', 'min'=>0, 'max'=>1},
            'role' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/practitioner-role'=>['doctor', 'nurse', 'pharmacist', 'researcher', 'teacher', 'ict'], 'http://snomed.info/sct'=>['223366009', '1421009', '3430008', '3842006', '4162009', '5275007', '6816002', '6868009', '8724009', '11661002', '11911009', '11935004', '13580004', '14698002', '17561000', '18803008', '18850004', '19244007', '20145008', '21365001', '21450003', '22515006', '22731001', '22983004', '23278007', '24430003', '24590004', '25961008', '26042002', '26369006', '28229004', '28411006', '28544002', '36682004', '37154003', '37504001', '39677007', '40127002', '40204001', '40570005', '41672002', '41904004', '43702002', '44652006', '45440000', '45544007', '45956004', '46255001', '48740002', '49203003', '49993003', '50149000', '54503009', '56397003', '56466003', '56542007', '56545009', '57654006', '59058001', '59169001', '59317003', '59944000', '60008001', '61207006', '61246008', '61345009', '61894003', '62247001', '63098009', '66476003', '66862007', '68867008', '68950000', '69280009', '71838004', '73265009', '75271001', '76166008', '76231001', '76899008', '78703002', '78729002', '79898004', '80409005', '80546007', '80584001', '80933006', '81464008', '82296001', '83273008', '83685006', '85733003', '88189002', '90201008', '90655003', '106289002', '106291005', '106292003', '106293008', '106294002', '106296000', '106330007', '158965000', '158966004', '158967008', '158968003', '158969006', '158971006', '158972004', '158973009', '158974003', '158975002', '158977005', '158978000', '158979008', '158980006', '158983008', '158984002', '158985001', '158986000', '158987009', '158988004', '158989007', '158990003', '158992006', '158993001', '158994007', '158995008', '158996009', '158997000', '158998005', '158999002', '159001001', '159002008', '159003003', '159004009', '159005005', '159006006', '159007002', '159010009', '159011008', '159012001', '159014000', '159016003', '159017007', '159018002', '159019005', '159021000', '159022007', '159025009', '159026005', '159027001', '159028006', '159033005', '159034004', '159035003', '159036002', '159037006', '159038001', '159039009', '159040006', '159041005', '159141008', '159972006', '160008000', '224529009', '224530004', '224531000', '224532007', '224533002', '224534008', '224535009', '224536005', '224537001', '224538006', '224540001', '224541002', '224542009', '224543004', '224544005', '224545006', '224546007', '224547003', '224548008', '224549000', '224550000', '224551001', '224552008', '224554009', '224555005', '224556006', '224557002', '224558007', '224559004', '224560009', '224562001', '224563006', '224564000', '224565004', '224566003', '224567007', '224569005', '224570006', '224571005', '224572003', '224573008', '224574002', '224575001', '224576000', '224577009', '224578004', '224579007', '224580005', '224581009', '224583007', '224584001', '224585000', '224586004', '224587008', '224588003', '224589006', '224590002', '224591003', '224592005', '224593000', '224594006', '224595007', '224596008', '224597004', '224598009', '224599001', '224600003', '224601004', '224602006', '224603001', '224604007', '224606009', '224607000', '224608005', '224609002', '224610007', '224614003', '224615002', '224620002', '224621003', '224622005', '224623000', '224624006', '224625007', '224626008', '224936003', '225726006', '225727002', '265937000', '265939002', '283875005', '302211009', '303124005', '303129000', '303133007', '303134001', '304291006', '304292004', '307988006', '308002005', '309294001', '309295000', '309296004', '309322005', '309323000', '309324006', '309326008', '309327004', '309328009', '309329001', '309330006', '309331005', '309332003', '309333008', '309334002', '309335001', '309336000', '309337009', '309338004', '309339007', '309340009', '309341008', '309342001', '309343006', '309345004', '309346003', '309347007', '309348002', '309349005', '309350005', '309351009', '309352002', '309353007', '309354001', '309355000', '309356004', '309357008', '309358003', '309359006', '309360001', '309361002', '309362009', '309363004', '309364005', '309366007', '309367003', '309368008', '309369000', '309371000', '309372007', '309373002', '309374008', '309375009', '309376005', '309377001', '309378006', '309379003', '309380000', '309381001', '309382008', '309383003', '309384009', '309385005', '309386006', '309388007', '309389004', '309390008', '309391007', '309392000', '309393005', '309394004', '309395003', '309396002', '309397006', '309398001', '309399009', '309400002', '309401003', '309402005', '309403000', '309404006', '309409001', '309410006', '309411005', '309412003', '309413008', '309414002', '309415001', '309416000', '309417009', '309418004', '309419007', '309420001', '309421002', '309422009', '309423004', '309427003', '309428008', '309429000', '309434001', '309435000', '309436004', '309437008', '309439006', '309440008', '309441007', '309442000', '309443005', '309444004', '309445003', '309446002', '309450009', '309452001', '309453006', '309454000', '309455004', '309459005', '309460000', '310170009', '310171008', '310172001', '310173006', '310174000', '310175004', '310176003', '310177007', '310178002', '310179005', '310180008', '310181007', '310182000', '310184004', '310185003', '310186002', '310187006', '310188001', '310189009', '310190000', '310191001', '310192008', '310193003', '310194009', '310512001', '311441001', '312485001', '372102007', '387619007', '394572006', '394618009', '397897005', '397903001', '397908005', '398130009', '398238009', '404940000', '405277009', '405278004', '405279007', '405623001', '405684005', '405685006', '408798009', '408799001', '409974004', '409975003', '413854007', '415075003', '415506007', '416160000', '420409002', '420678001', '421841007', '422140007', '422234006', '432100008', '442867008', '443090005', '444912007', '445313000', '445451001', '446050000', '446701002', '449161006', '471302004', '720503005', '721936008', '721937004', '721938009', '721939001', '721940004', '721941000', '721942007', '721943002', '734293001', '734294007', '763292005', '768730001', '768731002', '768732009', '768819009', '768825008', '768826009', '768827000', '768828005', '768829002', '768832004', '768833009', '768834003', '768836001', '768837005', '768839008', '789543004', '840583002', '840584008', '878785002', '878786001', '878787005', '897187007', '1172950003', '1186716007', '1186914001', '3981000175106', '9371000175105', '25941000087102', '26031000087100', '26071000087103', '26091000087104', '450044741000087104'], 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType'=>['WIT'], 'http://terminology.hl7.org/CodeSystem/v3-RoleClass'=>['NOT', 'ECON', 'NOK', 'GUARD', 'DEPEN', 'EMP', 'GUAR', 'CAREGIVER'], 'http://terminology.hl7.org/CodeSystem/v2-0131'=>['E', 'O', 'U'], 'http://terminology.hl7.org/CodeSystem/v3-RoleCode'=>['INTPRTER', 'POWATT', 'DPOWATT', 'HPOWATT', 'SPOWATT', 'BILL']}, 'path'=>'Participant.role', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/action-participant-role'}},
            'function' => {'valid_codes'=>{'http://hl7.org/fhir/action-participant-function'=>['performer', 'author', 'reviewer', 'witness']}, 'path'=>'Participant.function', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/action-participant-function'}},
            'actorCanonical' => {'path'=>'Participant.actor[x]', 'type'=>'canonical', 'min'=>0, 'max'=>1},
            'actorReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/DeviceDefinition', 'http://hl7.org/fhir/StructureDefinition/Endpoint', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/HealthcareService', 'http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'Participant.actor[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 0-1 code
          attr_accessor :typeCanonical     # 0-1 canonical
          attr_accessor :typeReference     # 0-1 Reference(CareTeam|Device|DeviceDefinition|Endpoint|Group|HealthcareService|Location|Organization|Patient|Practitioner|PractitionerRole|RelatedPerson)
          attr_accessor :role              # 0-1 CodeableConcept
          attr_accessor :function          # 0-1 CodeableConcept
          attr_accessor :actorCanonical    # 0-1 canonical
          attr_accessor :actorReference    # 0-1 Reference(CareTeam|Device|DeviceDefinition|Endpoint|Group|HealthcareService|Location|Organization|Patient|Practitioner|PractitionerRole|RelatedPerson)
        end

        class DynamicValue < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'DynamicValue.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'DynamicValue.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'DynamicValue.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'path' => {'path'=>'DynamicValue.path', 'type'=>'string', 'min'=>0, 'max'=>1},
            'expression' => {'path'=>'DynamicValue.expression', 'type'=>'Expression', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :path              # 0-1 string
          attr_accessor :expression        # 0-1 Expression
        end

        attr_accessor :id                  # 0-1 string
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :linkId              # 0-1 string
        attr_accessor :prefix              # 0-1 string
        attr_accessor :title               # 0-1 string
        attr_accessor :description         # 0-1 markdown
        attr_accessor :textEquivalent      # 0-1 markdown
        attr_accessor :priority            # 0-1 code
        attr_accessor :code                # 0-* [ CodeableConcept ]
        attr_accessor :documentation       # 0-* [ RelatedArtifact ]
        attr_accessor :goal                # 0-* [ Reference(Goal) ]
        attr_accessor :condition           # 0-* [ RequestOrchestration::Action::Condition ]
        attr_accessor :input               # 0-* [ RequestOrchestration::Action::Input ]
        attr_accessor :output              # 0-* [ RequestOrchestration::Action::Output ]
        attr_accessor :relatedAction       # 0-* [ RequestOrchestration::Action::RelatedAction ]
        attr_accessor :timingDateTime      # 0-1 dateTime
        attr_accessor :timingAge           # 0-1 Age
        attr_accessor :timingPeriod        # 0-1 Period
        attr_accessor :timingDuration      # 0-1 Duration
        attr_accessor :timingRange         # 0-1 Range
        attr_accessor :timingTiming        # 0-1 Timing
        attr_accessor :location            # 0-1 CodeableReference
        attr_accessor :participant         # 0-* [ RequestOrchestration::Action::Participant ]
        attr_accessor :type                # 0-1 CodeableConcept
        attr_accessor :groupingBehavior    # 0-1 code
        attr_accessor :selectionBehavior   # 0-1 code
        attr_accessor :requiredBehavior    # 0-1 code
        attr_accessor :precheckBehavior    # 0-1 code
        attr_accessor :cardinalityBehavior # 0-1 code
        attr_accessor :resource            # 0-1 Reference(Resource)
        attr_accessor :definitionCanonical # 0-1 canonical
        attr_accessor :definitionUri       # 0-1 uri
        attr_accessor :transform           # 0-1 canonical
        attr_accessor :dynamicValue        # 0-* [ RequestOrchestration::Action::DynamicValue ]
        attr_accessor :action              # 0-* [ RequestOrchestration::Action ]
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
      attr_accessor :instantiatesCanonical # 0-* [ canonical ]
      attr_accessor :instantiatesUri       # 0-* [ uri ]
      attr_accessor :basedOn               # 0-* [ Reference(Resource) ]
      attr_accessor :replaces              # 0-* [ Reference(Resource) ]
      attr_accessor :groupIdentifier       # 0-1 Identifier
      attr_accessor :status                # 1-1 code
      attr_accessor :intent                # 1-1 code
      attr_accessor :priority              # 0-1 code
      attr_accessor :code                  # 0-1 CodeableConcept
      attr_accessor :subject               # 0-1 Reference(CareTeam|Device|Group|HealthcareService|Location|Organization|Patient|Practitioner|PractitionerRole|RelatedPerson)
      attr_accessor :encounter             # 0-1 Reference(Encounter)
      attr_accessor :authoredOn            # 0-1 dateTime
      attr_accessor :author                # 0-1 Reference(Device|Practitioner|PractitionerRole)
      attr_accessor :reason                # 0-* [ CodeableReference ]
      attr_accessor :goal                  # 0-* [ Reference(Goal) ]
      attr_accessor :note                  # 0-* [ Annotation ]
      attr_accessor :action                # 0-* [ RequestOrchestration::Action ]

      def resourceType
        'RequestOrchestration'
      end
    end
  end
end