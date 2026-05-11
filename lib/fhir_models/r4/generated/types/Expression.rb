module FHIR
  module R4
    class Expression < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'Expression.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'Expression.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'Expression.description', 'type'=>'string', 'min'=>0, 'max'=>1},
        'name' => {'path'=>'Expression.name', 'type'=>'id', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'http://hl7.org/fhir/expression-language'=>['text/cql', 'text/fhirpath', 'application/x-fhir-query']}, 'path'=>'Expression.language', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/expression-language'}},
        'expression' => {'path'=>'Expression.expression', 'type'=>'string', 'min'=>0, 'max'=>1},
        'reference' => {'path'=>'Expression.reference', 'type'=>'uri', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id          # 0-1 string
      attr_accessor :extension   # 0-* [ Extension ]
      attr_accessor :description # 0-1 string
      attr_accessor :name        # 0-1 id
      attr_accessor :language    # 1-1 code
      attr_accessor :expression  # 0-1 string
      attr_accessor :reference   # 0-1 uri
    end
  end
  Expression = FHIR::R4::Expression
end