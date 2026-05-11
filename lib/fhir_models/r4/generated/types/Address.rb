module FHIR
  module R4
    class Address < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'Address.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'Address.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'use' => {'valid_codes'=>{'http://hl7.org/fhir/address-use'=>['home', 'work', 'temp', 'old', 'billing']}, 'path'=>'Address.use', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/address-use'}},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/address-type'=>['postal', 'physical', 'both']}, 'path'=>'Address.type', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/address-type'}},
        'text' => {'path'=>'Address.text', 'type'=>'string', 'min'=>0, 'max'=>1},
        'line' => {'path'=>'Address.line', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'city' => {'path'=>'Address.city', 'type'=>'string', 'min'=>0, 'max'=>1},
        'district' => {'path'=>'Address.district', 'type'=>'string', 'min'=>0, 'max'=>1},
        'state' => {'path'=>'Address.state', 'type'=>'string', 'min'=>0, 'max'=>1},
        'postalCode' => {'path'=>'Address.postalCode', 'type'=>'string', 'min'=>0, 'max'=>1},
        'country' => {'path'=>'Address.country', 'type'=>'string', 'min'=>0, 'max'=>1},
        'period' => {'path'=>'Address.period', 'type'=>'Period', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id         # 0-1 string
      attr_accessor :extension  # 0-* [ Extension ]
      attr_accessor :use        # 0-1 code
      attr_accessor :type       # 0-1 code
      attr_accessor :text       # 0-1 string
      attr_accessor :line       # 0-* [ string ]
      attr_accessor :city       # 0-1 string
      attr_accessor :district   # 0-1 string
      attr_accessor :state      # 0-1 string
      attr_accessor :postalCode # 0-1 string
      attr_accessor :country    # 0-1 string
      attr_accessor :period     # 0-1 Period
    end
  end
  Address = FHIR::R4::Address
end