module FHIR
  module R5
    class SubscriptionStatus < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'SubscriptionStatus.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'SubscriptionStatus.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'SubscriptionStatus.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'SubscriptionStatus.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'SubscriptionStatus.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'SubscriptionStatus.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'SubscriptionStatus.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'SubscriptionStatus.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/subscription-status'=>['requested', 'active', 'error', 'off', 'entered-in-error']}, 'path'=>'SubscriptionStatus.status', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/subscription-status'}},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/subscription-notification-type'=>['handshake', 'heartbeat', 'event-notification', 'query-status', 'query-event']}, 'path'=>'SubscriptionStatus.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/subscription-notification-type'}},
        'eventsSinceSubscriptionStart' => {'path'=>'SubscriptionStatus.eventsSinceSubscriptionStart', 'type'=>'integer64', 'min'=>0, 'max'=>1},
        'notificationEvent' => {'path'=>'SubscriptionStatus.notificationEvent', 'type'=>'SubscriptionStatus::NotificationEvent', 'min'=>0, 'max'=>Float::INFINITY},
        'subscription' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Subscription'], 'path'=>'SubscriptionStatus.subscription', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'topic' => {'path'=>'SubscriptionStatus.topic', 'type'=>'canonical', 'min'=>0, 'max'=>1},
        'error' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/subscription-error'=>['dns-resolution-error', 'no-response', 'error-response']}, 'path'=>'SubscriptionStatus.error', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/subscription-error'}}
      }

      class NotificationEvent < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'NotificationEvent.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'NotificationEvent.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'NotificationEvent.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'eventNumber' => {'path'=>'NotificationEvent.eventNumber', 'type'=>'integer64', 'min'=>1, 'max'=>1},
          'timestamp' => {'path'=>'NotificationEvent.timestamp', 'type'=>'instant', 'min'=>0, 'max'=>1},
          'focus' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'NotificationEvent.focus', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'additionalContext' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'NotificationEvent.additionalContext', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :eventNumber       # 1-1 integer64
        attr_accessor :timestamp         # 0-1 instant
        attr_accessor :focus             # 0-1 Reference(Resource)
        attr_accessor :additionalContext # 0-* [ Reference(Resource) ]
      end

      attr_accessor :id                           # 0-1 id
      attr_accessor :meta                         # 0-1 Meta
      attr_accessor :implicitRules                # 0-1 uri
      attr_accessor :language                     # 0-1 code
      attr_accessor :text                         # 0-1 Narrative
      attr_accessor :contained                    # 0-* [ Resource ]
      attr_accessor :extension                    # 0-* [ Extension ]
      attr_accessor :modifierExtension            # 0-* [ Extension ]
      attr_accessor :status                       # 0-1 code
      attr_accessor :type                         # 1-1 code
      attr_accessor :eventsSinceSubscriptionStart # 0-1 integer64
      attr_accessor :notificationEvent            # 0-* [ SubscriptionStatus::NotificationEvent ]
      attr_accessor :subscription                 # 1-1 Reference(Subscription)
      attr_accessor :topic                        # 0-1 canonical
      attr_accessor :error                        # 0-* [ CodeableConcept ]

      def resourceType
        'SubscriptionStatus'
      end
    end
  end
end