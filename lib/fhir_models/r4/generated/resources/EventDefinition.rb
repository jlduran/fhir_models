module FHIR
  module R4
    class EventDefinition < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'subject' => ['CodeableConcept', 'Reference']
      }
      SEARCH_PARAMS = ['composed-of', 'context', 'context-quantity', 'context-type', 'context-type-quantity', 'context-type-value', 'date', 'depends-on', 'derived-from', 'description', 'effective', 'identifier', 'jurisdiction', 'name', 'predecessor', 'publisher', 'status', 'successor', 'title', 'topic', 'url', 'version']
      METADATA = {
        'id' => {'path'=>'EventDefinition.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'EventDefinition.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'EventDefinition.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'EventDefinition.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'EventDefinition.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'EventDefinition.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'EventDefinition.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'EventDefinition.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'path'=>'EventDefinition.url', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'identifier' => {'path'=>'EventDefinition.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'path'=>'EventDefinition.version', 'type'=>'string', 'min'=>0, 'max'=>1},
        'name' => {'path'=>'EventDefinition.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'title' => {'path'=>'EventDefinition.title', 'type'=>'string', 'min'=>0, 'max'=>1},
        'subtitle' => {'path'=>'EventDefinition.subtitle', 'type'=>'string', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'EventDefinition.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'experimental' => {'path'=>'EventDefinition.experimental', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'subjectCodeableConcept' => {'valid_codes'=>{'http://hl7.org/fhir/resource-types'=>['Patient', 'Practitioner', 'Organization', 'Location', 'Device']}, 'path'=>'EventDefinition.subject[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/subject-type'}},
        'subjectReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Group'], 'path'=>'EventDefinition.subject[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'date' => {'path'=>'EventDefinition.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'publisher' => {'path'=>'EventDefinition.publisher', 'type'=>'string', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'EventDefinition.contact', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'EventDefinition.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'useContext' => {'path'=>'EventDefinition.useContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'path'=>'EventDefinition.jurisdiction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'path'=>'EventDefinition.purpose', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'usage' => {'path'=>'EventDefinition.usage', 'type'=>'string', 'min'=>0, 'max'=>1},
        'copyright' => {'path'=>'EventDefinition.copyright', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'approvalDate' => {'path'=>'EventDefinition.approvalDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'lastReviewDate' => {'path'=>'EventDefinition.lastReviewDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'effectivePeriod' => {'path'=>'EventDefinition.effectivePeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'topic' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/definition-topic'=>['treatment', 'education', 'assessment']}, 'path'=>'EventDefinition.topic', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/definition-topic'}},
        'author' => {'path'=>'EventDefinition.author', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'editor' => {'path'=>'EventDefinition.editor', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'reviewer' => {'path'=>'EventDefinition.reviewer', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'endorser' => {'path'=>'EventDefinition.endorser', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'relatedArtifact' => {'path'=>'EventDefinition.relatedArtifact', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>Float::INFINITY},
        'trigger' => {'path'=>'EventDefinition.trigger', 'type'=>'TriggerDefinition', 'min'=>1, 'max'=>Float::INFINITY}
      }

      attr_accessor :id                     # 0-1 id
      attr_accessor :meta                   # 0-1 Meta
      attr_accessor :implicitRules          # 0-1 uri
      attr_accessor :language               # 0-1 code
      attr_accessor :text                   # 0-1 Narrative
      attr_accessor :contained              # 0-* [ Resource ]
      attr_accessor :extension              # 0-* [ Extension ]
      attr_accessor :modifierExtension      # 0-* [ Extension ]
      attr_accessor :url                    # 0-1 uri
      attr_accessor :identifier             # 0-* [ Identifier ]
      attr_accessor :version                # 0-1 string
      attr_accessor :name                   # 0-1 string
      attr_accessor :title                  # 0-1 string
      attr_accessor :subtitle               # 0-1 string
      attr_accessor :status                 # 1-1 code
      attr_accessor :experimental           # 0-1 boolean
      attr_accessor :subjectCodeableConcept # 0-1 CodeableConcept
      attr_accessor :subjectReference       # 0-1 Reference(Group)
      attr_accessor :date                   # 0-1 dateTime
      attr_accessor :publisher              # 0-1 string
      attr_accessor :contact                # 0-* [ ContactDetail ]
      attr_accessor :description            # 0-1 markdown
      attr_accessor :useContext             # 0-* [ UsageContext ]
      attr_accessor :jurisdiction           # 0-* [ CodeableConcept ]
      attr_accessor :purpose                # 0-1 markdown
      attr_accessor :usage                  # 0-1 string
      attr_accessor :copyright              # 0-1 markdown
      attr_accessor :approvalDate           # 0-1 date
      attr_accessor :lastReviewDate         # 0-1 date
      attr_accessor :effectivePeriod        # 0-1 Period
      attr_accessor :topic                  # 0-* [ CodeableConcept ]
      attr_accessor :author                 # 0-* [ ContactDetail ]
      attr_accessor :editor                 # 0-* [ ContactDetail ]
      attr_accessor :reviewer               # 0-* [ ContactDetail ]
      attr_accessor :endorser               # 0-* [ ContactDetail ]
      attr_accessor :relatedArtifact        # 0-* [ RelatedArtifact ]
      attr_accessor :trigger                # 1-* [ TriggerDefinition ]

      def resourceType
        'EventDefinition'
      end
    end
  end
  EventDefinition = FHIR::R4::EventDefinition
end