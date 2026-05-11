module FHIR
  module R5
    class Resource < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['_id', '_id', '_in', '_language', '_lastUpdated', '_profile', '_security', '_source', '_tag']
      METADATA = {
        'id' => {'path'=>'Resource.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Resource.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Resource.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'Resource.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}}
      }

      attr_accessor :id            # 0-1 id
      attr_accessor :meta          # 0-1 Meta
      attr_accessor :implicitRules # 0-1 uri
      attr_accessor :language      # 0-1 code

      def resourceType
        'Resource'
      end
    end
  end
end