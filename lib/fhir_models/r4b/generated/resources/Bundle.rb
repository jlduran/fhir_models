module FHIR
  module R4B
    class Bundle < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['composition', 'identifier', 'message', 'timestamp', 'type']
      METADATA = {
        'id' => {'path'=>'Bundle.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Bundle.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Bundle.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Bundle.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'identifier' => {'path'=>'Bundle.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/bundle-type'=>['document', 'message', 'transaction', 'transaction-response', 'batch', 'batch-response', 'history', 'searchset', 'collection']}, 'path'=>'Bundle.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/bundle-type'}},
        'timestamp' => {'path'=>'Bundle.timestamp', 'type'=>'instant', 'min'=>0, 'max'=>1},
        'total' => {'path'=>'Bundle.total', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
        'link' => {'path'=>'Bundle.link', 'type'=>'Bundle::Link', 'min'=>0, 'max'=>Float::INFINITY},
        'entry' => {'path'=>'Bundle.entry', 'type'=>'Bundle::Entry', 'min'=>0, 'max'=>Float::INFINITY},
        'signature' => {'path'=>'Bundle.signature', 'type'=>'Signature', 'min'=>0, 'max'=>1}
      }

      class Link < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Link.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Link.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Link.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'relation' => {'path'=>'Link.relation', 'type'=>'string', 'min'=>1, 'max'=>1},
          'url' => {'path'=>'Link.url', 'type'=>'uri', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :relation          # 1-1 string
        attr_accessor :url               # 1-1 uri
      end

      class Entry < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Entry.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Entry.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Entry.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'link' => {'path'=>'Entry.link', 'type'=>'Bundle::Link', 'min'=>0, 'max'=>Float::INFINITY},
          'fullUrl' => {'path'=>'Entry.fullUrl', 'type'=>'uri', 'min'=>0, 'max'=>1},
          'resource' => {'path'=>'Entry.resource', 'type'=>'Resource', 'min'=>0, 'max'=>1},
          'search' => {'path'=>'Entry.search', 'type'=>'Bundle::Entry::Search', 'min'=>0, 'max'=>1},
          'request' => {'path'=>'Entry.request', 'type'=>'Bundle::Entry::Request', 'min'=>0, 'max'=>1},
          'response' => {'path'=>'Entry.response', 'type'=>'Bundle::Entry::Response', 'min'=>0, 'max'=>1}
        }

        class Search < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Search.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Search.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Search.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'mode' => {'valid_codes'=>{'http://hl7.org/fhir/search-entry-mode'=>['match', 'include', 'outcome']}, 'path'=>'Search.mode', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/search-entry-mode'}},
            'score' => {'path'=>'Search.score', 'type'=>'decimal', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :mode              # 0-1 code
          attr_accessor :score             # 0-1 decimal
        end

        class Request < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Request.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Request.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Request.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'method' => {'local_name'=>'local_method', 'valid_codes'=>{'http://hl7.org/fhir/http-verb'=>['GET', 'HEAD', 'POST', 'PUT', 'DELETE', 'PATCH']}, 'path'=>'Request.method', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/http-verb'}},
            'url' => {'path'=>'Request.url', 'type'=>'uri', 'min'=>1, 'max'=>1},
            'ifNoneMatch' => {'path'=>'Request.ifNoneMatch', 'type'=>'string', 'min'=>0, 'max'=>1},
            'ifModifiedSince' => {'path'=>'Request.ifModifiedSince', 'type'=>'instant', 'min'=>0, 'max'=>1},
            'ifMatch' => {'path'=>'Request.ifMatch', 'type'=>'string', 'min'=>0, 'max'=>1},
            'ifNoneExist' => {'path'=>'Request.ifNoneExist', 'type'=>'string', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :local_method      # 1-1 code
          attr_accessor :url               # 1-1 uri
          attr_accessor :ifNoneMatch       # 0-1 string
          attr_accessor :ifModifiedSince   # 0-1 instant
          attr_accessor :ifMatch           # 0-1 string
          attr_accessor :ifNoneExist       # 0-1 string
        end

        class Response < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Response.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Response.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Response.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'status' => {'path'=>'Response.status', 'type'=>'string', 'min'=>1, 'max'=>1},
            'location' => {'path'=>'Response.location', 'type'=>'uri', 'min'=>0, 'max'=>1},
            'etag' => {'path'=>'Response.etag', 'type'=>'string', 'min'=>0, 'max'=>1},
            'lastModified' => {'path'=>'Response.lastModified', 'type'=>'instant', 'min'=>0, 'max'=>1},
            'outcome' => {'path'=>'Response.outcome', 'type'=>'Resource', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :status            # 1-1 string
          attr_accessor :location          # 0-1 uri
          attr_accessor :etag              # 0-1 string
          attr_accessor :lastModified      # 0-1 instant
          attr_accessor :outcome           # 0-1 Resource
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :link              # 0-* [ Bundle::Link ]
        attr_accessor :fullUrl           # 0-1 uri
        attr_accessor :resource          # 0-1 Resource
        attr_accessor :search            # 0-1 Bundle::Entry::Search
        attr_accessor :request           # 0-1 Bundle::Entry::Request
        attr_accessor :response          # 0-1 Bundle::Entry::Response
      end

      attr_accessor :id            # 0-1 id
      attr_accessor :meta          # 0-1 Meta
      attr_accessor :implicitRules # 0-1 uri
      attr_accessor :language      # 0-1 code
      attr_accessor :identifier    # 0-1 Identifier
      attr_accessor :type          # 1-1 code
      attr_accessor :timestamp     # 0-1 instant
      attr_accessor :total         # 0-1 unsignedInt
      attr_accessor :link          # 0-* [ Bundle::Link ]
      attr_accessor :entry         # 0-* [ Bundle::Entry ]
      attr_accessor :signature     # 0-1 Signature

      def resourceType
        'Bundle'
      end
    end
  end
end