module FHIR
  module R4
    class TerminologyCapabilities < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'context-type-quantity', 'context-type-value', 'date', 'description', 'jurisdiction', 'name', 'publisher', 'status', 'title', 'url', 'version']
      METADATA = {
        'id' => {'path'=>'TerminologyCapabilities.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'TerminologyCapabilities.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'TerminologyCapabilities.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'TerminologyCapabilities.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'TerminologyCapabilities.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'TerminologyCapabilities.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'TerminologyCapabilities.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'TerminologyCapabilities.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'path'=>'TerminologyCapabilities.url', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'version' => {'path'=>'TerminologyCapabilities.version', 'type'=>'string', 'min'=>0, 'max'=>1},
        'name' => {'path'=>'TerminologyCapabilities.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'title' => {'path'=>'TerminologyCapabilities.title', 'type'=>'string', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'TerminologyCapabilities.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'experimental' => {'path'=>'TerminologyCapabilities.experimental', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'date' => {'path'=>'TerminologyCapabilities.date', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
        'publisher' => {'path'=>'TerminologyCapabilities.publisher', 'type'=>'string', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'TerminologyCapabilities.contact', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'TerminologyCapabilities.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'useContext' => {'path'=>'TerminologyCapabilities.useContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'path'=>'TerminologyCapabilities.jurisdiction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'path'=>'TerminologyCapabilities.purpose', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'copyright' => {'path'=>'TerminologyCapabilities.copyright', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'kind' => {'valid_codes'=>{'http://hl7.org/fhir/capability-statement-kind'=>['instance', 'capability', 'requirements']}, 'path'=>'TerminologyCapabilities.kind', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/capability-statement-kind'}},
        'software' => {'path'=>'TerminologyCapabilities.software', 'type'=>'TerminologyCapabilities::Software', 'min'=>0, 'max'=>1},
        'implementation' => {'path'=>'TerminologyCapabilities.implementation', 'type'=>'TerminologyCapabilities::Implementation', 'min'=>0, 'max'=>1},
        'lockedDate' => {'path'=>'TerminologyCapabilities.lockedDate', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'codeSystem' => {'path'=>'TerminologyCapabilities.codeSystem', 'type'=>'TerminologyCapabilities::CodeSystem', 'min'=>0, 'max'=>Float::INFINITY},
        'expansion' => {'path'=>'TerminologyCapabilities.expansion', 'type'=>'TerminologyCapabilities::Expansion', 'min'=>0, 'max'=>1},
        'codeSearch' => {'valid_codes'=>{'http://hl7.org/fhir/code-search-support'=>['explicit', 'all']}, 'path'=>'TerminologyCapabilities.codeSearch', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/code-search-support'}},
        'validateCode' => {'path'=>'TerminologyCapabilities.validateCode', 'type'=>'TerminologyCapabilities::ValidateCode', 'min'=>0, 'max'=>1},
        'translation' => {'path'=>'TerminologyCapabilities.translation', 'type'=>'TerminologyCapabilities::Translation', 'min'=>0, 'max'=>1},
        'closure' => {'path'=>'TerminologyCapabilities.closure', 'type'=>'TerminologyCapabilities::Closure', 'min'=>0, 'max'=>1}
      }

      class Software < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Software.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Software.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Software.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'path'=>'Software.name', 'type'=>'string', 'min'=>1, 'max'=>1},
          'version' => {'path'=>'Software.version', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 1-1 string
        attr_accessor :version           # 0-1 string
      end

      class Implementation < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Implementation.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Implementation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Implementation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'path'=>'Implementation.description', 'type'=>'string', 'min'=>1, 'max'=>1},
          'url' => {'path'=>'Implementation.url', 'type'=>'url', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :description       # 1-1 string
        attr_accessor :url               # 0-1 url
      end

      class CodeSystem < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'CodeSystem.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'CodeSystem.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'CodeSystem.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'uri' => {'path'=>'CodeSystem.uri', 'type'=>'canonical', 'min'=>0, 'max'=>1},
          'version' => {'path'=>'CodeSystem.version', 'type'=>'TerminologyCapabilities::CodeSystem::Version', 'min'=>0, 'max'=>Float::INFINITY},
          'subsumption' => {'path'=>'CodeSystem.subsumption', 'type'=>'boolean', 'min'=>0, 'max'=>1}
        }

        class Version < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Version.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Version.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Version.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'path'=>'Version.code', 'type'=>'string', 'min'=>0, 'max'=>1},
            'isDefault' => {'path'=>'Version.isDefault', 'type'=>'boolean', 'min'=>0, 'max'=>1},
            'compositional' => {'path'=>'Version.compositional', 'type'=>'boolean', 'min'=>0, 'max'=>1},
            'language' => {'path'=>'Version.language', 'type'=>'code', 'min'=>0, 'max'=>Float::INFINITY},
            'filter' => {'path'=>'Version.filter', 'type'=>'TerminologyCapabilities::CodeSystem::Version::Filter', 'min'=>0, 'max'=>Float::INFINITY},
            'property' => {'path'=>'Version.property', 'type'=>'code', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Filter < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Filter.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Filter.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Filter.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'code' => {'path'=>'Filter.code', 'type'=>'code', 'min'=>1, 'max'=>1},
              'op' => {'path'=>'Filter.op', 'type'=>'code', 'min'=>1, 'max'=>Float::INFINITY}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :code              # 1-1 code
            attr_accessor :op                # 1-* [ code ]
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 0-1 string
          attr_accessor :isDefault         # 0-1 boolean
          attr_accessor :compositional     # 0-1 boolean
          attr_accessor :language          # 0-* [ code ]
          attr_accessor :filter            # 0-* [ TerminologyCapabilities::CodeSystem::Version::Filter ]
          attr_accessor :property          # 0-* [ code ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :uri               # 0-1 canonical
        attr_accessor :version           # 0-* [ TerminologyCapabilities::CodeSystem::Version ]
        attr_accessor :subsumption       # 0-1 boolean
      end

      class Expansion < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Expansion.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Expansion.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Expansion.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'hierarchical' => {'path'=>'Expansion.hierarchical', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'paging' => {'path'=>'Expansion.paging', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'incomplete' => {'path'=>'Expansion.incomplete', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'parameter' => {'path'=>'Expansion.parameter', 'type'=>'TerminologyCapabilities::Expansion::Parameter', 'min'=>0, 'max'=>Float::INFINITY},
          'textFilter' => {'path'=>'Expansion.textFilter', 'type'=>'markdown', 'min'=>0, 'max'=>1}
        }

        class Parameter < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Parameter.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Parameter.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Parameter.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'name' => {'path'=>'Parameter.name', 'type'=>'code', 'min'=>1, 'max'=>1},
            'documentation' => {'path'=>'Parameter.documentation', 'type'=>'string', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :name              # 1-1 code
          attr_accessor :documentation     # 0-1 string
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :hierarchical      # 0-1 boolean
        attr_accessor :paging            # 0-1 boolean
        attr_accessor :incomplete        # 0-1 boolean
        attr_accessor :parameter         # 0-* [ TerminologyCapabilities::Expansion::Parameter ]
        attr_accessor :textFilter        # 0-1 markdown
      end

      class ValidateCode < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'ValidateCode.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'ValidateCode.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'ValidateCode.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'translations' => {'path'=>'ValidateCode.translations', 'type'=>'boolean', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :translations      # 1-1 boolean
      end

      class Translation < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Translation.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Translation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Translation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'needsMap' => {'path'=>'Translation.needsMap', 'type'=>'boolean', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :needsMap          # 1-1 boolean
      end

      class Closure < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Closure.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Closure.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Closure.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'translation' => {'path'=>'Closure.translation', 'type'=>'boolean', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :translation       # 0-1 boolean
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
      attr_accessor :version           # 0-1 string
      attr_accessor :name              # 0-1 string
      attr_accessor :title             # 0-1 string
      attr_accessor :status            # 1-1 code
      attr_accessor :experimental      # 0-1 boolean
      attr_accessor :date              # 1-1 dateTime
      attr_accessor :publisher         # 0-1 string
      attr_accessor :contact           # 0-* [ ContactDetail ]
      attr_accessor :description       # 0-1 markdown
      attr_accessor :useContext        # 0-* [ UsageContext ]
      attr_accessor :jurisdiction      # 0-* [ CodeableConcept ]
      attr_accessor :purpose           # 0-1 markdown
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :kind              # 1-1 code
      attr_accessor :software          # 0-1 TerminologyCapabilities::Software
      attr_accessor :implementation    # 0-1 TerminologyCapabilities::Implementation
      attr_accessor :lockedDate        # 0-1 boolean
      attr_accessor :codeSystem        # 0-* [ TerminologyCapabilities::CodeSystem ]
      attr_accessor :expansion         # 0-1 TerminologyCapabilities::Expansion
      attr_accessor :codeSearch        # 0-1 code
      attr_accessor :validateCode      # 0-1 TerminologyCapabilities::ValidateCode
      attr_accessor :translation       # 0-1 TerminologyCapabilities::Translation
      attr_accessor :closure           # 0-1 TerminologyCapabilities::Closure

      def resourceType
        'TerminologyCapabilities'
      end
    end
  end
  TerminologyCapabilities = FHIR::R4::TerminologyCapabilities
end