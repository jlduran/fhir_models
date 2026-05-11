module FHIR
  module R5
    class Communication < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['based-on', 'category', 'encounter', 'identifier', 'instantiates-canonical', 'instantiates-uri', 'medium', 'part-of', 'patient', 'received', 'recipient', 'sender', 'sent', 'status', 'subject', 'topic']
      METADATA = {
        'id' => {'path'=>'Communication.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Communication.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Communication.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'Communication.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'Communication.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Communication.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Communication.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Communication.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Communication.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'instantiatesCanonical' => {'path'=>'Communication.instantiatesCanonical', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY},
        'instantiatesUri' => {'path'=>'Communication.instantiatesUri', 'type'=>'uri', 'min'=>0, 'max'=>Float::INFINITY},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Communication.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'partOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Communication.partOf', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'inResponseTo' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Communication'], 'path'=>'Communication.inResponseTo', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/event-status'=>['preparation', 'in-progress', 'not-done', 'on-hold', 'stopped', 'completed', 'entered-in-error', 'unknown']}, 'path'=>'Communication.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/event-status'}},
        'statusReason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/communication-not-done-reason'=>['unknown', 'system-error', 'invalid-phone-number', 'recipient-unavailable', 'family-objection', 'patient-objection']}, 'path'=>'Communication.statusReason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/communication-not-done-reason'}},
        'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/communication-category'=>['alert', 'notification', 'reminder', 'instruction']}, 'path'=>'Communication.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/communication-category'}},
        'priority' => {'valid_codes'=>{'http://hl7.org/fhir/request-priority'=>['routine', 'urgent', 'asap', 'stat']}, 'path'=>'Communication.priority', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-priority'}},
        'medium' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ParticipationMode'=>['PHYSICAL', 'REMOTE', 'VERBAL', 'DICTATE', 'FACE', 'PHONE', 'VIDEOCONF', 'WRITTEN', 'FAXWRIT', 'HANDWRIT', 'MAILWRIT', 'ONLINEWRIT', 'EMAILWRIT', 'TYPEWRIT', 'MSGWRIT', 'SMSWRIT', 'MMSWRIT', 'APPWRIT', 'ELECTRONIC']}, 'path'=>'Communication.medium', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-ParticipationMode'}},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group'], 'path'=>'Communication.subject', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'topic' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/communication-topic'=>['prescription-refill-request', 'progress-update', 'report-labs', 'appointment-reminder', 'phone-consult', 'summary-report']}, 'path'=>'Communication.topic', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/communication-topic'}},
        'about' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Communication.about', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'Communication.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'sent' => {'path'=>'Communication.sent', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'received' => {'path'=>'Communication.received', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'recipient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/HealthcareService', 'http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Endpoint'], 'path'=>'Communication.recipient', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'sender' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/HealthcareService', 'http://hl7.org/fhir/StructureDefinition/Endpoint', 'http://hl7.org/fhir/StructureDefinition/CareTeam'], 'path'=>'Communication.sender', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'reason' => {'path'=>'Communication.reason', 'type'=>'CodeableReference', 'min'=>0, 'max'=>Float::INFINITY},
        'payload' => {'path'=>'Communication.payload', 'type'=>'Communication::Payload', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'path'=>'Communication.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Payload < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'content' => ['Attachment', 'Reference', 'CodeableConcept']
        }
        METADATA = {
          'id' => {'path'=>'Payload.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Payload.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Payload.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'contentAttachment' => {'path'=>'Payload.content[x]', 'type'=>'Attachment', 'min'=>1, 'max'=>1},
          'contentReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Payload.content[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'contentCodeableConcept' => {'path'=>'Payload.content[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                     # 0-1 string
        attr_accessor :extension              # 0-* [ Extension ]
        attr_accessor :modifierExtension      # 0-* [ Extension ]
        attr_accessor :contentAttachment      # 1-1 Attachment
        attr_accessor :contentReference       # 1-1 Reference(Resource)
        attr_accessor :contentCodeableConcept # 1-1 CodeableConcept
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
      attr_accessor :partOf                # 0-* [ Reference(Resource) ]
      attr_accessor :inResponseTo          # 0-* [ Reference(Communication) ]
      attr_accessor :status                # 1-1 code
      attr_accessor :statusReason          # 0-1 CodeableConcept
      attr_accessor :category              # 0-* [ CodeableConcept ]
      attr_accessor :priority              # 0-1 code
      attr_accessor :medium                # 0-* [ CodeableConcept ]
      attr_accessor :subject               # 0-1 Reference(Patient|Group)
      attr_accessor :topic                 # 0-1 CodeableConcept
      attr_accessor :about                 # 0-* [ Reference(Resource) ]
      attr_accessor :encounter             # 0-1 Reference(Encounter)
      attr_accessor :sent                  # 0-1 dateTime
      attr_accessor :received              # 0-1 dateTime
      attr_accessor :recipient             # 0-* [ Reference(CareTeam|Device|Group|HealthcareService|Location|Organization|Patient|Practitioner|PractitionerRole|RelatedPerson|Endpoint) ]
      attr_accessor :sender                # 0-1 Reference(Device|Organization|Patient|Practitioner|PractitionerRole|RelatedPerson|HealthcareService|Endpoint|CareTeam)
      attr_accessor :reason                # 0-* [ CodeableReference ]
      attr_accessor :payload               # 0-* [ Communication::Payload ]
      attr_accessor :note                  # 0-* [ Annotation ]

      def resourceType
        'Communication'
      end
    end
  end
end