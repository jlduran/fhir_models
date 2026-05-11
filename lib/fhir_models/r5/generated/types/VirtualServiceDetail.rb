module FHIR
  module R5
    class VirtualServiceDetail < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'address' => ['url', 'string', 'ContactPoint', 'ExtendedContactDetail']
      }
      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'VirtualServiceDetail.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'VirtualServiceDetail.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'channelType' => {'valid_codes'=>{'http://hl7.org/fhir/virtual-service-type'=>['zoom', 'ms-teams', 'whatsapp']}, 'path'=>'VirtualServiceDetail.channelType', 'type'=>'Coding', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/virtual-service-type'}},
        'addressUrl' => {'path'=>'VirtualServiceDetail.address[x]', 'type'=>'url', 'min'=>0, 'max'=>1},
        'addressString' => {'path'=>'VirtualServiceDetail.address[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
        'addressContactPoint' => {'path'=>'VirtualServiceDetail.address[x]', 'type'=>'ContactPoint', 'min'=>0, 'max'=>1},
        'addressExtendedContactDetail' => {'path'=>'VirtualServiceDetail.address[x]', 'type'=>'ExtendedContactDetail', 'min'=>0, 'max'=>1},
        'additionalInfo' => {'path'=>'VirtualServiceDetail.additionalInfo', 'type'=>'url', 'min'=>0, 'max'=>Float::INFINITY},
        'maxParticipants' => {'path'=>'VirtualServiceDetail.maxParticipants', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
        'sessionKey' => {'path'=>'VirtualServiceDetail.sessionKey', 'type'=>'string', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id                           # 0-1 string
      attr_accessor :extension                    # 0-* [ Extension ]
      attr_accessor :channelType                  # 0-1 Coding
      attr_accessor :addressUrl                   # 0-1 url
      attr_accessor :addressString                # 0-1 string
      attr_accessor :addressContactPoint          # 0-1 ContactPoint
      attr_accessor :addressExtendedContactDetail # 0-1 ExtendedContactDetail
      attr_accessor :additionalInfo               # 0-* [ url ]
      attr_accessor :maxParticipants              # 0-1 positiveInt
      attr_accessor :sessionKey                   # 0-1 string
    end
  end
end