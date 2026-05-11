module FHIR
  module R5
    class Binary < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'Binary.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Binary.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Binary.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'Binary.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'contentType' => {'path'=>'Binary.contentType', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
        'securityContext' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Binary.securityContext', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'data' => {'path'=>'Binary.data', 'type'=>'base64Binary', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id              # 0-1 id
      attr_accessor :meta            # 0-1 Meta
      attr_accessor :implicitRules   # 0-1 uri
      attr_accessor :language        # 0-1 code
      attr_accessor :contentType     # 1-1 code
      attr_accessor :securityContext # 0-1 Reference(Resource)
      attr_accessor :data            # 0-1 base64Binary

      def resourceType
        'Binary'
      end
    end
  end
end