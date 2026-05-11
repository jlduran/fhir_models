module FHIR
  module R4B
    class ResearchSubject < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['date', 'identifier', 'individual', 'patient', 'status', 'study']
      METADATA = {
        'id' => {'path'=>'ResearchSubject.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'ResearchSubject.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'ResearchSubject.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'ResearchSubject.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'ResearchSubject.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'ResearchSubject.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'ResearchSubject.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'ResearchSubject.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'ResearchSubject.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/research-subject-status'=>['candidate', 'eligible', 'follow-up', 'ineligible', 'not-registered', 'off-study', 'on-study', 'on-study-intervention', 'on-study-observation', 'pending-on-study', 'potential-candidate', 'screening', 'withdrawn']}, 'path'=>'ResearchSubject.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/research-subject-status'}},
        'period' => {'path'=>'ResearchSubject.period', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'study' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ResearchStudy'], 'path'=>'ResearchSubject.study', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'individual' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'path'=>'ResearchSubject.individual', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'assignedArm' => {'path'=>'ResearchSubject.assignedArm', 'type'=>'string', 'min'=>0, 'max'=>1},
        'actualArm' => {'path'=>'ResearchSubject.actualArm', 'type'=>'string', 'min'=>0, 'max'=>1},
        'consent' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Consent'], 'path'=>'ResearchSubject.consent', 'type'=>'Reference', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :status            # 1-1 code
      attr_accessor :period            # 0-1 Period
      attr_accessor :study             # 1-1 Reference(ResearchStudy)
      attr_accessor :individual        # 1-1 Reference(Patient)
      attr_accessor :assignedArm       # 0-1 string
      attr_accessor :actualArm         # 0-1 string
      attr_accessor :consent           # 0-1 Reference(Consent)

      def resourceType
        'ResearchSubject'
      end
    end
  end
end