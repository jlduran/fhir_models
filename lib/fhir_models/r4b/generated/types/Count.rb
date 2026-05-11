module FHIR
  module R4B
    class Count < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'Count.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'Count.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'value' => {'path'=>'Count.value', 'type'=>'decimal', 'min'=>0, 'max'=>1},
        'comparator' => {'valid_codes'=>{'http://hl7.org/fhir/quantity-comparator'=>['<', '<=', '>=', '>']}, 'path'=>'Count.comparator', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/quantity-comparator'}},
        'unit' => {'path'=>'Count.unit', 'type'=>'string', 'min'=>0, 'max'=>1},
        'system' => {'path'=>'Count.system', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'code' => {'path'=>'Count.code', 'type'=>'code', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id         # 0-1 string
      attr_accessor :extension  # 0-* [ Extension ]
      attr_accessor :value      # 0-1 decimal
      attr_accessor :comparator # 0-1 code
      attr_accessor :unit       # 0-1 string
      attr_accessor :system     # 0-1 uri
      attr_accessor :code       # 0-1 code
    end
  end
end