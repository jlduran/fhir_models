module FHIR
  module R4B
    class VerificationResult < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['target']
      METADATA = {
        'id' => {'path'=>'VerificationResult.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'VerificationResult.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'VerificationResult.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'VerificationResult.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'VerificationResult.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'VerificationResult.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'VerificationResult.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'VerificationResult.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'target' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'VerificationResult.target', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'targetLocation' => {'path'=>'VerificationResult.targetLocation', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'need' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/need'=>['none', 'initial', 'periodic']}, 'path'=>'VerificationResult.need', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/verificationresult-need'}},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/verificationresult-status'=>['attested', 'validated', 'in-process', 'req-revalid', 'val-fail', 'reval-fail']}, 'path'=>'VerificationResult.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/verificationresult-status'}},
        'statusDate' => {'path'=>'VerificationResult.statusDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'validationType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/validation-type'=>['nothing', 'primary', 'multiple']}, 'path'=>'VerificationResult.validationType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/verificationresult-validation-type'}},
        'validationProcess' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/validation-process'=>['edit-check', 'valueset', 'primary', 'multi', 'standalone', 'in-context']}, 'path'=>'VerificationResult.validationProcess', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/verificationresult-validation-process'}},
        'frequency' => {'path'=>'VerificationResult.frequency', 'type'=>'Timing', 'min'=>0, 'max'=>1},
        'lastPerformed' => {'path'=>'VerificationResult.lastPerformed', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'nextScheduled' => {'path'=>'VerificationResult.nextScheduled', 'type'=>'date', 'min'=>0, 'max'=>1},
        'failureAction' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/failure-action'=>['fatal', 'warn', 'rec-only', 'none']}, 'path'=>'VerificationResult.failureAction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/verificationresult-failure-action'}},
        'primarySource' => {'path'=>'VerificationResult.primarySource', 'type'=>'VerificationResult::PrimarySource', 'min'=>0, 'max'=>Float::INFINITY},
        'attestation' => {'path'=>'VerificationResult.attestation', 'type'=>'VerificationResult::Attestation', 'min'=>0, 'max'=>1},
        'validator' => {'path'=>'VerificationResult.validator', 'type'=>'VerificationResult::Validator', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class PrimarySource < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'PrimarySource.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'PrimarySource.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'PrimarySource.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'who' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'PrimarySource.who', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/primary-source-type'=>['lic-board', 'prim', 'cont-ed', 'post-serv', 'rel-own', 'reg-auth', 'legal', 'issuer', 'auth-source']}, 'path'=>'PrimarySource.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/verificationresult-primary-source-type'}},
          'communicationMethod' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/verificationresult-communication-method'=>['manual', 'portal', 'pull', 'push']}, 'path'=>'PrimarySource.communicationMethod', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/verificationresult-communication-method'}},
          'validationStatus' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/validation-status'=>['successful', 'failed', 'unknown']}, 'path'=>'PrimarySource.validationStatus', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/verificationresult-validation-status'}},
          'validationDate' => {'path'=>'PrimarySource.validationDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'canPushUpdates' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/can-push-updates'=>['yes', 'no', 'undetermined']}, 'path'=>'PrimarySource.canPushUpdates', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/verificationresult-can-push-updates'}},
          'pushTypeAvailable' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/push-type-available'=>['specific', 'any', 'source']}, 'path'=>'PrimarySource.pushTypeAvailable', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/verificationresult-push-type-available'}}
        }

        attr_accessor :id                  # 0-1 string
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :who                 # 0-1 Reference(Organization|Practitioner|PractitionerRole)
        attr_accessor :type                # 0-* [ CodeableConcept ]
        attr_accessor :communicationMethod # 0-* [ CodeableConcept ]
        attr_accessor :validationStatus    # 0-1 CodeableConcept
        attr_accessor :validationDate      # 0-1 dateTime
        attr_accessor :canPushUpdates      # 0-1 CodeableConcept
        attr_accessor :pushTypeAvailable   # 0-* [ CodeableConcept ]
      end

      class Attestation < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Attestation.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Attestation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Attestation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'who' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Attestation.who', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'onBehalfOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'Attestation.onBehalfOf', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'communicationMethod' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/verificationresult-communication-method'=>['manual', 'portal', 'pull', 'push']}, 'path'=>'Attestation.communicationMethod', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/verificationresult-communication-method'}},
          'date' => {'path'=>'Attestation.date', 'type'=>'date', 'min'=>0, 'max'=>1},
          'sourceIdentityCertificate' => {'path'=>'Attestation.sourceIdentityCertificate', 'type'=>'string', 'min'=>0, 'max'=>1},
          'proxyIdentityCertificate' => {'path'=>'Attestation.proxyIdentityCertificate', 'type'=>'string', 'min'=>0, 'max'=>1},
          'proxySignature' => {'path'=>'Attestation.proxySignature', 'type'=>'Signature', 'min'=>0, 'max'=>1},
          'sourceSignature' => {'path'=>'Attestation.sourceSignature', 'type'=>'Signature', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                        # 0-1 string
        attr_accessor :extension                 # 0-* [ Extension ]
        attr_accessor :modifierExtension         # 0-* [ Extension ]
        attr_accessor :who                       # 0-1 Reference(Practitioner|PractitionerRole|Organization)
        attr_accessor :onBehalfOf                # 0-1 Reference(Organization|Practitioner|PractitionerRole)
        attr_accessor :communicationMethod       # 0-1 CodeableConcept
        attr_accessor :date                      # 0-1 date
        attr_accessor :sourceIdentityCertificate # 0-1 string
        attr_accessor :proxyIdentityCertificate  # 0-1 string
        attr_accessor :proxySignature            # 0-1 Signature
        attr_accessor :sourceSignature           # 0-1 Signature
      end

      class Validator < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Validator.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Validator.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Validator.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'organization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Validator.organization', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'identityCertificate' => {'path'=>'Validator.identityCertificate', 'type'=>'string', 'min'=>0, 'max'=>1},
          'attestationSignature' => {'path'=>'Validator.attestationSignature', 'type'=>'Signature', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                   # 0-1 string
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :organization         # 1-1 Reference(Organization)
        attr_accessor :identityCertificate  # 0-1 string
        attr_accessor :attestationSignature # 0-1 Signature
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :target            # 0-* [ Reference(Resource) ]
      attr_accessor :targetLocation    # 0-* [ string ]
      attr_accessor :need              # 0-1 CodeableConcept
      attr_accessor :status            # 1-1 code
      attr_accessor :statusDate        # 0-1 dateTime
      attr_accessor :validationType    # 0-1 CodeableConcept
      attr_accessor :validationProcess # 0-* [ CodeableConcept ]
      attr_accessor :frequency         # 0-1 Timing
      attr_accessor :lastPerformed     # 0-1 dateTime
      attr_accessor :nextScheduled     # 0-1 date
      attr_accessor :failureAction     # 0-1 CodeableConcept
      attr_accessor :primarySource     # 0-* [ VerificationResult::PrimarySource ]
      attr_accessor :attestation       # 0-1 VerificationResult::Attestation
      attr_accessor :validator         # 0-* [ VerificationResult::Validator ]

      def resourceType
        'VerificationResult'
      end
    end
  end
end