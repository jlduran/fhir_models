module FHIR
  module R4B
    class RatioRange < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'RatioRange.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'RatioRange.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'lowNumerator' => {'path'=>'RatioRange.lowNumerator', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'highNumerator' => {'path'=>'RatioRange.highNumerator', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'denominator' => {'path'=>'RatioRange.denominator', 'type'=>'Quantity', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id            # 0-1 string
      attr_accessor :extension     # 0-* [ Extension ]
      attr_accessor :lowNumerator  # 0-1 Quantity
      attr_accessor :highNumerator # 0-1 Quantity
      attr_accessor :denominator   # 0-1 Quantity
    end
  end
end