module FHIR
  module R4
    class CodeSystem < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['code', 'content-mode', 'context', 'context-quantity', 'context-type', 'context-type-quantity', 'context-type-value', 'date', 'description', 'identifier', 'jurisdiction', 'language', 'name', 'publisher', 'status', 'supplements', 'system', 'title', 'url', 'version']
      METADATA = {
        'id' => {'path'=>'CodeSystem.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'CodeSystem.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'CodeSystem.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'CodeSystem.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'CodeSystem.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'CodeSystem.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'CodeSystem.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'CodeSystem.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'path'=>'CodeSystem.url', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'identifier' => {'path'=>'CodeSystem.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'path'=>'CodeSystem.version', 'type'=>'string', 'min'=>0, 'max'=>1},
        'name' => {'path'=>'CodeSystem.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'title' => {'path'=>'CodeSystem.title', 'type'=>'string', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'CodeSystem.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'experimental' => {'path'=>'CodeSystem.experimental', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'date' => {'path'=>'CodeSystem.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'publisher' => {'path'=>'CodeSystem.publisher', 'type'=>'string', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'CodeSystem.contact', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'CodeSystem.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'useContext' => {'path'=>'CodeSystem.useContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'path'=>'CodeSystem.jurisdiction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'path'=>'CodeSystem.purpose', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'copyright' => {'path'=>'CodeSystem.copyright', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'caseSensitive' => {'path'=>'CodeSystem.caseSensitive', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'valueSet' => {'path'=>'CodeSystem.valueSet', 'type'=>'canonical', 'min'=>0, 'max'=>1},
        'hierarchyMeaning' => {'valid_codes'=>{'http://hl7.org/fhir/codesystem-hierarchy-meaning'=>['grouped-by', 'is-a', 'part-of', 'classified-with']}, 'path'=>'CodeSystem.hierarchyMeaning', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning'}},
        'compositional' => {'path'=>'CodeSystem.compositional', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'versionNeeded' => {'path'=>'CodeSystem.versionNeeded', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'content' => {'valid_codes'=>{'http://hl7.org/fhir/codesystem-content-mode'=>['not-present', 'example', 'fragment', 'complete', 'supplement']}, 'path'=>'CodeSystem.content', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/codesystem-content-mode'}},
        'supplements' => {'path'=>'CodeSystem.supplements', 'type'=>'canonical', 'min'=>0, 'max'=>1},
        'count' => {'path'=>'CodeSystem.count', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
        'filter' => {'path'=>'CodeSystem.filter', 'type'=>'CodeSystem::Filter', 'min'=>0, 'max'=>Float::INFINITY},
        'property' => {'path'=>'CodeSystem.property', 'type'=>'CodeSystem::Property', 'min'=>0, 'max'=>Float::INFINITY},
        'concept' => {'path'=>'CodeSystem.concept', 'type'=>'CodeSystem::Concept', 'min'=>0, 'max'=>Float::INFINITY}
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
          'description' => {'path'=>'Filter.description', 'type'=>'string', 'min'=>0, 'max'=>1},
          'operator' => {'valid_codes'=>{'http://hl7.org/fhir/filter-operator'=>['=', 'is-a', 'descendent-of', 'is-not-a', 'regex', 'in', 'not-in', 'generalizes', 'exists']}, 'path'=>'Filter.operator', 'type'=>'code', 'min'=>1, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/filter-operator'}},
          'value' => {'path'=>'Filter.value', 'type'=>'string', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 1-1 code
        attr_accessor :description       # 0-1 string
        attr_accessor :operator          # 1-* [ code ]
        attr_accessor :value             # 1-1 string
      end

      class Property < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Property.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Property.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Property.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'path'=>'Property.code', 'type'=>'code', 'min'=>1, 'max'=>1},
          'uri' => {'path'=>'Property.uri', 'type'=>'uri', 'min'=>0, 'max'=>1},
          'description' => {'path'=>'Property.description', 'type'=>'string', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/concept-property-type'=>['code', 'Coding', 'string', 'integer', 'boolean', 'dateTime', 'decimal']}, 'path'=>'Property.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/concept-property-type'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 1-1 code
        attr_accessor :uri               # 0-1 uri
        attr_accessor :description       # 0-1 string
        attr_accessor :type              # 1-1 code
      end

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
          'definition' => {'path'=>'Concept.definition', 'type'=>'string', 'min'=>0, 'max'=>1},
          'designation' => {'path'=>'Concept.designation', 'type'=>'CodeSystem::Concept::Designation', 'min'=>0, 'max'=>Float::INFINITY},
          'property' => {'path'=>'Concept.property', 'type'=>'CodeSystem::Concept::Property', 'min'=>0, 'max'=>Float::INFINITY},
          'concept' => {'path'=>'Concept.concept', 'type'=>'CodeSystem::Concept', 'min'=>0, 'max'=>Float::INFINITY}
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

        class Property < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'value' => ['code', 'Coding', 'string', 'integer', 'boolean', 'dateTime', 'decimal']
          }
          METADATA = {
            'id' => {'path'=>'Property.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Property.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Property.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'path'=>'Property.code', 'type'=>'code', 'min'=>1, 'max'=>1},
            'valueCode' => {'path'=>'Property.value[x]', 'type'=>'code', 'min'=>1, 'max'=>1},
            'valueCoding' => {'path'=>'Property.value[x]', 'type'=>'Coding', 'min'=>1, 'max'=>1},
            'valueString' => {'path'=>'Property.value[x]', 'type'=>'string', 'min'=>1, 'max'=>1},
            'valueInteger' => {'path'=>'Property.value[x]', 'type'=>'integer', 'min'=>1, 'max'=>1},
            'valueBoolean' => {'path'=>'Property.value[x]', 'type'=>'boolean', 'min'=>1, 'max'=>1},
            'valueDateTime' => {'path'=>'Property.value[x]', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
            'valueDecimal' => {'path'=>'Property.value[x]', 'type'=>'decimal', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 1-1 code
          attr_accessor :valueCode         # 1-1 code
          attr_accessor :valueCoding       # 1-1 Coding
          attr_accessor :valueString       # 1-1 string
          attr_accessor :valueInteger      # 1-1 integer
          attr_accessor :valueBoolean      # 1-1 boolean
          attr_accessor :valueDateTime     # 1-1 dateTime
          attr_accessor :valueDecimal      # 1-1 decimal
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 1-1 code
        attr_accessor :display           # 0-1 string
        attr_accessor :definition        # 0-1 string
        attr_accessor :designation       # 0-* [ CodeSystem::Concept::Designation ]
        attr_accessor :property          # 0-* [ CodeSystem::Concept::Property ]
        attr_accessor :concept           # 0-* [ CodeSystem::Concept ]
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
      attr_accessor :purpose           # 0-1 markdown
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :caseSensitive     # 0-1 boolean
      attr_accessor :valueSet          # 0-1 canonical
      attr_accessor :hierarchyMeaning  # 0-1 code
      attr_accessor :compositional     # 0-1 boolean
      attr_accessor :versionNeeded     # 0-1 boolean
      attr_accessor :content           # 1-1 code
      attr_accessor :supplements       # 0-1 canonical
      attr_accessor :count             # 0-1 unsignedInt
      attr_accessor :filter            # 0-* [ CodeSystem::Filter ]
      attr_accessor :property          # 0-* [ CodeSystem::Property ]
      attr_accessor :concept           # 0-* [ CodeSystem::Concept ]

      def resourceType
        'CodeSystem'
      end
    end
  end
  CodeSystem = FHIR::R4::CodeSystem
end