module FHIR
  module R4
    class OperationOutcome < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'OperationOutcome.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'OperationOutcome.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'OperationOutcome.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'OperationOutcome.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'OperationOutcome.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'OperationOutcome.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'OperationOutcome.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'OperationOutcome.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'issue' => {'path'=>'OperationOutcome.issue', 'type'=>'OperationOutcome::Issue', 'min'=>1, 'max'=>Float::INFINITY}
      }

      class Issue < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Issue.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Issue.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Issue.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'severity' => {'valid_codes'=>{'http://hl7.org/fhir/issue-severity'=>['fatal', 'error', 'warning', 'information']}, 'path'=>'Issue.severity', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/issue-severity'}},
          'code' => {'valid_codes'=>{'http://hl7.org/fhir/issue-type'=>['invalid', 'structure', 'required', 'value', 'invariant', 'security', 'login', 'unknown', 'expired', 'forbidden', 'suppressed', 'processing', 'not-supported', 'duplicate', 'multiple-matches', 'not-found', 'deleted', 'too-long', 'code-invalid', 'extension', 'too-costly', 'business-rule', 'conflict', 'transient', 'lock-error', 'no-store', 'exception', 'timeout', 'incomplete', 'throttled', 'informational']}, 'path'=>'Issue.code', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/issue-type'}},
          'details' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/operation-outcome'=>['DELETE_MULTIPLE_MATCHES', 'MSG_AUTH_REQUIRED', 'MSG_BAD_FORMAT', 'MSG_BAD_SYNTAX', 'MSG_CANT_PARSE_CONTENT', 'MSG_CANT_PARSE_ROOT', 'MSG_CREATED', 'MSG_DATE_FORMAT', 'MSG_DELETED', 'MSG_DELETED_DONE', 'MSG_DELETED_ID', 'MSG_DUPLICATE_ID', 'MSG_ERROR_PARSING', 'MSG_ID_INVALID', 'MSG_ID_TOO_LONG', 'MSG_INVALID_ID', 'MSG_JSON_OBJECT', 'MSG_LOCAL_FAIL', 'MSG_NO_EXIST', 'MSG_NO_MATCH', 'MSG_NO_MODULE', 'MSG_NO_SUMMARY', 'MSG_OP_NOT_ALLOWED', 'MSG_PARAM_CHAINED', 'MSG_PARAM_INVALID', 'MSG_PARAM_MODIFIER_INVALID', 'MSG_PARAM_NO_REPEAT', 'MSG_PARAM_UNKNOWN', 'MSG_RESOURCE_EXAMPLE_PROTECTED', 'MSG_RESOURCE_ID_FAIL', 'MSG_RESOURCE_ID_MISMATCH', 'MSG_RESOURCE_ID_MISSING', 'MSG_RESOURCE_NOT_ALLOWED', 'MSG_RESOURCE_REQUIRED', 'MSG_RESOURCE_TYPE_MISMATCH', 'MSG_SORT_UNKNOWN', 'MSG_TRANSACTION_DUPLICATE_ID', 'MSG_TRANSACTION_MISSING_ID', 'MSG_UNHANDLED_NODE_TYPE', 'MSG_UNKNOWN_CONTENT', 'MSG_UNKNOWN_OPERATION', 'MSG_UNKNOWN_TYPE', 'MSG_UPDATED', 'MSG_VERSION_AWARE', 'MSG_VERSION_AWARE_CONFLICT', 'MSG_VERSION_AWARE_URL', 'MSG_WRONG_NS', 'SEARCH_MULTIPLE', 'SEARCH_NONE', 'UPDATE_MULTIPLE_MATCHES']}, 'path'=>'Issue.details', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/operation-outcome'}},
          'diagnostics' => {'path'=>'Issue.diagnostics', 'type'=>'string', 'min'=>0, 'max'=>1},
          'location' => {'path'=>'Issue.location', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
          'expression' => {'path'=>'Issue.expression', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :severity          # 1-1 code
        attr_accessor :code              # 1-1 code
        attr_accessor :details           # 0-1 CodeableConcept
        attr_accessor :diagnostics       # 0-1 string
        attr_accessor :location          # 0-* [ string ]
        attr_accessor :expression        # 0-* [ string ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :issue             # 1-* [ OperationOutcome::Issue ]

      def resourceType
        'OperationOutcome'
      end
    end
  end
  OperationOutcome = FHIR::R4::OperationOutcome
end