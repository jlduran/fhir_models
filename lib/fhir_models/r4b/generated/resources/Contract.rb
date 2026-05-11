module FHIR
  module R4B
    class Contract < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'topic' => ['CodeableConcept', 'Reference'],
        'legallyBinding' => ['Attachment', 'Reference']
      }
      SEARCH_PARAMS = ['authority', 'domain', 'identifier', 'instantiates', 'issued', 'patient', 'signer', 'status', 'subject', 'url']
      METADATA = {
        'id' => {'path'=>'Contract.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Contract.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Contract.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Contract.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'Contract.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Contract.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Contract.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Contract.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Contract.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'path'=>'Contract.url', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'version' => {'path'=>'Contract.version', 'type'=>'string', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/contract-status'=>['amended', 'appended', 'cancelled', 'disputed', 'entered-in-error', 'executable', 'executed', 'negotiable', 'offered', 'policy', 'rejected', 'renewed', 'revoked', 'resolved', 'terminated']}, 'path'=>'Contract.status', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-status'}},
        'legalState' => {'valid_codes'=>{'http://hl7.org/fhir/contract-legalstate'=>['amended', 'appended', 'cancelled', 'disputed', 'entered-in-error', 'executable', 'executed', 'negotiable', 'offered', 'policy', 'rejected', 'renewed', 'revoked', 'resolved', 'terminated']}, 'path'=>'Contract.legalState', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-legalstate'}},
        'instantiatesCanonical' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Contract'], 'path'=>'Contract.instantiatesCanonical', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'instantiatesUri' => {'path'=>'Contract.instantiatesUri', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'contentDerivative' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contract-content-derivative'=>['registration', 'retrieval', 'statement', 'shareable']}, 'path'=>'Contract.contentDerivative', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-content-derivative'}},
        'issued' => {'path'=>'Contract.issued', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'applies' => {'path'=>'Contract.applies', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'expirationType' => {'valid_codes'=>{'http://hl7.org/fhir/contract-expiration-type'=>['breach']}, 'path'=>'Contract.expirationType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-expiration-type'}},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Contract.subject', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'authority' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Contract.authority', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'domain' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'Contract.domain', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'site' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'Contract.site', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'name' => {'path'=>'Contract.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'title' => {'path'=>'Contract.title', 'type'=>'string', 'min'=>0, 'max'=>1},
        'subtitle' => {'path'=>'Contract.subtitle', 'type'=>'string', 'min'=>0, 'max'=>1},
        'alias' => {'path'=>'Contract.alias', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'author' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Contract.author', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'scope' => {'valid_codes'=>{'http://hl7.org/fhir/contract-scope'=>['policy']}, 'path'=>'Contract.scope', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-scope'}},
        'topicCodeableConcept' => {'path'=>'Contract.topic[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'topicReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Contract.topic[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contract-type'=>['privacy', 'disclosure', 'healthinsurance', 'supply', 'consent']}, 'path'=>'Contract.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-type'}},
        'subType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contractsubtypecodes'=>['disclosure-ca', 'disclosure-us']}, 'path'=>'Contract.subType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-subtype'}},
        'contentDefinition' => {'path'=>'Contract.contentDefinition', 'type'=>'Contract::ContentDefinition', 'min'=>0, 'max'=>1},
        'term' => {'path'=>'Contract.term', 'type'=>'Contract::Term', 'min'=>0, 'max'=>Float::INFINITY},
        'supportingInfo' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Contract.supportingInfo', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'relevantHistory' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Provenance'], 'path'=>'Contract.relevantHistory', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'signer' => {'path'=>'Contract.signer', 'type'=>'Contract::Signer', 'min'=>0, 'max'=>Float::INFINITY},
        'friendly' => {'path'=>'Contract.friendly', 'type'=>'Contract::Friendly', 'min'=>0, 'max'=>Float::INFINITY},
        'legal' => {'path'=>'Contract.legal', 'type'=>'Contract::Legal', 'min'=>0, 'max'=>Float::INFINITY},
        'rule' => {'path'=>'Contract.rule', 'type'=>'Contract::Rule', 'min'=>0, 'max'=>Float::INFINITY},
        'legallyBindingAttachment' => {'path'=>'Contract.legallyBinding[x]', 'type'=>'Attachment', 'min'=>0, 'max'=>1},
        'legallyBindingReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Composition', 'http://hl7.org/fhir/StructureDefinition/DocumentReference', 'http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse', 'http://hl7.org/fhir/StructureDefinition/Contract'], 'path'=>'Contract.legallyBinding[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1}
      }

      class ContentDefinition < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'ContentDefinition.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'ContentDefinition.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'ContentDefinition.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/contract-definition-type'=>['temp']}, 'path'=>'ContentDefinition.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-definition-type'}},
          'subType' => {'valid_codes'=>{'http://hl7.org/fhir/contract-definition-subtype'=>['temp']}, 'path'=>'ContentDefinition.subType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-definition-subtype'}},
          'publisher' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'ContentDefinition.publisher', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'publicationDate' => {'path'=>'ContentDefinition.publicationDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'publicationStatus' => {'valid_codes'=>{'http://hl7.org/fhir/contract-publicationstatus'=>['amended', 'appended', 'cancelled', 'disputed', 'entered-in-error', 'executable', 'executed', 'negotiable', 'offered', 'policy', 'rejected', 'renewed', 'revoked', 'resolved', 'terminated']}, 'path'=>'ContentDefinition.publicationStatus', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-publicationstatus'}},
          'copyright' => {'path'=>'ContentDefinition.copyright', 'type'=>'markdown', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 CodeableConcept
        attr_accessor :subType           # 0-1 CodeableConcept
        attr_accessor :publisher         # 0-1 Reference(Practitioner|PractitionerRole|Organization)
        attr_accessor :publicationDate   # 0-1 dateTime
        attr_accessor :publicationStatus # 1-1 code
        attr_accessor :copyright         # 0-1 markdown
      end

      class Term < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'topic' => ['CodeableConcept', 'Reference']
        }
        METADATA = {
          'id' => {'path'=>'Term.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Term.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Term.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'path'=>'Term.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
          'issued' => {'path'=>'Term.issued', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'applies' => {'path'=>'Term.applies', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'topicCodeableConcept' => {'path'=>'Term.topic[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'topicReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Term.topic[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contracttermtypecodes'=>['statutory', 'subject-to']}, 'path'=>'Term.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-term-type'}},
          'subType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contracttermsubtypecodes'=>['condition', 'warranty', 'innominate']}, 'path'=>'Term.subType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-term-subtype'}},
          'text' => {'path'=>'Term.text', 'type'=>'string', 'min'=>0, 'max'=>1},
          'securityLabel' => {'path'=>'Term.securityLabel', 'type'=>'Contract::Term::SecurityLabel', 'min'=>0, 'max'=>Float::INFINITY},
          'offer' => {'path'=>'Term.offer', 'type'=>'Contract::Term::Offer', 'min'=>1, 'max'=>1},
          'asset' => {'path'=>'Term.asset', 'type'=>'Contract::Term::Asset', 'min'=>0, 'max'=>Float::INFINITY},
          'action' => {'path'=>'Term.action', 'type'=>'Contract::Term::Action', 'min'=>0, 'max'=>Float::INFINITY},
          'group' => {'path'=>'Term.group', 'type'=>'Contract::Term', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class SecurityLabel < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'SecurityLabel.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'SecurityLabel.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'SecurityLabel.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'number' => {'path'=>'SecurityLabel.number', 'type'=>'unsignedInt', 'min'=>0, 'max'=>Float::INFINITY},
            'classification' => {'valid_codes'=>{'http://hl7.org/fhir/contract-security-classification'=>['policy']}, 'path'=>'SecurityLabel.classification', 'type'=>'Coding', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-security-classification'}},
            'category' => {'valid_codes'=>{'http://hl7.org/fhir/contract-security-category'=>['policy']}, 'path'=>'SecurityLabel.category', 'type'=>'Coding', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-security-category'}},
            'control' => {'valid_codes'=>{'http://hl7.org/fhir/contract-security-control'=>['policy']}, 'path'=>'SecurityLabel.control', 'type'=>'Coding', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-security-control'}}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :number            # 0-* [ unsignedInt ]
          attr_accessor :classification    # 1-1 Coding
          attr_accessor :category          # 0-* [ Coding ]
          attr_accessor :control           # 0-* [ Coding ]
        end

        class Offer < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Offer.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Offer.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Offer.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'identifier' => {'path'=>'Offer.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
            'party' => {'path'=>'Offer.party', 'type'=>'Contract::Term::Offer::Party', 'min'=>0, 'max'=>Float::INFINITY},
            'topic' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Offer.topic', 'type'=>'Reference', 'min'=>0, 'max'=>1},
            'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contracttermtypecodes'=>['statutory', 'subject-to']}, 'path'=>'Offer.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-term-type'}},
            'decision' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['_ActConsentDirective', 'EMRGONLY', 'GRANTORCHOICE', 'IMPLIED', 'IMPLIEDD', 'NOCONSENT', 'NOPP', 'OPTIN', 'OPTINR', 'OPTOUT', 'OPTOUTE']}, 'path'=>'Offer.decision', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-ActConsentDirective'}},
            'decisionMode' => {'valid_codes'=>{'http://hl7.org/fhir/contract-decision-mode'=>['policy']}, 'path'=>'Offer.decisionMode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-decision-mode'}},
            'answer' => {'path'=>'Offer.answer', 'type'=>'Contract::Term::Offer::Answer', 'min'=>0, 'max'=>Float::INFINITY},
            'text' => {'path'=>'Offer.text', 'type'=>'string', 'min'=>0, 'max'=>1},
            'linkId' => {'path'=>'Offer.linkId', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
            'securityLabelNumber' => {'path'=>'Offer.securityLabelNumber', 'type'=>'unsignedInt', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Party < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Party.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Party.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Party.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'reference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Party.reference', 'type'=>'Reference', 'min'=>1, 'max'=>Float::INFINITY},
              'role' => {'valid_codes'=>{'http://hl7.org/fhir/contract-party-role'=>['flunky']}, 'path'=>'Party.role', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-party-role'}}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :reference         # 1-* [ Reference(Patient|RelatedPerson|Practitioner|PractitionerRole|Device|Group|Organization) ]
            attr_accessor :role              # 1-1 CodeableConcept
          end

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
              'valueBoolean' => {'path'=>'Answer.value[x]', 'type'=>'boolean', 'min'=>1, 'max'=>1},
              'valueDecimal' => {'path'=>'Answer.value[x]', 'type'=>'decimal', 'min'=>1, 'max'=>1},
              'valueInteger' => {'path'=>'Answer.value[x]', 'type'=>'integer', 'min'=>1, 'max'=>1},
              'valueDate' => {'path'=>'Answer.value[x]', 'type'=>'date', 'min'=>1, 'max'=>1},
              'valueDateTime' => {'path'=>'Answer.value[x]', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
              'valueTime' => {'path'=>'Answer.value[x]', 'type'=>'time', 'min'=>1, 'max'=>1},
              'valueString' => {'path'=>'Answer.value[x]', 'type'=>'string', 'min'=>1, 'max'=>1},
              'valueUri' => {'path'=>'Answer.value[x]', 'type'=>'uri', 'min'=>1, 'max'=>1},
              'valueAttachment' => {'path'=>'Answer.value[x]', 'type'=>'Attachment', 'min'=>1, 'max'=>1},
              'valueCoding' => {'path'=>'Answer.value[x]', 'type'=>'Coding', 'min'=>1, 'max'=>1},
              'valueQuantity' => {'path'=>'Answer.value[x]', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
              'valueReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Answer.value[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :valueBoolean      # 1-1 boolean
            attr_accessor :valueDecimal      # 1-1 decimal
            attr_accessor :valueInteger      # 1-1 integer
            attr_accessor :valueDate         # 1-1 date
            attr_accessor :valueDateTime     # 1-1 dateTime
            attr_accessor :valueTime         # 1-1 time
            attr_accessor :valueString       # 1-1 string
            attr_accessor :valueUri          # 1-1 uri
            attr_accessor :valueAttachment   # 1-1 Attachment
            attr_accessor :valueCoding       # 1-1 Coding
            attr_accessor :valueQuantity     # 1-1 Quantity
            attr_accessor :valueReference    # 1-1 Reference(Resource)
          end

          attr_accessor :id                  # 0-1 string
          attr_accessor :extension           # 0-* [ Extension ]
          attr_accessor :modifierExtension   # 0-* [ Extension ]
          attr_accessor :identifier          # 0-* [ Identifier ]
          attr_accessor :party               # 0-* [ Contract::Term::Offer::Party ]
          attr_accessor :topic               # 0-1 Reference(Resource)
          attr_accessor :type                # 0-1 CodeableConcept
          attr_accessor :decision            # 0-1 CodeableConcept
          attr_accessor :decisionMode        # 0-* [ CodeableConcept ]
          attr_accessor :answer              # 0-* [ Contract::Term::Offer::Answer ]
          attr_accessor :text                # 0-1 string
          attr_accessor :linkId              # 0-* [ string ]
          attr_accessor :securityLabelNumber # 0-* [ unsignedInt ]
        end

        class Asset < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Asset.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Asset.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Asset.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'scope' => {'valid_codes'=>{'http://hl7.org/fhir/contract-assetscope'=>['thing']}, 'path'=>'Asset.scope', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-assetscope'}},
            'type' => {'valid_codes'=>{'http://hl7.org/fhir/contract-assettype'=>['participation']}, 'path'=>'Asset.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-assettype'}},
            'typeReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Asset.typeReference', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
            'subtype' => {'valid_codes'=>{'http://hl7.org/fhir/contract-assetsubtype'=>['participation']}, 'path'=>'Asset.subtype', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-assetsubtype'}},
            'relationship' => {'valid_codes'=>{'http://ihe.net/fhir/ValueSet/IHE.FormatCode.codesystem'=>['urn:ihe:pcc:xphr:2007', 'urn:ihe:pcc:aps:2007', 'urn:ihe:pcc:xds-ms:2007', 'urn:ihe:pcc:edr:2007', 'urn:ihe:pcc:edes:2007', 'urn:ihe:pcc:apr:handp:2008', 'urn:ihe:pcc:apr:lab:2008', 'urn:ihe:pcc:apr:edu:2008', 'urn:ihe:pcc:crc:2008', 'urn:ihe:pcc:cm:2008', 'urn:ihe:pcc:ic:2008', 'urn:ihe:pcc:tn:2007', 'urn:ihe:pcc:nn:2007', 'urn:ihe:pcc:ctn:2007', 'urn:ihe:pcc:edpn:2007', 'urn:ihe:pcc:hp:2008', 'urn:ihe:pcc:ldhp:2009', 'urn:ihe:pcc:lds:2009', 'urn:ihe:pcc:mds:2009', 'urn:ihe:pcc:nds:2010', 'urn:ihe:pcc:ppvs:2010', 'urn:ihe:pcc:trs:2011', 'urn:ihe:pcc:ets:2011', 'urn:ihe:pcc:its:2011', 'urn:ihe:pcc:ript:2017', 'urn:ihe:iti:bppc:2007', 'urn:ihe:iti:bppc-sd:2007', 'urn:ihe:iti:xds-sd:pdf:2008', 'urn:ihe:iti:xds-sd:text:2008', 'urn:ihe:iti:xdw:2011:workflowDoc', 'urn:ihe:iti:dsg:detached:2014', 'urn:ihe:iti:dsg:enveloping:2014', 'urn:ihe:iti:appc:2016:consent', 'urn:ihe:iti:xds:2017:mimeTypeSufficient', 'urn:ihe:lab:xd-lab:2008', 'urn:ihe:rad:TEXT', 'urn:ihe:rad:PDF', 'urn:ihe:rad:CDA:ImagingReportStructuredHeadings:2013', 'urn:ihe:card:imaging:2011', 'urn:ihe:card:CRC:2012', 'urn:ihe:card:EPRC-IE:2014', 'urn:ihe:dent:TEXT', 'urn:ihe:dent:PDF', 'urn:ihe:dent:CDA:ImagingReportStructuredHeadings:2013', 'urn:ihe:pat:apsr:all:2010', 'urn:ihe:pat:apsr:cancer:all:2010', 'urn:ihe:pat:apsr:cancer:breast:2010', 'urn:ihe:pat:apsr:cancer:colon:2010', 'urn:ihe:pat:apsr:cancer:prostate:2010', 'urn:ihe:pat:apsr:cancer:thyroid:2010', 'urn:ihe:pat:apsr:cancer:lung:2010', 'urn:ihe:pat:apsr:cancer:skin:2010', 'urn:ihe:pat:apsr:cancer:kidney:2010', 'urn:ihe:pat:apsr:cancer:cervix:2010', 'urn:ihe:pat:apsr:cancer:endometrium:2010', 'urn:ihe:pat:apsr:cancer:ovary:2010', 'urn:ihe:pat:apsr:cancer:esophagus:2010', 'urn:ihe:pat:apsr:cancer:stomach:2010', 'urn:ihe:pat:apsr:cancer:liver:2010', 'urn:ihe:pat:apsr:cancer:pancreas:2010', 'urn:ihe:pat:apsr:cancer:testis:2010', 'urn:ihe:pat:apsr:cancer:urinary_bladder:2010', 'urn:ihe:pat:apsr:cancer:lip_oral_cavity:2010', 'urn:ihe:pat:apsr:cancer:pharynx:2010', 'urn:ihe:pat:apsr:cancer:salivary_gland:2010', 'urn:ihe:pat:apsr:cancer:larynx:2010', 'urn:ihe:pharm:pre:2010', 'urn:ihe:pharm:padv:2010', 'urn:ihe:pharm:dis:2010', 'urn:ihe:pharm:pml:2013', 'urn:hl7-org:sdwg:ccda-structuredBody:1.1', 'urn:hl7-org:sdwg:ccda-nonXMLBody:1.1', 'urn:hl7-org:sdwg:ccda-structuredBody:2.1', 'urn:hl7-org:sdwg:ccda-nonXMLBody:2.1'], 'http://hl7.org/fhir/resource-types'=>['Resource', 'Binary', 'Bundle', 'DomainResource', 'Account', 'ActivityDefinition', 'AdministrableProductDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'BiologicallyDerivedProduct', 'BodyStructure', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Citation', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'ClinicalUseDefinition', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceReport', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'Ingredient', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'ManufacturedItemDefinition', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProductDefinition', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'NutritionProduct', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'PackagedProductDefinition', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RegulatedAuthorization', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'RiskAssessment', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'SubscriptionStatus', 'SubscriptionTopic', 'Substance', 'SubstanceDefinition', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription', 'Parameters'], 'urn:ietf:rfc:3986'=>['http://hl7.org/fhir/StructureDefinition/lipidprofile'], 'urn:ietf:bcp:13'=>['application/hl7-cda+xml']}, 'path'=>'Asset.relationship', 'type'=>'Coding', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/consent-content-class'}},
            'context' => {'path'=>'Asset.context', 'type'=>'Contract::Term::Asset::Context', 'min'=>0, 'max'=>Float::INFINITY},
            'condition' => {'path'=>'Asset.condition', 'type'=>'string', 'min'=>0, 'max'=>1},
            'periodType' => {'valid_codes'=>{'http://hl7.org/fhir/asset-availability'=>['lease']}, 'path'=>'Asset.periodType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/asset-availability'}},
            'period' => {'path'=>'Asset.period', 'type'=>'Period', 'min'=>0, 'max'=>Float::INFINITY},
            'usePeriod' => {'path'=>'Asset.usePeriod', 'type'=>'Period', 'min'=>0, 'max'=>Float::INFINITY},
            'text' => {'path'=>'Asset.text', 'type'=>'string', 'min'=>0, 'max'=>1},
            'linkId' => {'path'=>'Asset.linkId', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
            'answer' => {'path'=>'Asset.answer', 'type'=>'Contract::Term::Offer::Answer', 'min'=>0, 'max'=>Float::INFINITY},
            'securityLabelNumber' => {'path'=>'Asset.securityLabelNumber', 'type'=>'unsignedInt', 'min'=>0, 'max'=>Float::INFINITY},
            'valuedItem' => {'path'=>'Asset.valuedItem', 'type'=>'Contract::Term::Asset::ValuedItem', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Context < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Context.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Context.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Context.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'reference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Context.reference', 'type'=>'Reference', 'min'=>0, 'max'=>1},
              'code' => {'valid_codes'=>{'http://hl7.org/fhir/contract-assetcontext'=>['custodian']}, 'path'=>'Context.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-assetcontext'}},
              'text' => {'path'=>'Context.text', 'type'=>'string', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :reference         # 0-1 Reference(Resource)
            attr_accessor :code              # 0-* [ CodeableConcept ]
            attr_accessor :text              # 0-1 string
          end

          class ValuedItem < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            MULTIPLE_TYPES = {
              'entity' => ['CodeableConcept', 'Reference']
            }
            METADATA = {
              'id' => {'path'=>'ValuedItem.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'ValuedItem.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'ValuedItem.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'entityCodeableConcept' => {'path'=>'ValuedItem.entity[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
              'entityReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'ValuedItem.entity[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
              'identifier' => {'path'=>'ValuedItem.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
              'effectiveTime' => {'path'=>'ValuedItem.effectiveTime', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
              'quantity' => {'path'=>'ValuedItem.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
              'unitPrice' => {'path'=>'ValuedItem.unitPrice', 'type'=>'Money', 'min'=>0, 'max'=>1},
              'factor' => {'path'=>'ValuedItem.factor', 'type'=>'decimal', 'min'=>0, 'max'=>1},
              'points' => {'path'=>'ValuedItem.points', 'type'=>'decimal', 'min'=>0, 'max'=>1},
              'net' => {'path'=>'ValuedItem.net', 'type'=>'Money', 'min'=>0, 'max'=>1},
              'payment' => {'path'=>'ValuedItem.payment', 'type'=>'string', 'min'=>0, 'max'=>1},
              'paymentDate' => {'path'=>'ValuedItem.paymentDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
              'responsible' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'ValuedItem.responsible', 'type'=>'Reference', 'min'=>0, 'max'=>1},
              'recipient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'ValuedItem.recipient', 'type'=>'Reference', 'min'=>0, 'max'=>1},
              'linkId' => {'path'=>'ValuedItem.linkId', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
              'securityLabelNumber' => {'path'=>'ValuedItem.securityLabelNumber', 'type'=>'unsignedInt', 'min'=>0, 'max'=>Float::INFINITY}
            }

            attr_accessor :id                    # 0-1 string
            attr_accessor :extension             # 0-* [ Extension ]
            attr_accessor :modifierExtension     # 0-* [ Extension ]
            attr_accessor :entityCodeableConcept # 0-1 CodeableConcept
            attr_accessor :entityReference       # 0-1 Reference(Resource)
            attr_accessor :identifier            # 0-1 Identifier
            attr_accessor :effectiveTime         # 0-1 dateTime
            attr_accessor :quantity              # 0-1 Quantity
            attr_accessor :unitPrice             # 0-1 Money
            attr_accessor :factor                # 0-1 decimal
            attr_accessor :points                # 0-1 decimal
            attr_accessor :net                   # 0-1 Money
            attr_accessor :payment               # 0-1 string
            attr_accessor :paymentDate           # 0-1 dateTime
            attr_accessor :responsible           # 0-1 Reference(Organization|Patient|Practitioner|PractitionerRole|RelatedPerson)
            attr_accessor :recipient             # 0-1 Reference(Organization|Patient|Practitioner|PractitionerRole|RelatedPerson)
            attr_accessor :linkId                # 0-* [ string ]
            attr_accessor :securityLabelNumber   # 0-* [ unsignedInt ]
          end

          attr_accessor :id                  # 0-1 string
          attr_accessor :extension           # 0-* [ Extension ]
          attr_accessor :modifierExtension   # 0-* [ Extension ]
          attr_accessor :scope               # 0-1 CodeableConcept
          attr_accessor :type                # 0-* [ CodeableConcept ]
          attr_accessor :typeReference       # 0-* [ Reference(Resource) ]
          attr_accessor :subtype             # 0-* [ CodeableConcept ]
          attr_accessor :relationship        # 0-1 Coding
          attr_accessor :context             # 0-* [ Contract::Term::Asset::Context ]
          attr_accessor :condition           # 0-1 string
          attr_accessor :periodType          # 0-* [ CodeableConcept ]
          attr_accessor :period              # 0-* [ Period ]
          attr_accessor :usePeriod           # 0-* [ Period ]
          attr_accessor :text                # 0-1 string
          attr_accessor :linkId              # 0-* [ string ]
          attr_accessor :answer              # 0-* [ Contract::Term::Offer::Answer ]
          attr_accessor :securityLabelNumber # 0-* [ unsignedInt ]
          attr_accessor :valuedItem          # 0-* [ Contract::Term::Asset::ValuedItem ]
        end

        class Action < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'occurrence' => ['dateTime', 'Period', 'Timing']
          }
          METADATA = {
            'id' => {'path'=>'Action.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Action.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Action.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'doNotPerform' => {'path'=>'Action.doNotPerform', 'type'=>'boolean', 'min'=>0, 'max'=>1},
            'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contractaction'=>['action-a', 'action-b']}, 'path'=>'Action.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-action'}},
            'subject' => {'path'=>'Action.subject', 'type'=>'Contract::Term::Action::Subject', 'min'=>0, 'max'=>Float::INFINITY},
            'intent' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['HMARKT', 'HOPERAT', 'CAREMGT', 'DONAT', 'FRAUD', 'GOV', 'HACCRED', 'HCOMPL', 'HDECD', 'HDIRECT', 'HDM', 'HLEGAL', 'HOUTCOMS', 'HPRGRP', 'HQUALIMP', 'HSYSADMIN', 'LABELING', 'METAMGT', 'MEMADMIN', 'MILCDM', 'PATADMIN', 'PATSFTY', 'PERFMSR', 'RECORDMGT', 'SYSDEV', 'HTEST', 'TRAIN', 'HPAYMT', 'CLMATTCH', 'COVAUTH', 'COVERAGE', 'ELIGDTRM', 'ELIGVER', 'ENROLLM', 'MILDCRG', 'REMITADV', 'HRESCH', 'BIORCH', 'CLINTRCH', 'CLINTRCHNPC', 'CLINTRCHPC', 'PRECLINTRCH', 'DSRCH', 'POARCH', 'TRANSRCH', 'PATRQT', 'FAMRQT', 'PWATRNY', 'SUPNWK', 'PUBHLTH', 'DISASTER', 'THREAT', 'TREAT', 'CLINTRL', 'COC', 'ETREAT', 'BTG', 'ERTREAT', 'POPHLTH']}, 'path'=>'Action.intent', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-PurposeOfUse'}},
            'linkId' => {'path'=>'Action.linkId', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
            'status' => {'valid_codes'=>{'http://hl7.org/fhir/contract-actionstatus'=>['complete']}, 'path'=>'Action.status', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-actionstatus'}},
            'context' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter', 'http://hl7.org/fhir/StructureDefinition/EpisodeOfCare'], 'path'=>'Action.context', 'type'=>'Reference', 'min'=>0, 'max'=>1},
            'contextLinkId' => {'path'=>'Action.contextLinkId', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
            'occurrenceDateTime' => {'path'=>'Action.occurrence[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
            'occurrencePeriod' => {'path'=>'Action.occurrence[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
            'occurrenceTiming' => {'path'=>'Action.occurrence[x]', 'type'=>'Timing', 'min'=>0, 'max'=>1},
            'requester' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Action.requester', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
            'requesterLinkId' => {'path'=>'Action.requesterLinkId', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
            'performerType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/provenance-participant-type'=>['enterer', 'performer', 'author', 'verifier', 'legal', 'attester', 'informant', 'custodian', 'assembler', 'composer']}, 'path'=>'Action.performerType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/provenance-participant-type'}},
            'performerRole' => {'valid_codes'=>{'http://hl7.org/fhir/provenance-participant-role'=>['enterer', 'performer', 'author', 'verifier', 'legal', 'attester', 'informant', 'custodian', 'assembler', 'composer']}, 'path'=>'Action.performerRole', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/provenance-participant-role'}},
            'performer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Substance', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'Action.performer', 'type'=>'Reference', 'min'=>0, 'max'=>1},
            'performerLinkId' => {'path'=>'Action.performerLinkId', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
            'reasonCode' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['HMARKT', 'HOPERAT', 'CAREMGT', 'DONAT', 'FRAUD', 'GOV', 'HACCRED', 'HCOMPL', 'HDECD', 'HDIRECT', 'HDM', 'HLEGAL', 'HOUTCOMS', 'HPRGRP', 'HQUALIMP', 'HSYSADMIN', 'LABELING', 'METAMGT', 'MEMADMIN', 'MILCDM', 'PATADMIN', 'PATSFTY', 'PERFMSR', 'RECORDMGT', 'SYSDEV', 'HTEST', 'TRAIN', 'HPAYMT', 'CLMATTCH', 'COVAUTH', 'COVERAGE', 'ELIGDTRM', 'ELIGVER', 'ENROLLM', 'MILDCRG', 'REMITADV', 'HRESCH', 'BIORCH', 'CLINTRCH', 'CLINTRCHNPC', 'CLINTRCHPC', 'PRECLINTRCH', 'DSRCH', 'POARCH', 'TRANSRCH', 'PATRQT', 'FAMRQT', 'PWATRNY', 'SUPNWK', 'PUBHLTH', 'DISASTER', 'THREAT', 'TREAT', 'CLINTRL', 'COC', 'ETREAT', 'BTG', 'ERTREAT', 'POPHLTH']}, 'path'=>'Action.reasonCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-PurposeOfUse'}},
            'reasonReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition', 'http://hl7.org/fhir/StructureDefinition/Observation', 'http://hl7.org/fhir/StructureDefinition/DiagnosticReport', 'http://hl7.org/fhir/StructureDefinition/DocumentReference', 'http://hl7.org/fhir/StructureDefinition/Questionnaire', 'http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse'], 'path'=>'Action.reasonReference', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
            'reason' => {'path'=>'Action.reason', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
            'reasonLinkId' => {'path'=>'Action.reasonLinkId', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
            'note' => {'path'=>'Action.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
            'securityLabelNumber' => {'path'=>'Action.securityLabelNumber', 'type'=>'unsignedInt', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Subject < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Subject.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Subject.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Subject.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'reference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Subject.reference', 'type'=>'Reference', 'min'=>1, 'max'=>Float::INFINITY},
              'role' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contractactorrole'=>['practitioner', 'patient']}, 'path'=>'Subject.role', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-actorrole'}}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :reference         # 1-* [ Reference(Patient|RelatedPerson|Practitioner|PractitionerRole|Device|Group|Organization) ]
            attr_accessor :role              # 0-1 CodeableConcept
          end

          attr_accessor :id                  # 0-1 string
          attr_accessor :extension           # 0-* [ Extension ]
          attr_accessor :modifierExtension   # 0-* [ Extension ]
          attr_accessor :doNotPerform        # 0-1 boolean
          attr_accessor :type                # 1-1 CodeableConcept
          attr_accessor :subject             # 0-* [ Contract::Term::Action::Subject ]
          attr_accessor :intent              # 1-1 CodeableConcept
          attr_accessor :linkId              # 0-* [ string ]
          attr_accessor :status              # 1-1 CodeableConcept
          attr_accessor :context             # 0-1 Reference(Encounter|EpisodeOfCare)
          attr_accessor :contextLinkId       # 0-* [ string ]
          attr_accessor :occurrenceDateTime  # 0-1 dateTime
          attr_accessor :occurrencePeriod    # 0-1 Period
          attr_accessor :occurrenceTiming    # 0-1 Timing
          attr_accessor :requester           # 0-* [ Reference(Patient|RelatedPerson|Practitioner|PractitionerRole|Device|Group|Organization) ]
          attr_accessor :requesterLinkId     # 0-* [ string ]
          attr_accessor :performerType       # 0-* [ CodeableConcept ]
          attr_accessor :performerRole       # 0-1 CodeableConcept
          attr_accessor :performer           # 0-1 Reference(RelatedPerson|Patient|Practitioner|PractitionerRole|CareTeam|Device|Substance|Organization|Location)
          attr_accessor :performerLinkId     # 0-* [ string ]
          attr_accessor :reasonCode          # 0-* [ CodeableConcept ]
          attr_accessor :reasonReference     # 0-* [ Reference(Condition|Observation|DiagnosticReport|DocumentReference|Questionnaire|QuestionnaireResponse) ]
          attr_accessor :reason              # 0-* [ string ]
          attr_accessor :reasonLinkId        # 0-* [ string ]
          attr_accessor :note                # 0-* [ Annotation ]
          attr_accessor :securityLabelNumber # 0-* [ unsignedInt ]
        end

        attr_accessor :id                   # 0-1 string
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :identifier           # 0-1 Identifier
        attr_accessor :issued               # 0-1 dateTime
        attr_accessor :applies              # 0-1 Period
        attr_accessor :topicCodeableConcept # 0-1 CodeableConcept
        attr_accessor :topicReference       # 0-1 Reference(Resource)
        attr_accessor :type                 # 0-1 CodeableConcept
        attr_accessor :subType              # 0-1 CodeableConcept
        attr_accessor :text                 # 0-1 string
        attr_accessor :securityLabel        # 0-* [ Contract::Term::SecurityLabel ]
        attr_accessor :offer                # 1-1 Contract::Term::Offer
        attr_accessor :asset                # 0-* [ Contract::Term::Asset ]
        attr_accessor :action               # 0-* [ Contract::Term::Action ]
        attr_accessor :group                # 0-* [ Contract::Term ]
      end

      class Signer < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Signer.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Signer.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Signer.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contractsignertypecodes'=>['AMENDER', 'AUTHN', 'AUT', 'AFFL', 'AGNT', 'ASSIGNED', 'CIT', 'CLAIMANT', 'COAUTH', 'CONSENTER', 'CONSWIT', 'CONT', 'COPART', 'COVPTY', 'DELEGATEE', 'delegator', 'DEPEND', 'DPOWATT', 'EMGCON', 'EVTWIT', 'EXCEST', 'GRANTEE', 'GRANTOR', 'GUAR', 'GUARD', 'GUADLTM', 'INF', 'INTPRT', 'INSBJ', 'HPOWATT', 'HPROV', 'LEGAUTHN', 'NMDINS', 'NOK', 'NOTARY', 'PAT', 'POWATT', 'PRIMAUTH', 'PRIRECIP', 'RECIP', 'RESPRSN', 'REVIEWER', 'TRANS', 'SOURCE', 'SPOWATT', 'VALID', 'VERF', 'WIT']}, 'path'=>'Signer.type', 'type'=>'Coding', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/contract-signer-type'}},
          'party' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'Signer.party', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'signature' => {'path'=>'Signer.signature', 'type'=>'Signature', 'min'=>1, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 Coding
        attr_accessor :party             # 1-1 Reference(Organization|Patient|Practitioner|PractitionerRole|RelatedPerson)
        attr_accessor :signature         # 1-* [ Signature ]
      end

      class Friendly < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'content' => ['Attachment', 'Reference']
        }
        METADATA = {
          'id' => {'path'=>'Friendly.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Friendly.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Friendly.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'contentAttachment' => {'path'=>'Friendly.content[x]', 'type'=>'Attachment', 'min'=>1, 'max'=>1},
          'contentReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Composition', 'http://hl7.org/fhir/StructureDefinition/DocumentReference', 'http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse'], 'path'=>'Friendly.content[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :contentAttachment # 1-1 Attachment
        attr_accessor :contentReference  # 1-1 Reference(Composition|DocumentReference|QuestionnaireResponse)
      end

      class Legal < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'content' => ['Attachment', 'Reference']
        }
        METADATA = {
          'id' => {'path'=>'Legal.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Legal.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Legal.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'contentAttachment' => {'path'=>'Legal.content[x]', 'type'=>'Attachment', 'min'=>1, 'max'=>1},
          'contentReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Composition', 'http://hl7.org/fhir/StructureDefinition/DocumentReference', 'http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse'], 'path'=>'Legal.content[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :contentAttachment # 1-1 Attachment
        attr_accessor :contentReference  # 1-1 Reference(Composition|DocumentReference|QuestionnaireResponse)
      end

      class Rule < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'content' => ['Attachment', 'Reference']
        }
        METADATA = {
          'id' => {'path'=>'Rule.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Rule.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Rule.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'contentAttachment' => {'path'=>'Rule.content[x]', 'type'=>'Attachment', 'min'=>1, 'max'=>1},
          'contentReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'path'=>'Rule.content[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :contentAttachment # 1-1 Attachment
        attr_accessor :contentReference  # 1-1 Reference(DocumentReference)
      end

      attr_accessor :id                       # 0-1 id
      attr_accessor :meta                     # 0-1 Meta
      attr_accessor :implicitRules            # 0-1 uri
      attr_accessor :language                 # 0-1 code
      attr_accessor :text                     # 0-1 Narrative
      attr_accessor :contained                # 0-* [ Resource ]
      attr_accessor :extension                # 0-* [ Extension ]
      attr_accessor :modifierExtension        # 0-* [ Extension ]
      attr_accessor :identifier               # 0-* [ Identifier ]
      attr_accessor :url                      # 0-1 uri
      attr_accessor :version                  # 0-1 string
      attr_accessor :status                   # 0-1 code
      attr_accessor :legalState               # 0-1 CodeableConcept
      attr_accessor :instantiatesCanonical    # 0-1 Reference(Contract)
      attr_accessor :instantiatesUri          # 0-1 uri
      attr_accessor :contentDerivative        # 0-1 CodeableConcept
      attr_accessor :issued                   # 0-1 dateTime
      attr_accessor :applies                  # 0-1 Period
      attr_accessor :expirationType           # 0-1 CodeableConcept
      attr_accessor :subject                  # 0-* [ Reference(Resource) ]
      attr_accessor :authority                # 0-* [ Reference(Organization) ]
      attr_accessor :domain                   # 0-* [ Reference(Location) ]
      attr_accessor :site                     # 0-* [ Reference(Location) ]
      attr_accessor :name                     # 0-1 string
      attr_accessor :title                    # 0-1 string
      attr_accessor :subtitle                 # 0-1 string
      attr_accessor :alias                    # 0-* [ string ]
      attr_accessor :author                   # 0-1 Reference(Patient|Practitioner|PractitionerRole|Organization)
      attr_accessor :scope                    # 0-1 CodeableConcept
      attr_accessor :topicCodeableConcept     # 0-1 CodeableConcept
      attr_accessor :topicReference           # 0-1 Reference(Resource)
      attr_accessor :type                     # 0-1 CodeableConcept
      attr_accessor :subType                  # 0-* [ CodeableConcept ]
      attr_accessor :contentDefinition        # 0-1 Contract::ContentDefinition
      attr_accessor :term                     # 0-* [ Contract::Term ]
      attr_accessor :supportingInfo           # 0-* [ Reference(Resource) ]
      attr_accessor :relevantHistory          # 0-* [ Reference(Provenance) ]
      attr_accessor :signer                   # 0-* [ Contract::Signer ]
      attr_accessor :friendly                 # 0-* [ Contract::Friendly ]
      attr_accessor :legal                    # 0-* [ Contract::Legal ]
      attr_accessor :rule                     # 0-* [ Contract::Rule ]
      attr_accessor :legallyBindingAttachment # 0-1 Attachment
      attr_accessor :legallyBindingReference  # 0-1 Reference(Composition|DocumentReference|QuestionnaireResponse|Contract)

      def resourceType
        'Contract'
      end
    end
  end
end