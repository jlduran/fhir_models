module FHIR
  module R4B
    class Binary < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'Binary.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Binary.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Binary.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Binary.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
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