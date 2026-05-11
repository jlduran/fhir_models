module FHIR
  module R4B
    class Ratio < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'Ratio.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'Ratio.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'numerator' => {'path'=>'Ratio.numerator', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'denominator' => {'path'=>'Ratio.denominator', 'type'=>'Quantity', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id          # 0-1 string
      attr_accessor :extension   # 0-* [ Extension ]
      attr_accessor :numerator   # 0-1 Quantity
      attr_accessor :denominator # 0-1 Quantity
    end
  end
end