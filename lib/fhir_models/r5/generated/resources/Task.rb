module FHIR
  module R5
    class Task < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['actor', 'authored-on', 'based-on', 'business-status', 'code', 'encounter', 'focus', 'group-identifier', 'identifier', 'intent', 'modified', 'output', 'owner', 'part-of', 'patient', 'performer', 'period', 'priority', 'requestedperformer-reference', 'requester', 'status', 'subject']
      METADATA = {
        'id' => {'path'=>'Task.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Task.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Task.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'Task.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'Task.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Task.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Task.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Task.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Task.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'instantiatesCanonical' => {'path'=>'Task.instantiatesCanonical', 'type'=>'canonical', 'min'=>0, 'max'=>1},
        'instantiatesUri' => {'path'=>'Task.instantiatesUri', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Task.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'groupIdentifier' => {'path'=>'Task.groupIdentifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'partOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Task'], 'path'=>'Task.partOf', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/task-status'=>['draft', 'requested', 'received', 'accepted', 'rejected', 'ready', 'cancelled', 'in-progress', 'on-hold', 'failed', 'completed', 'entered-in-error']}, 'path'=>'Task.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/task-status'}},
        'statusReason' => {'path'=>'Task.statusReason', 'type'=>'CodeableReference', 'min'=>0, 'max'=>1},
        'businessStatus' => {'path'=>'Task.businessStatus', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
        'intent' => {'valid_codes'=>{'http://hl7.org/fhir/task-intent'=>['unknown'], 'http://hl7.org/fhir/request-intent'=>['proposal', 'plan', 'order', 'original-order', 'reflex-order', 'filler-order', 'instance-order', 'option']}, 'path'=>'Task.intent', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/task-intent'}},
        'priority' => {'valid_codes'=>{'http://hl7.org/fhir/request-priority'=>['routine', 'urgent', 'asap', 'stat']}, 'path'=>'Task.priority', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-priority'}},
        'doNotPerform' => {'path'=>'Task.doNotPerform', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'code' => {'valid_codes'=>{'http://hl7.org/fhir/CodeSystem/task-code'=>['approve', 'fulfill', 'instantiate', 'abort', 'replace', 'change', 'suspend', 'resume']}, 'path'=>'Task.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/task-code'}},
        'description' => {'path'=>'Task.description', 'type'=>'string', 'min'=>0, 'max'=>1},
        'focus' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Task.focus', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'for' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Task.for', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'Task.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'requestedPeriod' => {'path'=>'Task.requestedPeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'executionPeriod' => {'path'=>'Task.executionPeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'authoredOn' => {'path'=>'Task.authoredOn', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'lastModified' => {'path'=>'Task.lastModified', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'requester' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'Task.requester', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'requestedPerformer' => {'path'=>'Task.requestedPerformer', 'type'=>'CodeableReference', 'min'=>0, 'max'=>Float::INFINITY},
        'owner' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'Task.owner', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'performer' => {'path'=>'Task.performer', 'type'=>'Task::Performer', 'min'=>0, 'max'=>Float::INFINITY},
        'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'Task.location', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'reason' => {'path'=>'Task.reason', 'type'=>'CodeableReference', 'min'=>0, 'max'=>Float::INFINITY},
        'insurance' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Coverage', 'http://hl7.org/fhir/StructureDefinition/ClaimResponse'], 'path'=>'Task.insurance', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'path'=>'Task.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
        'relevantHistory' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Provenance'], 'path'=>'Task.relevantHistory', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'restriction' => {'path'=>'Task.restriction', 'type'=>'Task::Restriction', 'min'=>0, 'max'=>1},
        'input' => {'path'=>'Task.input', 'type'=>'Task::Input', 'min'=>0, 'max'=>Float::INFINITY},
        'output' => {'path'=>'Task.output', 'type'=>'Task::Output', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Performer < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Performer.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Performer.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Performer.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'function' => {'path'=>'Performer.function', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
          'actor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'Performer.actor', 'type'=>'Reference', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :function          # 0-1 CodeableConcept
        attr_accessor :actor             # 1-1 Reference(Practitioner|PractitionerRole|Organization|CareTeam|Patient|RelatedPerson)
      end

      class Restriction < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Restriction.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Restriction.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Restriction.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'repetitions' => {'path'=>'Restriction.repetitions', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
          'period' => {'path'=>'Restriction.period', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'recipient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Restriction.recipient', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :repetitions       # 0-1 positiveInt
        attr_accessor :period            # 0-1 Period
        attr_accessor :recipient         # 0-* [ Reference(Patient|Practitioner|PractitionerRole|RelatedPerson|Group|Organization) ]
      end

      class Input < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'value' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'integer64', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'CodeableReference', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'RatioRange', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Availability', 'ExtendedContactDetail', 'Dosage', 'Meta']
        }
        METADATA = {
          'id' => {'path'=>'Input.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Input.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Input.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'path'=>'Input.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example'}},
          'valueBase64Binary' => {'path'=>'Input.value[x]', 'type'=>'base64Binary', 'min'=>1, 'max'=>1},
          'valueBoolean' => {'path'=>'Input.value[x]', 'type'=>'boolean', 'min'=>1, 'max'=>1},
          'valueCanonical' => {'path'=>'Input.value[x]', 'type'=>'canonical', 'min'=>1, 'max'=>1},
          'valueCode' => {'path'=>'Input.value[x]', 'type'=>'code', 'min'=>1, 'max'=>1},
          'valueDate' => {'path'=>'Input.value[x]', 'type'=>'date', 'min'=>1, 'max'=>1},
          'valueDateTime' => {'path'=>'Input.value[x]', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
          'valueDecimal' => {'path'=>'Input.value[x]', 'type'=>'decimal', 'min'=>1, 'max'=>1},
          'valueId' => {'path'=>'Input.value[x]', 'type'=>'id', 'min'=>1, 'max'=>1},
          'valueInstant' => {'path'=>'Input.value[x]', 'type'=>'instant', 'min'=>1, 'max'=>1},
          'valueInteger' => {'path'=>'Input.value[x]', 'type'=>'integer', 'min'=>1, 'max'=>1},
          'valueInteger64' => {'path'=>'Input.value[x]', 'type'=>'integer64', 'min'=>1, 'max'=>1},
          'valueMarkdown' => {'path'=>'Input.value[x]', 'type'=>'markdown', 'min'=>1, 'max'=>1},
          'valueOid' => {'path'=>'Input.value[x]', 'type'=>'oid', 'min'=>1, 'max'=>1},
          'valuePositiveInt' => {'path'=>'Input.value[x]', 'type'=>'positiveInt', 'min'=>1, 'max'=>1},
          'valueString' => {'path'=>'Input.value[x]', 'type'=>'string', 'min'=>1, 'max'=>1},
          'valueTime' => {'path'=>'Input.value[x]', 'type'=>'time', 'min'=>1, 'max'=>1},
          'valueUnsignedInt' => {'path'=>'Input.value[x]', 'type'=>'unsignedInt', 'min'=>1, 'max'=>1},
          'valueUri' => {'path'=>'Input.value[x]', 'type'=>'uri', 'min'=>1, 'max'=>1},
          'valueUrl' => {'path'=>'Input.value[x]', 'type'=>'url', 'min'=>1, 'max'=>1},
          'valueUuid' => {'path'=>'Input.value[x]', 'type'=>'uuid', 'min'=>1, 'max'=>1},
          'valueAddress' => {'path'=>'Input.value[x]', 'type'=>'Address', 'min'=>1, 'max'=>1},
          'valueAge' => {'path'=>'Input.value[x]', 'type'=>'Age', 'min'=>1, 'max'=>1},
          'valueAnnotation' => {'path'=>'Input.value[x]', 'type'=>'Annotation', 'min'=>1, 'max'=>1},
          'valueAttachment' => {'path'=>'Input.value[x]', 'type'=>'Attachment', 'min'=>1, 'max'=>1},
          'valueCodeableConcept' => {'path'=>'Input.value[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'valueCodeableReference' => {'path'=>'Input.value[x]', 'type'=>'CodeableReference', 'min'=>1, 'max'=>1},
          'valueCoding' => {'path'=>'Input.value[x]', 'type'=>'Coding', 'min'=>1, 'max'=>1},
          'valueContactPoint' => {'path'=>'Input.value[x]', 'type'=>'ContactPoint', 'min'=>1, 'max'=>1},
          'valueCount' => {'path'=>'Input.value[x]', 'type'=>'Count', 'min'=>1, 'max'=>1},
          'valueDistance' => {'path'=>'Input.value[x]', 'type'=>'Distance', 'min'=>1, 'max'=>1},
          'valueDuration' => {'path'=>'Input.value[x]', 'type'=>'Duration', 'min'=>1, 'max'=>1},
          'valueHumanName' => {'path'=>'Input.value[x]', 'type'=>'HumanName', 'min'=>1, 'max'=>1},
          'valueIdentifier' => {'path'=>'Input.value[x]', 'type'=>'Identifier', 'min'=>1, 'max'=>1},
          'valueMoney' => {'path'=>'Input.value[x]', 'type'=>'Money', 'min'=>1, 'max'=>1},
          'valuePeriod' => {'path'=>'Input.value[x]', 'type'=>'Period', 'min'=>1, 'max'=>1},
          'valueQuantity' => {'path'=>'Input.value[x]', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
          'valueRange' => {'path'=>'Input.value[x]', 'type'=>'Range', 'min'=>1, 'max'=>1},
          'valueRatio' => {'path'=>'Input.value[x]', 'type'=>'Ratio', 'min'=>1, 'max'=>1},
          'valueRatioRange' => {'path'=>'Input.value[x]', 'type'=>'RatioRange', 'min'=>1, 'max'=>1},
          'valueReference' => {'path'=>'Input.value[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'valueSampledData' => {'path'=>'Input.value[x]', 'type'=>'SampledData', 'min'=>1, 'max'=>1},
          'valueSignature' => {'path'=>'Input.value[x]', 'type'=>'Signature', 'min'=>1, 'max'=>1},
          'valueTiming' => {'path'=>'Input.value[x]', 'type'=>'Timing', 'min'=>1, 'max'=>1},
          'valueContactDetail' => {'path'=>'Input.value[x]', 'type'=>'ContactDetail', 'min'=>1, 'max'=>1},
          'valueDataRequirement' => {'path'=>'Input.value[x]', 'type'=>'DataRequirement', 'min'=>1, 'max'=>1},
          'valueExpression' => {'path'=>'Input.value[x]', 'type'=>'Expression', 'min'=>1, 'max'=>1},
          'valueParameterDefinition' => {'path'=>'Input.value[x]', 'type'=>'ParameterDefinition', 'min'=>1, 'max'=>1},
          'valueRelatedArtifact' => {'path'=>'Input.value[x]', 'type'=>'RelatedArtifact', 'min'=>1, 'max'=>1},
          'valueTriggerDefinition' => {'path'=>'Input.value[x]', 'type'=>'TriggerDefinition', 'min'=>1, 'max'=>1},
          'valueUsageContext' => {'path'=>'Input.value[x]', 'type'=>'UsageContext', 'min'=>1, 'max'=>1},
          'valueAvailability' => {'path'=>'Input.value[x]', 'type'=>'Availability', 'min'=>1, 'max'=>1},
          'valueExtendedContactDetail' => {'path'=>'Input.value[x]', 'type'=>'ExtendedContactDetail', 'min'=>1, 'max'=>1},
          'valueDosage' => {'path'=>'Input.value[x]', 'type'=>'Dosage', 'min'=>1, 'max'=>1},
          'valueMeta' => {'path'=>'Input.value[x]', 'type'=>'Meta', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                         # 0-1 string
        attr_accessor :extension                  # 0-* [ Extension ]
        attr_accessor :modifierExtension          # 0-* [ Extension ]
        attr_accessor :type                       # 1-1 CodeableConcept
        attr_accessor :valueBase64Binary          # 1-1 base64Binary
        attr_accessor :valueBoolean               # 1-1 boolean
        attr_accessor :valueCanonical             # 1-1 canonical
        attr_accessor :valueCode                  # 1-1 code
        attr_accessor :valueDate                  # 1-1 date
        attr_accessor :valueDateTime              # 1-1 dateTime
        attr_accessor :valueDecimal               # 1-1 decimal
        attr_accessor :valueId                    # 1-1 id
        attr_accessor :valueInstant               # 1-1 instant
        attr_accessor :valueInteger               # 1-1 integer
        attr_accessor :valueInteger64             # 1-1 integer64
        attr_accessor :valueMarkdown              # 1-1 markdown
        attr_accessor :valueOid                   # 1-1 oid
        attr_accessor :valuePositiveInt           # 1-1 positiveInt
        attr_accessor :valueString                # 1-1 string
        attr_accessor :valueTime                  # 1-1 time
        attr_accessor :valueUnsignedInt           # 1-1 unsignedInt
        attr_accessor :valueUri                   # 1-1 uri
        attr_accessor :valueUrl                   # 1-1 url
        attr_accessor :valueUuid                  # 1-1 uuid
        attr_accessor :valueAddress               # 1-1 Address
        attr_accessor :valueAge                   # 1-1 Age
        attr_accessor :valueAnnotation            # 1-1 Annotation
        attr_accessor :valueAttachment            # 1-1 Attachment
        attr_accessor :valueCodeableConcept       # 1-1 CodeableConcept
        attr_accessor :valueCodeableReference     # 1-1 CodeableReference
        attr_accessor :valueCoding                # 1-1 Coding
        attr_accessor :valueContactPoint          # 1-1 ContactPoint
        attr_accessor :valueCount                 # 1-1 Count
        attr_accessor :valueDistance              # 1-1 Distance
        attr_accessor :valueDuration              # 1-1 Duration
        attr_accessor :valueHumanName             # 1-1 HumanName
        attr_accessor :valueIdentifier            # 1-1 Identifier
        attr_accessor :valueMoney                 # 1-1 Money
        attr_accessor :valuePeriod                # 1-1 Period
        attr_accessor :valueQuantity              # 1-1 Quantity
        attr_accessor :valueRange                 # 1-1 Range
        attr_accessor :valueRatio                 # 1-1 Ratio
        attr_accessor :valueRatioRange            # 1-1 RatioRange
        attr_accessor :valueReference             # 1-1 Reference()
        attr_accessor :valueSampledData           # 1-1 SampledData
        attr_accessor :valueSignature             # 1-1 Signature
        attr_accessor :valueTiming                # 1-1 Timing
        attr_accessor :valueContactDetail         # 1-1 ContactDetail
        attr_accessor :valueDataRequirement       # 1-1 DataRequirement
        attr_accessor :valueExpression            # 1-1 Expression
        attr_accessor :valueParameterDefinition   # 1-1 ParameterDefinition
        attr_accessor :valueRelatedArtifact       # 1-1 RelatedArtifact
        attr_accessor :valueTriggerDefinition     # 1-1 TriggerDefinition
        attr_accessor :valueUsageContext          # 1-1 UsageContext
        attr_accessor :valueAvailability          # 1-1 Availability
        attr_accessor :valueExtendedContactDetail # 1-1 ExtendedContactDetail
        attr_accessor :valueDosage                # 1-1 Dosage
        attr_accessor :valueMeta                  # 1-1 Meta
      end

      class Output < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'value' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'integer64', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'CodeableReference', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'RatioRange', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Availability', 'ExtendedContactDetail', 'Dosage', 'Meta']
        }
        METADATA = {
          'id' => {'path'=>'Output.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Output.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Output.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'path'=>'Output.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example'}},
          'valueBase64Binary' => {'path'=>'Output.value[x]', 'type'=>'base64Binary', 'min'=>1, 'max'=>1},
          'valueBoolean' => {'path'=>'Output.value[x]', 'type'=>'boolean', 'min'=>1, 'max'=>1},
          'valueCanonical' => {'path'=>'Output.value[x]', 'type'=>'canonical', 'min'=>1, 'max'=>1},
          'valueCode' => {'path'=>'Output.value[x]', 'type'=>'code', 'min'=>1, 'max'=>1},
          'valueDate' => {'path'=>'Output.value[x]', 'type'=>'date', 'min'=>1, 'max'=>1},
          'valueDateTime' => {'path'=>'Output.value[x]', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
          'valueDecimal' => {'path'=>'Output.value[x]', 'type'=>'decimal', 'min'=>1, 'max'=>1},
          'valueId' => {'path'=>'Output.value[x]', 'type'=>'id', 'min'=>1, 'max'=>1},
          'valueInstant' => {'path'=>'Output.value[x]', 'type'=>'instant', 'min'=>1, 'max'=>1},
          'valueInteger' => {'path'=>'Output.value[x]', 'type'=>'integer', 'min'=>1, 'max'=>1},
          'valueInteger64' => {'path'=>'Output.value[x]', 'type'=>'integer64', 'min'=>1, 'max'=>1},
          'valueMarkdown' => {'path'=>'Output.value[x]', 'type'=>'markdown', 'min'=>1, 'max'=>1},
          'valueOid' => {'path'=>'Output.value[x]', 'type'=>'oid', 'min'=>1, 'max'=>1},
          'valuePositiveInt' => {'path'=>'Output.value[x]', 'type'=>'positiveInt', 'min'=>1, 'max'=>1},
          'valueString' => {'path'=>'Output.value[x]', 'type'=>'string', 'min'=>1, 'max'=>1},
          'valueTime' => {'path'=>'Output.value[x]', 'type'=>'time', 'min'=>1, 'max'=>1},
          'valueUnsignedInt' => {'path'=>'Output.value[x]', 'type'=>'unsignedInt', 'min'=>1, 'max'=>1},
          'valueUri' => {'path'=>'Output.value[x]', 'type'=>'uri', 'min'=>1, 'max'=>1},
          'valueUrl' => {'path'=>'Output.value[x]', 'type'=>'url', 'min'=>1, 'max'=>1},
          'valueUuid' => {'path'=>'Output.value[x]', 'type'=>'uuid', 'min'=>1, 'max'=>1},
          'valueAddress' => {'path'=>'Output.value[x]', 'type'=>'Address', 'min'=>1, 'max'=>1},
          'valueAge' => {'path'=>'Output.value[x]', 'type'=>'Age', 'min'=>1, 'max'=>1},
          'valueAnnotation' => {'path'=>'Output.value[x]', 'type'=>'Annotation', 'min'=>1, 'max'=>1},
          'valueAttachment' => {'path'=>'Output.value[x]', 'type'=>'Attachment', 'min'=>1, 'max'=>1},
          'valueCodeableConcept' => {'path'=>'Output.value[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'valueCodeableReference' => {'path'=>'Output.value[x]', 'type'=>'CodeableReference', 'min'=>1, 'max'=>1},
          'valueCoding' => {'path'=>'Output.value[x]', 'type'=>'Coding', 'min'=>1, 'max'=>1},
          'valueContactPoint' => {'path'=>'Output.value[x]', 'type'=>'ContactPoint', 'min'=>1, 'max'=>1},
          'valueCount' => {'path'=>'Output.value[x]', 'type'=>'Count', 'min'=>1, 'max'=>1},
          'valueDistance' => {'path'=>'Output.value[x]', 'type'=>'Distance', 'min'=>1, 'max'=>1},
          'valueDuration' => {'path'=>'Output.value[x]', 'type'=>'Duration', 'min'=>1, 'max'=>1},
          'valueHumanName' => {'path'=>'Output.value[x]', 'type'=>'HumanName', 'min'=>1, 'max'=>1},
          'valueIdentifier' => {'path'=>'Output.value[x]', 'type'=>'Identifier', 'min'=>1, 'max'=>1},
          'valueMoney' => {'path'=>'Output.value[x]', 'type'=>'Money', 'min'=>1, 'max'=>1},
          'valuePeriod' => {'path'=>'Output.value[x]', 'type'=>'Period', 'min'=>1, 'max'=>1},
          'valueQuantity' => {'path'=>'Output.value[x]', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
          'valueRange' => {'path'=>'Output.value[x]', 'type'=>'Range', 'min'=>1, 'max'=>1},
          'valueRatio' => {'path'=>'Output.value[x]', 'type'=>'Ratio', 'min'=>1, 'max'=>1},
          'valueRatioRange' => {'path'=>'Output.value[x]', 'type'=>'RatioRange', 'min'=>1, 'max'=>1},
          'valueReference' => {'path'=>'Output.value[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'valueSampledData' => {'path'=>'Output.value[x]', 'type'=>'SampledData', 'min'=>1, 'max'=>1},
          'valueSignature' => {'path'=>'Output.value[x]', 'type'=>'Signature', 'min'=>1, 'max'=>1},
          'valueTiming' => {'path'=>'Output.value[x]', 'type'=>'Timing', 'min'=>1, 'max'=>1},
          'valueContactDetail' => {'path'=>'Output.value[x]', 'type'=>'ContactDetail', 'min'=>1, 'max'=>1},
          'valueDataRequirement' => {'path'=>'Output.value[x]', 'type'=>'DataRequirement', 'min'=>1, 'max'=>1},
          'valueExpression' => {'path'=>'Output.value[x]', 'type'=>'Expression', 'min'=>1, 'max'=>1},
          'valueParameterDefinition' => {'path'=>'Output.value[x]', 'type'=>'ParameterDefinition', 'min'=>1, 'max'=>1},
          'valueRelatedArtifact' => {'path'=>'Output.value[x]', 'type'=>'RelatedArtifact', 'min'=>1, 'max'=>1},
          'valueTriggerDefinition' => {'path'=>'Output.value[x]', 'type'=>'TriggerDefinition', 'min'=>1, 'max'=>1},
          'valueUsageContext' => {'path'=>'Output.value[x]', 'type'=>'UsageContext', 'min'=>1, 'max'=>1},
          'valueAvailability' => {'path'=>'Output.value[x]', 'type'=>'Availability', 'min'=>1, 'max'=>1},
          'valueExtendedContactDetail' => {'path'=>'Output.value[x]', 'type'=>'ExtendedContactDetail', 'min'=>1, 'max'=>1},
          'valueDosage' => {'path'=>'Output.value[x]', 'type'=>'Dosage', 'min'=>1, 'max'=>1},
          'valueMeta' => {'path'=>'Output.value[x]', 'type'=>'Meta', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                         # 0-1 string
        attr_accessor :extension                  # 0-* [ Extension ]
        attr_accessor :modifierExtension          # 0-* [ Extension ]
        attr_accessor :type                       # 1-1 CodeableConcept
        attr_accessor :valueBase64Binary          # 1-1 base64Binary
        attr_accessor :valueBoolean               # 1-1 boolean
        attr_accessor :valueCanonical             # 1-1 canonical
        attr_accessor :valueCode                  # 1-1 code
        attr_accessor :valueDate                  # 1-1 date
        attr_accessor :valueDateTime              # 1-1 dateTime
        attr_accessor :valueDecimal               # 1-1 decimal
        attr_accessor :valueId                    # 1-1 id
        attr_accessor :valueInstant               # 1-1 instant
        attr_accessor :valueInteger               # 1-1 integer
        attr_accessor :valueInteger64             # 1-1 integer64
        attr_accessor :valueMarkdown              # 1-1 markdown
        attr_accessor :valueOid                   # 1-1 oid
        attr_accessor :valuePositiveInt           # 1-1 positiveInt
        attr_accessor :valueString                # 1-1 string
        attr_accessor :valueTime                  # 1-1 time
        attr_accessor :valueUnsignedInt           # 1-1 unsignedInt
        attr_accessor :valueUri                   # 1-1 uri
        attr_accessor :valueUrl                   # 1-1 url
        attr_accessor :valueUuid                  # 1-1 uuid
        attr_accessor :valueAddress               # 1-1 Address
        attr_accessor :valueAge                   # 1-1 Age
        attr_accessor :valueAnnotation            # 1-1 Annotation
        attr_accessor :valueAttachment            # 1-1 Attachment
        attr_accessor :valueCodeableConcept       # 1-1 CodeableConcept
        attr_accessor :valueCodeableReference     # 1-1 CodeableReference
        attr_accessor :valueCoding                # 1-1 Coding
        attr_accessor :valueContactPoint          # 1-1 ContactPoint
        attr_accessor :valueCount                 # 1-1 Count
        attr_accessor :valueDistance              # 1-1 Distance
        attr_accessor :valueDuration              # 1-1 Duration
        attr_accessor :valueHumanName             # 1-1 HumanName
        attr_accessor :valueIdentifier            # 1-1 Identifier
        attr_accessor :valueMoney                 # 1-1 Money
        attr_accessor :valuePeriod                # 1-1 Period
        attr_accessor :valueQuantity              # 1-1 Quantity
        attr_accessor :valueRange                 # 1-1 Range
        attr_accessor :valueRatio                 # 1-1 Ratio
        attr_accessor :valueRatioRange            # 1-1 RatioRange
        attr_accessor :valueReference             # 1-1 Reference()
        attr_accessor :valueSampledData           # 1-1 SampledData
        attr_accessor :valueSignature             # 1-1 Signature
        attr_accessor :valueTiming                # 1-1 Timing
        attr_accessor :valueContactDetail         # 1-1 ContactDetail
        attr_accessor :valueDataRequirement       # 1-1 DataRequirement
        attr_accessor :valueExpression            # 1-1 Expression
        attr_accessor :valueParameterDefinition   # 1-1 ParameterDefinition
        attr_accessor :valueRelatedArtifact       # 1-1 RelatedArtifact
        attr_accessor :valueTriggerDefinition     # 1-1 TriggerDefinition
        attr_accessor :valueUsageContext          # 1-1 UsageContext
        attr_accessor :valueAvailability          # 1-1 Availability
        attr_accessor :valueExtendedContactDetail # 1-1 ExtendedContactDetail
        attr_accessor :valueDosage                # 1-1 Dosage
        attr_accessor :valueMeta                  # 1-1 Meta
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
      attr_accessor :instantiatesCanonical # 0-1 canonical
      attr_accessor :instantiatesUri       # 0-1 uri
      attr_accessor :basedOn               # 0-* [ Reference(Resource) ]
      attr_accessor :groupIdentifier       # 0-1 Identifier
      attr_accessor :partOf                # 0-* [ Reference(Task) ]
      attr_accessor :status                # 1-1 code
      attr_accessor :statusReason          # 0-1 CodeableReference
      attr_accessor :businessStatus        # 0-1 CodeableConcept
      attr_accessor :intent                # 1-1 code
      attr_accessor :priority              # 0-1 code
      attr_accessor :doNotPerform          # 0-1 boolean
      attr_accessor :code                  # 0-1 CodeableConcept
      attr_accessor :description           # 0-1 string
      attr_accessor :focus                 # 0-1 Reference(Resource)
      attr_accessor :for                   # 0-1 Reference(Resource)
      attr_accessor :encounter             # 0-1 Reference(Encounter)
      attr_accessor :requestedPeriod       # 0-1 Period
      attr_accessor :executionPeriod       # 0-1 Period
      attr_accessor :authoredOn            # 0-1 dateTime
      attr_accessor :lastModified          # 0-1 dateTime
      attr_accessor :requester             # 0-1 Reference(Device|Organization|Patient|Practitioner|PractitionerRole|RelatedPerson)
      attr_accessor :requestedPerformer    # 0-* [ CodeableReference ]
      attr_accessor :owner                 # 0-1 Reference(Practitioner|PractitionerRole|Organization|CareTeam|Patient|RelatedPerson)
      attr_accessor :performer             # 0-* [ Task::Performer ]
      attr_accessor :location              # 0-1 Reference(Location)
      attr_accessor :reason                # 0-* [ CodeableReference ]
      attr_accessor :insurance             # 0-* [ Reference(Coverage|ClaimResponse) ]
      attr_accessor :note                  # 0-* [ Annotation ]
      attr_accessor :relevantHistory       # 0-* [ Reference(Provenance) ]
      attr_accessor :restriction           # 0-1 Task::Restriction
      attr_accessor :input                 # 0-* [ Task::Input ]
      attr_accessor :output                # 0-* [ Task::Output ]

      def resourceType
        'Task'
      end
    end
  end
end