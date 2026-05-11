module FHIR
  module R5
    class Subscription < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['contact', 'content-level', 'filter-value', 'identifier', 'name', 'owner', 'payload', 'status', 'topic', 'type', 'url']
      METADATA = {
        'id' => {'path'=>'Subscription.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Subscription.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Subscription.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'Subscription.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'Subscription.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Subscription.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Subscription.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Subscription.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Subscription.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'name' => {'path'=>'Subscription.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/subscription-status'=>['requested', 'active', 'error', 'off', 'entered-in-error']}, 'path'=>'Subscription.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/subscription-status'}},
        'topic' => {'path'=>'Subscription.topic', 'type'=>'canonical', 'min'=>1, 'max'=>1},
        'contact' => {'path'=>'Subscription.contact', 'type'=>'ContactPoint', 'min'=>0, 'max'=>Float::INFINITY},
        'end' => {'path'=>'Subscription.end', 'type'=>'instant', 'min'=>0, 'max'=>1},
        'managingEntity' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/HealthcareService', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'Subscription.managingEntity', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'reason' => {'path'=>'Subscription.reason', 'type'=>'string', 'min'=>0, 'max'=>1},
        'filterBy' => {'path'=>'Subscription.filterBy', 'type'=>'Subscription::FilterBy', 'min'=>0, 'max'=>Float::INFINITY},
        'channelType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/subscription-channel-type'=>['rest-hook', 'websocket', 'email', 'message']}, 'path'=>'Subscription.channelType', 'type'=>'Coding', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/subscription-channel-type'}},
        'endpoint' => {'path'=>'Subscription.endpoint', 'type'=>'url', 'min'=>0, 'max'=>1},
        'parameter' => {'path'=>'Subscription.parameter', 'type'=>'Subscription::Parameter', 'min'=>0, 'max'=>Float::INFINITY},
        'heartbeatPeriod' => {'path'=>'Subscription.heartbeatPeriod', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
        'timeout' => {'path'=>'Subscription.timeout', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
        'contentType' => {'path'=>'Subscription.contentType', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
        'content' => {'valid_codes'=>{'http://hl7.org/fhir/subscription-payload-content'=>['empty', 'id-only', 'full-resource']}, 'path'=>'Subscription.content', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/subscription-payload-content'}},
        'maxCount' => {'path'=>'Subscription.maxCount', 'type'=>'positiveInt', 'min'=>0, 'max'=>1}
      }

      class FilterBy < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'FilterBy.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'FilterBy.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'FilterBy.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'resourceType' => {'local_name'=>'local_resourceType', 'path'=>'FilterBy.resourceType', 'type'=>'uri', 'min'=>0, 'max'=>1},
          'filterParameter' => {'path'=>'FilterBy.filterParameter', 'type'=>'string', 'min'=>1, 'max'=>1},
          'comparator' => {'valid_codes'=>{'http://hl7.org/fhir/search-comparator'=>['eq', 'ne', 'gt', 'lt', 'ge', 'le', 'sa', 'eb', 'ap']}, 'path'=>'FilterBy.comparator', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/search-comparator'}},
          'modifier' => {'valid_codes'=>{'http://hl7.org/fhir/search-modifier-code'=>['missing', 'exact', 'contains', 'not', 'text', 'in', 'not-in', 'below', 'above', 'type', 'identifier', 'of-type', 'code-text', 'text-advanced', 'iterate']}, 'path'=>'FilterBy.modifier', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/search-modifier-code'}},
          'value' => {'path'=>'FilterBy.value', 'type'=>'string', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                 # 0-1 string
        attr_accessor :extension          # 0-* [ Extension ]
        attr_accessor :modifierExtension  # 0-* [ Extension ]
        attr_accessor :local_resourceType # 0-1 uri
        attr_accessor :filterParameter    # 1-1 string
        attr_accessor :comparator         # 0-1 code
        attr_accessor :modifier           # 0-1 code
        attr_accessor :value              # 1-1 string
      end

      class Parameter < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Parameter.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Parameter.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Parameter.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'path'=>'Parameter.name', 'type'=>'string', 'min'=>1, 'max'=>1},
          'value' => {'path'=>'Parameter.value', 'type'=>'string', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 1-1 string
        attr_accessor :value             # 1-1 string
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :name              # 0-1 string
      attr_accessor :status            # 1-1 code
      attr_accessor :topic             # 1-1 canonical
      attr_accessor :contact           # 0-* [ ContactPoint ]
      attr_accessor :end               # 0-1 instant
      attr_accessor :managingEntity    # 0-1 Reference(CareTeam|HealthcareService|Organization|RelatedPerson|Patient|Practitioner|PractitionerRole)
      attr_accessor :reason            # 0-1 string
      attr_accessor :filterBy          # 0-* [ Subscription::FilterBy ]
      attr_accessor :channelType       # 1-1 Coding
      attr_accessor :endpoint          # 0-1 url
      attr_accessor :parameter         # 0-* [ Subscription::Parameter ]
      attr_accessor :heartbeatPeriod   # 0-1 unsignedInt
      attr_accessor :timeout           # 0-1 unsignedInt
      attr_accessor :contentType       # 0-1 code
      attr_accessor :content           # 0-1 code
      attr_accessor :maxCount          # 0-1 positiveInt

      def resourceType
        'Subscription'
      end
    end
  end
end