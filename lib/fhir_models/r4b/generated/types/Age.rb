module FHIR
  module R4B
    class Age < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'Age.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'Age.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'value' => {'path'=>'Age.value', 'type'=>'decimal', 'min'=>0, 'max'=>1},
        'comparator' => {'valid_codes'=>{'http://hl7.org/fhir/quantity-comparator'=>['<', '<=', '>=', '>']}, 'path'=>'Age.comparator', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/quantity-comparator'}},
        'unit' => {'path'=>'Age.unit', 'type'=>'string', 'min'=>0, 'max'=>1},
        'system' => {'path'=>'Age.system', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'code' => {'path'=>'Age.code', 'type'=>'code', 'min'=>0, 'max'=>1}
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