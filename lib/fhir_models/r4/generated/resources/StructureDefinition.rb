module FHIR
  module R4
    class StructureDefinition < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml
      include FHIR::CommonStructureDefinition

      SEARCH_PARAMS = ['abstract', 'base', 'base-path', 'context', 'context-quantity', 'context-type', 'context-type-quantity', 'context-type-value', 'date', 'derivation', 'description', 'experimental', 'ext-context', 'identifier', 'jurisdiction', 'keyword', 'kind', 'name', 'path', 'publisher', 'status', 'title', 'type', 'url', 'valueset', 'version']
      METADATA = {
        'id' => {'path'=>'StructureDefinition.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'StructureDefinition.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'StructureDefinition.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'StructureDefinition.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'StructureDefinition.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'StructureDefinition.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'StructureDefinition.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'StructureDefinition.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'path'=>'StructureDefinition.url', 'type'=>'uri', 'min'=>1, 'max'=>1},
        'identifier' => {'path'=>'StructureDefinition.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'path'=>'StructureDefinition.version', 'type'=>'string', 'min'=>0, 'max'=>1},
        'name' => {'path'=>'StructureDefinition.name', 'type'=>'string', 'min'=>1, 'max'=>1},
        'title' => {'path'=>'StructureDefinition.title', 'type'=>'string', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'StructureDefinition.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'experimental' => {'path'=>'StructureDefinition.experimental', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'date' => {'path'=>'StructureDefinition.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'publisher' => {'path'=>'StructureDefinition.publisher', 'type'=>'string', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'StructureDefinition.contact', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'StructureDefinition.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'useContext' => {'path'=>'StructureDefinition.useContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'path'=>'StructureDefinition.jurisdiction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'path'=>'StructureDefinition.purpose', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'copyright' => {'path'=>'StructureDefinition.copyright', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'keyword' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/definition-use'=>['fhir-structure', 'custom-resource', 'dam', 'wire-format', 'archetype', 'template']}, 'path'=>'StructureDefinition.keyword', 'type'=>'Coding', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/definition-use'}},
        'fhirVersion' => {'valid_codes'=>{'http://hl7.org/fhir/FHIR-version'=>['0.01', '0.05', '0.06', '0.11', '0.0.80', '0.0.81', '0.0.82', '0.4.0', '0.5.0', '1.0.0', '1.0.1', '1.0.2', '1.1.0', '1.4.0', '1.6.0', '1.8.0', '3.0.0', '3.0.1', '3.3.0', '3.5.0', '4.0.0', '4.0.1']}, 'path'=>'StructureDefinition.fhirVersion', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/FHIR-version'}},
        'mapping' => {'path'=>'StructureDefinition.mapping', 'type'=>'StructureDefinition::Mapping', 'min'=>0, 'max'=>Float::INFINITY},
        'kind' => {'valid_codes'=>{'http://hl7.org/fhir/structure-definition-kind'=>['primitive-type', 'complex-type', 'resource', 'logical']}, 'path'=>'StructureDefinition.kind', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/structure-definition-kind'}},
        'abstract' => {'path'=>'StructureDefinition.abstract', 'type'=>'boolean', 'min'=>1, 'max'=>1},
        'context' => {'path'=>'StructureDefinition.context', 'type'=>'StructureDefinition::Context', 'min'=>0, 'max'=>Float::INFINITY},
        'contextInvariant' => {'path'=>'StructureDefinition.contextInvariant', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'path'=>'StructureDefinition.type', 'type'=>'uri', 'min'=>1, 'max'=>1},
        'baseDefinition' => {'path'=>'StructureDefinition.baseDefinition', 'type'=>'canonical', 'min'=>0, 'max'=>1},
        'derivation' => {'valid_codes'=>{'http://hl7.org/fhir/type-derivation-rule'=>['specialization', 'constraint']}, 'path'=>'StructureDefinition.derivation', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/type-derivation-rule'}},
        'snapshot' => {'path'=>'StructureDefinition.snapshot', 'type'=>'StructureDefinition::Snapshot', 'min'=>0, 'max'=>1},
        'differential' => {'path'=>'StructureDefinition.differential', 'type'=>'StructureDefinition::Differential', 'min'=>0, 'max'=>1}
      }

      class Mapping < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Mapping.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Mapping.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Mapping.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'identity' => {'path'=>'Mapping.identity', 'type'=>'id', 'min'=>1, 'max'=>1},
          'uri' => {'path'=>'Mapping.uri', 'type'=>'uri', 'min'=>0, 'max'=>1},
          'name' => {'path'=>'Mapping.name', 'type'=>'string', 'min'=>0, 'max'=>1},
          'comment' => {'path'=>'Mapping.comment', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :identity          # 1-1 id
        attr_accessor :uri               # 0-1 uri
        attr_accessor :name              # 0-1 string
        attr_accessor :comment           # 0-1 string
      end

      class Context < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Context.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Context.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Context.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/extension-context-type'=>['fhirpath', 'element', 'extension']}, 'path'=>'Context.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/extension-context-type'}},
          'expression' => {'path'=>'Context.expression', 'type'=>'string', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 code
        attr_accessor :expression        # 1-1 string
      end

      class Snapshot < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Snapshot.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Snapshot.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Snapshot.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'element' => {'path'=>'Snapshot.element', 'type'=>'ElementDefinition', 'min'=>1, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :element           # 1-* [ ElementDefinition ]
      end

      class Differential < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Differential.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Differential.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Differential.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'element' => {'path'=>'Differential.element', 'type'=>'ElementDefinition', 'min'=>1, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :element           # 1-* [ ElementDefinition ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :url               # 1-1 uri
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :version           # 0-1 string
      attr_accessor :name              # 1-1 string
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
      attr_accessor :keyword           # 0-* [ Coding ]
      attr_accessor :fhirVersion       # 0-1 code
      attr_accessor :mapping           # 0-* [ StructureDefinition::Mapping ]
      attr_accessor :kind              # 1-1 code
      attr_accessor :abstract          # 1-1 boolean
      attr_accessor :context           # 0-* [ StructureDefinition::Context ]
      attr_accessor :contextInvariant  # 0-* [ string ]
      attr_accessor :type              # 1-1 uri
      attr_accessor :baseDefinition    # 0-1 canonical
      attr_accessor :derivation        # 0-1 code
      attr_accessor :snapshot          # 0-1 StructureDefinition::Snapshot
      attr_accessor :differential      # 0-1 StructureDefinition::Differential

      def resourceType
        'StructureDefinition'
      end
    end
  end
  StructureDefinition = FHIR::R4::StructureDefinition
end