module FHIR
  module R4
    class Range < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'Range.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'Range.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'low' => {'path'=>'Range.low', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'high' => {'path'=>'Range.high', 'type'=>'Quantity', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id        # 0-1 string
      attr_accessor :extension # 0-* [ Extension ]
      attr_accessor :low       # 0-1 Quantity
      attr_accessor :high      # 0-1 Quantity
    end
  end
  Range = FHIR::R4::Range
end