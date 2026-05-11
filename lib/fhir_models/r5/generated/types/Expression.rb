module FHIR
  module R5
    class Expression < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'Expression.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'Expression.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'Expression.description', 'type'=>'string', 'min'=>0, 'max'=>1},
        'name' => {'path'=>'Expression.name', 'type'=>'code', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:13'=>['text/cql', 'text/fhirpath', 'text/x-fhir-query', 'text/cql-identifier', 'text/cql-expression']}, 'path'=>'Expression.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'additional'=>[{'purpose'=>'maximum', 'valueSet'=>'http://hl7.org/fhir/ValueSet/mimetypes'}], 'uri'=>'http://hl7.org/fhir/ValueSet/expression-language'}},
        'expression' => {'path'=>'Expression.expression', 'type'=>'string', 'min'=>0, 'max'=>1},
        'reference' => {'path'=>'Expression.reference', 'type'=>'uri', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id          # 0-1 string
      attr_accessor :extension   # 0-* [ Extension ]
      attr_accessor :description # 0-1 string
      attr_accessor :name        # 0-1 code
      attr_accessor :language    # 0-1 code
      attr_accessor :expression  # 0-1 string
      attr_accessor :reference   # 0-1 uri
    end
  end
end