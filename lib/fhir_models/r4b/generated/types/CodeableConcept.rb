module FHIR
  module R4B
    class CodeableConcept < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'CodeableConcept.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'CodeableConcept.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'coding' => {'path'=>'CodeableConcept.coding', 'type'=>'Coding', 'min'=>0, 'max'=>Float::INFINITY},
        'text' => {'path'=>'CodeableConcept.text', 'type'=>'string', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id        # 0-1 string
      attr_accessor :extension # 0-* [ Extension ]
      attr_accessor :coding    # 0-* [ Coding ]
      attr_accessor :text      # 0-1 string
    end
  end
end