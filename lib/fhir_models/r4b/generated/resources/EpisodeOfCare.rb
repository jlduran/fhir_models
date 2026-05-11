module FHIR
  module R4B
    class EpisodeOfCare < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['care-manager', 'condition', 'date', 'identifier', 'incoming-referral', 'organization', 'patient', 'status', 'type']
      METADATA = {
        'id' => {'path'=>'EpisodeOfCare.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'EpisodeOfCare.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'EpisodeOfCare.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'EpisodeOfCare.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'EpisodeOfCare.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'EpisodeOfCare.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'EpisodeOfCare.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'EpisodeOfCare.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'EpisodeOfCare.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/episode-of-care-status'=>['planned', 'waitlist', 'active', 'onhold', 'finished', 'cancelled', 'entered-in-error']}, 'path'=>'EpisodeOfCare.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/episode-of-care-status'}},
        'statusHistory' => {'path'=>'EpisodeOfCare.statusHistory', 'type'=>'EpisodeOfCare::StatusHistory', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/episodeofcare-type'=>['hacc', 'pac', 'diab', 'da', 'cacp']}, 'path'=>'EpisodeOfCare.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/episodeofcare-type'}},
        'diagnosis' => {'path'=>'EpisodeOfCare.diagnosis', 'type'=>'EpisodeOfCare::Diagnosis', 'min'=>0, 'max'=>Float::INFINITY},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'path'=>'EpisodeOfCare.patient', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'managingOrganization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'EpisodeOfCare.managingOrganization', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'period' => {'path'=>'EpisodeOfCare.period', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'referralRequest' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ServiceRequest'], 'path'=>'EpisodeOfCare.referralRequest', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'careManager' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'EpisodeOfCare.careManager', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'team' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CareTeam'], 'path'=>'EpisodeOfCare.team', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'account' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Account'], 'path'=>'EpisodeOfCare.account', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class StatusHistory < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'StatusHistory.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'StatusHistory.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'StatusHistory.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'status' => {'valid_codes'=>{'http://hl7.org/fhir/episode-of-care-status'=>['planned', 'waitlist', 'active', 'onhold', 'finished', 'cancelled', 'entered-in-error']}, 'path'=>'StatusHistory.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/episode-of-care-status'}},
          'period' => {'path'=>'StatusHistory.period', 'type'=>'Period', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :status            # 1-1 code
        attr_accessor :period            # 1-1 Period
      end

      class Diagnosis < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Diagnosis.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Diagnosis.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Diagnosis.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'condition' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition'], 'path'=>'Diagnosis.condition', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'role' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/diagnosis-role'=>['AD', 'DD', 'CC', 'CM', 'pre-op', 'post-op', 'billing']}, 'path'=>'Diagnosis.role', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/diagnosis-role'}},
          'rank' => {'path'=>'Diagnosis.rank', 'type'=>'positiveInt', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :condition         # 1-1 Reference(Condition)
        attr_accessor :role              # 0-1 CodeableConcept
        attr_accessor :rank              # 0-1 positiveInt
      end

      attr_accessor :id                   # 0-1 id
      attr_accessor :meta                 # 0-1 Meta
      attr_accessor :implicitRules        # 0-1 uri
      attr_accessor :language             # 0-1 code
      attr_accessor :text                 # 0-1 Narrative
      attr_accessor :contained            # 0-* [ Resource ]
      attr_accessor :extension            # 0-* [ Extension ]
      attr_accessor :modifierExtension    # 0-* [ Extension ]
      attr_accessor :identifier           # 0-* [ Identifier ]
      attr_accessor :status               # 1-1 code
      attr_accessor :statusHistory        # 0-* [ EpisodeOfCare::StatusHistory ]
      attr_accessor :type                 # 0-* [ CodeableConcept ]
      attr_accessor :diagnosis            # 0-* [ EpisodeOfCare::Diagnosis ]
      attr_accessor :patient              # 1-1 Reference(Patient)
      attr_accessor :managingOrganization # 0-1 Reference(Organization)
      attr_accessor :period               # 0-1 Period
      attr_accessor :referralRequest      # 0-* [ Reference(ServiceRequest) ]
      attr_accessor :careManager          # 0-1 Reference(Practitioner|PractitionerRole)
      attr_accessor :team                 # 0-* [ Reference(CareTeam) ]
      attr_accessor :account              # 0-* [ Reference(Account) ]

      def resourceType
        'EpisodeOfCare'
      end
    end
  end
end