module FHIR
  module R4
    class Evidence < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['composed-of', 'context', 'context-quantity', 'context-type', 'context-type-quantity', 'context-type-value', 'date', 'depends-on', 'derived-from', 'description', 'effective', 'identifier', 'jurisdiction', 'name', 'predecessor', 'publisher', 'status', 'successor', 'title', 'topic', 'url', 'version']
      METADATA = {
        'id' => {'path'=>'Evidence.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Evidence.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Evidence.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Evidence.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'Evidence.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Evidence.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Evidence.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Evidence.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'path'=>'Evidence.url', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'identifier' => {'path'=>'Evidence.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'path'=>'Evidence.version', 'type'=>'string', 'min'=>0, 'max'=>1},
        'name' => {'path'=>'Evidence.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'title' => {'path'=>'Evidence.title', 'type'=>'string', 'min'=>0, 'max'=>1},
        'shortTitle' => {'path'=>'Evidence.shortTitle', 'type'=>'string', 'min'=>0, 'max'=>1},
        'subtitle' => {'path'=>'Evidence.subtitle', 'type'=>'string', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'Evidence.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'date' => {'path'=>'Evidence.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'publisher' => {'path'=>'Evidence.publisher', 'type'=>'string', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'Evidence.contact', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'Evidence.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'note' => {'path'=>'Evidence.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
        'useContext' => {'path'=>'Evidence.useContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'path'=>'Evidence.jurisdiction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'copyright' => {'path'=>'Evidence.copyright', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'approvalDate' => {'path'=>'Evidence.approvalDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'lastReviewDate' => {'path'=>'Evidence.lastReviewDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'effectivePeriod' => {'path'=>'Evidence.effectivePeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'topic' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/definition-topic'=>['treatment', 'education', 'assessment']}, 'path'=>'Evidence.topic', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/definition-topic'}},
        'author' => {'path'=>'Evidence.author', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'editor' => {'path'=>'Evidence.editor', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'reviewer' => {'path'=>'Evidence.reviewer', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'endorser' => {'path'=>'Evidence.endorser', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'relatedArtifact' => {'path'=>'Evidence.relatedArtifact', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>Float::INFINITY},
        'exposureBackground' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/EvidenceVariable'], 'path'=>'Evidence.exposureBackground', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'exposureVariant' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/EvidenceVariable'], 'path'=>'Evidence.exposureVariant', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'outcome' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/EvidenceVariable'], 'path'=>'Evidence.outcome', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
      }

      attr_accessor :id                 # 0-1 id
      attr_accessor :meta               # 0-1 Meta
      attr_accessor :implicitRules      # 0-1 uri
      attr_accessor :language           # 0-1 code
      attr_accessor :text               # 0-1 Narrative
      attr_accessor :contained          # 0-* [ Resource ]
      attr_accessor :extension          # 0-* [ Extension ]
      attr_accessor :modifierExtension  # 0-* [ Extension ]
      attr_accessor :url                # 0-1 uri
      attr_accessor :identifier         # 0-* [ Identifier ]
      attr_accessor :version            # 0-1 string
      attr_accessor :name               # 0-1 string
      attr_accessor :title              # 0-1 string
      attr_accessor :shortTitle         # 0-1 string
      attr_accessor :subtitle           # 0-1 string
      attr_accessor :status             # 1-1 code
      attr_accessor :date               # 0-1 dateTime
      attr_accessor :publisher          # 0-1 string
      attr_accessor :contact            # 0-* [ ContactDetail ]
      attr_accessor :description        # 0-1 markdown
      attr_accessor :note               # 0-* [ Annotation ]
      attr_accessor :useContext         # 0-* [ UsageContext ]
      attr_accessor :jurisdiction       # 0-* [ CodeableConcept ]
      attr_accessor :copyright          # 0-1 markdown
      attr_accessor :approvalDate       # 0-1 date
      attr_accessor :lastReviewDate     # 0-1 date
      attr_accessor :effectivePeriod    # 0-1 Period
      attr_accessor :topic              # 0-* [ CodeableConcept ]
      attr_accessor :author             # 0-* [ ContactDetail ]
      attr_accessor :editor             # 0-* [ ContactDetail ]
      attr_accessor :reviewer           # 0-* [ ContactDetail ]
      attr_accessor :endorser           # 0-* [ ContactDetail ]
      attr_accessor :relatedArtifact    # 0-* [ RelatedArtifact ]
      attr_accessor :exposureBackground # 1-1 Reference(EvidenceVariable)
      attr_accessor :exposureVariant    # 0-* [ Reference(EvidenceVariable) ]
      attr_accessor :outcome            # 0-* [ Reference(EvidenceVariable) ]

      def resourceType
        'Evidence'
      end
    end
  end
  Evidence = FHIR::R4::Evidence
end