module FHIR
  module R4
    class Attachment < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'Attachment.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'Attachment.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'contentType' => {'path'=>'Attachment.contentType', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Attachment.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'data' => {'path'=>'Attachment.data', 'type'=>'base64Binary', 'min'=>0, 'max'=>1},
        'url' => {'path'=>'Attachment.url', 'type'=>'url', 'min'=>0, 'max'=>1},
        'size' => {'path'=>'Attachment.size', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
        'hash' => {'path'=>'Attachment.hash', 'type'=>'base64Binary', 'min'=>0, 'max'=>1},
        'title' => {'path'=>'Attachment.title', 'type'=>'string', 'min'=>0, 'max'=>1},
        'creation' => {'path'=>'Attachment.creation', 'type'=>'dateTime', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id          # 0-1 string
      attr_accessor :extension   # 0-* [ Extension ]
      attr_accessor :contentType # 0-1 code
      attr_accessor :language    # 0-1 code
      attr_accessor :data        # 0-1 base64Binary
      attr_accessor :url         # 0-1 url
      attr_accessor :size        # 0-1 unsignedInt
      attr_accessor :hash        # 0-1 base64Binary
      attr_accessor :title       # 0-1 string
      attr_accessor :creation    # 0-1 dateTime
    end
  end
  Attachment = FHIR::R4::Attachment
end