module FHIR
  module R4
    class Subscription < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['contact', 'criteria', 'payload', 'status', 'type', 'url']
      METADATA = {
        'id' => {'path'=>'Subscription.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Subscription.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Subscription.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Subscription.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'Subscription.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Subscription.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Subscription.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Subscription.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/subscription-status'=>['requested', 'active', 'error', 'off']}, 'path'=>'Subscription.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/subscription-status'}},
        'contact' => {'path'=>'Subscription.contact', 'type'=>'ContactPoint', 'min'=>0, 'max'=>Float::INFINITY},
        'end' => {'path'=>'Subscription.end', 'type'=>'instant', 'min'=>0, 'max'=>1},
        'reason' => {'path'=>'Subscription.reason', 'type'=>'string', 'min'=>1, 'max'=>1},
        'criteria' => {'path'=>'Subscription.criteria', 'type'=>'string', 'min'=>1, 'max'=>1},
        'error' => {'path'=>'Subscription.error', 'type'=>'string', 'min'=>0, 'max'=>1},
        'channel' => {'path'=>'Subscription.channel', 'type'=>'Subscription::Channel', 'min'=>1, 'max'=>1}
      }

      class Channel < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Channel.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Channel.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Channel.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/subscription-channel-type'=>['rest-hook', 'websocket', 'email', 'sms', 'message']}, 'path'=>'Channel.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/subscription-channel-type'}},
          'endpoint' => {'path'=>'Channel.endpoint', 'type'=>'url', 'min'=>0, 'max'=>1},
          'payload' => {'path'=>'Channel.payload', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
          'header' => {'path'=>'Channel.header', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 code
        attr_accessor :endpoint          # 0-1 url
        attr_accessor :payload           # 0-1 code
        attr_accessor :header            # 0-* [ string ]
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
      attr_accessor :contact           # 0-* [ ContactPoint ]
      attr_accessor :end               # 0-1 instant
      attr_accessor :reason            # 1-1 string
      attr_accessor :criteria          # 1-1 string
      attr_accessor :error             # 0-1 string
      attr_accessor :channel           # 1-1 Subscription::Channel

      def resourceType
        'Subscription'
      end
    end
  end
  Subscription = FHIR::R4::Subscription
end