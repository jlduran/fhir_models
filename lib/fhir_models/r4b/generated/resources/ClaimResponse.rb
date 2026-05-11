module FHIR
  module R4B
    class ClaimResponse < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['created', 'disposition', 'identifier', 'insurer', 'outcome', 'patient', 'payment-date', 'request', 'requestor', 'status', 'use']
      METADATA = {
        'id' => {'path'=>'ClaimResponse.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'ClaimResponse.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'ClaimResponse.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'ClaimResponse.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'ClaimResponse.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'ClaimResponse.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'ClaimResponse.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'ClaimResponse.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'ClaimResponse.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/fm-status'=>['active', 'cancelled', 'draft', 'entered-in-error']}, 'path'=>'ClaimResponse.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/fm-status'}},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/claim-type'=>['institutional', 'oral', 'pharmacy', 'professional', 'vision']}, 'path'=>'ClaimResponse.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-type'}},
        'subType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-claimsubtype'=>['ortho', 'emergency']}, 'path'=>'ClaimResponse.subType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-subtype'}},
        'use' => {'valid_codes'=>{'http://hl7.org/fhir/claim-use'=>['claim', 'preauthorization', 'predetermination']}, 'path'=>'ClaimResponse.use', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-use'}},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'path'=>'ClaimResponse.patient', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'created' => {'path'=>'ClaimResponse.created', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
        'insurer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'ClaimResponse.insurer', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'requestor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'ClaimResponse.requestor', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'request' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Claim'], 'path'=>'ClaimResponse.request', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'outcome' => {'valid_codes'=>{'http://hl7.org/fhir/remittance-outcome'=>['queued', 'complete', 'error', 'partial']}, 'path'=>'ClaimResponse.outcome', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/remittance-outcome'}},
        'disposition' => {'path'=>'ClaimResponse.disposition', 'type'=>'string', 'min'=>0, 'max'=>1},
        'preAuthRef' => {'path'=>'ClaimResponse.preAuthRef', 'type'=>'string', 'min'=>0, 'max'=>1},
        'preAuthPeriod' => {'path'=>'ClaimResponse.preAuthPeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'payeeType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/payeetype'=>['subscriber', 'provider', 'other']}, 'path'=>'ClaimResponse.payeeType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/payeetype'}},
        'item' => {'path'=>'ClaimResponse.item', 'type'=>'ClaimResponse::Item', 'min'=>0, 'max'=>Float::INFINITY},
        'addItem' => {'path'=>'ClaimResponse.addItem', 'type'=>'ClaimResponse::AddItem', 'min'=>0, 'max'=>Float::INFINITY},
        'adjudication' => {'path'=>'ClaimResponse.adjudication', 'type'=>'ClaimResponse::Item::Adjudication', 'min'=>0, 'max'=>Float::INFINITY},
        'total' => {'path'=>'ClaimResponse.total', 'type'=>'ClaimResponse::Total', 'min'=>0, 'max'=>Float::INFINITY},
        'payment' => {'path'=>'ClaimResponse.payment', 'type'=>'ClaimResponse::Payment', 'min'=>0, 'max'=>1},
        'fundsReserve' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/fundsreserve'=>['patient', 'provider', 'none']}, 'path'=>'ClaimResponse.fundsReserve', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/fundsreserve'}},
        'formCode' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/forms-codes'=>['1', '2']}, 'path'=>'ClaimResponse.formCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/forms'}},
        'form' => {'path'=>'ClaimResponse.form', 'type'=>'Attachment', 'min'=>0, 'max'=>1},
        'processNote' => {'path'=>'ClaimResponse.processNote', 'type'=>'ClaimResponse::ProcessNote', 'min'=>0, 'max'=>Float::INFINITY},
        'communicationRequest' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CommunicationRequest'], 'path'=>'ClaimResponse.communicationRequest', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'insurance' => {'path'=>'ClaimResponse.insurance', 'type'=>'ClaimResponse::Insurance', 'min'=>0, 'max'=>Float::INFINITY},
        'error' => {'path'=>'ClaimResponse.error', 'type'=>'ClaimResponse::Error', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Item < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Item.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Item.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Item.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'itemSequence' => {'path'=>'Item.itemSequence', 'type'=>'positiveInt', 'min'=>1, 'max'=>1},
          'noteNumber' => {'path'=>'Item.noteNumber', 'type'=>'positiveInt', 'min'=>0, 'max'=>Float::INFINITY},
          'adjudication' => {'path'=>'Item.adjudication', 'type'=>'ClaimResponse::Item::Adjudication', 'min'=>1, 'max'=>Float::INFINITY},
          'detail' => {'path'=>'Item.detail', 'type'=>'ClaimResponse::Item::Detail', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Adjudication < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Adjudication.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Adjudication.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Adjudication.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/adjudication'=>['submitted', 'copay', 'eligible', 'deductible', 'unallocdeduct', 'eligpercent', 'tax', 'benefit']}, 'path'=>'Adjudication.category', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/adjudication'}},
            'reason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/adjudication-reason'=>['ar001', 'ar002']}, 'path'=>'Adjudication.reason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/adjudication-reason'}},
            'amount' => {'path'=>'Adjudication.amount', 'type'=>'Money', 'min'=>0, 'max'=>1},
            'value' => {'path'=>'Adjudication.value', 'type'=>'decimal', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :category          # 1-1 CodeableConcept
          attr_accessor :reason            # 0-1 CodeableConcept
          attr_accessor :amount            # 0-1 Money
          attr_accessor :value             # 0-1 decimal
        end

        class Detail < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Detail.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Detail.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Detail.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'detailSequence' => {'path'=>'Detail.detailSequence', 'type'=>'positiveInt', 'min'=>1, 'max'=>1},
            'noteNumber' => {'path'=>'Detail.noteNumber', 'type'=>'positiveInt', 'min'=>0, 'max'=>Float::INFINITY},
            'adjudication' => {'path'=>'Detail.adjudication', 'type'=>'ClaimResponse::Item::Adjudication', 'min'=>1, 'max'=>Float::INFINITY},
            'subDetail' => {'path'=>'Detail.subDetail', 'type'=>'ClaimResponse::Item::Detail::SubDetail', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class SubDetail < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'SubDetail.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'SubDetail.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'SubDetail.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'subDetailSequence' => {'path'=>'SubDetail.subDetailSequence', 'type'=>'positiveInt', 'min'=>1, 'max'=>1},
              'noteNumber' => {'path'=>'SubDetail.noteNumber', 'type'=>'positiveInt', 'min'=>0, 'max'=>Float::INFINITY},
              'adjudication' => {'path'=>'SubDetail.adjudication', 'type'=>'ClaimResponse::Item::Adjudication', 'min'=>0, 'max'=>Float::INFINITY}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :subDetailSequence # 1-1 positiveInt
            attr_accessor :noteNumber        # 0-* [ positiveInt ]
            attr_accessor :adjudication      # 0-* [ ClaimResponse::Item::Adjudication ]
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :detailSequence    # 1-1 positiveInt
          attr_accessor :noteNumber        # 0-* [ positiveInt ]
          attr_accessor :adjudication      # 1-* [ ClaimResponse::Item::Adjudication ]
          attr_accessor :subDetail         # 0-* [ ClaimResponse::Item::Detail::SubDetail ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :itemSequence      # 1-1 positiveInt
        attr_accessor :noteNumber        # 0-* [ positiveInt ]
        attr_accessor :adjudication      # 1-* [ ClaimResponse::Item::Adjudication ]
        attr_accessor :detail            # 0-* [ ClaimResponse::Item::Detail ]
      end

      class AddItem < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'serviced' => ['date', 'Period'],
          'location' => ['CodeableConcept', 'Address', 'Reference']
        }
        METADATA = {
          'id' => {'path'=>'AddItem.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'AddItem.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'AddItem.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'itemSequence' => {'path'=>'AddItem.itemSequence', 'type'=>'positiveInt', 'min'=>0, 'max'=>Float::INFINITY},
          'detailSequence' => {'path'=>'AddItem.detailSequence', 'type'=>'positiveInt', 'min'=>0, 'max'=>Float::INFINITY},
          'subdetailSequence' => {'path'=>'AddItem.subdetailSequence', 'type'=>'positiveInt', 'min'=>0, 'max'=>Float::INFINITY},
          'provider' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'AddItem.provider', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
          'productOrService' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-USCLS'=>['1101', '1102', '1103', '1201', '1205', '2101', '2102', '2141', '2601', '11101', '11102', '11103', '11104', '21211', '21212', '27211', '67211', '99111', '99333', '99555']}, 'path'=>'AddItem.productOrService', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-uscls'}},
          'modifier' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/modifiers'=>['a', 'b', 'c', 'e', 'rooh', 'x']}, 'path'=>'AddItem.modifier', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-modifiers'}},
          'programCode' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-programcode'=>['as', 'hd', 'auscr', 'none']}, 'path'=>'AddItem.programCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-program-code'}},
          'servicedDate' => {'path'=>'AddItem.serviced[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
          'servicedPeriod' => {'path'=>'AddItem.serviced[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'locationCodeableConcept' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-serviceplace'=>['01', '03', '04', '05', '06', '07', '08', '09', '11', '12', '13', '14', '15', '19', '20', '21', '41']}, 'path'=>'AddItem.location[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-place'}},
          'locationAddress' => {'path'=>'AddItem.location[x]', 'type'=>'Address', 'min'=>0, 'max'=>1},
          'locationReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'AddItem.location[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'quantity' => {'path'=>'AddItem.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'unitPrice' => {'path'=>'AddItem.unitPrice', 'type'=>'Money', 'min'=>0, 'max'=>1},
          'factor' => {'path'=>'AddItem.factor', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'net' => {'path'=>'AddItem.net', 'type'=>'Money', 'min'=>0, 'max'=>1},
          'bodySite' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-tooth'=>['0', '1', '2', '3', '4', '5', '6', '7', '8', '11', '12', '13', '14', '15', '16', '17', '18', '21', '22', '23', '24', '25', '26', '27', '28', '31', '32', '33', '34', '35', '36', '37', '38', '41', '42', '43', '44', '45', '46', '47', '48']}, 'path'=>'AddItem.bodySite', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/tooth'}},
          'subSite' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/FDI-surface'=>['M', 'O', 'I', 'D', 'B', 'V', 'L', 'MO', 'DO', 'DI', 'MOD']}, 'path'=>'AddItem.subSite', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/surface'}},
          'noteNumber' => {'path'=>'AddItem.noteNumber', 'type'=>'positiveInt', 'min'=>0, 'max'=>Float::INFINITY},
          'adjudication' => {'path'=>'AddItem.adjudication', 'type'=>'ClaimResponse::Item::Adjudication', 'min'=>1, 'max'=>Float::INFINITY},
          'detail' => {'path'=>'AddItem.detail', 'type'=>'ClaimResponse::AddItem::Detail', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Detail < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Detail.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Detail.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Detail.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'productOrService' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-USCLS'=>['1101', '1102', '1103', '1201', '1205', '2101', '2102', '2141', '2601', '11101', '11102', '11103', '11104', '21211', '21212', '27211', '67211', '99111', '99333', '99555']}, 'path'=>'Detail.productOrService', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-uscls'}},
            'modifier' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/modifiers'=>['a', 'b', 'c', 'e', 'rooh', 'x']}, 'path'=>'Detail.modifier', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-modifiers'}},
            'quantity' => {'path'=>'Detail.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
            'unitPrice' => {'path'=>'Detail.unitPrice', 'type'=>'Money', 'min'=>0, 'max'=>1},
            'factor' => {'path'=>'Detail.factor', 'type'=>'decimal', 'min'=>0, 'max'=>1},
            'net' => {'path'=>'Detail.net', 'type'=>'Money', 'min'=>0, 'max'=>1},
            'noteNumber' => {'path'=>'Detail.noteNumber', 'type'=>'positiveInt', 'min'=>0, 'max'=>Float::INFINITY},
            'adjudication' => {'path'=>'Detail.adjudication', 'type'=>'ClaimResponse::Item::Adjudication', 'min'=>1, 'max'=>Float::INFINITY},
            'subDetail' => {'path'=>'Detail.subDetail', 'type'=>'ClaimResponse::AddItem::Detail::SubDetail', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class SubDetail < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'SubDetail.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'SubDetail.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'SubDetail.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'productOrService' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-USCLS'=>['1101', '1102', '1103', '1201', '1205', '2101', '2102', '2141', '2601', '11101', '11102', '11103', '11104', '21211', '21212', '27211', '67211', '99111', '99333', '99555']}, 'path'=>'SubDetail.productOrService', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-uscls'}},
              'modifier' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/modifiers'=>['a', 'b', 'c', 'e', 'rooh', 'x']}, 'path'=>'SubDetail.modifier', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/claim-modifiers'}},
              'quantity' => {'path'=>'SubDetail.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
              'unitPrice' => {'path'=>'SubDetail.unitPrice', 'type'=>'Money', 'min'=>0, 'max'=>1},
              'factor' => {'path'=>'SubDetail.factor', 'type'=>'decimal', 'min'=>0, 'max'=>1},
              'net' => {'path'=>'SubDetail.net', 'type'=>'Money', 'min'=>0, 'max'=>1},
              'noteNumber' => {'path'=>'SubDetail.noteNumber', 'type'=>'positiveInt', 'min'=>0, 'max'=>Float::INFINITY},
              'adjudication' => {'path'=>'SubDetail.adjudication', 'type'=>'ClaimResponse::Item::Adjudication', 'min'=>1, 'max'=>Float::INFINITY}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :productOrService  # 1-1 CodeableConcept
            attr_accessor :modifier          # 0-* [ CodeableConcept ]
            attr_accessor :quantity          # 0-1 Quantity
            attr_accessor :unitPrice         # 0-1 Money
            attr_accessor :factor            # 0-1 decimal
            attr_accessor :net               # 0-1 Money
            attr_accessor :noteNumber        # 0-* [ positiveInt ]
            attr_accessor :adjudication      # 1-* [ ClaimResponse::Item::Adjudication ]
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :productOrService  # 1-1 CodeableConcept
          attr_accessor :modifier          # 0-* [ CodeableConcept ]
          attr_accessor :quantity          # 0-1 Quantity
          attr_accessor :unitPrice         # 0-1 Money
          attr_accessor :factor            # 0-1 decimal
          attr_accessor :net               # 0-1 Money
          attr_accessor :noteNumber        # 0-* [ positiveInt ]
          attr_accessor :adjudication      # 1-* [ ClaimResponse::Item::Adjudication ]
          attr_accessor :subDetail         # 0-* [ ClaimResponse::AddItem::Detail::SubDetail ]
        end

        attr_accessor :id                      # 0-1 string
        attr_accessor :extension               # 0-* [ Extension ]
        attr_accessor :modifierExtension       # 0-* [ Extension ]
        attr_accessor :itemSequence            # 0-* [ positiveInt ]
        attr_accessor :detailSequence          # 0-* [ positiveInt ]
        attr_accessor :subdetailSequence       # 0-* [ positiveInt ]
        attr_accessor :provider                # 0-* [ Reference(Practitioner|PractitionerRole|Organization) ]
        attr_accessor :productOrService        # 1-1 CodeableConcept
        attr_accessor :modifier                # 0-* [ CodeableConcept ]
        attr_accessor :programCode             # 0-* [ CodeableConcept ]
        attr_accessor :servicedDate            # 0-1 date
        attr_accessor :servicedPeriod          # 0-1 Period
        attr_accessor :locationCodeableConcept # 0-1 CodeableConcept
        attr_accessor :locationAddress         # 0-1 Address
        attr_accessor :locationReference       # 0-1 Reference(Location)
        attr_accessor :quantity                # 0-1 Quantity
        attr_accessor :unitPrice               # 0-1 Money
        attr_accessor :factor                  # 0-1 decimal
        attr_accessor :net                     # 0-1 Money
        attr_accessor :bodySite                # 0-1 CodeableConcept
        attr_accessor :subSite                 # 0-* [ CodeableConcept ]
        attr_accessor :noteNumber              # 0-* [ positiveInt ]
        attr_accessor :adjudication            # 1-* [ ClaimResponse::Item::Adjudication ]
        attr_accessor :detail                  # 0-* [ ClaimResponse::AddItem::Detail ]
      end

      class Total < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Total.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Total.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Total.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/adjudication'=>['submitted', 'copay', 'eligible', 'deductible', 'unallocdeduct', 'eligpercent', 'tax', 'benefit']}, 'path'=>'Total.category', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/adjudication'}},
          'amount' => {'path'=>'Total.amount', 'type'=>'Money', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :category          # 1-1 CodeableConcept
        attr_accessor :amount            # 1-1 Money
      end

      class Payment < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Payment.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Payment.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Payment.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-paymenttype'=>['complete', 'partial']}, 'path'=>'Payment.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/ex-paymenttype'}},
          'adjustment' => {'path'=>'Payment.adjustment', 'type'=>'Money', 'min'=>0, 'max'=>1},
          'adjustmentReason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/payment-adjustment-reason'=>['a001', 'a002']}, 'path'=>'Payment.adjustmentReason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/payment-adjustment-reason'}},
          'date' => {'path'=>'Payment.date', 'type'=>'date', 'min'=>0, 'max'=>1},
          'amount' => {'path'=>'Payment.amount', 'type'=>'Money', 'min'=>1, 'max'=>1},
          'identifier' => {'path'=>'Payment.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 CodeableConcept
        attr_accessor :adjustment        # 0-1 Money
        attr_accessor :adjustmentReason  # 0-1 CodeableConcept
        attr_accessor :date              # 0-1 date
        attr_accessor :amount            # 1-1 Money
        attr_accessor :identifier        # 0-1 Identifier
      end

      class ProcessNote < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'ProcessNote.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'ProcessNote.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'ProcessNote.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'number' => {'path'=>'ProcessNote.number', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/note-type'=>['display', 'print', 'printoper']}, 'path'=>'ProcessNote.type', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/note-type'}},
          'text' => {'path'=>'ProcessNote.text', 'type'=>'string', 'min'=>1, 'max'=>1},
          'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'ProcessNote.language', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :number            # 0-1 positiveInt
        attr_accessor :type              # 0-1 code
        attr_accessor :text              # 1-1 string
        attr_accessor :language          # 0-1 CodeableConcept
      end

      class Insurance < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Insurance.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Insurance.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Insurance.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'sequence' => {'path'=>'Insurance.sequence', 'type'=>'positiveInt', 'min'=>1, 'max'=>1},
          'focal' => {'path'=>'Insurance.focal', 'type'=>'boolean', 'min'=>1, 'max'=>1},
          'coverage' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Coverage'], 'path'=>'Insurance.coverage', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'businessArrangement' => {'path'=>'Insurance.businessArrangement', 'type'=>'string', 'min'=>0, 'max'=>1},
          'claimResponse' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ClaimResponse'], 'path'=>'Insurance.claimResponse', 'type'=>'Reference', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                  # 0-1 string
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :sequence            # 1-1 positiveInt
        attr_accessor :focal               # 1-1 boolean
        attr_accessor :coverage            # 1-1 Reference(Coverage)
        attr_accessor :businessArrangement # 0-1 string
        attr_accessor :claimResponse       # 0-1 Reference(ClaimResponse)
      end

      class Error < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Error.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Error.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Error.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'itemSequence' => {'path'=>'Error.itemSequence', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
          'detailSequence' => {'path'=>'Error.detailSequence', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
          'subDetailSequence' => {'path'=>'Error.subDetailSequence', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
          'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/adjudication-error'=>['a001', 'a002']}, 'path'=>'Error.code', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/adjudication-error'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :itemSequence      # 0-1 positiveInt
        attr_accessor :detailSequence    # 0-1 positiveInt
        attr_accessor :subDetailSequence # 0-1 positiveInt
        attr_accessor :code              # 1-1 CodeableConcept
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
      attr_accessor :type                 # 1-1 CodeableConcept
      attr_accessor :subType              # 0-1 CodeableConcept
      attr_accessor :use                  # 1-1 code
      attr_accessor :patient              # 1-1 Reference(Patient)
      attr_accessor :created              # 1-1 dateTime
      attr_accessor :insurer              # 1-1 Reference(Organization)
      attr_accessor :requestor            # 0-1 Reference(Practitioner|PractitionerRole|Organization)
      attr_accessor :request              # 0-1 Reference(Claim)
      attr_accessor :outcome              # 1-1 code
      attr_accessor :disposition          # 0-1 string
      attr_accessor :preAuthRef           # 0-1 string
      attr_accessor :preAuthPeriod        # 0-1 Period
      attr_accessor :payeeType            # 0-1 CodeableConcept
      attr_accessor :item                 # 0-* [ ClaimResponse::Item ]
      attr_accessor :addItem              # 0-* [ ClaimResponse::AddItem ]
      attr_accessor :adjudication         # 0-* [ ClaimResponse::Item::Adjudication ]
      attr_accessor :total                # 0-* [ ClaimResponse::Total ]
      attr_accessor :payment              # 0-1 ClaimResponse::Payment
      attr_accessor :fundsReserve         # 0-1 CodeableConcept
      attr_accessor :formCode             # 0-1 CodeableConcept
      attr_accessor :form                 # 0-1 Attachment
      attr_accessor :processNote          # 0-* [ ClaimResponse::ProcessNote ]
      attr_accessor :communicationRequest # 0-* [ Reference(CommunicationRequest) ]
      attr_accessor :insurance            # 0-* [ ClaimResponse::Insurance ]
      attr_accessor :error                # 0-* [ ClaimResponse::Error ]

      def resourceType
        'ClaimResponse'
      end
    end
  end
end