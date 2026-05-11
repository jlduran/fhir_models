module FHIR
  module R4B
    class RelatedArtifact < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'RelatedArtifact.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'RelatedArtifact.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/related-artifact-type'=>['documentation', 'justification', 'citation', 'predecessor', 'successor', 'derived-from', 'depends-on', 'composed-of']}, 'path'=>'RelatedArtifact.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/related-artifact-type'}},
        'label' => {'path'=>'RelatedArtifact.label', 'type'=>'string', 'min'=>0, 'max'=>1},
        'display' => {'path'=>'RelatedArtifact.display', 'type'=>'string', 'min'=>0, 'max'=>1},
        'citation' => {'path'=>'RelatedArtifact.citation', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'url' => {'path'=>'RelatedArtifact.url', 'type'=>'url', 'min'=>0, 'max'=>1},
        'document' => {'path'=>'RelatedArtifact.document', 'type'=>'Attachment', 'min'=>0, 'max'=>1},
        'resource' => {'path'=>'RelatedArtifact.resource', 'type'=>'canonical', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id        # 0-1 string
      attr_accessor :extension # 0-* [ Extension ]
      attr_accessor :type      # 1-1 code
      attr_accessor :label     # 0-1 string
      attr_accessor :display   # 0-1 string
      attr_accessor :citation  # 0-1 markdown
      attr_accessor :url       # 0-1 url
      attr_accessor :document  # 0-1 Attachment
      attr_accessor :resource  # 0-1 canonical
    end
  end
end