module FHIR
  module R5
    class ArtifactAssessment < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'citeAs' => ['Reference', 'markdown'],
        'artifact' => ['Reference', 'canonical', 'uri']
      }
      SEARCH_PARAMS = ['date', 'identifier']
      METADATA = {
        'id' => {'path'=>'ArtifactAssessment.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'ArtifactAssessment.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'ArtifactAssessment.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'ArtifactAssessment.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'ArtifactAssessment.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'ArtifactAssessment.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'ArtifactAssessment.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'ArtifactAssessment.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'ArtifactAssessment.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'title' => {'path'=>'ArtifactAssessment.title', 'type'=>'string', 'min'=>0, 'max'=>1},
        'citeAsReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Citation'], 'path'=>'ArtifactAssessment.citeAs[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'citeAsMarkdown' => {'path'=>'ArtifactAssessment.citeAs[x]', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'date' => {'path'=>'ArtifactAssessment.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'copyright' => {'path'=>'ArtifactAssessment.copyright', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'approvalDate' => {'path'=>'ArtifactAssessment.approvalDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'lastReviewDate' => {'path'=>'ArtifactAssessment.lastReviewDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'artifactReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'ArtifactAssessment.artifact[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'artifactCanonical' => {'path'=>'ArtifactAssessment.artifact[x]', 'type'=>'canonical', 'min'=>1, 'max'=>1},
        'artifactUri' => {'path'=>'ArtifactAssessment.artifact[x]', 'type'=>'uri', 'min'=>1, 'max'=>1},
        'content' => {'path'=>'ArtifactAssessment.content', 'type'=>'ArtifactAssessment::Content', 'min'=>0, 'max'=>Float::INFINITY},
        'workflowStatus' => {'valid_codes'=>{'http://hl7.org/fhir/artifactassessment-workflow-status'=>['submitted', 'triaged', 'waiting-for-input', 'resolved-no-change', 'resolved-change-required', 'deferred', 'duplicate', 'applied', 'published', 'entered-in-error']}, 'path'=>'ArtifactAssessment.workflowStatus', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/artifactassessment-workflow-status'}},
        'disposition' => {'valid_codes'=>{'http://hl7.org/fhir/artifactassessment-disposition'=>['unresolved', 'not-persuasive', 'persuasive', 'persuasive-with-modification', 'not-persuasive-with-modification']}, 'path'=>'ArtifactAssessment.disposition', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/artifactassessment-disposition'}}
      }

      class Content < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Content.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Content.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Content.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'informationType' => {'valid_codes'=>{'http://hl7.org/fhir/artifactassessment-information-type'=>['comment', 'classifier', 'rating', 'container', 'response', 'change-request']}, 'path'=>'Content.informationType', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/artifactassessment-information-type'}},
          'summary' => {'path'=>'Content.summary', 'type'=>'markdown', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/certainty-type'=>['Overall', 'RiskOfBias', 'Inconsistency', 'Indirectness', 'Imprecision', 'PublicationBias', 'DoseResponseGradient', 'PlausibleConfounding', 'LargeEffect']}, 'path'=>'Content.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/certainty-type'}},
          'classifier' => {'valid_codes'=>{'http://hl7.org/fhir/certainty-rating'=>['high', 'moderate', 'low', 'very-low', 'no-concern', 'serious-concern', 'very-serious-concern', 'extremely-serious-concern', 'present', 'absent', 'no-change', 'downcode1', 'downcode2', 'downcode3', 'upcode1', 'upcode2']}, 'path'=>'Content.classifier', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/certainty-rating'}},
          'quantity' => {'path'=>'Content.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'author' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'Content.author', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'path' => {'path'=>'Content.path', 'type'=>'uri', 'min'=>0, 'max'=>Float::INFINITY},
          'relatedArtifact' => {'path'=>'Content.relatedArtifact', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>Float::INFINITY},
          'freeToShare' => {'path'=>'Content.freeToShare', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'component' => {'path'=>'Content.component', 'type'=>'ArtifactAssessment::Content', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :informationType   # 0-1 code
        attr_accessor :summary           # 0-1 markdown
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :classifier        # 0-* [ CodeableConcept ]
        attr_accessor :quantity          # 0-1 Quantity
        attr_accessor :author            # 0-1 Reference(Patient|Practitioner|PractitionerRole|Organization|Device)
        attr_accessor :path              # 0-* [ uri ]
        attr_accessor :relatedArtifact   # 0-* [ RelatedArtifact ]
        attr_accessor :freeToShare       # 0-1 boolean
        attr_accessor :component         # 0-* [ ArtifactAssessment::Content ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :title             # 0-1 string
      attr_accessor :citeAsReference   # 0-1 Reference(Citation)
      attr_accessor :citeAsMarkdown    # 0-1 markdown
      attr_accessor :date              # 0-1 dateTime
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :approvalDate      # 0-1 date
      attr_accessor :lastReviewDate    # 0-1 date
      attr_accessor :artifactReference # 1-1 Reference(Resource)
      attr_accessor :artifactCanonical # 1-1 canonical
      attr_accessor :artifactUri       # 1-1 uri
      attr_accessor :content           # 0-* [ ArtifactAssessment::Content ]
      attr_accessor :workflowStatus    # 0-1 code
      attr_accessor :disposition       # 0-1 code

      def resourceType
        'ArtifactAssessment'
      end
    end
  end
end