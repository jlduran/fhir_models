module FHIR
  module R5
    class Element < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'Element.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'Element.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY}
      }

      attr_accessor :id        # 0-1 string
      attr_accessor :extension # 0-* [ Extension ]
    end
  end
end