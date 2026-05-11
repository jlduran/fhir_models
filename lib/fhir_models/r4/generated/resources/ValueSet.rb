module FHIR
  module R4
    class ValueSet < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['code', 'context', 'context-quantity', 'context-type', 'context-type-quantity', 'context-type-value', 'date', 'description', 'expansion', 'identifier', 'jurisdiction', 'name', 'publisher', 'reference', 'status', 'title', 'url', 'version']
      METADATA = {
        'id' => {'path'=>'ValueSet.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'ValueSet.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'ValueSet.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'ValueSet.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'ValueSet.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'ValueSet.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'ValueSet.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'ValueSet.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'path'=>'ValueSet.url', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'identifier' => {'path'=>'ValueSet.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'path'=>'ValueSet.version', 'type'=>'string', 'min'=>0, 'max'=>1},
        'name' => {'path'=>'ValueSet.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'title' => {'path'=>'ValueSet.title', 'type'=>'string', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'ValueSet.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'experimental' => {'path'=>'ValueSet.experimental', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'date' => {'path'=>'ValueSet.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'publisher' => {'path'=>'ValueSet.publisher', 'type'=>'string', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'ValueSet.contact', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'ValueSet.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'useContext' => {'path'=>'ValueSet.useContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'path'=>'ValueSet.jurisdiction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'immutable' => {'path'=>'ValueSet.immutable', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'purpose' => {'path'=>'ValueSet.purpose', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'copyright' => {'path'=>'ValueSet.copyright', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'compose' => {'path'=>'ValueSet.compose', 'type'=>'ValueSet::Compose', 'min'=>0, 'max'=>1},
        'expansion' => {'path'=>'ValueSet.expansion', 'type'=>'ValueSet::Expansion', 'min'=>0, 'max'=>1}
      }

      class Compose < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Compose.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Compose.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Compose.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'lockedDate' => {'path'=>'Compose.lockedDate', 'type'=>'date', 'min'=>0, 'max'=>1},
          'inactive' => {'path'=>'Compose.inactive', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'include' => {'path'=>'Compose.include', 'type'=>'ValueSet::Compose::Include', 'min'=>1, 'max'=>Float::INFINITY},
          'exclude' => {'path'=>'Compose.exclude', 'type'=>'ValueSet::Compose::Include', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Include < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Include.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Include.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Include.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'system' => {'path'=>'Include.system', 'type'=>'uri', 'min'=>0, 'max'=>1},
            'version' => {'path'=>'Include.version', 'type'=>'string', 'min'=>0, 'max'=>1},
            'concept' => {'path'=>'Include.concept', 'type'=>'ValueSet::Compose::Include::Concept', 'min'=>0, 'max'=>Float::INFINITY},
            'filter' => {'path'=>'Include.filter', 'type'=>'ValueSet::Compose::Include::Filter', 'min'=>0, 'max'=>Float::INFINITY},
            'valueSet' => {'path'=>'Include.valueSet', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Concept < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Concept.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Concept.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Concept.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'code' => {'path'=>'Concept.code', 'type'=>'code', 'min'=>1, 'max'=>1},
              'display' => {'path'=>'Concept.display', 'type'=>'string', 'min'=>0, 'max'=>1},
              'designation' => {'path'=>'Concept.designation', 'type'=>'ValueSet::Compose::Include::Concept::Designation', 'min'=>0, 'max'=>Float::INFINITY}
            }

            class Designation < Model
              include FHIR::Hashable
              include FHIR::Json
              include FHIR::Xml

              METADATA = {
                'id' => {'path'=>'Designation.id', 'type'=>'string', 'min'=>0, 'max'=>1},
                'extension' => {'path'=>'Designation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
                'modifierExtension' => {'path'=>'Designation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
                'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Designation.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
                'use' => {'valid_codes'=>{'http://snomed.info/sct'=>['900000000000003001', '900000000000013009']}, 'path'=>'Designation.use', 'type'=>'Coding', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/designation-use'}},
                'value' => {'path'=>'Designation.value', 'type'=>'string', 'min'=>1, 'max'=>1}
              }

              attr_accessor :id                # 0-1 string
              attr_accessor :extension         # 0-* [ Extension ]
              attr_accessor :modifierExtension # 0-* [ Extension ]
              attr_accessor :language          # 0-1 code
              attr_accessor :use               # 0-1 Coding
              attr_accessor :value             # 1-1 string
            end

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :code              # 1-1 code
            attr_accessor :display           # 0-1 string
            attr_accessor :designation       # 0-* [ ValueSet::Compose::Include::Concept::Designation ]
          end

          class Filter < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Filter.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Filter.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Filter.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'property' => {'path'=>'Filter.property', 'type'=>'code', 'min'=>1, 'max'=>1},
              'op' => {'valid_codes'=>{'http://hl7.org/fhir/filter-operator'=>['=', 'is-a', 'descendent-of', 'is-not-a', 'regex', 'in', 'not-in', 'generalizes', 'exists']}, 'path'=>'Filter.op', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/filter-operator'}},
              'value' => {'path'=>'Filter.value', 'type'=>'string', 'min'=>1, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :property          # 1-1 code
            attr_accessor :op                # 1-1 code
            attr_accessor :value             # 1-1 string
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :system            # 0-1 uri
          attr_accessor :version           # 0-1 string
          attr_accessor :concept           # 0-* [ ValueSet::Compose::Include::Concept ]
          attr_accessor :filter            # 0-* [ ValueSet::Compose::Include::Filter ]
          attr_accessor :valueSet          # 0-* [ canonical ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :lockedDate        # 0-1 date
        attr_accessor :inactive          # 0-1 boolean
        attr_accessor :include           # 1-* [ ValueSet::Compose::Include ]
        attr_accessor :exclude           # 0-* [ ValueSet::Compose::Include ]
      end

      class Expansion < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Expansion.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Expansion.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Expansion.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'path'=>'Expansion.identifier', 'type'=>'uri', 'min'=>0, 'max'=>1},
          'timestamp' => {'path'=>'Expansion.timestamp', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
          'total' => {'path'=>'Expansion.total', 'type'=>'integer', 'min'=>0, 'max'=>1},
          'offset' => {'path'=>'Expansion.offset', 'type'=>'integer', 'min'=>0, 'max'=>1},
          'parameter' => {'path'=>'Expansion.parameter', 'type'=>'ValueSet::Expansion::Parameter', 'min'=>0, 'max'=>Float::INFINITY},
          'contains' => {'path'=>'Expansion.contains', 'type'=>'ValueSet::Expansion::Contains', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Parameter < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'value' => ['string', 'boolean', 'integer', 'decimal', 'uri', 'code', 'dateTime']
          }
          METADATA = {
            'id' => {'path'=>'Parameter.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Parameter.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Parameter.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'name' => {'path'=>'Parameter.name', 'type'=>'string', 'min'=>1, 'max'=>1},
            'valueString' => {'path'=>'Parameter.value[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
            'valueBoolean' => {'path'=>'Parameter.value[x]', 'type'=>'boolean', 'min'=>0, 'max'=>1},
            'valueInteger' => {'path'=>'Parameter.value[x]', 'type'=>'integer', 'min'=>0, 'max'=>1},
            'valueDecimal' => {'path'=>'Parameter.value[x]', 'type'=>'decimal', 'min'=>0, 'max'=>1},
            'valueUri' => {'path'=>'Parameter.value[x]', 'type'=>'uri', 'min'=>0, 'max'=>1},
            'valueCode' => {'path'=>'Parameter.value[x]', 'type'=>'code', 'min'=>0, 'max'=>1},
            'valueDateTime' => {'path'=>'Parameter.value[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :name              # 1-1 string
          attr_accessor :valueString       # 0-1 string
          attr_accessor :valueBoolean      # 0-1 boolean
          attr_accessor :valueInteger      # 0-1 integer
          attr_accessor :valueDecimal      # 0-1 decimal
          attr_accessor :valueUri          # 0-1 uri
          attr_accessor :valueCode         # 0-1 code
          attr_accessor :valueDateTime     # 0-1 dateTime
        end

        class Contains < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Contains.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Contains.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Contains.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'system' => {'path'=>'Contains.system', 'type'=>'uri', 'min'=>0, 'max'=>1},
            'abstract' => {'path'=>'Contains.abstract', 'type'=>'boolean', 'min'=>0, 'max'=>1},
            'inactive' => {'path'=>'Contains.inactive', 'type'=>'boolean', 'min'=>0, 'max'=>1},
            'version' => {'path'=>'Contains.version', 'type'=>'string', 'min'=>0, 'max'=>1},
            'code' => {'path'=>'Contains.code', 'type'=>'code', 'min'=>0, 'max'=>1},
            'display' => {'path'=>'Contains.display', 'type'=>'string', 'min'=>0, 'max'=>1},
            'designation' => {'path'=>'Contains.designation', 'type'=>'ValueSet::Compose::Include::Concept::Designation', 'min'=>0, 'max'=>Float::INFINITY},
            'contains' => {'path'=>'Contains.contains', 'type'=>'ValueSet::Expansion::Contains', 'min'=>0, 'max'=>Float::INFINITY}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :system            # 0-1 uri
          attr_accessor :abstract          # 0-1 boolean
          attr_accessor :inactive          # 0-1 boolean
          attr_accessor :version           # 0-1 string
          attr_accessor :code              # 0-1 code
          attr_accessor :display           # 0-1 string
          attr_accessor :designation       # 0-* [ ValueSet::Compose::Include::Concept::Designation ]
          attr_accessor :contains          # 0-* [ ValueSet::Expansion::Contains ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :identifier        # 0-1 uri
        attr_accessor :timestamp         # 1-1 dateTime
        attr_accessor :total             # 0-1 integer
        attr_accessor :offset            # 0-1 integer
        attr_accessor :parameter         # 0-* [ ValueSet::Expansion::Parameter ]
        attr_accessor :contains          # 0-* [ ValueSet::Expansion::Contains ]
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
      attr_accessor :identifier        # 0-* [ Identifier ]
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
      attr_accessor :immutable         # 0-1 boolean
      attr_accessor :purpose           # 0-1 markdown
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :compose           # 0-1 ValueSet::Compose
      attr_accessor :expansion         # 0-1 ValueSet::Expansion

      def resourceType
        'ValueSet'
      end
    end
  end
  ValueSet = FHIR::R4::ValueSet
end