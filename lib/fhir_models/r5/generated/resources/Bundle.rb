module FHIR
  module R5
    class Bundle < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['composition', 'example-constraint', 'identifier', 'message', 'timestamp', 'type']
      METADATA = {
        'id' => {'path'=>'Bundle.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Bundle.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Bundle.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'Bundle.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'identifier' => {'path'=>'Bundle.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/bundle-type'=>['document', 'message', 'transaction', 'transaction-response', 'batch', 'batch-response', 'history', 'searchset', 'collection', 'subscription-notification']}, 'path'=>'Bundle.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/bundle-type'}},
        'timestamp' => {'path'=>'Bundle.timestamp', 'type'=>'instant', 'min'=>0, 'max'=>1},
        'total' => {'path'=>'Bundle.total', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
        'link' => {'path'=>'Bundle.link', 'type'=>'Bundle::Link', 'min'=>0, 'max'=>Float::INFINITY},
        'entry' => {'path'=>'Bundle.entry', 'type'=>'Bundle::Entry', 'min'=>0, 'max'=>Float::INFINITY},
        'signature' => {'path'=>'Bundle.signature', 'type'=>'Signature', 'min'=>0, 'max'=>1},
        'issues' => {'path'=>'Bundle.issues', 'type'=>'Resource', 'min'=>0, 'max'=>1}
      }

      class Link < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Link.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Link.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Link.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'relation' => {'valid_codes'=>{'http://hl7.org/fhir/CodeSystem/iana-link-relations'=>['about', 'acl', 'alternate', 'amphtml', 'appendix', 'apple-touch-icon', 'apple-touch-startup-image', 'archives', 'author', 'blocked-by', 'bookmark', 'canonical', 'chapter', 'cite-as', 'collection', 'contents', 'convertedFrom', 'copyright', 'create-form', 'current', 'describedby', 'describes', 'disclosure', 'dns-prefetch', 'duplicate', 'edit', 'edit-form', 'edit-media', 'enclosure', 'external', 'first', 'glossary', 'help', 'hosts', 'hub', 'icon', 'index', 'intervalAfter', 'intervalBefore', 'intervalContains', 'intervalDisjoint', 'intervalDuring', 'intervalEquals', 'intervalFinishedBy', 'intervalFinishes', 'intervalIn', 'intervalMeets', 'intervalMetBy', 'intervalOverlappedBy', 'intervalOverlaps', 'intervalStartedBy', 'intervalStarts', 'item', 'last', 'latest-version', 'license', 'linkset', 'lrdd', 'manifest', 'mask-icon', 'media-feed', 'memento', 'micropub', 'modulepreload', 'monitor', 'monitor-group', 'next', 'next-archive', 'nofollow', 'noopener', 'noreferrer', 'opener', 'openid2.local_id', 'openid2.provider', 'original', 'P3Pv1', 'payment', 'pingback', 'preconnect', 'predecessor-version', 'prefetch', 'preload', 'prerender', 'prev', 'preview', 'previous', 'prev-archive', 'privacy-policy', 'profile', 'publication', 'related', 'restconf', 'replies', 'ruleinput', 'search', 'section', 'self', 'service', 'service-desc', 'service-doc', 'service-meta', 'sponsored', 'start', 'status', 'stylesheet', 'subsection', 'successor-version', 'sunset', 'tag', 'terms-of-service', 'timegate', 'timemap', 'type', 'ugc', 'up', 'version-history', 'via', 'webmention', 'working-copy', 'working-copy-of']}, 'path'=>'Link.relation', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/iana-link-relations'}},
          'url' => {'path'=>'Link.url', 'type'=>'uri', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :relation          # 1-1 code
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
      attr_accessor :issues        # 0-1 Resource

      def resourceType
        'Bundle'
      end
    end
  end
end