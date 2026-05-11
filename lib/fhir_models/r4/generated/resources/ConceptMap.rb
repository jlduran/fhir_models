module FHIR
  module R4
    class ConceptMap < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'source' => ['uri', 'canonical'],
        'target' => ['uri', 'canonical']
      }
      SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'context-type-quantity', 'context-type-value', 'date', 'dependson', 'description', 'identifier', 'jurisdiction', 'name', 'other', 'product', 'publisher', 'source', 'source-code', 'source-system', 'source-uri', 'status', 'target', 'target-code', 'target-system', 'target-uri', 'title', 'url', 'version']
      METADATA = {
        'id' => {'path'=>'ConceptMap.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'ConceptMap.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'ConceptMap.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'ConceptMap.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'ConceptMap.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'ConceptMap.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'ConceptMap.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'ConceptMap.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'path'=>'ConceptMap.url', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'identifier' => {'path'=>'ConceptMap.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'version' => {'path'=>'ConceptMap.version', 'type'=>'string', 'min'=>0, 'max'=>1},
        'name' => {'path'=>'ConceptMap.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'title' => {'path'=>'ConceptMap.title', 'type'=>'string', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'ConceptMap.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'experimental' => {'path'=>'ConceptMap.experimental', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'date' => {'path'=>'ConceptMap.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'publisher' => {'path'=>'ConceptMap.publisher', 'type'=>'string', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'ConceptMap.contact', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'ConceptMap.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'useContext' => {'path'=>'ConceptMap.useContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'path'=>'ConceptMap.jurisdiction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'path'=>'ConceptMap.purpose', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'copyright' => {'path'=>'ConceptMap.copyright', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'sourceUri' => {'path'=>'ConceptMap.source[x]', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'sourceCanonical' => {'path'=>'ConceptMap.source[x]', 'type'=>'canonical', 'min'=>0, 'max'=>1},
        'targetUri' => {'path'=>'ConceptMap.target[x]', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'targetCanonical' => {'path'=>'ConceptMap.target[x]', 'type'=>'canonical', 'min'=>0, 'max'=>1},
        'group' => {'path'=>'ConceptMap.group', 'type'=>'ConceptMap::Group', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Group < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Group.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Group.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Group.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'source' => {'path'=>'Group.source', 'type'=>'uri', 'min'=>0, 'max'=>1},
          'sourceVersion' => {'path'=>'Group.sourceVersion', 'type'=>'string', 'min'=>0, 'max'=>1},
          'target' => {'path'=>'Group.target', 'type'=>'uri', 'min'=>0, 'max'=>1},
          'targetVersion' => {'path'=>'Group.targetVersion', 'type'=>'string', 'min'=>0, 'max'=>1},
          'element' => {'path'=>'Group.element', 'type'=>'ConceptMap::Group::Element', 'min'=>1, 'max'=>Float::INFINITY},
          'unmapped' => {'path'=>'Group.unmapped', 'type'=>'ConceptMap::Group::Unmapped', 'min'=>0, 'max'=>1}
        }

        class Element < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Element.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Element.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Element.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'path'=>'Element.code', 'type'=>'code', 'min'=>0, 'max'=>1},
            'display' => {'path'=>'Element.display', 'type'=>'string', 'min'=>0, 'max'=>1},
            'target' => {'path'=>'Element.target', 'type'=>'ConceptMap::Group::Element::Target', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Target < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Target.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Target.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Target.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'code' => {'path'=>'Target.code', 'type'=>'code', 'min'=>0, 'max'=>1},
              'display' => {'path'=>'Target.display', 'type'=>'string', 'min'=>0, 'max'=>1},
              'equivalence' => {'valid_codes'=>{'http://hl7.org/fhir/concept-map-equivalence'=>['relatedto', 'equivalent', 'equal', 'wider', 'subsumes', 'narrower', 'specializes', 'inexact', 'unmatched', 'disjoint']}, 'path'=>'Target.equivalence', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/concept-map-equivalence'}},
              'comment' => {'path'=>'Target.comment', 'type'=>'string', 'min'=>0, 'max'=>1},
              'dependsOn' => {'path'=>'Target.dependsOn', 'type'=>'ConceptMap::Group::Element::Target::DependsOn', 'min'=>0, 'max'=>Float::INFINITY},
              'product' => {'path'=>'Target.product', 'type'=>'ConceptMap::Group::Element::Target::DependsOn', 'min'=>0, 'max'=>Float::INFINITY}
            }

            class DependsOn < Model
              include FHIR::Hashable
              include FHIR::Json
              include FHIR::Xml

              METADATA = {
                'id' => {'path'=>'DependsOn.id', 'type'=>'string', 'min'=>0, 'max'=>1},
                'extension' => {'path'=>'DependsOn.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
                'modifierExtension' => {'path'=>'DependsOn.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
                'property' => {'path'=>'DependsOn.property', 'type'=>'uri', 'min'=>1, 'max'=>1},
                'system' => {'path'=>'DependsOn.system', 'type'=>'canonical', 'min'=>0, 'max'=>1},
                'value' => {'path'=>'DependsOn.value', 'type'=>'string', 'min'=>1, 'max'=>1},
                'display' => {'path'=>'DependsOn.display', 'type'=>'string', 'min'=>0, 'max'=>1}
              }

              attr_accessor :id                # 0-1 string
              attr_accessor :extension         # 0-* [ Extension ]
              attr_accessor :modifierExtension # 0-* [ Extension ]
              attr_accessor :property          # 1-1 uri
              attr_accessor :system            # 0-1 canonical
              attr_accessor :value             # 1-1 string
              attr_accessor :display           # 0-1 string
            end

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :code              # 0-1 code
            attr_accessor :display           # 0-1 string
            attr_accessor :equivalence       # 1-1 code
            attr_accessor :comment           # 0-1 string
            attr_accessor :dependsOn         # 0-* [ ConceptMap::Group::Element::Target::DependsOn ]
            attr_accessor :product           # 0-* [ ConceptMap::Group::Element::Target::DependsOn ]
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 0-1 code
          attr_accessor :display           # 0-1 string
          attr_accessor :target            # 0-* [ ConceptMap::Group::Element::Target ]
        end

        class Unmapped < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Unmapped.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Unmapped.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Unmapped.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'mode' => {'valid_codes'=>{'http://hl7.org/fhir/conceptmap-unmapped-mode'=>['provided', 'fixed', 'other-map']}, 'path'=>'Unmapped.mode', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/conceptmap-unmapped-mode'}},
            'code' => {'path'=>'Unmapped.code', 'type'=>'code', 'min'=>0, 'max'=>1},
            'display' => {'path'=>'Unmapped.display', 'type'=>'string', 'min'=>0, 'max'=>1},
            'url' => {'path'=>'Unmapped.url', 'type'=>'canonical', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :mode              # 1-1 code
          attr_accessor :code              # 0-1 code
          attr_accessor :display           # 0-1 string
          attr_accessor :url               # 0-1 canonical
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :source            # 0-1 uri
        attr_accessor :sourceVersion     # 0-1 string
        attr_accessor :target            # 0-1 uri
        attr_accessor :targetVersion     # 0-1 string
        attr_accessor :element           # 1-* [ ConceptMap::Group::Element ]
        attr_accessor :unmapped          # 0-1 ConceptMap::Group::Unmapped
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :url               # 0-1 uri
      attr_accessor :identifier        # 0-1 Identifier
      attr_accessor :version           # 0-1 string
      attr_accessor :name              # 0-1 string
      attr_accessor :title             # 0-1 string
      attr_accessor :status            # 1-1 code
      attr_accessor :experimental      # 0-1 boolean
      attr_accessor :date              # 0-1 dateTime
      attr_accessor :publisher         # 0-1 string
      attr_accessor :contact           # 0-* [ ContactDetail ]
      attr_accessor :description       # 0-1 markdown
      attr_accessor :useContext        # 0-* [ UsageContext ]
      attr_accessor :jurisdiction      # 0-* [ CodeableConcept ]
      attr_accessor :purpose           # 0-1 markdown
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :sourceUri         # 0-1 uri
      attr_accessor :sourceCanonical   # 0-1 canonical
      attr_accessor :targetUri         # 0-1 uri
      attr_accessor :targetCanonical   # 0-1 canonical
      attr_accessor :group             # 0-* [ ConceptMap::Group ]

      def resourceType
        'ConceptMap'
      end
    end
  end
  ConceptMap = FHIR::R4::ConceptMap
end