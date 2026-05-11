module FHIR
  module R4
    class GuidanceResponse < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'module' => ['uri', 'canonical', 'CodeableConcept']
      }
      SEARCH_PARAMS = ['identifier', 'patient', 'request', 'subject']
      METADATA = {
        'id' => {'path'=>'GuidanceResponse.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'GuidanceResponse.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'GuidanceResponse.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'GuidanceResponse.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'GuidanceResponse.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'GuidanceResponse.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'GuidanceResponse.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'GuidanceResponse.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'requestIdentifier' => {'path'=>'GuidanceResponse.requestIdentifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'identifier' => {'path'=>'GuidanceResponse.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'moduleUri' => {'path'=>'GuidanceResponse.module[x]', 'type'=>'uri', 'min'=>1, 'max'=>1},
        'moduleCanonical' => {'path'=>'GuidanceResponse.module[x]', 'type'=>'canonical', 'min'=>1, 'max'=>1},
        'moduleCodeableConcept' => {'path'=>'GuidanceResponse.module[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/guidance-response-status'=>['success', 'data-requested', 'data-required', 'in-progress', 'failure', 'entered-in-error']}, 'path'=>'GuidanceResponse.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/guidance-response-status'}},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group'], 'path'=>'GuidanceResponse.subject', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'GuidanceResponse.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'occurrenceDateTime' => {'path'=>'GuidanceResponse.occurrenceDateTime', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'performer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'GuidanceResponse.performer', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'reasonCode' => {'path'=>'GuidanceResponse.reasonCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
        'reasonReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition', 'http://hl7.org/fhir/StructureDefinition/Observation', 'http://hl7.org/fhir/StructureDefinition/DiagnosticReport', 'http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'path'=>'GuidanceResponse.reasonReference', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'path'=>'GuidanceResponse.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
        'evaluationMessage' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/OperationOutcome'], 'path'=>'GuidanceResponse.evaluationMessage', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'outputParameters' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Parameters'], 'path'=>'GuidanceResponse.outputParameters', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'result' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CarePlan', 'http://hl7.org/fhir/StructureDefinition/RequestGroup'], 'path'=>'GuidanceResponse.result', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'dataRequirement' => {'path'=>'GuidanceResponse.dataRequirement', 'type'=>'DataRequirement', 'min'=>0, 'max'=>Float::INFINITY}
      }

      attr_accessor :id                    # 0-1 id
      attr_accessor :meta                  # 0-1 Meta
      attr_accessor :implicitRules         # 0-1 uri
      attr_accessor :language              # 0-1 code
      attr_accessor :text                  # 0-1 Narrative
      attr_accessor :contained             # 0-* [ Resource ]
      attr_accessor :extension             # 0-* [ Extension ]
      attr_accessor :modifierExtension     # 0-* [ Extension ]
      attr_accessor :requestIdentifier     # 0-1 Identifier
      attr_accessor :identifier            # 0-* [ Identifier ]
      attr_accessor :moduleUri             # 1-1 uri
      attr_accessor :moduleCanonical       # 1-1 canonical
      attr_accessor :moduleCodeableConcept # 1-1 CodeableConcept
      attr_accessor :status                # 1-1 code
      attr_accessor :subject               # 0-1 Reference(Patient|Group)
      attr_accessor :encounter             # 0-1 Reference(Encounter)
      attr_accessor :occurrenceDateTime    # 0-1 dateTime
      attr_accessor :performer             # 0-1 Reference(Device)
      attr_accessor :reasonCode            # 0-* [ CodeableConcept ]
      attr_accessor :reasonReference       # 0-* [ Reference(Condition|Observation|DiagnosticReport|DocumentReference) ]
      attr_accessor :note                  # 0-* [ Annotation ]
      attr_accessor :evaluationMessage     # 0-* [ Reference(OperationOutcome) ]
      attr_accessor :outputParameters      # 0-1 Reference(Parameters)
      attr_accessor :result                # 0-1 Reference(CarePlan|RequestGroup)
      attr_accessor :dataRequirement       # 0-* [ DataRequirement ]

      def resourceType
        'GuidanceResponse'
      end
    end
  end
  GuidanceResponse = FHIR::R4::GuidanceResponse
end