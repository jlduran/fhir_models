module FHIR
  module R4
    class SpecimenDefinition < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['container', 'identifier', 'type']
      METADATA = {
        'id' => {'path'=>'SpecimenDefinition.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'SpecimenDefinition.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'SpecimenDefinition.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'SpecimenDefinition.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'SpecimenDefinition.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'SpecimenDefinition.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'SpecimenDefinition.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'SpecimenDefinition.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'SpecimenDefinition.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'typeCollected' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v2-0487'=>['ABS', 'ACNE', 'ACNFLD', 'AIRS', 'ALL', 'AMN', 'AMP', 'ANGI', 'ARTC', 'ASERU', 'ASP', 'ATTE', 'AUTOA', 'AUTOC', 'AUTP', 'BBL', 'BCYST', 'BDY', 'BIFL', 'BITE', 'BLD', 'BLDA', 'BLDCO', 'BLDV', 'BLEB', 'BLIST', 'BOIL', 'BON', 'BOWL', 'BPH', 'BPU', 'BRN', 'BRSH', 'BRTH', 'BRUS', 'BUB', 'BULLA', 'BX', 'CALC', 'CARBU', 'CAT', 'CBITE', 'CDM', 'CLIPP', 'CNJT', 'CNL', 'COL', 'CONE', 'CSCR', 'CSERU', 'CSF', 'CSITE', 'CSMY', 'CST', 'CSVR', 'CTP', 'CUR', 'CVM', 'CVPS', 'CVPT', 'CYN', 'CYST', 'DBITE', 'DCS', 'DEC', 'DEION', 'DIA', 'DIAF', 'DISCHG', 'DIV', 'DRN', 'DRNG', 'DRNGP', 'DUFL', 'EARW', 'EBRUSH', 'EEYE', 'EFF', 'EFFUS', 'EFOD', 'EISO', 'ELT', 'ENVIR', 'EOS', 'EOTH', 'ESOI', 'ESOS', 'ETA', 'ETTP', 'ETTUB', 'EWHI', 'EXG', 'EXS', 'EXUDTE', 'FAW', 'FBLOOD', 'FGA', 'FIB', 'FIST', 'FLD', 'FLT', 'FLU', 'FLUID', 'FOLEY', 'FRS', 'FSCLP', 'FUR', 'GAS', 'GASA', 'GASAN', 'GASBR', 'GASD', 'GAST', 'GENL', 'GENV', 'GRAFT', 'GRAFTS', 'GRANU', 'GROSH', 'GSOL', 'GSPEC', 'GT', 'GTUBE', 'HAR', 'HBITE', 'HBLUD', 'HEMAQ', 'HEMO', 'HERNI', 'HEV', 'HIC', 'HYDC', 'IBITE', 'ICYST', 'IDC', 'IHG', 'ILEO', 'ILLEG', 'IMP', 'INCI', 'INFIL', 'INS', 'INTRD', 'ISLT', 'IT', 'IUD', 'IVCAT', 'IVFLD', 'IVTIP', 'JEJU', 'JNTFLD', 'JP', 'KELOI', 'KIDFLD', 'LAVG', 'LAVGG', 'LAVGP', 'LAVPG', 'LENS1', 'LENS2', 'LESN', 'LIQ', 'LIQO', 'LNA', 'LNV', 'LSAC', 'LYM', 'MAC', 'MAHUR', 'MAR', 'MASS', 'MBLD', 'MEC', 'MILK', 'MLK', 'MUCOS', 'MUCUS', 'NAIL', 'NASDR', 'NEDL', 'NEPH', 'NGASP', 'NGAST', 'NGS', 'NODUL', 'NSECR', 'ORH', 'ORL', 'OTH', 'PACEM', 'PAFL', 'PCFL', 'PDSIT', 'PDTS', 'PELVA', 'PENIL', 'PERIA', 'PILOC', 'PINS', 'PIS', 'PLAN', 'PLAS', 'PLB', 'PLC', 'PLEVS', 'PLR', 'PMN', 'PND', 'POL', 'POPGS', 'POPLG', 'POPLV', 'PORTA', 'PPP', 'PROST', 'PRP', 'PSC', 'PUNCT', 'PUS', 'PUSFR', 'PUST', 'QC3', 'RANDU', 'RBC', 'RBITE', 'RECT', 'RECTA', 'RENALC', 'RENC', 'RES', 'SAL', 'SCAR', 'SCLV', 'SCROA', 'SECRE', 'SER', 'SHU', 'SHUNF', 'SHUNT', 'SITE', 'SKBP', 'SKN', 'SMM', 'SMN', 'SNV', 'SPRM', 'SPRP', 'SPRPB', 'SPS', 'SPT', 'SPTC', 'SPTT', 'SPUT1', 'SPUTIN', 'SPUTSP', 'STER', 'STL', 'STONE', 'SUBMA', 'SUBMX', 'SUMP', 'SUP', 'SUTUR', 'SWGZ', 'SWT', 'TASP', 'TEAR', 'THRB', 'TISS', 'TISU', 'TLC', 'TRAC', 'TRANS', 'TSERU', 'TSTES', 'TTRA', 'TUBES', 'TUMOR', 'TZANC', 'UDENT', 'UMED', 'UR', 'URC', 'URINB', 'URINC', 'URINM', 'URINN', 'URINP', 'URNS', 'URT', 'USCOP', 'USPEC', 'USUB', 'VASTIP', 'VENT', 'VITF', 'VOM', 'WASH', 'WASI', 'WAT', 'WB', 'WBC', 'WEN', 'WICK', 'WND', 'WNDA', 'WNDD', 'WNDE', 'WORM', 'WRT', 'WWA', 'WWO', 'WWT']}, 'path'=>'SpecimenDefinition.typeCollected', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v2-0487'}},
        'patientPreparation' => {'valid_codes'=>{'http://snomed.info/sct'=>['703760002', '703761003', '703762005', '703764006', '703765007', '703766008', '703767004', '703768009', '703769001', '703770000', '703771001', '703772008', '703773003', '703774009', '703775005', '707707000', '707708005', '707709002', '707710007', '707712004', '707714003', '707715002', '707716001', '707717005', '707718000', '707719008', '707720002', '707721003', '707722005', '707723000', '707757008', '707758003', '707759006', '707760001', '707761002', '707762009', '707763004', '707764005', '707765006', '707815009', '707816005', '707817001', '707818006', '707819003', '707820009']}, 'path'=>'SpecimenDefinition.patientPreparation', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/prepare-patient-prior-specimen-collection'}},
        'timeAspect' => {'path'=>'SpecimenDefinition.timeAspect', 'type'=>'string', 'min'=>0, 'max'=>1},
        'collection' => {'valid_codes'=>{'http://snomed.info/sct'=>['129316008', '129314006', '129300006', '129304002', '129323009', '73416001', '225113003', '70777001', '386089008', '278450005']}, 'path'=>'SpecimenDefinition.collection', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/specimen-collection'}},
        'typeTested' => {'path'=>'SpecimenDefinition.typeTested', 'type'=>'SpecimenDefinition::TypeTested', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class TypeTested < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'TypeTested.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'TypeTested.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'TypeTested.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'isDerived' => {'path'=>'TypeTested.isDerived', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v2-0487'=>['ABS', 'ACNE', 'ACNFLD', 'AIRS', 'ALL', 'AMN', 'AMP', 'ANGI', 'ARTC', 'ASERU', 'ASP', 'ATTE', 'AUTOA', 'AUTOC', 'AUTP', 'BBL', 'BCYST', 'BDY', 'BIFL', 'BITE', 'BLD', 'BLDA', 'BLDCO', 'BLDV', 'BLEB', 'BLIST', 'BOIL', 'BON', 'BOWL', 'BPH', 'BPU', 'BRN', 'BRSH', 'BRTH', 'BRUS', 'BUB', 'BULLA', 'BX', 'CALC', 'CARBU', 'CAT', 'CBITE', 'CDM', 'CLIPP', 'CNJT', 'CNL', 'COL', 'CONE', 'CSCR', 'CSERU', 'CSF', 'CSITE', 'CSMY', 'CST', 'CSVR', 'CTP', 'CUR', 'CVM', 'CVPS', 'CVPT', 'CYN', 'CYST', 'DBITE', 'DCS', 'DEC', 'DEION', 'DIA', 'DIAF', 'DISCHG', 'DIV', 'DRN', 'DRNG', 'DRNGP', 'DUFL', 'EARW', 'EBRUSH', 'EEYE', 'EFF', 'EFFUS', 'EFOD', 'EISO', 'ELT', 'ENVIR', 'EOS', 'EOTH', 'ESOI', 'ESOS', 'ETA', 'ETTP', 'ETTUB', 'EWHI', 'EXG', 'EXS', 'EXUDTE', 'FAW', 'FBLOOD', 'FGA', 'FIB', 'FIST', 'FLD', 'FLT', 'FLU', 'FLUID', 'FOLEY', 'FRS', 'FSCLP', 'FUR', 'GAS', 'GASA', 'GASAN', 'GASBR', 'GASD', 'GAST', 'GENL', 'GENV', 'GRAFT', 'GRAFTS', 'GRANU', 'GROSH', 'GSOL', 'GSPEC', 'GT', 'GTUBE', 'HAR', 'HBITE', 'HBLUD', 'HEMAQ', 'HEMO', 'HERNI', 'HEV', 'HIC', 'HYDC', 'IBITE', 'ICYST', 'IDC', 'IHG', 'ILEO', 'ILLEG', 'IMP', 'INCI', 'INFIL', 'INS', 'INTRD', 'ISLT', 'IT', 'IUD', 'IVCAT', 'IVFLD', 'IVTIP', 'JEJU', 'JNTFLD', 'JP', 'KELOI', 'KIDFLD', 'LAVG', 'LAVGG', 'LAVGP', 'LAVPG', 'LENS1', 'LENS2', 'LESN', 'LIQ', 'LIQO', 'LNA', 'LNV', 'LSAC', 'LYM', 'MAC', 'MAHUR', 'MAR', 'MASS', 'MBLD', 'MEC', 'MILK', 'MLK', 'MUCOS', 'MUCUS', 'NAIL', 'NASDR', 'NEDL', 'NEPH', 'NGASP', 'NGAST', 'NGS', 'NODUL', 'NSECR', 'ORH', 'ORL', 'OTH', 'PACEM', 'PAFL', 'PCFL', 'PDSIT', 'PDTS', 'PELVA', 'PENIL', 'PERIA', 'PILOC', 'PINS', 'PIS', 'PLAN', 'PLAS', 'PLB', 'PLC', 'PLEVS', 'PLR', 'PMN', 'PND', 'POL', 'POPGS', 'POPLG', 'POPLV', 'PORTA', 'PPP', 'PROST', 'PRP', 'PSC', 'PUNCT', 'PUS', 'PUSFR', 'PUST', 'QC3', 'RANDU', 'RBC', 'RBITE', 'RECT', 'RECTA', 'RENALC', 'RENC', 'RES', 'SAL', 'SCAR', 'SCLV', 'SCROA', 'SECRE', 'SER', 'SHU', 'SHUNF', 'SHUNT', 'SITE', 'SKBP', 'SKN', 'SMM', 'SMN', 'SNV', 'SPRM', 'SPRP', 'SPRPB', 'SPS', 'SPT', 'SPTC', 'SPTT', 'SPUT1', 'SPUTIN', 'SPUTSP', 'STER', 'STL', 'STONE', 'SUBMA', 'SUBMX', 'SUMP', 'SUP', 'SUTUR', 'SWGZ', 'SWT', 'TASP', 'TEAR', 'THRB', 'TISS', 'TISU', 'TLC', 'TRAC', 'TRANS', 'TSERU', 'TSTES', 'TTRA', 'TUBES', 'TUMOR', 'TZANC', 'UDENT', 'UMED', 'UR', 'URC', 'URINB', 'URINC', 'URINM', 'URINN', 'URINP', 'URNS', 'URT', 'USCOP', 'USPEC', 'USUB', 'VASTIP', 'VENT', 'VITF', 'VOM', 'WASH', 'WASI', 'WAT', 'WB', 'WBC', 'WEN', 'WICK', 'WND', 'WNDA', 'WNDD', 'WNDE', 'WORM', 'WRT', 'WWA', 'WWO', 'WWT']}, 'path'=>'TypeTested.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v2-0487'}},
          'preference' => {'valid_codes'=>{'http://hl7.org/fhir/specimen-contained-preference'=>['preferred', 'alternate']}, 'path'=>'TypeTested.preference', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/specimen-contained-preference'}},
          'container' => {'path'=>'TypeTested.container', 'type'=>'SpecimenDefinition::TypeTested::Container', 'min'=>0, 'max'=>1},
          'requirement' => {'path'=>'TypeTested.requirement', 'type'=>'string', 'min'=>0, 'max'=>1},
          'retentionTime' => {'path'=>'TypeTested.retentionTime', 'type'=>'Duration', 'min'=>0, 'max'=>1},
          'rejectionCriterion' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/rejection-criteria'=>['hemolized', 'insufficient', 'broken', 'clotted', 'wrong-temperature']}, 'path'=>'TypeTested.rejectionCriterion', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/rejection-criteria'}},
          'handling' => {'path'=>'TypeTested.handling', 'type'=>'SpecimenDefinition::TypeTested::Handling', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Container < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'minimumVolume' => ['Quantity', 'string']
          }
          METADATA = {
            'id' => {'path'=>'Container.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Container.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Container.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'material' => {'valid_codes'=>{'http://snomed.info/sct'=>['32039001', '61088005', '425620007']}, 'path'=>'Container.material', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/container-material'}},
            'type' => {'valid_codes'=>{'http://snomed.info/sct'=>['22566001', '463568005', '464527005', '464573007', '464784003', '464946000', '465046006', '465091002', '465141003', '465487000', '466164006', '466421006', '466447002', '466623002', '466637006', '466704003', '466844004', '466898000', '466930006', '467030004', '467131002', '467132009', '467141004', '467182004', '467330006', '467431009', '467499008', '467647004', '467697000', '467743009', '467967005', '467989009', '468076003', '468131000', '468200003', '468981005', '468999002', '469287008', '469322002', '469454007', '469822008', '470114007', '470547006', '470597005', '700855008', '700905004', '700906003', '700945008', '700955007', '700956008', '700957004', '701394007', '701516009', '701720006', '702120003', '702223006', '702224000', '702232008', '702244006', '702256007', '702264001', '702268003', '702269006', '702275002', '702276001', '702277005', '702278000', '702279008', '702280006', '702281005', '702282003', '702283008', '702284002', '702285001', '702286000', '702287009', '702288004', '702289007', '702290003', '702292006', '702293001', '702294007', '702295008', '702296009', '702297000', '702298005', '702299002', '702300005', '702301009', '702302002', '702303007', '702304001', '702305000', '702306004', '702307008', '702308003', '702309006', '702310001', '704866005', '704921002', '706042001', '706044000', '706045004', '706046003', '706047007', '706048002', '706049005', '706050005', '706051009', '706052002', '706053007', '706054001', '706055000', '706056004', '706057008', '706058003', '706067003', '706070004', '706071000', '712485008', '713951005', '714731008', '718301008', '718302001']}, 'path'=>'Container.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/specimen-container-type'}},
            'cap' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/container-cap'=>['red', 'yellow', 'dark-yellow', 'grey', 'light-blue', 'black', 'green', 'light-green', 'lavender', 'brown', 'white', 'pink']}, 'path'=>'Container.cap', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/container-cap'}},
            'description' => {'path'=>'Container.description', 'type'=>'string', 'min'=>0, 'max'=>1},
            'capacity' => {'path'=>'Container.capacity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
            'minimumVolumeQuantity' => {'path'=>'Container.minimumVolume[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
            'minimumVolumeString' => {'path'=>'Container.minimumVolume[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
            'additive' => {'path'=>'Container.additive', 'type'=>'SpecimenDefinition::TypeTested::Container::Additive', 'min'=>0, 'max'=>Float::INFINITY},
            'preparation' => {'path'=>'Container.preparation', 'type'=>'string', 'min'=>0, 'max'=>1}
          }

          class Additive < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            MULTIPLE_TYPES = {
              'additive' => ['CodeableConcept', 'Reference']
            }
            METADATA = {
              'id' => {'path'=>'Additive.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Additive.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Additive.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'additiveCodeableConcept' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v2-0371'=>['ACDA', 'ACDB', 'ACET', 'AMIES', 'BACTM', 'BF10', 'BOR', 'BOUIN', 'BSKM', 'C32', 'C38', 'CARS', 'CARY', 'CHLTM', 'CTAD', 'EDTK', 'EDTK15', 'EDTK75', 'EDTN', 'ENT', 'ENT+', 'F10', 'FDP', 'FL10', 'FL100', 'HCL6', 'HEPA', 'HEPL', 'HEPN', 'HNO3', 'JKM', 'KARN', 'KOX', 'LIA', 'M4', 'M4RT', 'M5', 'MICHTM', 'MMDTM', 'NAF', 'NAPS', 'NONE', 'PAGE', 'PHENOL', 'PVA', 'RLM', 'SILICA', 'SPS', 'SST', 'STUTM', 'THROM', 'THYMOL', 'THYO', 'TOLU', 'URETM', 'VIRTM', 'WEST']}, 'path'=>'Additive.additive[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v2-0371'}},
              'additiveReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Substance'], 'path'=>'Additive.additive[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1}
            }

            attr_accessor :id                      # 0-1 string
            attr_accessor :extension               # 0-* [ Extension ]
            attr_accessor :modifierExtension       # 0-* [ Extension ]
            attr_accessor :additiveCodeableConcept # 1-1 CodeableConcept
            attr_accessor :additiveReference       # 1-1 Reference(Substance)
          end

          attr_accessor :id                    # 0-1 string
          attr_accessor :extension             # 0-* [ Extension ]
          attr_accessor :modifierExtension     # 0-* [ Extension ]
          attr_accessor :material              # 0-1 CodeableConcept
          attr_accessor :type                  # 0-1 CodeableConcept
          attr_accessor :cap                   # 0-1 CodeableConcept
          attr_accessor :description           # 0-1 string
          attr_accessor :capacity              # 0-1 Quantity
          attr_accessor :minimumVolumeQuantity # 0-1 Quantity
          attr_accessor :minimumVolumeString   # 0-1 string
          attr_accessor :additive              # 0-* [ SpecimenDefinition::TypeTested::Container::Additive ]
          attr_accessor :preparation           # 0-1 string
        end

        class Handling < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Handling.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Handling.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Handling.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'temperatureQualifier' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/handling-condition'=>['room', 'refrigerated', 'frozen']}, 'path'=>'Handling.temperatureQualifier', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/handling-condition'}},
            'temperatureRange' => {'path'=>'Handling.temperatureRange', 'type'=>'Range', 'min'=>0, 'max'=>1},
            'maxDuration' => {'path'=>'Handling.maxDuration', 'type'=>'Duration', 'min'=>0, 'max'=>1},
            'instruction' => {'path'=>'Handling.instruction', 'type'=>'string', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                   # 0-1 string
          attr_accessor :extension            # 0-* [ Extension ]
          attr_accessor :modifierExtension    # 0-* [ Extension ]
          attr_accessor :temperatureQualifier # 0-1 CodeableConcept
          attr_accessor :temperatureRange     # 0-1 Range
          attr_accessor :maxDuration          # 0-1 Duration
          attr_accessor :instruction          # 0-1 string
        end

        attr_accessor :id                 # 0-1 string
        attr_accessor :extension          # 0-* [ Extension ]
        attr_accessor :modifierExtension  # 0-* [ Extension ]
        attr_accessor :isDerived          # 0-1 boolean
        attr_accessor :type               # 0-1 CodeableConcept
        attr_accessor :preference         # 1-1 code
        attr_accessor :container          # 0-1 SpecimenDefinition::TypeTested::Container
        attr_accessor :requirement        # 0-1 string
        attr_accessor :retentionTime      # 0-1 Duration
        attr_accessor :rejectionCriterion # 0-* [ CodeableConcept ]
        attr_accessor :handling           # 0-* [ SpecimenDefinition::TypeTested::Handling ]
      end

      attr_accessor :id                 # 0-1 id
      attr_accessor :meta               # 0-1 Meta
      attr_accessor :implicitRules      # 0-1 uri
      attr_accessor :language           # 0-1 code
      attr_accessor :text               # 0-1 Narrative
      attr_accessor :contained          # 0-* [ Resource ]
      attr_accessor :extension          # 0-* [ Extension ]
      attr_accessor :modifierExtension  # 0-* [ Extension ]
      attr_accessor :identifier         # 0-1 Identifier
      attr_accessor :typeCollected      # 0-1 CodeableConcept
      attr_accessor :patientPreparation # 0-* [ CodeableConcept ]
      attr_accessor :timeAspect         # 0-1 string
      attr_accessor :collection         # 0-* [ CodeableConcept ]
      attr_accessor :typeTested         # 0-* [ SpecimenDefinition::TypeTested ]

      def resourceType
        'SpecimenDefinition'
      end
    end
  end
  SpecimenDefinition = FHIR::R4::SpecimenDefinition
end