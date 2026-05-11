module FHIR
  module R5
    class Attachment < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'Attachment.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'Attachment.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'contentType' => {'path'=>'Attachment.contentType', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
        'language' => {'path'=>'Attachment.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'data' => {'path'=>'Attachment.data', 'type'=>'base64Binary', 'min'=>0, 'max'=>1},
        'url' => {'path'=>'Attachment.url', 'type'=>'url', 'min'=>0, 'max'=>1},
        'size' => {'path'=>'Attachment.size', 'type'=>'integer64', 'min'=>0, 'max'=>1},
        'hash' => {'path'=>'Attachment.hash', 'type'=>'base64Binary', 'min'=>0, 'max'=>1},
        'title' => {'path'=>'Attachment.title', 'type'=>'string', 'min'=>0, 'max'=>1},
        'creation' => {'path'=>'Attachment.creation', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'height' => {'path'=>'Attachment.height', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
        'width' => {'path'=>'Attachment.width', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
        'frames' => {'path'=>'Attachment.frames', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
        'duration' => {'path'=>'Attachment.duration', 'type'=>'decimal', 'min'=>0, 'max'=>1},
        'pages' => {'path'=>'Attachment.pages', 'type'=>'positiveInt', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id          # 0-1 string
      attr_accessor :extension   # 0-* [ Extension ]
      attr_accessor :contentType # 0-1 code
      attr_accessor :language    # 0-1 code
      attr_accessor :data        # 0-1 base64Binary
      attr_accessor :url         # 0-1 url
      attr_accessor :size        # 0-1 integer64
      attr_accessor :hash        # 0-1 base64Binary
      attr_accessor :title       # 0-1 string
      attr_accessor :creation    # 0-1 dateTime
      attr_accessor :height      # 0-1 positiveInt
      attr_accessor :width       # 0-1 positiveInt
      attr_accessor :frames      # 0-1 positiveInt
      attr_accessor :duration    # 0-1 decimal
      attr_accessor :pages       # 0-1 positiveInt
    end
  end
end