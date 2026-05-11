module FHIR
  module R4
    class MedicinalProductInteraction < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['subject']
      METADATA = {
        'id' => {'path'=>'MedicinalProductInteraction.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'MedicinalProductInteraction.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'MedicinalProductInteraction.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'MedicinalProductInteraction.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'MedicinalProductInteraction.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'MedicinalProductInteraction.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'MedicinalProductInteraction.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'MedicinalProductInteraction.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProduct', 'http://hl7.org/fhir/StructureDefinition/Medication', 'http://hl7.org/fhir/StructureDefinition/Substance'], 'path'=>'MedicinalProductInteraction.subject', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'MedicinalProductInteraction.description', 'type'=>'string', 'min'=>0, 'max'=>1},
        'interactant' => {'path'=>'MedicinalProductInteraction.interactant', 'type'=>'MedicinalProductInteraction::Interactant', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'path'=>'MedicinalProductInteraction.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'effect' => {'path'=>'MedicinalProductInteraction.effect', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'incidence' => {'path'=>'MedicinalProductInteraction.incidence', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'management' => {'path'=>'MedicinalProductInteraction.management', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1}
      }

      class Interactant < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'item' => ['Reference', 'CodeableConcept']
        }
        METADATA = {
          'id' => {'path'=>'Interactant.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Interactant.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Interactant.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'itemReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProduct', 'http://hl7.org/fhir/StructureDefinition/Medication', 'http://hl7.org/fhir/StructureDefinition/Substance', 'http://hl7.org/fhir/StructureDefinition/ObservationDefinition'], 'path'=>'Interactant.item[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'itemCodeableConcept' => {'path'=>'Interactant.item[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                  # 0-1 string
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :itemReference       # 1-1 Reference(MedicinalProduct|Medication|Substance|ObservationDefinition)
        attr_accessor :itemCodeableConcept # 1-1 CodeableConcept
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :subject           # 0-* [ Reference(MedicinalProduct|Medication|Substance) ]
      attr_accessor :description       # 0-1 string
      attr_accessor :interactant       # 0-* [ MedicinalProductInteraction::Interactant ]
      attr_accessor :type              # 0-1 CodeableConcept
      attr_accessor :effect            # 0-1 CodeableConcept
      attr_accessor :incidence         # 0-1 CodeableConcept
      attr_accessor :management        # 0-1 CodeableConcept

      def resourceType
        'MedicinalProductInteraction'
      end
    end
  end
  MedicinalProductInteraction = FHIR::R4::MedicinalProductInteraction
end