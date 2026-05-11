module FHIR
  module R5
    class AppointmentResponse < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['actor', 'appointment', 'group', 'identifier', 'location', 'part-status', 'patient', 'practitioner']
      METADATA = {
        'id' => {'path'=>'AppointmentResponse.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'AppointmentResponse.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'AppointmentResponse.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'AppointmentResponse.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'AppointmentResponse.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'AppointmentResponse.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'AppointmentResponse.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'AppointmentResponse.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'AppointmentResponse.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'appointment' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Appointment'], 'path'=>'AppointmentResponse.appointment', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'proposedNewTime' => {'path'=>'AppointmentResponse.proposedNewTime', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'start' => {'path'=>'AppointmentResponse.start', 'type'=>'instant', 'min'=>0, 'max'=>1},
        'end' => {'path'=>'AppointmentResponse.end', 'type'=>'instant', 'min'=>0, 'max'=>1},
        'participantType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ParticipationType'=>['ADM', 'ATND', 'CALLBCK', 'CON', 'DIS', 'ESC', 'REF'], 'http://terminology.hl7.org/CodeSystem/participant-type'=>['translator', 'emergency']}, 'path'=>'AppointmentResponse.participantType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/encounter-participant-type'}},
        'actor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/HealthcareService', 'http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'AppointmentResponse.actor', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'participantStatus' => {'valid_codes'=>{'http://hl7.org/fhir/participationstatus'=>['accepted', 'declined', 'tentative', 'needs-action'], 'http://hl7.org/fhir/appointmentstatus'=>['entered-in-error']}, 'path'=>'AppointmentResponse.participantStatus', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/appointmentresponse-status'}},
        'comment' => {'path'=>'AppointmentResponse.comment', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'recurring' => {'path'=>'AppointmentResponse.recurring', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'occurrenceDate' => {'path'=>'AppointmentResponse.occurrenceDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'recurrenceId' => {'path'=>'AppointmentResponse.recurrenceId', 'type'=>'positiveInt', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :appointment       # 1-1 Reference(Appointment)
      attr_accessor :proposedNewTime   # 0-1 boolean
      attr_accessor :start             # 0-1 instant
      attr_accessor :end               # 0-1 instant
      attr_accessor :participantType   # 0-* [ CodeableConcept ]
      attr_accessor :actor             # 0-1 Reference(Patient|Group|Practitioner|PractitionerRole|RelatedPerson|Device|HealthcareService|Location)
      attr_accessor :participantStatus # 1-1 code
      attr_accessor :comment           # 0-1 markdown
      attr_accessor :recurring         # 0-1 boolean
      attr_accessor :occurrenceDate    # 0-1 date
      attr_accessor :recurrenceId      # 0-1 positiveInt

      def resourceType
        'AppointmentResponse'
      end
    end
  end
end