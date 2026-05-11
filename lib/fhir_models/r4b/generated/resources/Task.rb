module FHIR
  module R4B
    class Task < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['authored-on', 'based-on', 'business-status', 'code', 'encounter', 'focus', 'group-identifier', 'identifier', 'intent', 'modified', 'owner', 'part-of', 'patient', 'performer', 'period', 'priority', 'requester', 'status', 'subject']
      METADATA = {
        'id' => {'path'=>'Task.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Task.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Task.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Task.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'Task.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Task.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Task.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Task.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Task.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'instantiatesCanonical' => {'path'=>'Task.instantiatesCanonical', 'type'=>'canonical', 'min'=>0, 'max'=>1},
        'instantiatesUri' => {'path'=>'Task.instantiatesUri', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Task.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'groupIdentifier' => {'path'=>'Task.groupIdentifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'partOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Task'], 'path'=>'Task.partOf', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/task-status'=>['draft', 'requested', 'received', 'accepted', 'rejected', 'ready', 'cancelled', 'in-progress', 'on-hold', 'failed', 'completed', 'entered-in-error']}, 'path'=>'Task.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/task-status'}},
        'statusReason' => {'path'=>'Task.statusReason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
        'businessStatus' => {'path'=>'Task.businessStatus', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
        'intent' => {'valid_codes'=>{'http://hl7.org/fhir/task-intent'=>['unknown'], 'http://hl7.org/fhir/request-intent'=>['proposal', 'plan', 'order', 'original-order', 'reflex-order', 'filler-order', 'instance-order', 'option']}, 'path'=>'Task.intent', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/task-intent'}},
        'priority' => {'valid_codes'=>{'http://hl7.org/fhir/request-priority'=>['routine', 'urgent', 'asap', 'stat']}, 'path'=>'Task.priority', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-priority'}},
        'code' => {'valid_codes'=>{'http://hl7.org/fhir/CodeSystem/task-code'=>['approve', 'fulfill', 'abort', 'replace', 'change', 'suspend', 'resume']}, 'path'=>'Task.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/task-code'}},
        'description' => {'path'=>'Task.description', 'type'=>'string', 'min'=>0, 'max'=>1},
        'focus' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Task.focus', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'for' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Task.for', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'Task.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'executionPeriod' => {'path'=>'Task.executionPeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'authoredOn' => {'path'=>'Task.authoredOn', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'lastModified' => {'path'=>'Task.lastModified', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'requester' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'Task.requester', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'performerType' => {'valid_codes'=>{'http://snomed.info/sct'=>['223366009', '1421009', '3430008', '3842006', '4162009', '5275007', '6816002', '6868009', '8724009', '11661002', '11911009', '11935004', '13580004', '14698002', '17561000', '18803008', '18850004', '19244007', '20145008', '21365001', '21450003', '22515006', '22731001', '22983004', '23278007', '24430003', '24590004', '25961008', '26042002', '26369006', '28229004', '28411006', '28544002', '36682004', '37154003', '37504001', '39677007', '40127002', '40204001', '40570005', '41672002', '41904004', '43702002', '44652006', '45419001', '45440000', '45544007', '45956004', '46255001', '48740002', '49203003', '49993003', '50149000', '54503009', '56397003', '56466003', '56542007', '56545009', '57654006', '59058001', '59169001', '59317003', '59944000', '60008001', '61207006', '61246008', '61345009', '61894003', '62247001', '63098009', '66476003', '66862007', '68867008', '68950000', '69280009', '71838004', '73265009', '75271001', '76166008', '76231001', '76899008', '78703002', '78729002', '79898004', '80409005', '80546007', '80584001', '80933006', '81464008', '82296001', '83273008', '83685006', '85733003', '88189002', '90201008', '90655003', '106289002', '106291005', '106292003', '106293008', '106294002', '106296000', '106330007', '158965000', '158966004', '158967008', '158968003', '158969006', '158971006', '158972004', '158973009', '158974003', '158975002', '158977005', '158978000', '158979008', '158980006', '158983008', '158984002', '158985001', '158986000', '158987009', '158988004', '158989007', '158990003', '158992006', '158993001', '158994007', '158995008', '158996009', '158997000', '158998005', '158999002', '159001001', '159002008', '159003003', '159004009', '159005005', '159006006', '159007002', '159010009', '159011008', '159012001', '159014000', '159016003', '159017007', '159018002', '159019005', '159021000', '159022007', '159025009', '159026005', '159027001', '159028006', '159033005', '159034004', '159035003', '159036002', '159037006', '159038001', '159039009', '159040006', '159041005', '159141008', '159972006', '160008000', '224529009', '224530004', '224531000', '224532007', '224533002', '224534008', '224535009', '224536005', '224537001', '224538006', '224540001', '224541002', '224542009', '224543004', '224544005', '224545006', '224546007', '224547003', '224548008', '224549000', '224550000', '224551001', '224552008', '224553003', '224554009', '224555005', '224556006', '224557002', '224558007', '224559004', '224560009', '224562001', '224563006', '224564000', '224565004', '224566003', '224567007', '224569005', '224570006', '224571005', '224572003', '224573008', '224574002', '224575001', '224576000', '224577009', '224578004', '224579007', '224580005', '224581009', '224583007', '224584001', '224585000', '224586004', '224587008', '224588003', '224589006', '224590002', '224591003', '224592005', '224593000', '224594006', '224595007', '224596008', '224597004', '224598009', '224599001', '224600003', '224601004', '224602006', '224603001', '224604007', '224605008', '224606009', '224607000', '224608005', '224609002', '224610007', '224614003', '224615002', '224620002', '224621003', '224622005', '224623000', '224624006', '224625007', '224626008', '224936003', '225726006', '225727002', '265937000', '265939002', '283875005', '302211009', '303124005', '303129000', '303133007', '303134001', '304291006', '304292004', '307988006', '308002005', '309294001', '309295000', '309296004', '309322005', '309323000', '309324006', '309326008', '309327004', '309328009', '309329001', '309330006', '309331005', '309332003', '309333008', '309334002', '309335001', '309336000', '309337009', '309338004', '309339007', '309340009', '309341008', '309342001', '309343006', '309345004', '309346003', '309347007', '309348002', '309349005', '309350005', '309351009', '309352002', '309353007', '309354001', '309355000', '309356004', '309357008', '309358003', '309359006', '309360001', '309361002', '309362009', '309363004', '309364005', '309365006', '309366007', '309367003', '309368008', '309369000', '309371000', '309372007', '309373002', '309374008', '309375009', '309376005', '309377001', '309378006', '309379003', '309380000', '309381001', '309382008', '309383003', '309384009', '309385005', '309386006', '309388007', '309389004', '309390008', '309391007', '309392000', '309393005', '309394004', '309395003', '309396002', '309397006', '309398001', '309399009', '309400002', '309401003', '309402005', '309403000', '309404006', '309409001', '309410006', '309411005', '309412003', '309413008', '309414002', '309415001', '309416000', '309417009', '309418004', '309419007', '309420001', '309421002', '309422009', '309423004', '309427003', '309428008', '309429000', '309434001', '309435000', '309436004', '309437008', '309439006', '309440008', '309441007', '309442000', '309443005', '309444004', '309445003', '309446002', '309450009', '309452001', '309453006', '309454000', '309455004', '309459005', '309460000', '310170009', '310171008', '310172001', '310173006', '310174000', '310175004', '310176003', '310177007', '310178002', '310179005', '310180008', '310181007', '310182000', '310183005', '310184004', '310185003', '310186002', '310187006', '310188001', '310189009', '310190000', '310191001', '310192008', '310193003', '310194009', '310512001', '311441001', '312485001', '372102007', '387619007', '394572006', '394618009', '397897005', '397903001', '397908005', '398130009', '398238009', '404940000', '405277009', '405278004', '405279007', '405623001', '405684005', '405685006', '408798009', '408799001', '409974004', '409975003', '413854007', '415075003', '415506007', '416160000', '420409002', '420678001', '421841007', '422140007', '422234006', '432100008', '442867008', '443090005', '444912007', '445313000', '445451001', '446050000', '446701002', '449161006', '471302004', '720503005', '721936008', '721937004', '721938009', '721939001', '721940004', '721941000', '721942007', '721943002', '734293001', '734294007', '763292005', '768730001', '768731002', '768732009', '768819009', '768825008', '768826009', '768827000', '768828005', '768829002', '768832004', '768833009', '768834003', '768836001', '768837005', '768839008', '789543004', '840583002', '840584008', '3981000175106', '25941000087102', '26031000087100', '26071000087103', '26091000087104', '450044741000087104']}, 'path'=>'Task.performerType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/performer-role'}},
        'owner' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/HealthcareService', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'Task.owner', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'Task.location', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'reasonCode' => {'path'=>'Task.reasonCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
        'reasonReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Task.reasonReference', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'insurance' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Coverage', 'http://hl7.org/fhir/StructureDefinition/ClaimResponse'], 'path'=>'Task.insurance', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'path'=>'Task.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
        'relevantHistory' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Provenance'], 'path'=>'Task.relevantHistory', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'restriction' => {'path'=>'Task.restriction', 'type'=>'Task::Restriction', 'min'=>0, 'max'=>1},
        'input' => {'path'=>'Task.input', 'type'=>'Task::Input', 'min'=>0, 'max'=>Float::INFINITY},
        'output' => {'path'=>'Task.output', 'type'=>'Task::Output', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Restriction < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Restriction.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Restriction.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Restriction.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'repetitions' => {'path'=>'Restriction.repetitions', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
          'period' => {'path'=>'Restriction.period', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'recipient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Restriction.recipient', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :repetitions       # 0-1 positiveInt
        attr_accessor :period            # 0-1 Period
        attr_accessor :recipient         # 0-* [ Reference(Patient|Practitioner|PractitionerRole|RelatedPerson|Group|Organization) ]
      end

      class Input < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'value' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'Contributor', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Dosage', 'Meta']
        }
        METADATA = {
          'id' => {'path'=>'Input.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Input.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Input.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'path'=>'Input.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example'}},
          'valueBase64Binary' => {'path'=>'Input.value[x]', 'type'=>'base64Binary', 'min'=>1, 'max'=>1},
          'valueBoolean' => {'path'=>'Input.value[x]', 'type'=>'boolean', 'min'=>1, 'max'=>1},
          'valueCanonical' => {'path'=>'Input.value[x]', 'type'=>'canonical', 'min'=>1, 'max'=>1},
          'valueCode' => {'path'=>'Input.value[x]', 'type'=>'code', 'min'=>1, 'max'=>1},
          'valueDate' => {'path'=>'Input.value[x]', 'type'=>'date', 'min'=>1, 'max'=>1},
          'valueDateTime' => {'path'=>'Input.value[x]', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
          'valueDecimal' => {'path'=>'Input.value[x]', 'type'=>'decimal', 'min'=>1, 'max'=>1},
          'valueId' => {'path'=>'Input.value[x]', 'type'=>'id', 'min'=>1, 'max'=>1},
          'valueInstant' => {'path'=>'Input.value[x]', 'type'=>'instant', 'min'=>1, 'max'=>1},
          'valueInteger' => {'path'=>'Input.value[x]', 'type'=>'integer', 'min'=>1, 'max'=>1},
          'valueMarkdown' => {'path'=>'Input.value[x]', 'type'=>'markdown', 'min'=>1, 'max'=>1},
          'valueOid' => {'path'=>'Input.value[x]', 'type'=>'oid', 'min'=>1, 'max'=>1},
          'valuePositiveInt' => {'path'=>'Input.value[x]', 'type'=>'positiveInt', 'min'=>1, 'max'=>1},
          'valueString' => {'path'=>'Input.value[x]', 'type'=>'string', 'min'=>1, 'max'=>1},
          'valueTime' => {'path'=>'Input.value[x]', 'type'=>'time', 'min'=>1, 'max'=>1},
          'valueUnsignedInt' => {'path'=>'Input.value[x]', 'type'=>'unsignedInt', 'min'=>1, 'max'=>1},
          'valueUri' => {'path'=>'Input.value[x]', 'type'=>'uri', 'min'=>1, 'max'=>1},
          'valueUrl' => {'path'=>'Input.value[x]', 'type'=>'url', 'min'=>1, 'max'=>1},
          'valueUuid' => {'path'=>'Input.value[x]', 'type'=>'uuid', 'min'=>1, 'max'=>1},
          'valueAddress' => {'path'=>'Input.value[x]', 'type'=>'Address', 'min'=>1, 'max'=>1},
          'valueAge' => {'path'=>'Input.value[x]', 'type'=>'Age', 'min'=>1, 'max'=>1},
          'valueAnnotation' => {'path'=>'Input.value[x]', 'type'=>'Annotation', 'min'=>1, 'max'=>1},
          'valueAttachment' => {'path'=>'Input.value[x]', 'type'=>'Attachment', 'min'=>1, 'max'=>1},
          'valueCodeableConcept' => {'path'=>'Input.value[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'valueCoding' => {'path'=>'Input.value[x]', 'type'=>'Coding', 'min'=>1, 'max'=>1},
          'valueContactPoint' => {'path'=>'Input.value[x]', 'type'=>'ContactPoint', 'min'=>1, 'max'=>1},
          'valueCount' => {'path'=>'Input.value[x]', 'type'=>'Count', 'min'=>1, 'max'=>1},
          'valueDistance' => {'path'=>'Input.value[x]', 'type'=>'Distance', 'min'=>1, 'max'=>1},
          'valueDuration' => {'path'=>'Input.value[x]', 'type'=>'Duration', 'min'=>1, 'max'=>1},
          'valueHumanName' => {'path'=>'Input.value[x]', 'type'=>'HumanName', 'min'=>1, 'max'=>1},
          'valueIdentifier' => {'path'=>'Input.value[x]', 'type'=>'Identifier', 'min'=>1, 'max'=>1},
          'valueMoney' => {'path'=>'Input.value[x]', 'type'=>'Money', 'min'=>1, 'max'=>1},
          'valuePeriod' => {'path'=>'Input.value[x]', 'type'=>'Period', 'min'=>1, 'max'=>1},
          'valueQuantity' => {'path'=>'Input.value[x]', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
          'valueRange' => {'path'=>'Input.value[x]', 'type'=>'Range', 'min'=>1, 'max'=>1},
          'valueRatio' => {'path'=>'Input.value[x]', 'type'=>'Ratio', 'min'=>1, 'max'=>1},
          'valueReference' => {'path'=>'Input.value[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'valueSampledData' => {'path'=>'Input.value[x]', 'type'=>'SampledData', 'min'=>1, 'max'=>1},
          'valueSignature' => {'path'=>'Input.value[x]', 'type'=>'Signature', 'min'=>1, 'max'=>1},
          'valueTiming' => {'path'=>'Input.value[x]', 'type'=>'Timing', 'min'=>1, 'max'=>1},
          'valueContactDetail' => {'path'=>'Input.value[x]', 'type'=>'ContactDetail', 'min'=>1, 'max'=>1},
          'valueContributor' => {'path'=>'Input.value[x]', 'type'=>'Contributor', 'min'=>1, 'max'=>1},
          'valueDataRequirement' => {'path'=>'Input.value[x]', 'type'=>'DataRequirement', 'min'=>1, 'max'=>1},
          'valueExpression' => {'path'=>'Input.value[x]', 'type'=>'Expression', 'min'=>1, 'max'=>1},
          'valueParameterDefinition' => {'path'=>'Input.value[x]', 'type'=>'ParameterDefinition', 'min'=>1, 'max'=>1},
          'valueRelatedArtifact' => {'path'=>'Input.value[x]', 'type'=>'RelatedArtifact', 'min'=>1, 'max'=>1},
          'valueTriggerDefinition' => {'path'=>'Input.value[x]', 'type'=>'TriggerDefinition', 'min'=>1, 'max'=>1},
          'valueUsageContext' => {'path'=>'Input.value[x]', 'type'=>'UsageContext', 'min'=>1, 'max'=>1},
          'valueDosage' => {'path'=>'Input.value[x]', 'type'=>'Dosage', 'min'=>1, 'max'=>1},
          'valueMeta' => {'path'=>'Input.value[x]', 'type'=>'Meta', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                       # 0-1 string
        attr_accessor :extension                # 0-* [ Extension ]
        attr_accessor :modifierExtension        # 0-* [ Extension ]
        attr_accessor :type                     # 1-1 CodeableConcept
        attr_accessor :valueBase64Binary        # 1-1 base64Binary
        attr_accessor :valueBoolean             # 1-1 boolean
        attr_accessor :valueCanonical           # 1-1 canonical
        attr_accessor :valueCode                # 1-1 code
        attr_accessor :valueDate                # 1-1 date
        attr_accessor :valueDateTime            # 1-1 dateTime
        attr_accessor :valueDecimal             # 1-1 decimal
        attr_accessor :valueId                  # 1-1 id
        attr_accessor :valueInstant             # 1-1 instant
        attr_accessor :valueInteger             # 1-1 integer
        attr_accessor :valueMarkdown            # 1-1 markdown
        attr_accessor :valueOid                 # 1-1 oid
        attr_accessor :valuePositiveInt         # 1-1 positiveInt
        attr_accessor :valueString              # 1-1 string
        attr_accessor :valueTime                # 1-1 time
        attr_accessor :valueUnsignedInt         # 1-1 unsignedInt
        attr_accessor :valueUri                 # 1-1 uri
        attr_accessor :valueUrl                 # 1-1 url
        attr_accessor :valueUuid                # 1-1 uuid
        attr_accessor :valueAddress             # 1-1 Address
        attr_accessor :valueAge                 # 1-1 Age
        attr_accessor :valueAnnotation          # 1-1 Annotation
        attr_accessor :valueAttachment          # 1-1 Attachment
        attr_accessor :valueCodeableConcept     # 1-1 CodeableConcept
        attr_accessor :valueCoding              # 1-1 Coding
        attr_accessor :valueContactPoint        # 1-1 ContactPoint
        attr_accessor :valueCount               # 1-1 Count
        attr_accessor :valueDistance            # 1-1 Distance
        attr_accessor :valueDuration            # 1-1 Duration
        attr_accessor :valueHumanName           # 1-1 HumanName
        attr_accessor :valueIdentifier          # 1-1 Identifier
        attr_accessor :valueMoney               # 1-1 Money
        attr_accessor :valuePeriod              # 1-1 Period
        attr_accessor :valueQuantity            # 1-1 Quantity
        attr_accessor :valueRange               # 1-1 Range
        attr_accessor :valueRatio               # 1-1 Ratio
        attr_accessor :valueReference           # 1-1 Reference()
        attr_accessor :valueSampledData         # 1-1 SampledData
        attr_accessor :valueSignature           # 1-1 Signature
        attr_accessor :valueTiming              # 1-1 Timing
        attr_accessor :valueContactDetail       # 1-1 ContactDetail
        attr_accessor :valueContributor         # 1-1 Contributor
        attr_accessor :valueDataRequirement     # 1-1 DataRequirement
        attr_accessor :valueExpression          # 1-1 Expression
        attr_accessor :valueParameterDefinition # 1-1 ParameterDefinition
        attr_accessor :valueRelatedArtifact     # 1-1 RelatedArtifact
        attr_accessor :valueTriggerDefinition   # 1-1 TriggerDefinition
        attr_accessor :valueUsageContext        # 1-1 UsageContext
        attr_accessor :valueDosage              # 1-1 Dosage
        attr_accessor :valueMeta                # 1-1 Meta
      end

      class Output < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'value' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'Contributor', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Dosage', 'Meta']
        }
        METADATA = {
          'id' => {'path'=>'Output.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Output.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Output.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'path'=>'Output.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example'}},
          'valueBase64Binary' => {'path'=>'Output.value[x]', 'type'=>'base64Binary', 'min'=>1, 'max'=>1},
          'valueBoolean' => {'path'=>'Output.value[x]', 'type'=>'boolean', 'min'=>1, 'max'=>1},
          'valueCanonical' => {'path'=>'Output.value[x]', 'type'=>'canonical', 'min'=>1, 'max'=>1},
          'valueCode' => {'path'=>'Output.value[x]', 'type'=>'code', 'min'=>1, 'max'=>1},
          'valueDate' => {'path'=>'Output.value[x]', 'type'=>'date', 'min'=>1, 'max'=>1},
          'valueDateTime' => {'path'=>'Output.value[x]', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
          'valueDecimal' => {'path'=>'Output.value[x]', 'type'=>'decimal', 'min'=>1, 'max'=>1},
          'valueId' => {'path'=>'Output.value[x]', 'type'=>'id', 'min'=>1, 'max'=>1},
          'valueInstant' => {'path'=>'Output.value[x]', 'type'=>'instant', 'min'=>1, 'max'=>1},
          'valueInteger' => {'path'=>'Output.value[x]', 'type'=>'integer', 'min'=>1, 'max'=>1},
          'valueMarkdown' => {'path'=>'Output.value[x]', 'type'=>'markdown', 'min'=>1, 'max'=>1},
          'valueOid' => {'path'=>'Output.value[x]', 'type'=>'oid', 'min'=>1, 'max'=>1},
          'valuePositiveInt' => {'path'=>'Output.value[x]', 'type'=>'positiveInt', 'min'=>1, 'max'=>1},
          'valueString' => {'path'=>'Output.value[x]', 'type'=>'string', 'min'=>1, 'max'=>1},
          'valueTime' => {'path'=>'Output.value[x]', 'type'=>'time', 'min'=>1, 'max'=>1},
          'valueUnsignedInt' => {'path'=>'Output.value[x]', 'type'=>'unsignedInt', 'min'=>1, 'max'=>1},
          'valueUri' => {'path'=>'Output.value[x]', 'type'=>'uri', 'min'=>1, 'max'=>1},
          'valueUrl' => {'path'=>'Output.value[x]', 'type'=>'url', 'min'=>1, 'max'=>1},
          'valueUuid' => {'path'=>'Output.value[x]', 'type'=>'uuid', 'min'=>1, 'max'=>1},
          'valueAddress' => {'path'=>'Output.value[x]', 'type'=>'Address', 'min'=>1, 'max'=>1},
          'valueAge' => {'path'=>'Output.value[x]', 'type'=>'Age', 'min'=>1, 'max'=>1},
          'valueAnnotation' => {'path'=>'Output.value[x]', 'type'=>'Annotation', 'min'=>1, 'max'=>1},
          'valueAttachment' => {'path'=>'Output.value[x]', 'type'=>'Attachment', 'min'=>1, 'max'=>1},
          'valueCodeableConcept' => {'path'=>'Output.value[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'valueCoding' => {'path'=>'Output.value[x]', 'type'=>'Coding', 'min'=>1, 'max'=>1},
          'valueContactPoint' => {'path'=>'Output.value[x]', 'type'=>'ContactPoint', 'min'=>1, 'max'=>1},
          'valueCount' => {'path'=>'Output.value[x]', 'type'=>'Count', 'min'=>1, 'max'=>1},
          'valueDistance' => {'path'=>'Output.value[x]', 'type'=>'Distance', 'min'=>1, 'max'=>1},
          'valueDuration' => {'path'=>'Output.value[x]', 'type'=>'Duration', 'min'=>1, 'max'=>1},
          'valueHumanName' => {'path'=>'Output.value[x]', 'type'=>'HumanName', 'min'=>1, 'max'=>1},
          'valueIdentifier' => {'path'=>'Output.value[x]', 'type'=>'Identifier', 'min'=>1, 'max'=>1},
          'valueMoney' => {'path'=>'Output.value[x]', 'type'=>'Money', 'min'=>1, 'max'=>1},
          'valuePeriod' => {'path'=>'Output.value[x]', 'type'=>'Period', 'min'=>1, 'max'=>1},
          'valueQuantity' => {'path'=>'Output.value[x]', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
          'valueRange' => {'path'=>'Output.value[x]', 'type'=>'Range', 'min'=>1, 'max'=>1},
          'valueRatio' => {'path'=>'Output.value[x]', 'type'=>'Ratio', 'min'=>1, 'max'=>1},
          'valueReference' => {'path'=>'Output.value[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'valueSampledData' => {'path'=>'Output.value[x]', 'type'=>'SampledData', 'min'=>1, 'max'=>1},
          'valueSignature' => {'path'=>'Output.value[x]', 'type'=>'Signature', 'min'=>1, 'max'=>1},
          'valueTiming' => {'path'=>'Output.value[x]', 'type'=>'Timing', 'min'=>1, 'max'=>1},
          'valueContactDetail' => {'path'=>'Output.value[x]', 'type'=>'ContactDetail', 'min'=>1, 'max'=>1},
          'valueContributor' => {'path'=>'Output.value[x]', 'type'=>'Contributor', 'min'=>1, 'max'=>1},
          'valueDataRequirement' => {'path'=>'Output.value[x]', 'type'=>'DataRequirement', 'min'=>1, 'max'=>1},
          'valueExpression' => {'path'=>'Output.value[x]', 'type'=>'Expression', 'min'=>1, 'max'=>1},
          'valueParameterDefinition' => {'path'=>'Output.value[x]', 'type'=>'ParameterDefinition', 'min'=>1, 'max'=>1},
          'valueRelatedArtifact' => {'path'=>'Output.value[x]', 'type'=>'RelatedArtifact', 'min'=>1, 'max'=>1},
          'valueTriggerDefinition' => {'path'=>'Output.value[x]', 'type'=>'TriggerDefinition', 'min'=>1, 'max'=>1},
          'valueUsageContext' => {'path'=>'Output.value[x]', 'type'=>'UsageContext', 'min'=>1, 'max'=>1},
          'valueDosage' => {'path'=>'Output.value[x]', 'type'=>'Dosage', 'min'=>1, 'max'=>1},
          'valueMeta' => {'path'=>'Output.value[x]', 'type'=>'Meta', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                       # 0-1 string
        attr_accessor :extension                # 0-* [ Extension ]
        attr_accessor :modifierExtension        # 0-* [ Extension ]
        attr_accessor :type                     # 1-1 CodeableConcept
        attr_accessor :valueBase64Binary        # 1-1 base64Binary
        attr_accessor :valueBoolean             # 1-1 boolean
        attr_accessor :valueCanonical           # 1-1 canonical
        attr_accessor :valueCode                # 1-1 code
        attr_accessor :valueDate                # 1-1 date
        attr_accessor :valueDateTime            # 1-1 dateTime
        attr_accessor :valueDecimal             # 1-1 decimal
        attr_accessor :valueId                  # 1-1 id
        attr_accessor :valueInstant             # 1-1 instant
        attr_accessor :valueInteger             # 1-1 integer
        attr_accessor :valueMarkdown            # 1-1 markdown
        attr_accessor :valueOid                 # 1-1 oid
        attr_accessor :valuePositiveInt         # 1-1 positiveInt
        attr_accessor :valueString              # 1-1 string
        attr_accessor :valueTime                # 1-1 time
        attr_accessor :valueUnsignedInt         # 1-1 unsignedInt
        attr_accessor :valueUri                 # 1-1 uri
        attr_accessor :valueUrl                 # 1-1 url
        attr_accessor :valueUuid                # 1-1 uuid
        attr_accessor :valueAddress             # 1-1 Address
        attr_accessor :valueAge                 # 1-1 Age
        attr_accessor :valueAnnotation          # 1-1 Annotation
        attr_accessor :valueAttachment          # 1-1 Attachment
        attr_accessor :valueCodeableConcept     # 1-1 CodeableConcept
        attr_accessor :valueCoding              # 1-1 Coding
        attr_accessor :valueContactPoint        # 1-1 ContactPoint
        attr_accessor :valueCount               # 1-1 Count
        attr_accessor :valueDistance            # 1-1 Distance
        attr_accessor :valueDuration            # 1-1 Duration
        attr_accessor :valueHumanName           # 1-1 HumanName
        attr_accessor :valueIdentifier          # 1-1 Identifier
        attr_accessor :valueMoney               # 1-1 Money
        attr_accessor :valuePeriod              # 1-1 Period
        attr_accessor :valueQuantity            # 1-1 Quantity
        attr_accessor :valueRange               # 1-1 Range
        attr_accessor :valueRatio               # 1-1 Ratio
        attr_accessor :valueReference           # 1-1 Reference()
        attr_accessor :valueSampledData         # 1-1 SampledData
        attr_accessor :valueSignature           # 1-1 Signature
        attr_accessor :valueTiming              # 1-1 Timing
        attr_accessor :valueContactDetail       # 1-1 ContactDetail
        attr_accessor :valueContributor         # 1-1 Contributor
        attr_accessor :valueDataRequirement     # 1-1 DataRequirement
        attr_accessor :valueExpression          # 1-1 Expression
        attr_accessor :valueParameterDefinition # 1-1 ParameterDefinition
        attr_accessor :valueRelatedArtifact     # 1-1 RelatedArtifact
        attr_accessor :valueTriggerDefinition   # 1-1 TriggerDefinition
        attr_accessor :valueUsageContext        # 1-1 UsageContext
        attr_accessor :valueDosage              # 1-1 Dosage
        attr_accessor :valueMeta                # 1-1 Meta
      end

      attr_accessor :id                    # 0-1 id
      attr_accessor :meta                  # 0-1 Meta
      attr_accessor :implicitRules         # 0-1 uri
      attr_accessor :language              # 0-1 code
      attr_accessor :text                  # 0-1 Narrative
      attr_accessor :contained             # 0-* [ Resource ]
      attr_accessor :extension             # 0-* [ Extension ]
      attr_accessor :modifierExtension     # 0-* [ Extension ]
      attr_accessor :identifier            # 0-* [ Identifier ]
      attr_accessor :instantiatesCanonical # 0-1 canonical
      attr_accessor :instantiatesUri       # 0-1 uri
      attr_accessor :basedOn               # 0-* [ Reference(Resource) ]
      attr_accessor :groupIdentifier       # 0-1 Identifier
      attr_accessor :partOf                # 0-* [ Reference(Task) ]
      attr_accessor :status                # 1-1 code
      attr_accessor :statusReason          # 0-1 CodeableConcept
      attr_accessor :businessStatus        # 0-1 CodeableConcept
      attr_accessor :intent                # 1-1 code
      attr_accessor :priority              # 0-1 code
      attr_accessor :code                  # 0-1 CodeableConcept
      attr_accessor :description           # 0-1 string
      attr_accessor :focus                 # 0-1 Reference(Resource)
      attr_accessor :for                   # 0-1 Reference(Resource)
      attr_accessor :encounter             # 0-1 Reference(Encounter)
      attr_accessor :executionPeriod       # 0-1 Period
      attr_accessor :authoredOn            # 0-1 dateTime
      attr_accessor :lastModified          # 0-1 dateTime
      attr_accessor :requester             # 0-1 Reference(Device|Organization|Patient|Practitioner|PractitionerRole|RelatedPerson)
      attr_accessor :performerType         # 0-* [ CodeableConcept ]
      attr_accessor :owner                 # 0-1 Reference(Practitioner|PractitionerRole|Organization|CareTeam|HealthcareService|Patient|Device|RelatedPerson)
      attr_accessor :location              # 0-1 Reference(Location)
      attr_accessor :reasonCode            # 0-1 CodeableConcept
      attr_accessor :reasonReference       # 0-1 Reference(Resource)
      attr_accessor :insurance             # 0-* [ Reference(Coverage|ClaimResponse) ]
      attr_accessor :note                  # 0-* [ Annotation ]
      attr_accessor :relevantHistory       # 0-* [ Reference(Provenance) ]
      attr_accessor :restriction           # 0-1 Task::Restriction
      attr_accessor :input                 # 0-* [ Task::Input ]
      attr_accessor :output                # 0-* [ Task::Output ]

      def resourceType
        'Task'
      end
    end
  end
end