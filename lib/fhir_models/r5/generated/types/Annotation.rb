module FHIR
  module R5
    class Annotation < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'author' => ['Reference', 'string']
      }
      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'Annotation.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'Annotation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'authorReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Annotation.author[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'authorString' => {'path'=>'Annotation.author[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
        'time' => {'path'=>'Annotation.time', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'text' => {'path'=>'Annotation.text', 'type'=>'markdown', 'min'=>1, 'max'=>1}
      }

      attr_accessor :id              # 0-1 string
      attr_accessor :extension       # 0-* [ Extension ]
      attr_accessor :authorReference # 0-1 Reference(Practitioner|PractitionerRole|Patient|RelatedPerson|Organization)
      attr_accessor :authorString    # 0-1 string
      attr_accessor :time            # 0-1 dateTime
      attr_accessor :text            # 1-1 markdown
    end
  end
end