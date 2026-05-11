module FHIR
  module R4
    class MessageHeader < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'event' => ['Coding', 'uri']
      }
      SEARCH_PARAMS = ['author', 'code', 'destination', 'destination-uri', 'enterer', 'event', 'focus', 'receiver', 'response-id', 'responsible', 'sender', 'source', 'source-uri', 'target']
      METADATA = {
        'id' => {'path'=>'MessageHeader.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'MessageHeader.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'MessageHeader.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'MessageHeader.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'MessageHeader.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'MessageHeader.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'MessageHeader.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'MessageHeader.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'eventCoding' => {'path'=>'MessageHeader.event[x]', 'type'=>'Coding', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/message-events'}},
        'eventUri' => {'path'=>'MessageHeader.event[x]', 'type'=>'uri', 'min'=>1, 'max'=>1},
        'destination' => {'path'=>'MessageHeader.destination', 'type'=>'MessageHeader::Destination', 'min'=>0, 'max'=>Float::INFINITY},
        'sender' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'MessageHeader.sender', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'enterer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'MessageHeader.enterer', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'author' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'MessageHeader.author', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'source' => {'path'=>'MessageHeader.source', 'type'=>'MessageHeader::Source', 'min'=>1, 'max'=>1},
        'responsible' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'MessageHeader.responsible', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'reason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/message-reasons-encounter'=>['admit', 'discharge', 'absent', 'return', 'moved', 'edit']}, 'path'=>'MessageHeader.reason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/message-reason-encounter'}},
        'response' => {'path'=>'MessageHeader.response', 'type'=>'MessageHeader::Response', 'min'=>0, 'max'=>1},
        'focus' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'MessageHeader.focus', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'definition' => {'path'=>'MessageHeader.definition', 'type'=>'canonical', 'min'=>0, 'max'=>1}
      }

      class Destination < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Destination.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Destination.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Destination.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'path'=>'Destination.name', 'type'=>'string', 'min'=>0, 'max'=>1},
          'target' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'Destination.target', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'endpoint' => {'path'=>'Destination.endpoint', 'type'=>'url', 'min'=>1, 'max'=>1},
          'receiver' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Destination.receiver', 'type'=>'Reference', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 0-1 string
        attr_accessor :target            # 0-1 Reference(Device)
        attr_accessor :endpoint          # 1-1 url
        attr_accessor :receiver          # 0-1 Reference(Practitioner|PractitionerRole|Organization)
      end

      class Source < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Source.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Source.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Source.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'path'=>'Source.name', 'type'=>'string', 'min'=>0, 'max'=>1},
          'software' => {'path'=>'Source.software', 'type'=>'string', 'min'=>0, 'max'=>1},
          'version' => {'path'=>'Source.version', 'type'=>'string', 'min'=>0, 'max'=>1},
          'contact' => {'path'=>'Source.contact', 'type'=>'ContactPoint', 'min'=>0, 'max'=>1},
          'endpoint' => {'path'=>'Source.endpoint', 'type'=>'url', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 0-1 string
        attr_accessor :software          # 0-1 string
        attr_accessor :version           # 0-1 string
        attr_accessor :contact           # 0-1 ContactPoint
        attr_accessor :endpoint          # 1-1 url
      end

      class Response < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Response.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Response.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Response.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'path'=>'Response.identifier', 'type'=>'id', 'min'=>1, 'max'=>1},
          'code' => {'valid_codes'=>{'http://hl7.org/fhir/response-code'=>['ok', 'transient-error', 'fatal-error']}, 'path'=>'Response.code', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/response-code'}},
          'details' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/OperationOutcome'], 'path'=>'Response.details', 'type'=>'Reference', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :identifier        # 1-1 id
        attr_accessor :code              # 1-1 code
        attr_accessor :details           # 0-1 Reference(OperationOutcome)
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :eventCoding       # 1-1 Coding
      attr_accessor :eventUri          # 1-1 uri
      attr_accessor :destination       # 0-* [ MessageHeader::Destination ]
      attr_accessor :sender            # 0-1 Reference(Practitioner|PractitionerRole|Organization)
      attr_accessor :enterer           # 0-1 Reference(Practitioner|PractitionerRole)
      attr_accessor :author            # 0-1 Reference(Practitioner|PractitionerRole)
      attr_accessor :source            # 1-1 MessageHeader::Source
      attr_accessor :responsible       # 0-1 Reference(Practitioner|PractitionerRole|Organization)
      attr_accessor :reason            # 0-1 CodeableConcept
      attr_accessor :response          # 0-1 MessageHeader::Response
      attr_accessor :focus             # 0-* [ Reference(Resource) ]
      attr_accessor :definition        # 0-1 canonical

      def resourceType
        'MessageHeader'
      end
    end
  end
  MessageHeader = FHIR::R4::MessageHeader
end