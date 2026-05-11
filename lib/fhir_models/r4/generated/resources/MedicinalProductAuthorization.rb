module FHIR
  module R4
    class MedicinalProductAuthorization < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['country', 'holder', 'identifier', 'status', 'subject']
      METADATA = {
        'id' => {'path'=>'MedicinalProductAuthorization.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'MedicinalProductAuthorization.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'MedicinalProductAuthorization.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'MedicinalProductAuthorization.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'MedicinalProductAuthorization.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'MedicinalProductAuthorization.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'MedicinalProductAuthorization.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'MedicinalProductAuthorization.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'MedicinalProductAuthorization.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MedicinalProduct', 'http://hl7.org/fhir/StructureDefinition/MedicinalProductPackaged'], 'path'=>'MedicinalProductAuthorization.subject', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'country' => {'path'=>'MedicinalProductAuthorization.country', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'path'=>'MedicinalProductAuthorization.jurisdiction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'path'=>'MedicinalProductAuthorization.status', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'statusDate' => {'path'=>'MedicinalProductAuthorization.statusDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'restoreDate' => {'path'=>'MedicinalProductAuthorization.restoreDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'validityPeriod' => {'path'=>'MedicinalProductAuthorization.validityPeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'dataExclusivityPeriod' => {'path'=>'MedicinalProductAuthorization.dataExclusivityPeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'dateOfFirstAuthorization' => {'path'=>'MedicinalProductAuthorization.dateOfFirstAuthorization', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'internationalBirthDate' => {'path'=>'MedicinalProductAuthorization.internationalBirthDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'legalBasis' => {'path'=>'MedicinalProductAuthorization.legalBasis', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'jurisdictionalAuthorization' => {'path'=>'MedicinalProductAuthorization.jurisdictionalAuthorization', 'type'=>'MedicinalProductAuthorization::JurisdictionalAuthorization', 'min'=>0, 'max'=>Float::INFINITY},
        'holder' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'MedicinalProductAuthorization.holder', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'regulator' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'MedicinalProductAuthorization.regulator', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'procedure' => {'path'=>'MedicinalProductAuthorization.procedure', 'type'=>'MedicinalProductAuthorization::Procedure', 'min'=>0, 'max'=>1}
      }

      class JurisdictionalAuthorization < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'JurisdictionalAuthorization.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'JurisdictionalAuthorization.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'JurisdictionalAuthorization.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'path'=>'JurisdictionalAuthorization.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
          'country' => {'path'=>'JurisdictionalAuthorization.country', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'jurisdiction' => {'path'=>'JurisdictionalAuthorization.jurisdiction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
          'legalStatusOfSupply' => {'path'=>'JurisdictionalAuthorization.legalStatusOfSupply', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'validityPeriod' => {'path'=>'JurisdictionalAuthorization.validityPeriod', 'type'=>'Period', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                  # 0-1 string
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :identifier          # 0-* [ Identifier ]
        attr_accessor :country             # 0-1 CodeableConcept
        attr_accessor :jurisdiction        # 0-* [ CodeableConcept ]
        attr_accessor :legalStatusOfSupply # 0-1 CodeableConcept
        attr_accessor :validityPeriod      # 0-1 Period
      end

      class Procedure < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'date' => ['Period', 'dateTime']
        }
        METADATA = {
          'id' => {'path'=>'Procedure.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Procedure.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Procedure.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'path'=>'Procedure.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
          'type' => {'path'=>'Procedure.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'datePeriod' => {'path'=>'Procedure.date[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'dateDateTime' => {'path'=>'Procedure.date[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'application' => {'path'=>'Procedure.application', 'type'=>'MedicinalProductAuthorization::Procedure', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :identifier        # 0-1 Identifier
        attr_accessor :type              # 1-1 CodeableConcept
        attr_accessor :datePeriod        # 0-1 Period
        attr_accessor :dateDateTime      # 0-1 dateTime
        attr_accessor :application       # 0-* [ MedicinalProductAuthorization::Procedure ]
      end

      attr_accessor :id                          # 0-1 id
      attr_accessor :meta                        # 0-1 Meta
      attr_accessor :implicitRules               # 0-1 uri
      attr_accessor :language                    # 0-1 code
      attr_accessor :text                        # 0-1 Narrative
      attr_accessor :contained                   # 0-* [ Resource ]
      attr_accessor :extension                   # 0-* [ Extension ]
      attr_accessor :modifierExtension           # 0-* [ Extension ]
      attr_accessor :identifier                  # 0-* [ Identifier ]
      attr_accessor :subject                     # 0-1 Reference(MedicinalProduct|MedicinalProductPackaged)
      attr_accessor :country                     # 0-* [ CodeableConcept ]
      attr_accessor :jurisdiction                # 0-* [ CodeableConcept ]
      attr_accessor :status                      # 0-1 CodeableConcept
      attr_accessor :statusDate                  # 0-1 dateTime
      attr_accessor :restoreDate                 # 0-1 dateTime
      attr_accessor :validityPeriod              # 0-1 Period
      attr_accessor :dataExclusivityPeriod       # 0-1 Period
      attr_accessor :dateOfFirstAuthorization    # 0-1 dateTime
      attr_accessor :internationalBirthDate      # 0-1 dateTime
      attr_accessor :legalBasis                  # 0-1 CodeableConcept
      attr_accessor :jurisdictionalAuthorization # 0-* [ MedicinalProductAuthorization::JurisdictionalAuthorization ]
      attr_accessor :holder                      # 0-1 Reference(Organization)
      attr_accessor :regulator                   # 0-1 Reference(Organization)
      attr_accessor :procedure                   # 0-1 MedicinalProductAuthorization::Procedure

      def resourceType
        'MedicinalProductAuthorization'
      end
    end
  end
  MedicinalProductAuthorization = FHIR::R4::MedicinalProductAuthorization
end