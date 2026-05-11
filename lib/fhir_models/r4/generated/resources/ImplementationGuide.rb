module FHIR
  module R4
    class ImplementationGuide < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'context-type-quantity', 'context-type-value', 'date', 'depends-on', 'description', 'experimental', 'global', 'jurisdiction', 'name', 'publisher', 'resource', 'status', 'title', 'url', 'version']
      METADATA = {
        'id' => {'path'=>'ImplementationGuide.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'ImplementationGuide.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'ImplementationGuide.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'ImplementationGuide.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'ImplementationGuide.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'ImplementationGuide.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'ImplementationGuide.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'ImplementationGuide.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'path'=>'ImplementationGuide.url', 'type'=>'uri', 'min'=>1, 'max'=>1},
        'version' => {'path'=>'ImplementationGuide.version', 'type'=>'string', 'min'=>0, 'max'=>1},
        'name' => {'path'=>'ImplementationGuide.name', 'type'=>'string', 'min'=>1, 'max'=>1},
        'title' => {'path'=>'ImplementationGuide.title', 'type'=>'string', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'ImplementationGuide.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'experimental' => {'path'=>'ImplementationGuide.experimental', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'date' => {'path'=>'ImplementationGuide.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'publisher' => {'path'=>'ImplementationGuide.publisher', 'type'=>'string', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'ImplementationGuide.contact', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'ImplementationGuide.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'useContext' => {'path'=>'ImplementationGuide.useContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'path'=>'ImplementationGuide.jurisdiction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'copyright' => {'path'=>'ImplementationGuide.copyright', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'packageId' => {'path'=>'ImplementationGuide.packageId', 'type'=>'id', 'min'=>1, 'max'=>1},
        'license' => {'valid_codes'=>{'http://hl7.org/fhir/spdx-license'=>['not-open-source', '0BSD', 'AAL', 'Abstyles', 'Adobe-2006', 'Adobe-Glyph', 'ADSL', 'AFL-1.1', 'AFL-1.2', 'AFL-2.0', 'AFL-2.1', 'AFL-3.0', 'Afmparse', 'AGPL-1.0-only', 'AGPL-1.0-or-later', 'AGPL-3.0-only', 'AGPL-3.0-or-later', 'Aladdin', 'AMDPLPA', 'AML', 'AMPAS', 'ANTLR-PD', 'Apache-1.0', 'Apache-1.1', 'Apache-2.0', 'APAFML', 'APL-1.0', 'APSL-1.0', 'APSL-1.1', 'APSL-1.2', 'APSL-2.0', 'Artistic-1.0-cl8', 'Artistic-1.0-Perl', 'Artistic-1.0', 'Artistic-2.0', 'Bahyph', 'Barr', 'Beerware', 'BitTorrent-1.0', 'BitTorrent-1.1', 'Borceux', 'BSD-1-Clause', 'BSD-2-Clause-FreeBSD', 'BSD-2-Clause-NetBSD', 'BSD-2-Clause-Patent', 'BSD-2-Clause', 'BSD-3-Clause-Attribution', 'BSD-3-Clause-Clear', 'BSD-3-Clause-LBNL', 'BSD-3-Clause-No-Nuclear-License-2014', 'BSD-3-Clause-No-Nuclear-License', 'BSD-3-Clause-No-Nuclear-Warranty', 'BSD-3-Clause', 'BSD-4-Clause-UC', 'BSD-4-Clause', 'BSD-Protection', 'BSD-Source-Code', 'BSL-1.0', 'bzip2-1.0.5', 'bzip2-1.0.6', 'Caldera', 'CATOSL-1.1', 'CC-BY-1.0', 'CC-BY-2.0', 'CC-BY-2.5', 'CC-BY-3.0', 'CC-BY-4.0', 'CC-BY-NC-1.0', 'CC-BY-NC-2.0', 'CC-BY-NC-2.5', 'CC-BY-NC-3.0', 'CC-BY-NC-4.0', 'CC-BY-NC-ND-1.0', 'CC-BY-NC-ND-2.0', 'CC-BY-NC-ND-2.5', 'CC-BY-NC-ND-3.0', 'CC-BY-NC-ND-4.0', 'CC-BY-NC-SA-1.0', 'CC-BY-NC-SA-2.0', 'CC-BY-NC-SA-2.5', 'CC-BY-NC-SA-3.0', 'CC-BY-NC-SA-4.0', 'CC-BY-ND-1.0', 'CC-BY-ND-2.0', 'CC-BY-ND-2.5', 'CC-BY-ND-3.0', 'CC-BY-ND-4.0', 'CC-BY-SA-1.0', 'CC-BY-SA-2.0', 'CC-BY-SA-2.5', 'CC-BY-SA-3.0', 'CC-BY-SA-4.0', 'CC0-1.0', 'CDDL-1.0', 'CDDL-1.1', 'CDLA-Permissive-1.0', 'CDLA-Sharing-1.0', 'CECILL-1.0', 'CECILL-1.1', 'CECILL-2.0', 'CECILL-2.1', 'CECILL-B', 'CECILL-C', 'ClArtistic', 'CNRI-Jython', 'CNRI-Python-GPL-Compatible', 'CNRI-Python', 'Condor-1.1', 'CPAL-1.0', 'CPL-1.0', 'CPOL-1.02', 'Crossword', 'CrystalStacker', 'CUA-OPL-1.0', 'Cube', 'curl', 'D-FSL-1.0', 'diffmark', 'DOC', 'Dotseqn', 'DSDP', 'dvipdfm', 'ECL-1.0', 'ECL-2.0', 'EFL-1.0', 'EFL-2.0', 'eGenix', 'Entessa', 'EPL-1.0', 'EPL-2.0', 'ErlPL-1.1', 'EUDatagrid', 'EUPL-1.0', 'EUPL-1.1', 'EUPL-1.2', 'Eurosym', 'Fair', 'Frameworx-1.0', 'FreeImage', 'FSFAP', 'FSFUL', 'FSFULLR', 'FTL', 'GFDL-1.1-only', 'GFDL-1.1-or-later', 'GFDL-1.2-only', 'GFDL-1.2-or-later', 'GFDL-1.3-only', 'GFDL-1.3-or-later', 'Giftware', 'GL2PS', 'Glide', 'Glulxe', 'gnuplot', 'GPL-1.0-only', 'GPL-1.0-or-later', 'GPL-2.0-only', 'GPL-2.0-or-later', 'GPL-3.0-only', 'GPL-3.0-or-later', 'gSOAP-1.3b', 'HaskellReport', 'HPND', 'IBM-pibs', 'ICU', 'IJG', 'ImageMagick', 'iMatix', 'Imlib2', 'Info-ZIP', 'Intel-ACPI', 'Intel', 'Interbase-1.0', 'IPA', 'IPL-1.0', 'ISC', 'JasPer-2.0', 'JSON', 'LAL-1.2', 'LAL-1.3', 'Latex2e', 'Leptonica', 'LGPL-2.0-only', 'LGPL-2.0-or-later', 'LGPL-2.1-only', 'LGPL-2.1-or-later', 'LGPL-3.0-only', 'LGPL-3.0-or-later', 'LGPLLR', 'Libpng', 'libtiff', 'LiLiQ-P-1.1', 'LiLiQ-R-1.1', 'LiLiQ-Rplus-1.1', 'Linux-OpenIB', 'LPL-1.0', 'LPL-1.02', 'LPPL-1.0', 'LPPL-1.1', 'LPPL-1.2', 'LPPL-1.3a', 'LPPL-1.3c', 'MakeIndex', 'MirOS', 'MIT-0', 'MIT-advertising', 'MIT-CMU', 'MIT-enna', 'MIT-feh', 'MIT', 'MITNFA', 'Motosoto', 'mpich2', 'MPL-1.0', 'MPL-1.1', 'MPL-2.0-no-copyleft-exception', 'MPL-2.0', 'MS-PL', 'MS-RL', 'MTLL', 'Multics', 'Mup', 'NASA-1.3', 'Naumen', 'NBPL-1.0', 'NCSA', 'Net-SNMP', 'NetCDF', 'Newsletr', 'NGPL', 'NLOD-1.0', 'NLPL', 'Nokia', 'NOSL', 'Noweb', 'NPL-1.0', 'NPL-1.1', 'NPOSL-3.0', 'NRL', 'NTP', 'OCCT-PL', 'OCLC-2.0', 'ODbL-1.0', 'OFL-1.0', 'OFL-1.1', 'OGTSL', 'OLDAP-1.1', 'OLDAP-1.2', 'OLDAP-1.3', 'OLDAP-1.4', 'OLDAP-2.0.1', 'OLDAP-2.0', 'OLDAP-2.1', 'OLDAP-2.2.1', 'OLDAP-2.2.2', 'OLDAP-2.2', 'OLDAP-2.3', 'OLDAP-2.4', 'OLDAP-2.5', 'OLDAP-2.6', 'OLDAP-2.7', 'OLDAP-2.8', 'OML', 'OpenSSL', 'OPL-1.0', 'OSET-PL-2.1', 'OSL-1.0', 'OSL-1.1', 'OSL-2.0', 'OSL-2.1', 'OSL-3.0', 'PDDL-1.0', 'PHP-3.0', 'PHP-3.01', 'Plexus', 'PostgreSQL', 'psfrag', 'psutils', 'Python-2.0', 'Qhull', 'QPL-1.0', 'Rdisc', 'RHeCos-1.1', 'RPL-1.1', 'RPL-1.5', 'RPSL-1.0', 'RSA-MD', 'RSCPL', 'Ruby', 'SAX-PD', 'Saxpath', 'SCEA', 'Sendmail', 'SGI-B-1.0', 'SGI-B-1.1', 'SGI-B-2.0', 'SimPL-2.0', 'SISSL-1.2', 'SISSL', 'Sleepycat', 'SMLNJ', 'SMPPL', 'SNIA', 'Spencer-86', 'Spencer-94', 'Spencer-99', 'SPL-1.0', 'SugarCRM-1.1.3', 'SWL', 'TCL', 'TCP-wrappers', 'TMate', 'TORQUE-1.1', 'TOSL', 'Unicode-DFS-2015', 'Unicode-DFS-2016', 'Unicode-TOU', 'Unlicense', 'UPL-1.0', 'Vim', 'VOSTROM', 'VSL-1.0', 'W3C-19980720', 'W3C-20150513', 'W3C', 'Watcom-1.0', 'Wsuipa', 'WTFPL', 'X11', 'Xerox', 'XFree86-1.1', 'xinetd', 'Xnet', 'xpp', 'XSkat', 'YPL-1.0', 'YPL-1.1', 'Zed', 'Zend-2.0', 'Zimbra-1.3', 'Zimbra-1.4', 'zlib-acknowledgement', 'Zlib', 'ZPL-1.1', 'ZPL-2.0', 'ZPL-2.1']}, 'path'=>'ImplementationGuide.license', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/spdx-license'}},
        'fhirVersion' => {'valid_codes'=>{'http://hl7.org/fhir/FHIR-version'=>['0.01', '0.05', '0.06', '0.11', '0.0.80', '0.0.81', '0.0.82', '0.4.0', '0.5.0', '1.0.0', '1.0.1', '1.0.2', '1.1.0', '1.4.0', '1.6.0', '1.8.0', '3.0.0', '3.0.1', '3.3.0', '3.5.0', '4.0.0', '4.0.1']}, 'path'=>'ImplementationGuide.fhirVersion', 'type'=>'code', 'min'=>1, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/FHIR-version'}},
        'dependsOn' => {'path'=>'ImplementationGuide.dependsOn', 'type'=>'ImplementationGuide::DependsOn', 'min'=>0, 'max'=>Float::INFINITY},
        'global' => {'path'=>'ImplementationGuide.global', 'type'=>'ImplementationGuide::Global', 'min'=>0, 'max'=>Float::INFINITY},
        'definition' => {'path'=>'ImplementationGuide.definition', 'type'=>'ImplementationGuide::Definition', 'min'=>0, 'max'=>1},
        'manifest' => {'path'=>'ImplementationGuide.manifest', 'type'=>'ImplementationGuide::Manifest', 'min'=>0, 'max'=>1}
      }

      class DependsOn < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'DependsOn.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'DependsOn.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'DependsOn.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'uri' => {'path'=>'DependsOn.uri', 'type'=>'canonical', 'min'=>1, 'max'=>1},
          'packageId' => {'path'=>'DependsOn.packageId', 'type'=>'id', 'min'=>0, 'max'=>1},
          'version' => {'path'=>'DependsOn.version', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :uri               # 1-1 canonical
        attr_accessor :packageId         # 0-1 id
        attr_accessor :version           # 0-1 string
      end

      class Global < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Global.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Global.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Global.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/resource-types'=>['Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription']}, 'path'=>'Global.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-types'}},
          'profile' => {'path'=>'Global.profile', 'type'=>'canonical', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 code
        attr_accessor :profile           # 1-1 canonical
      end

      class Definition < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Definition.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Definition.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Definition.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'grouping' => {'path'=>'Definition.grouping', 'type'=>'ImplementationGuide::Definition::Grouping', 'min'=>0, 'max'=>Float::INFINITY},
          'resource' => {'path'=>'Definition.resource', 'type'=>'ImplementationGuide::Definition::Resource', 'min'=>1, 'max'=>Float::INFINITY},
          'page' => {'path'=>'Definition.page', 'type'=>'ImplementationGuide::Definition::Page', 'min'=>0, 'max'=>1},
          'parameter' => {'path'=>'Definition.parameter', 'type'=>'ImplementationGuide::Definition::Parameter', 'min'=>0, 'max'=>Float::INFINITY},
          'template' => {'path'=>'Definition.template', 'type'=>'ImplementationGuide::Definition::Template', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Grouping < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Grouping.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Grouping.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Grouping.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'name' => {'path'=>'Grouping.name', 'type'=>'string', 'min'=>1, 'max'=>1},
            'description' => {'path'=>'Grouping.description', 'type'=>'string', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :name              # 1-1 string
          attr_accessor :description       # 0-1 string
        end

        class Resource < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'example' => ['boolean', 'canonical']
          }
          METADATA = {
            'id' => {'path'=>'Resource.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Resource.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Resource.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'reference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Resource.reference', 'type'=>'Reference', 'min'=>1, 'max'=>1},
            'fhirVersion' => {'valid_codes'=>{'http://hl7.org/fhir/FHIR-version'=>['0.01', '0.05', '0.06', '0.11', '0.0.80', '0.0.81', '0.0.82', '0.4.0', '0.5.0', '1.0.0', '1.0.1', '1.0.2', '1.1.0', '1.4.0', '1.6.0', '1.8.0', '3.0.0', '3.0.1', '3.3.0', '3.5.0', '4.0.0', '4.0.1']}, 'path'=>'Resource.fhirVersion', 'type'=>'code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/FHIR-version'}},
            'name' => {'path'=>'Resource.name', 'type'=>'string', 'min'=>0, 'max'=>1},
            'description' => {'path'=>'Resource.description', 'type'=>'string', 'min'=>0, 'max'=>1},
            'exampleBoolean' => {'path'=>'Resource.example[x]', 'type'=>'boolean', 'min'=>0, 'max'=>1},
            'exampleCanonical' => {'path'=>'Resource.example[x]', 'type'=>'canonical', 'min'=>0, 'max'=>1},
            'groupingId' => {'path'=>'Resource.groupingId', 'type'=>'id', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :reference         # 1-1 Reference(Resource)
          attr_accessor :fhirVersion       # 0-* [ code ]
          attr_accessor :name              # 0-1 string
          attr_accessor :description       # 0-1 string
          attr_accessor :exampleBoolean    # 0-1 boolean
          attr_accessor :exampleCanonical  # 0-1 canonical
          attr_accessor :groupingId        # 0-1 id
        end

        class Page < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'name' => ['url', 'Reference']
          }
          METADATA = {
            'id' => {'path'=>'Page.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Page.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Page.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'nameUrl' => {'path'=>'Page.name[x]', 'type'=>'url', 'min'=>1, 'max'=>1},
            'nameReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Binary'], 'path'=>'Page.name[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1},
            'title' => {'path'=>'Page.title', 'type'=>'string', 'min'=>1, 'max'=>1},
            'generation' => {'valid_codes'=>{'http://hl7.org/fhir/guide-page-generation'=>['html', 'markdown', 'xml', 'generated']}, 'path'=>'Page.generation', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/guide-page-generation'}},
            'page' => {'path'=>'Page.page', 'type'=>'ImplementationGuide::Definition::Page', 'min'=>0, 'max'=>Float::INFINITY}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :nameUrl           # 1-1 url
          attr_accessor :nameReference     # 1-1 Reference(Binary)
          attr_accessor :title             # 1-1 string
          attr_accessor :generation        # 1-1 code
          attr_accessor :page              # 0-* [ ImplementationGuide::Definition::Page ]
        end

        class Parameter < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Parameter.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Parameter.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Parameter.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'valid_codes'=>{'http://hl7.org/fhir/guide-parameter-code'=>['apply', 'path-resource', 'path-pages', 'path-tx-cache', 'expansion-parameter', 'rule-broken-links', 'generate-xml', 'generate-json', 'generate-turtle', 'html-template']}, 'path'=>'Parameter.code', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/guide-parameter-code'}},
            'value' => {'path'=>'Parameter.value', 'type'=>'string', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 1-1 code
          attr_accessor :value             # 1-1 string
        end

        class Template < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Template.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Template.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Template.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'path'=>'Template.code', 'type'=>'code', 'min'=>1, 'max'=>1},
            'source' => {'path'=>'Template.source', 'type'=>'string', 'min'=>1, 'max'=>1},
            'scope' => {'path'=>'Template.scope', 'type'=>'string', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 1-1 code
          attr_accessor :source            # 1-1 string
          attr_accessor :scope             # 0-1 string
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :grouping          # 0-* [ ImplementationGuide::Definition::Grouping ]
        attr_accessor :resource          # 1-* [ ImplementationGuide::Definition::Resource ]
        attr_accessor :page              # 0-1 ImplementationGuide::Definition::Page
        attr_accessor :parameter         # 0-* [ ImplementationGuide::Definition::Parameter ]
        attr_accessor :template          # 0-* [ ImplementationGuide::Definition::Template ]
      end

      class Manifest < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Manifest.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Manifest.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Manifest.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'rendering' => {'path'=>'Manifest.rendering', 'type'=>'url', 'min'=>0, 'max'=>1},
          'resource' => {'path'=>'Manifest.resource', 'type'=>'ImplementationGuide::Manifest::Resource', 'min'=>1, 'max'=>Float::INFINITY},
          'page' => {'path'=>'Manifest.page', 'type'=>'ImplementationGuide::Manifest::Page', 'min'=>0, 'max'=>Float::INFINITY},
          'image' => {'path'=>'Manifest.image', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
          'other' => {'path'=>'Manifest.other', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Resource < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'example' => ['boolean', 'canonical']
          }
          METADATA = {
            'id' => {'path'=>'Resource.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Resource.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Resource.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'reference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Resource.reference', 'type'=>'Reference', 'min'=>1, 'max'=>1},
            'exampleBoolean' => {'path'=>'Resource.example[x]', 'type'=>'boolean', 'min'=>0, 'max'=>1},
            'exampleCanonical' => {'path'=>'Resource.example[x]', 'type'=>'canonical', 'min'=>0, 'max'=>1},
            'relativePath' => {'path'=>'Resource.relativePath', 'type'=>'url', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :reference         # 1-1 Reference(Resource)
          attr_accessor :exampleBoolean    # 0-1 boolean
          attr_accessor :exampleCanonical  # 0-1 canonical
          attr_accessor :relativePath      # 0-1 url
        end

        class Page < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Page.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Page.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Page.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'name' => {'path'=>'Page.name', 'type'=>'string', 'min'=>1, 'max'=>1},
            'title' => {'path'=>'Page.title', 'type'=>'string', 'min'=>0, 'max'=>1},
            'anchor' => {'path'=>'Page.anchor', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :name              # 1-1 string
          attr_accessor :title             # 0-1 string
          attr_accessor :anchor            # 0-* [ string ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :rendering         # 0-1 url
        attr_accessor :resource          # 1-* [ ImplementationGuide::Manifest::Resource ]
        attr_accessor :page              # 0-* [ ImplementationGuide::Manifest::Page ]
        attr_accessor :image             # 0-* [ string ]
        attr_accessor :other             # 0-* [ string ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :url               # 1-1 uri
      attr_accessor :version           # 0-1 string
      attr_accessor :name              # 1-1 string
      attr_accessor :title             # 0-1 string
      attr_accessor :status            # 1-1 code
      attr_accessor :experimental      # 0-1 boolean
      attr_accessor :date              # 0-1 dateTime
      attr_accessor :publisher         # 0-1 string
      attr_accessor :contact           # 0-* [ ContactDetail ]
      attr_accessor :description       # 0-1 markdown
      attr_accessor :useContext        # 0-* [ UsageContext ]
      attr_accessor :jurisdiction      # 0-* [ CodeableConcept ]
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :packageId         # 1-1 id
      attr_accessor :license           # 0-1 code
      attr_accessor :fhirVersion       # 1-* [ code ]
      attr_accessor :dependsOn         # 0-* [ ImplementationGuide::DependsOn ]
      attr_accessor :global            # 0-* [ ImplementationGuide::Global ]
      attr_accessor :definition        # 0-1 ImplementationGuide::Definition
      attr_accessor :manifest          # 0-1 ImplementationGuide::Manifest

      def resourceType
        'ImplementationGuide'
      end
    end
  end
  ImplementationGuide = FHIR::R4::ImplementationGuide
end