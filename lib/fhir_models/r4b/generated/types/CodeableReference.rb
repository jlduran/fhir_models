module FHIR
  module R4B
    class CodeableReference < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'CodeableReference.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'CodeableReference.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'concept' => {'path'=>'CodeableReference.concept', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'reference' => {'path'=>'CodeableReference.reference', 'type'=>'Reference', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id        # 0-1 string
      attr_accessor :extension # 0-* [ Extension ]
      attr_accessor :concept   # 0-1 CodeableConcept
      attr_accessor :reference # 0-1 Reference()
    end
  end
end