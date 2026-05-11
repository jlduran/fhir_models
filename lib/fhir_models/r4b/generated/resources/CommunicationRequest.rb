module FHIR
  module R4B
    class CommunicationRequest < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'occurrence' => ['dateTime', 'Period']
      }
      SEARCH_PARAMS = ['authored', 'based-on', 'category', 'encounter', 'group-identifier', 'identifier', 'medium', 'occurrence', 'patient', 'priority', 'recipient', 'replaces', 'requester', 'sender', 'status', 'subject']
      METADATA = {
        'id' => {'path'=>'CommunicationRequest.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'CommunicationRequest.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'CommunicationRequest.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'CommunicationRequest.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'CommunicationRequest.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'CommunicationRequest.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'CommunicationRequest.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'CommunicationRequest.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'CommunicationRequest.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'CommunicationRequest.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'replaces' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CommunicationRequest'], 'path'=>'CommunicationRequest.replaces', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'groupIdentifier' => {'path'=>'CommunicationRequest.groupIdentifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/request-status'=>['draft', 'active', 'on-hold', 'revoked', 'completed', 'entered-in-error', 'unknown']}, 'path'=>'CommunicationRequest.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-status'}},
        'statusReason' => {'path'=>'CommunicationRequest.statusReason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
        'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/communication-category'=>['alert', 'notification', 'reminder', 'instruction']}, 'path'=>'CommunicationRequest.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/communication-category'}},
        'priority' => {'valid_codes'=>{'http://hl7.org/fhir/request-priority'=>['routine', 'urgent', 'asap', 'stat']}, 'path'=>'CommunicationRequest.priority', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-priority'}},
        'doNotPerform' => {'path'=>'CommunicationRequest.doNotPerform', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'medium' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ParticipationMode'=>['PHYSICAL', 'REMOTE', 'VERBAL', 'DICTATE', 'FACE', 'PHONE', 'VIDEOCONF', 'WRITTEN', 'FAXWRIT', 'HANDWRIT', 'MAILWRIT', 'ONLINEWRIT', 'EMAILWRIT', 'TYPEWRIT', 'MSGWRIT', 'SMSWRIT', 'MMSWRIT', 'APPWRIT', 'ELECTRONIC']}, 'path'=>'CommunicationRequest.medium', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-ParticipationMode'}},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group'], 'path'=>'CommunicationRequest.subject', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'about' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'CommunicationRequest.about', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'CommunicationRequest.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'payload' => {'path'=>'CommunicationRequest.payload', 'type'=>'CommunicationRequest::Payload', 'min'=>0, 'max'=>Float::INFINITY},
        'occurrenceDateTime' => {'path'=>'CommunicationRequest.occurrence[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'occurrencePeriod' => {'path'=>'CommunicationRequest.occurrence[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'authoredOn' => {'path'=>'CommunicationRequest.authoredOn', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'requester' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'CommunicationRequest.requester', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'recipient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/HealthcareService'], 'path'=>'CommunicationRequest.recipient', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'sender' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/HealthcareService'], 'path'=>'CommunicationRequest.sender', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'reasonCode' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['_ActAccommodationReason', 'ACCREQNA', 'FLRCNV', 'MEDNEC', 'PAT', '_ActCoverageReason', '_EligibilityActReasonCode', '_ActIneligibilityReason', 'COVSUS', 'DECSD', 'REGERR', '_CoverageEligibilityReason', 'AGE', 'CRIME', 'DIS', 'EMPLOY', 'FINAN', 'HEALTH', 'MULTI', 'PNC', 'STATUTORY', 'VEHIC', 'WORK', '_ActCoverageProviderReason', '_ActCoverageServiceReason', '_CoverageExclusionReason', '_CoverageFinancialParticipationReason', '_CoverageLimitationReason', '_ActInformationManagementReason', '_ActHealthInformationManagementReason', '_ActConsentInformationAccessOverrideReason', 'OVRER', 'OVRINCOMP', 'OVRPJ', 'OVRPS', 'OVRTPS', 'PurposeOfUse', 'HMARKT', 'HOPERAT', 'CAREMGT', 'DONAT', 'FRAUD', 'GOV', 'HACCRED', 'HCOMPL', 'HDECD', 'HDIRECT', 'HDM', 'HLEGAL', 'HOUTCOMS', 'HPRGRP', 'HQUALIMP', 'HSYSADMIN', 'LABELING', 'METAMGT', 'MEMADMIN', 'MILCDM', 'PATADMIN', 'PATSFTY', 'PERFMSR', 'RECORDMGT', 'SYSDEV', 'HTEST', 'TRAIN', 'HPAYMT', 'CLMATTCH', 'COVAUTH', 'COVERAGE', 'ELIGDTRM', 'ELIGVER', 'ENROLLM', 'MILDCRG', 'REMITADV', 'HRESCH', 'BIORCH', 'CLINTRCH', 'CLINTRCHNPC', 'CLINTRCHPC', 'PRECLINTRCH', 'DSRCH', 'POARCH', 'TRANSRCH', 'PATRQT', 'FAMRQT', 'PWATRNY', 'SUPNWK', 'PUBHLTH', 'DISASTER', 'THREAT', 'TREAT', 'CLINTRL', 'COC', 'ETREAT', 'BTG', 'ERTREAT', 'POPHLTH', '_ActHealthInformationPrivacyReason', '_ActInformationPrivacyReason', 'MARKT', 'OPERAT', 'LEGAL', 'ACCRED', 'COMPL', 'ENADMIN', 'OUTCOMS', 'PRGRPT', 'QUALIMP', 'SYSADMN', 'PAYMT', 'RESCH', 'SRVC', '_ActInvalidReason', 'ADVSTORAGE', 'COLDCHNBRK', 'EXPLOT', 'OUTSIDESCHED', 'PRODRECALL', '_ActInvoiceCancelReason', 'INCCOVPTY', 'INCINVOICE', 'INCPOLICY', 'INCPROV', '_ActNoImmunizationReason', 'IMMUNE', 'MEDPREC', 'OSTOCK', 'PATOBJ', 'PHILISOP', 'RELIG', 'VACEFF', 'VACSAF', '_ActSupplyFulfillmentRefusalReason', 'FRR01', 'FRR02', 'FRR03', 'FRR04', 'FRR05', 'FRR06', '_ClinicalResearchEventReason', 'RET', 'SCH', 'TRM', 'UNS', '_ClinicalResearchObservationReason', 'NPT', 'PPT', 'UPT', '_CombinedPharmacyOrderSuspendReasonCode', 'ALTCHOICE', 'CLARIF', 'DRUGHIGH', 'HOSPADM', 'LABINT', 'NON-AVAIL', 'PREG', 'SALG', 'SDDI', 'SDUPTHER', 'SINTOL', 'SURG', 'WASHOUT', '_ControlActNullificationReasonCode', 'ALTD', 'EIE', 'NORECMTCH', '_ControlActNullificationRefusalReasonType', 'INRQSTATE', 'NOMATCH', 'NOPRODMTCH', 'NOSERMTCH', 'NOVERMTCH', 'NOPERM', 'NOUSERPERM', 'NOAGNTPERM', 'NOUSRPERM', 'WRNGVER', '_ControlActReason', '_MedicationOrderAbortReasonCode', 'DISCONT', 'INEFFECT', 'MONIT', 'NOREQ', 'NOTCOVER', 'PREFUS', 'RECALL', 'REPLACE', 'DOSECHG', 'REPLACEFIX', 'UNABLE', '_MedicationOrderReleaseReasonCode', 'HOLDDONE', 'HOLDINAP', '_ModifyPrescriptionReasonType', 'ADMINERROR', 'CLINMOD', '_PharmacySupplyEventAbortReason', 'CONTRA', 'FOABORT', 'FOSUSP', 'NOPICK', 'PATDEC', 'QUANTCHG', '_PharmacySupplyEventStockReasonCode', 'FLRSTCK', 'LTC', 'OFFICE', 'PHARM', 'PROG', '_PharmacySupplyRequestRenewalRefusalReasonCode', 'ALREADYRX', 'FAMPHYS', 'MODIFY', 'NEEDAPMT', 'NOTAVAIL', 'NOTPAT', 'ONHOLD', 'PRNA', 'STOPMED', 'TOOEARLY', '_SupplyOrderAbortReasonCode', 'IMPROV', 'INTOL', 'NEWSTR', 'NEWTHER', '_ControlActReasonConditionNullify', '_GenericUpdateReasonCode', 'CHGDATA', 'FIXDATA', 'MDATA', 'NEWDATA', 'UMDATA', '_PatientProfileQueryReasonCode', 'ADMREV', 'PATCAR', 'PATREQ', 'PRCREV', 'REGUL', 'RSRCH', 'VALIDATION', '_PharmacySupplyRequestFulfillerRevisionRefusalReasonCode', 'LOCKED', 'UNKWNTARGET', '_RefusalReasonCode', '_SchedulingActReason', 'BLK', 'DEC', 'FIN', 'MED', 'MTG', 'PHY', '_StatusRevisionRefusalReasonCode', 'FILLED', '_SubstanceAdministrationPermissionRefusalReasonCode', 'PATINELIG', 'PROTUNMET', 'PROVUNAUTH', '_SubstanceAdminSubstitutionNotAllowedReason', 'ALGINT', 'COMPCON', 'THERCHAR', 'TRIAL', '_SubstanceAdminSubstitutionReason', 'CT', 'FP', 'OS', 'RR', '_TransferActReason', 'ER', 'RQ', '_ActAdjudicationReason', '_ActBillableServiceReason', '_ActBillableClinicalServiceReason', '_MedicallyNecessaryDuplicateProcedureReason', '_ActCoverageLevelRasonCode', '_ActImmunizationReason', '_ConrolActNullificationReasonCode', '_NonPerformanceReasonCode', '_ReasonForNotEvaluatingDevice', '_ReferralReasonCode', 'BONUS', 'CHD', 'DEP', 'ECH', 'EDU', 'EMP', 'ESP', 'FAM', 'IND', 'INVOICE', 'PROA', 'RECOV', 'RETRO', 'SPC', 'SPO', 'TRAN']}, 'path'=>'CommunicationRequest.reasonCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-ActReason'}},
        'reasonReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition', 'http://hl7.org/fhir/StructureDefinition/Observation', 'http://hl7.org/fhir/StructureDefinition/DiagnosticReport', 'http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'path'=>'CommunicationRequest.reasonReference', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'path'=>'CommunicationRequest.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Payload < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'content' => ['string', 'Attachment', 'Reference']
        }
        METADATA = {
          'id' => {'path'=>'Payload.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Payload.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Payload.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'contentString' => {'path'=>'Payload.content[x]', 'type'=>'string', 'min'=>1, 'max'=>1},
          'contentAttachment' => {'path'=>'Payload.content[x]', 'type'=>'Attachment', 'min'=>1, 'max'=>1},
          'contentReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Payload.content[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :contentString     # 1-1 string
        attr_accessor :contentAttachment # 1-1 Attachment
        attr_accessor :contentReference  # 1-1 Reference(Resource)
      end

      attr_accessor :id                 # 0-1 id
      attr_accessor :meta               # 0-1 Meta
      attr_accessor :implicitRules      # 0-1 uri
      attr_accessor :language           # 0-1 code
      attr_accessor :text               # 0-1 Narrative
      attr_accessor :contained          # 0-* [ Resource ]
      attr_accessor :extension          # 0-* [ Extension ]
      attr_accessor :modifierExtension  # 0-* [ Extension ]
      attr_accessor :identifier         # 0-* [ Identifier ]
      attr_accessor :basedOn            # 0-* [ Reference(Resource) ]
      attr_accessor :replaces           # 0-* [ Reference(CommunicationRequest) ]
      attr_accessor :groupIdentifier    # 0-1 Identifier
      attr_accessor :status             # 1-1 code
      attr_accessor :statusReason       # 0-1 CodeableConcept
      attr_accessor :category           # 0-* [ CodeableConcept ]
      attr_accessor :priority           # 0-1 code
      attr_accessor :doNotPerform       # 0-1 boolean
      attr_accessor :medium             # 0-* [ CodeableConcept ]
      attr_accessor :subject            # 0-1 Reference(Patient|Group)
      attr_accessor :about              # 0-* [ Reference(Resource) ]
      attr_accessor :encounter          # 0-1 Reference(Encounter)
      attr_accessor :payload            # 0-* [ CommunicationRequest::Payload ]
      attr_accessor :occurrenceDateTime # 0-1 dateTime
      attr_accessor :occurrencePeriod   # 0-1 Period
      attr_accessor :authoredOn         # 0-1 dateTime
      attr_accessor :requester          # 0-1 Reference(Practitioner|PractitionerRole|Organization|Patient|RelatedPerson|Device)
      attr_accessor :recipient          # 0-* [ Reference(Device|Organization|Patient|Practitioner|PractitionerRole|RelatedPerson|Group|CareTeam|HealthcareService) ]
      attr_accessor :sender             # 0-1 Reference(Device|Organization|Patient|Practitioner|PractitionerRole|RelatedPerson|HealthcareService)
      attr_accessor :reasonCode         # 0-* [ CodeableConcept ]
      attr_accessor :reasonReference    # 0-* [ Reference(Condition|Observation|DiagnosticReport|DocumentReference) ]
      attr_accessor :note               # 0-* [ Annotation ]

      def resourceType
        'CommunicationRequest'
      end
    end
  end
end