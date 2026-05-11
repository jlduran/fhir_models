module FHIR
  module R4B
    class Population < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'age' => ['Range', 'CodeableConcept']
      }
      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'Population.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'Population.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Population.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'ageRange' => {'path'=>'Population.age[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
        'ageCodeableConcept' => {'path'=>'Population.age[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'gender' => {'path'=>'Population.gender', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'race' => {'path'=>'Population.race', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'physiologicalCondition' => {'path'=>'Population.physiologicalCondition', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id                     # 0-1 string
      attr_accessor :extension              # 0-* [ Extension ]
      attr_accessor :modifierExtension      # 0-* [ Extension ]
      attr_accessor :ageRange               # 0-1 Range
      attr_accessor :ageCodeableConcept     # 0-1 CodeableConcept
      attr_accessor :gender                 # 0-1 CodeableConcept
      attr_accessor :race                   # 0-1 CodeableConcept
      attr_accessor :physiologicalCondition # 0-1 CodeableConcept
    end
  end
end