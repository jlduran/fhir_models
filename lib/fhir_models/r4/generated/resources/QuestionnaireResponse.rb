module FHIR
  module R4
    class QuestionnaireResponse < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['author', 'authored', 'based-on', 'encounter', 'identifier', 'item-subject', 'part-of', 'patient', 'questionnaire', 'source', 'status', 'subject']
      METADATA = {
        'id' => {'path'=>'QuestionnaireResponse.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'QuestionnaireResponse.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'QuestionnaireResponse.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'QuestionnaireResponse.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'QuestionnaireResponse.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'QuestionnaireResponse.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'QuestionnaireResponse.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'QuestionnaireResponse.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'QuestionnaireResponse.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CarePlan', 'http://hl7.org/fhir/StructureDefinition/ServiceRequest'], 'path'=>'QuestionnaireResponse.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'partOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Observation', 'http://hl7.org/fhir/StructureDefinition/Procedure'], 'path'=>'QuestionnaireResponse.partOf', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'questionnaire' => {'path'=>'QuestionnaireResponse.questionnaire', 'type'=>'canonical', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/questionnaire-answers-status'=>['in-progress', 'completed', 'amended', 'entered-in-error', 'stopped']}, 'path'=>'QuestionnaireResponse.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/questionnaire-answers-status'}},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'QuestionnaireResponse.subject', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'QuestionnaireResponse.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'authored' => {'path'=>'QuestionnaireResponse.authored', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'author' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'QuestionnaireResponse.author', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'QuestionnaireResponse.source', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'item' => {'path'=>'QuestionnaireResponse.item', 'type'=>'QuestionnaireResponse::Item', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Item < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Item.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Item.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Item.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'linkId' => {'path'=>'Item.linkId', 'type'=>'string', 'min'=>1, 'max'=>1},
          'definition' => {'path'=>'Item.definition', 'type'=>'uri', 'min'=>0, 'max'=>1},
          'text' => {'path'=>'Item.text', 'type'=>'string', 'min'=>0, 'max'=>1},
          'answer' => {'path'=>'Item.answer', 'type'=>'QuestionnaireResponse::Item::Answer', 'min'=>0, 'max'=>Float::INFINITY},
          'item' => {'path'=>'Item.item', 'type'=>'QuestionnaireResponse::Item', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Answer < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'value' => ['boolean', 'decimal', 'integer', 'date', 'dateTime', 'time', 'string', 'uri', 'Attachment', 'Coding', 'Quantity', 'Reference']
          }
          METADATA = {
            'id' => {'path'=>'Answer.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Answer.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Answer.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'valueBoolean' => {'path'=>'Answer.value[x]', 'type'=>'boolean', 'min'=>0, 'max'=>1},
            'valueDecimal' => {'path'=>'Answer.value[x]', 'type'=>'decimal', 'min'=>0, 'max'=>1},
            'valueInteger' => {'path'=>'Answer.value[x]', 'type'=>'integer', 'min'=>0, 'max'=>1},
            'valueDate' => {'path'=>'Answer.value[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
            'valueDateTime' => {'path'=>'Answer.value[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
            'valueTime' => {'path'=>'Answer.value[x]', 'type'=>'time', 'min'=>0, 'max'=>1},
            'valueString' => {'path'=>'Answer.value[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
            'valueUri' => {'path'=>'Answer.value[x]', 'type'=>'uri', 'min'=>0, 'max'=>1},
            'valueAttachment' => {'path'=>'Answer.value[x]', 'type'=>'Attachment', 'min'=>0, 'max'=>1},
            'valueCoding' => {'path'=>'Answer.value[x]', 'type'=>'Coding', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/questionnaire-answers'}},
            'valueQuantity' => {'path'=>'Answer.value[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
            'valueReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Answer.value[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
            'item' => {'path'=>'Answer.item', 'type'=>'QuestionnaireResponse::Item', 'min'=>0, 'max'=>Float::INFINITY}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :valueBoolean      # 0-1 boolean
          attr_accessor :valueDecimal      # 0-1 decimal
          attr_accessor :valueInteger      # 0-1 integer
          attr_accessor :valueDate         # 0-1 date
          attr_accessor :valueDateTime     # 0-1 dateTime
          attr_accessor :valueTime         # 0-1 time
          attr_accessor :valueString       # 0-1 string
          attr_accessor :valueUri          # 0-1 uri
          attr_accessor :valueAttachment   # 0-1 Attachment
          attr_accessor :valueCoding       # 0-1 Coding
          attr_accessor :valueQuantity     # 0-1 Quantity
          attr_accessor :valueReference    # 0-1 Reference(Resource)
          attr_accessor :item              # 0-* [ QuestionnaireResponse::Item ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :linkId            # 1-1 string
        attr_accessor :definition        # 0-1 uri
        attr_accessor :text              # 0-1 string
        attr_accessor :answer            # 0-* [ QuestionnaireResponse::Item::Answer ]
        attr_accessor :item              # 0-* [ QuestionnaireResponse::Item ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :identifier        # 0-1 Identifier
      attr_accessor :basedOn           # 0-* [ Reference(CarePlan|ServiceRequest) ]
      attr_accessor :partOf            # 0-* [ Reference(Observation|Procedure) ]
      attr_accessor :questionnaire     # 0-1 canonical
      attr_accessor :status            # 1-1 code
      attr_accessor :subject           # 0-1 Reference(Resource)
      attr_accessor :encounter         # 0-1 Reference(Encounter)
      attr_accessor :authored          # 0-1 dateTime
      attr_accessor :author            # 0-1 Reference(Device|Practitioner|PractitionerRole|Patient|RelatedPerson|Organization)
      attr_accessor :source            # 0-1 Reference(Patient|Practitioner|PractitionerRole|RelatedPerson)
      attr_accessor :item              # 0-* [ QuestionnaireResponse::Item ]

      def resourceType
        'QuestionnaireResponse'
      end
    end
  end
  QuestionnaireResponse = FHIR::R4::QuestionnaireResponse
end