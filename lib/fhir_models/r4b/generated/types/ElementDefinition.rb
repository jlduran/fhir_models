module FHIR
  module R4B
    class ElementDefinition < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml
      include FHIR::CommonElementDefinition

      MULTIPLE_TYPES = {
        'defaultValue' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'CodeableReference', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'RatioRange', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'Contributor', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Dosage'],
        'fixed' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'CodeableReference', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'RatioRange', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'Contributor', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Dosage'],
        'pattern' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'CodeableReference', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'RatioRange', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'Contributor', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Dosage'],
        'minValue' => ['date', 'dateTime', 'instant', 'time', 'decimal', 'integer', 'positiveInt', 'unsignedInt', 'Quantity'],
        'maxValue' => ['date', 'dateTime', 'instant', 'time', 'decimal', 'integer', 'positiveInt', 'unsignedInt', 'Quantity']
      }
      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'ElementDefinition.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'ElementDefinition.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'ElementDefinition.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'path' => {'path'=>'ElementDefinition.path', 'type'=>'string', 'min'=>1, 'max'=>1},
        'representation' => {'valid_codes'=>{'http://hl7.org/fhir/property-representation'=>['xmlAttr', 'xmlText', 'typeAttr', 'cdaText', 'xhtml']}, 'path'=>'ElementDefinition.representation', 'type'=>'code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/property-representation'}},
        'sliceName' => {'path'=>'ElementDefinition.sliceName', 'type'=>'string', 'min'=>0, 'max'=>1},
        'sliceIsConstraining' => {'path'=>'ElementDefinition.sliceIsConstraining', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'label' => {'path'=>'ElementDefinition.label', 'type'=>'string', 'min'=>0, 'max'=>1},
        'code' => {'valid_codes'=>{'http://loinc.org'=>['1-8', '10-9', '100-8', '1000-9', '10000-8', '100002-5', '100003-3', '100004-1', '100005-8', '100006-6', '100007-4', '100008-2', '100009-0', '10001-6', '100010-8', '100011-6', '100012-4', '100013-2', '100014-0', '100015-7', '100016-5', '100017-3', '100018-1', '100019-9', '10002-4', '100020-7', '100021-5', '100022-3', '100023-1', '100024-9', '100025-6', '100026-4', '100027-2', '100028-0', '100029-8', '10003-2', '100030-6', '100031-4', '100032-2', '100033-0', '100034-8', '100035-5', '100036-3', '100037-1', '100038-9', '100039-7', '10004-0', '100040-5', '100041-3', '100042-1', '100043-9', '100044-7', '100045-4', '100046-2', '100047-0', '100048-8', '100049-6', '10005-7', '100050-4', '100051-2', '100052-0', '100053-8', '100054-6', '100055-3', '100056-1', '100057-9', '100058-7', '100059-5', '10006-5', '100060-3', '100061-1', '100062-9', '100063-7', '100064-5', '100065-2', '100066-0', '100067-8', '100068-6', '100069-4', '10007-3', '100070-2', '100071-0', '100072-8', '100073-6', '100074-4', '100075-1', '100076-9', '100077-7', '100078-5', '100079-3', '10008-1', '100080-1', '100081-9', '100082-7', '100083-5', '100084-3', '100085-0', '100086-8', '100087-6', '100088-4', '100089-2', '10009-9', '100090-0', '100091-8', '100092-6', '100093-4', '100094-2', '100095-9', '100096-7', '100097-5', '100098-3', '100099-1', '1001-7', '10010-7', '100100-7', '100101-5', '100102-3', '100103-1', '100104-9', '100105-6', '100106-4', '100107-2', '100108-0', '100109-8', '10011-5', '100110-6', '100111-4', '100112-2', '100113-0', '100114-8', '100115-5', '100116-3', '100117-1', '100118-9', '100119-7', '10012-3', '100120-5', '100121-3', '100122-1', '100123-9', '100124-7', '100125-4', '100126-2', '100127-0', '100128-8', '100129-6', '10013-1', '100130-4', '100131-2', '100132-0', '100133-8', '100134-6', '100135-3', '100136-1', '100137-9', '100138-7', '100139-5', '10014-9', '100140-3', '100141-1', '100142-9', '100143-7', '100144-5', '100145-2', '100146-0', '100147-8', '100148-6', '100149-4', '10015-6', '100150-2', '100151-0', '100152-8', '100153-6', '100154-4', '100155-1', '100156-9', '100157-7', '10016-4', '10017-2', '10018-0', '10019-8', '1002-5', '10020-6', '10021-4', '10022-2', '10023-0', '10024-8', '10025-5', '10026-3', '10027-1', '10028-9', '10029-7', '1003-3', '10030-5', '10031-3', '10032-1', '10033-9', '10034-7', '10035-4', '10036-2', '10037-0', '10038-8', '10039-6', '1004-1', '10040-4', '10041-2', '10042-0', '10043-8', '10044-6', '10045-3', '10046-1', '10047-9', '10048-7', '10049-5', '1005-8', '10050-3', '10051-1', '10052-9', '10053-7', '10054-5', '10055-2', '10056-0', '10057-8', '10058-6', '10059-4', '1006-6', '10060-2', '10061-0', '10062-8', '10063-6', '10064-4', '10065-1', '10066-9', '10067-7', '10068-5', '10069-3', '1007-4', '10070-1', '10071-9', '10072-7', '10073-5', '10074-3', '10075-0', '10076-8', '10077-6', '10078-4', '10079-2', '1008-2', '10080-0', '10081-8', '10082-6', '10083-4', '10084-2', '10085-9', '10086-7', '10087-5', '10088-3', '10089-1', '1009-0', '10090-9', '10091-7', '10092-5', '10093-3', '10094-1', '10095-8', '10096-6', '10097-4', '10098-2', '10099-0', '101-6', '1010-8', '10100-6', '10101-4', '10102-2', '10103-0', '10104-8', '10105-5', '10106-3', '10107-1', '10108-9', '10109-7', '1011-6', '10110-5', '10111-3', '10112-1', '10113-9', '10114-7', '10115-4', '10116-2', '10117-0', '10118-8', '10119-6', '1012-4', '10120-4', '10121-2', '10122-0', '10123-8', '10124-6', '10125-3', '10126-1', '10127-9', '10128-7', '10129-5', '1013-2', '10130-3', '10131-1', '10132-9', '10133-7', '10134-5', '10135-2', '10136-0', '10137-8', '10138-6', '10139-4', '1014-0', '10140-2', '10141-0', '10142-8', '10143-6', '10144-4', '10145-1', '10146-9', '10147-7', '10148-5', '10149-3', '1015-7', '10150-1', '10151-9', '10152-7', '10153-5', '10154-3', '10155-0', '10156-8', '10157-6', '10158-4', '10159-2', '1016-5', '10160-0', '10161-8', '10162-6', '10163-4', '10164-2', '10165-9', '10166-7', '10167-5', '10168-3', '10169-1', '1017-3', '10170-9', '10171-7', '10172-5', '10173-3', '10174-1', '10175-8', '10176-6', '10177-4', '10178-2', '10179-0', '1018-1', '10180-8', '10181-6', '10182-4', '10183-2', '10184-0', '10185-7', '10186-5', '10187-3', '10188-1', '10189-9', '1019-9', '10190-7', '10191-5', '10192-3', '10193-1', '10194-9', '10195-6', '10196-4', '10197-2', '10198-0', '10199-8', '102-4', '1020-7', '10200-4', '10201-2', '10202-0', '10203-8', '10204-6', '10205-3', '10206-1', '10207-9', '10208-7', '10209-5', '1021-5', '10210-3', '10211-1', '10212-9', '10213-7', '10214-5', '10215-2', '10216-0', '10217-8', '10218-6', '10219-4', '1022-3', '10220-2', '10221-0', '10222-8', '10223-6', '10224-4', '10225-1', '10226-9', '10227-7', '10228-5', '10229-3', '1023-1', '10230-1', '10231-9', '10232-7', '10233-5', '10234-3', '10235-0', '10236-8', '10237-6', '10238-4', '10239-2', '1024-9', '10240-0', '10241-8', '10242-6', '10243-4', '10244-2', '10245-9', '10246-7', '10247-5', '10248-3', '10249-1', '1025-6', '10250-9', '10251-7', '10252-5', '10253-3', '10254-1', '10255-8', '10256-6', '10257-4', '10258-2', '10259-0', '1026-4', '10260-8', '10261-6', '10262-4', '10263-2', '10264-0', '10265-7', '10266-5', '10267-3', '10268-1', '10269-9', '1027-2', '10270-7', '10271-5', '10272-3', '10273-1', '10274-9', '10275-6', '10276-4', '10277-2', '10278-0', '10279-8', '1028-0', '10280-6', '10281-4', '10282-2', '10283-0', '10284-8', '10285-5', '10286-3', '10287-1', '10288-9', '10289-7', '1029-8', '10290-5', '10291-3', '10292-1', '10293-9', '10294-7', '10295-4', '10296-2', '10297-0', '10298-8', '10299-6', '103-2', '1030-6', '10300-2', '10301-0', '10302-8', '10303-6', '10304-4', '10305-1', '10306-9', '10307-7', '10308-5', '10309-3', '1031-4', '10310-1', '10311-9', '10312-7', '10313-5', '10314-3', '10315-0', '10316-8', '10317-6', '10318-4', '10319-2', '1032-2', '10320-0', '10321-8', '10322-6', '10323-4', '10324-2', '10325-9', '10326-7', '10327-5', '10328-3', '10329-1', '1033-0', '10330-9', '10331-7', '10332-5', '10333-3', '10334-1', '10335-8', '10336-6', '10337-4', '10338-2', '10339-0', '1034-8', '10340-8', '10341-6', '10342-4', '10343-2', '10344-0', '10345-7', '10346-5', '10347-3', '10348-1', '10349-9', '1035-5', '10350-7', '10351-5', '10352-3', '10353-1', '10354-9', '10355-6', '10356-4', '10357-2', '10358-0', '10359-8', '1036-3', '10360-6', '10361-4', '10362-2', '10363-0', '10364-8', '10365-5', '10366-3', '10367-1', '10368-9', '10369-7', '1037-1', '10370-5', '10371-3', '10372-1', '10373-9', '10374-7', '10375-4', '10376-2', '10377-0', '10378-8', '10379-6', '1038-9', '10380-4', '10381-2', '10382-0', '10383-8', '10384-6', '10385-3', '10386-1', '10387-9', '10388-7', '10389-5', '1039-7', '10390-3', '10391-1', '10392-9', '10393-7', '10394-5', '10395-2', '10396-0', '10397-8', '10398-6', '10399-4', '104-0', '1040-5', '10400-0', '10401-8', '10402-6', '10403-4', '10404-2', '10405-9', '10406-7', '10407-5', '10408-3', '10409-1', '1041-3', '10410-9', '10411-7', '10412-5', '10413-3', '10414-1', '10415-8', '10416-6', '10417-4', '10418-2', '10419-0', '1042-1', '10420-8', '10421-6', '10422-4', '10423-2', '10424-0', '10425-7', '10426-5', '10427-3', '10428-1', '10429-9', '1043-9', '10430-7', '10431-5', '10432-3', '10433-1', '10434-9', '10435-6', '10436-4', '10437-2', '10438-0', '10439-8', '1044-7', '10440-6', '10441-4', '10442-2', '10443-0', '10444-8', '10445-5', '10446-3', '10447-1', '10448-9', '10449-7', '1045-4', '10450-5', '10451-3', '10452-1', '10453-9', '10454-7', '10455-4', '10456-2', '10457-0', '10458-8', '10459-6', '1046-2', '10460-4', '10461-2', '10462-0', '10463-8', '10464-6', '10465-3', '10466-1', '10467-9', '10468-7', '10469-5', '1047-0', '10470-3', '10471-1', '10472-9', '10473-7', '10474-5', '10475-2', '10476-0', '10477-8', '10478-6', '10479-4', '1048-8', '10480-2', '10481-0', '10482-8', '10483-6', '10484-4', '10485-1', '10486-9', '10487-7', '10488-5', '10489-3', '1049-6', '10490-1', '10491-9', '10492-7', '10493-5', '10494-3', '10495-0', '10496-8', '10497-6', '10498-4', '10499-2', '105-7', '1050-4', '10500-7', '10501-5', '10502-3', '10503-1', '10504-9', '10505-6', '10506-4', '10507-2', '10508-0', '10509-8', '1051-2', '10510-6', '10511-4', '10512-2', '10513-0', '10514-8', '10515-5', '10516-3', '10517-1', '10518-9', '10519-7', '1052-0', '10520-5', '10521-3', '10522-1', '10523-9', '10524-7', '10525-4', '10526-2', '10527-0', '10528-8', '10529-6', '1053-8', '10530-4', '10531-2', '10532-0', '10533-8', '10534-6', '10535-3', '10536-1', '10537-9', '10538-7', '10539-5', '1054-6', '10540-3', '10541-1', '10542-9', '10543-7', '10544-5', '10545-2', '10546-0', '10547-8', '10548-6', '10549-4', '1055-3', '10550-2', '10551-0', '10552-8', '10553-6', '10554-4', '10555-1', '10556-9', '10557-7', '10558-5', '10559-3', '1056-1', '10560-1', '10561-9', '10562-7', '10563-5', '10564-3', '10565-0', '10566-8', '10567-6', '10568-4', '10569-2', '1057-9', '10570-0', '10571-8', '10572-6', '10573-4', '10574-2', '10575-9', '10576-7', '10577-5', '10578-3', '10579-1', '1058-7', '10580-9', '10581-7', '10582-5', '10583-3', '10584-1', '10585-8', '10586-6', '10587-4', '10588-2', '10589-0', '1059-5', '10590-8', '10591-6', '10592-4', '10593-2', '10594-0', '10595-7', '10596-5', '10597-3', '10598-1', '10599-9', '106-5', '1060-3', '10600-5', '10601-3', '10602-1', '10603-9', '10604-7', '10605-4', '10606-2', '10607-0', '10608-8', '10609-6', '1061-1', '10610-4', '10611-2', '10612-0', '10613-8', '10614-6', '10615-3', '10616-1', '10617-9', '10618-7', '10619-5', '1062-9', '10620-3', '10621-1', '10622-9', '10623-7', '10624-5', '10625-2', '10626-0', '10627-8', '10628-6', '10629-4', '1063-7', '10630-2', '10631-0', '10632-8', '10633-6', '10634-4', '10635-1', '10636-9', '10637-7', '10638-5', '10639-3', '1064-5', '10640-1', '10641-9', '10642-7', '10643-5', '10644-3', '10645-0', '10646-8', '10647-6', '10648-4', '10649-2', '1065-2', '10650-0', '10651-8', '10652-6', '10653-4', '10654-2', '10655-9', '10656-7', '10657-5', '10658-3', '10659-1', '1066-0', '10660-9', '10661-7', '10662-5', '10663-3', '10664-1', '10665-8', '10666-6', '10667-4', '10668-2', '10669-0', '1067-8', '10670-8', '10671-6', '10672-4', '10673-2', '10674-0', '10675-7', '10676-5', '10677-3', '10678-1', '10679-9', '1068-6', '10680-7', '10681-5', '10682-3', '10683-1', '10684-9', '10685-6', '10686-4', '10687-2', '10688-0', '10689-8', '1069-4', '10690-6', '10691-4', '10692-2', '10693-0', '10694-8', '10695-5', '10696-3', '10697-1', '10698-9', '10699-7', '107-3', '1070-2', '10700-3', '10701-1', '10702-9', '10703-7', '10704-5', '10705-2', '10706-0', '10707-8', '10708-6', '10709-4', '1071-0', '10710-2', '10711-0', '10712-8', '10713-6', '10714-4', '10715-1', '10716-9', '10717-7', '10718-5', '10719-3', '1072-8', '10720-1', '10721-9', '10722-7', '10723-5', '10724-3', '10725-0', '10726-8', '10727-6', '10728-4', '10729-2', '1073-6', '10730-0', '10731-8', '10732-6', '10733-4', '10734-2', '10735-9', '10736-7', '10737-5', '10738-3', '10739-1', '1074-4', '10740-9', '10741-7', '10742-5', '10743-3', '10744-1', '10745-8', '10746-6', '10747-4', '10748-2', '10749-0', '1075-1', '10750-8', '10751-6', '10752-4', '10753-2', '10754-0', '10755-7', '10756-5', '10757-3']}, 'path'=>'ElementDefinition.code', 'type'=>'Coding', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/observation-codes'}},
        'slicing' => {'path'=>'ElementDefinition.slicing', 'type'=>'ElementDefinition::Slicing', 'min'=>0, 'max'=>1},
        'short' => {'path'=>'ElementDefinition.short', 'type'=>'string', 'min'=>0, 'max'=>1},
        'definition' => {'path'=>'ElementDefinition.definition', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'comment' => {'path'=>'ElementDefinition.comment', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'requirements' => {'path'=>'ElementDefinition.requirements', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'alias' => {'path'=>'ElementDefinition.alias', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'min' => {'path'=>'ElementDefinition.min', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
        'max' => {'path'=>'ElementDefinition.max', 'type'=>'string', 'min'=>0, 'max'=>1},
        'base' => {'path'=>'ElementDefinition.base', 'type'=>'ElementDefinition::Base', 'min'=>0, 'max'=>1},
        'contentReference' => {'path'=>'ElementDefinition.contentReference', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'type' => {'path'=>'ElementDefinition.type', 'type'=>'ElementDefinition::Type', 'min'=>0, 'max'=>Float::INFINITY},
        'defaultValueBase64Binary' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'base64Binary', 'min'=>0, 'max'=>1},
        'defaultValueBoolean' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'defaultValueCanonical' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'canonical', 'min'=>0, 'max'=>1},
        'defaultValueCode' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'code', 'min'=>0, 'max'=>1},
        'defaultValueDate' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
        'defaultValueDateTime' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'defaultValueDecimal' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'decimal', 'min'=>0, 'max'=>1},
        'defaultValueId' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'id', 'min'=>0, 'max'=>1},
        'defaultValueInstant' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'instant', 'min'=>0, 'max'=>1},
        'defaultValueInteger' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'integer', 'min'=>0, 'max'=>1},
        'defaultValueMarkdown' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'defaultValueOid' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'oid', 'min'=>0, 'max'=>1},
        'defaultValuePositiveInt' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
        'defaultValueString' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
        'defaultValueTime' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'time', 'min'=>0, 'max'=>1},
        'defaultValueUnsignedInt' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
        'defaultValueUri' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'defaultValueUrl' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'url', 'min'=>0, 'max'=>1},
        'defaultValueUuid' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'uuid', 'min'=>0, 'max'=>1},
        'defaultValueAddress' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Address', 'min'=>0, 'max'=>1},
        'defaultValueAge' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Age', 'min'=>0, 'max'=>1},
        'defaultValueAnnotation' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Annotation', 'min'=>0, 'max'=>1},
        'defaultValueAttachment' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Attachment', 'min'=>0, 'max'=>1},
        'defaultValueCodeableConcept' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'defaultValueCodeableReference' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'CodeableReference', 'min'=>0, 'max'=>1},
        'defaultValueCoding' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Coding', 'min'=>0, 'max'=>1},
        'defaultValueContactPoint' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'ContactPoint', 'min'=>0, 'max'=>1},
        'defaultValueCount' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Count', 'min'=>0, 'max'=>1},
        'defaultValueDistance' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Distance', 'min'=>0, 'max'=>1},
        'defaultValueDuration' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Duration', 'min'=>0, 'max'=>1},
        'defaultValueHumanName' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'HumanName', 'min'=>0, 'max'=>1},
        'defaultValueIdentifier' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'defaultValueMoney' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Money', 'min'=>0, 'max'=>1},
        'defaultValuePeriod' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'defaultValueQuantity' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'defaultValueRange' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
        'defaultValueRatio' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Ratio', 'min'=>0, 'max'=>1},
        'defaultValueRatioRange' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'RatioRange', 'min'=>0, 'max'=>1},
        'defaultValueReference' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'defaultValueSampledData' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'SampledData', 'min'=>0, 'max'=>1},
        'defaultValueSignature' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Signature', 'min'=>0, 'max'=>1},
        'defaultValueTiming' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Timing', 'min'=>0, 'max'=>1},
        'defaultValueContactDetail' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'ContactDetail', 'min'=>0, 'max'=>1},
        'defaultValueContributor' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Contributor', 'min'=>0, 'max'=>1},
        'defaultValueDataRequirement' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'DataRequirement', 'min'=>0, 'max'=>1},
        'defaultValueExpression' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Expression', 'min'=>0, 'max'=>1},
        'defaultValueParameterDefinition' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'ParameterDefinition', 'min'=>0, 'max'=>1},
        'defaultValueRelatedArtifact' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>1},
        'defaultValueTriggerDefinition' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'TriggerDefinition', 'min'=>0, 'max'=>1},
        'defaultValueUsageContext' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'UsageContext', 'min'=>0, 'max'=>1},
        'defaultValueDosage' => {'path'=>'ElementDefinition.defaultValue[x]', 'type'=>'Dosage', 'min'=>0, 'max'=>1},
        'meaningWhenMissing' => {'path'=>'ElementDefinition.meaningWhenMissing', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'orderMeaning' => {'path'=>'ElementDefinition.orderMeaning', 'type'=>'string', 'min'=>0, 'max'=>1},
        'fixedBase64Binary' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'base64Binary', 'min'=>0, 'max'=>1},
        'fixedBoolean' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'fixedCanonical' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'canonical', 'min'=>0, 'max'=>1},
        'fixedCode' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'code', 'min'=>0, 'max'=>1},
        'fixedDate' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
        'fixedDateTime' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'fixedDecimal' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'decimal', 'min'=>0, 'max'=>1},
        'fixedId' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'id', 'min'=>0, 'max'=>1},
        'fixedInstant' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'instant', 'min'=>0, 'max'=>1},
        'fixedInteger' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'integer', 'min'=>0, 'max'=>1},
        'fixedMarkdown' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'fixedOid' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'oid', 'min'=>0, 'max'=>1},
        'fixedPositiveInt' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
        'fixedString' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
        'fixedTime' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'time', 'min'=>0, 'max'=>1},
        'fixedUnsignedInt' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
        'fixedUri' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'fixedUrl' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'url', 'min'=>0, 'max'=>1},
        'fixedUuid' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'uuid', 'min'=>0, 'max'=>1},
        'fixedAddress' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Address', 'min'=>0, 'max'=>1},
        'fixedAge' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Age', 'min'=>0, 'max'=>1},
        'fixedAnnotation' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Annotation', 'min'=>0, 'max'=>1},
        'fixedAttachment' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Attachment', 'min'=>0, 'max'=>1},
        'fixedCodeableConcept' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'fixedCodeableReference' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'CodeableReference', 'min'=>0, 'max'=>1},
        'fixedCoding' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Coding', 'min'=>0, 'max'=>1},
        'fixedContactPoint' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'ContactPoint', 'min'=>0, 'max'=>1},
        'fixedCount' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Count', 'min'=>0, 'max'=>1},
        'fixedDistance' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Distance', 'min'=>0, 'max'=>1},
        'fixedDuration' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Duration', 'min'=>0, 'max'=>1},
        'fixedHumanName' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'HumanName', 'min'=>0, 'max'=>1},
        'fixedIdentifier' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'fixedMoney' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Money', 'min'=>0, 'max'=>1},
        'fixedPeriod' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'fixedQuantity' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'fixedRange' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
        'fixedRatio' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Ratio', 'min'=>0, 'max'=>1},
        'fixedRatioRange' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'RatioRange', 'min'=>0, 'max'=>1},
        'fixedReference' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'fixedSampledData' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'SampledData', 'min'=>0, 'max'=>1},
        'fixedSignature' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Signature', 'min'=>0, 'max'=>1},
        'fixedTiming' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Timing', 'min'=>0, 'max'=>1},
        'fixedContactDetail' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'ContactDetail', 'min'=>0, 'max'=>1},
        'fixedContributor' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Contributor', 'min'=>0, 'max'=>1},
        'fixedDataRequirement' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'DataRequirement', 'min'=>0, 'max'=>1},
        'fixedExpression' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Expression', 'min'=>0, 'max'=>1},
        'fixedParameterDefinition' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'ParameterDefinition', 'min'=>0, 'max'=>1},
        'fixedRelatedArtifact' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>1},
        'fixedTriggerDefinition' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'TriggerDefinition', 'min'=>0, 'max'=>1},
        'fixedUsageContext' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'UsageContext', 'min'=>0, 'max'=>1},
        'fixedDosage' => {'path'=>'ElementDefinition.fixed[x]', 'type'=>'Dosage', 'min'=>0, 'max'=>1},
        'patternBase64Binary' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'base64Binary', 'min'=>0, 'max'=>1},
        'patternBoolean' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'patternCanonical' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'canonical', 'min'=>0, 'max'=>1},
        'patternCode' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'code', 'min'=>0, 'max'=>1},
        'patternDate' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
        'patternDateTime' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'patternDecimal' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'decimal', 'min'=>0, 'max'=>1},
        'patternId' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'id', 'min'=>0, 'max'=>1},
        'patternInstant' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'instant', 'min'=>0, 'max'=>1},
        'patternInteger' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'integer', 'min'=>0, 'max'=>1},
        'patternMarkdown' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'patternOid' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'oid', 'min'=>0, 'max'=>1},
        'patternPositiveInt' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
        'patternString' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
        'patternTime' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'time', 'min'=>0, 'max'=>1},
        'patternUnsignedInt' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
        'patternUri' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'patternUrl' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'url', 'min'=>0, 'max'=>1},
        'patternUuid' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'uuid', 'min'=>0, 'max'=>1},
        'patternAddress' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Address', 'min'=>0, 'max'=>1},
        'patternAge' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Age', 'min'=>0, 'max'=>1},
        'patternAnnotation' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Annotation', 'min'=>0, 'max'=>1},
        'patternAttachment' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Attachment', 'min'=>0, 'max'=>1},
        'patternCodeableConcept' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'patternCodeableReference' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'CodeableReference', 'min'=>0, 'max'=>1},
        'patternCoding' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Coding', 'min'=>0, 'max'=>1},
        'patternContactPoint' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'ContactPoint', 'min'=>0, 'max'=>1},
        'patternCount' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Count', 'min'=>0, 'max'=>1},
        'patternDistance' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Distance', 'min'=>0, 'max'=>1},
        'patternDuration' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Duration', 'min'=>0, 'max'=>1},
        'patternHumanName' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'HumanName', 'min'=>0, 'max'=>1},
        'patternIdentifier' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'patternMoney' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Money', 'min'=>0, 'max'=>1},
        'patternPeriod' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'patternQuantity' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'patternRange' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
        'patternRatio' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Ratio', 'min'=>0, 'max'=>1},
        'patternRatioRange' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'RatioRange', 'min'=>0, 'max'=>1},
        'patternReference' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'patternSampledData' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'SampledData', 'min'=>0, 'max'=>1},
        'patternSignature' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Signature', 'min'=>0, 'max'=>1},
        'patternTiming' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Timing', 'min'=>0, 'max'=>1},
        'patternContactDetail' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'ContactDetail', 'min'=>0, 'max'=>1},
        'patternContributor' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Contributor', 'min'=>0, 'max'=>1},
        'patternDataRequirement' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'DataRequirement', 'min'=>0, 'max'=>1},
        'patternExpression' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Expression', 'min'=>0, 'max'=>1},
        'patternParameterDefinition' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'ParameterDefinition', 'min'=>0, 'max'=>1},
        'patternRelatedArtifact' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>1},
        'patternTriggerDefinition' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'TriggerDefinition', 'min'=>0, 'max'=>1},
        'patternUsageContext' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'UsageContext', 'min'=>0, 'max'=>1},
        'patternDosage' => {'path'=>'ElementDefinition.pattern[x]', 'type'=>'Dosage', 'min'=>0, 'max'=>1},
        'example' => {'path'=>'ElementDefinition.example', 'type'=>'ElementDefinition::Example', 'min'=>0, 'max'=>Float::INFINITY},
        'minValueDate' => {'path'=>'ElementDefinition.minValue[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
        'minValueDateTime' => {'path'=>'ElementDefinition.minValue[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'minValueInstant' => {'path'=>'ElementDefinition.minValue[x]', 'type'=>'instant', 'min'=>0, 'max'=>1},
        'minValueTime' => {'path'=>'ElementDefinition.minValue[x]', 'type'=>'time', 'min'=>0, 'max'=>1},
        'minValueDecimal' => {'path'=>'ElementDefinition.minValue[x]', 'type'=>'decimal', 'min'=>0, 'max'=>1},
        'minValueInteger' => {'path'=>'ElementDefinition.minValue[x]', 'type'=>'integer', 'min'=>0, 'max'=>1},
        'minValuePositiveInt' => {'path'=>'ElementDefinition.minValue[x]', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
        'minValueUnsignedInt' => {'path'=>'ElementDefinition.minValue[x]', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
        'minValueQuantity' => {'path'=>'ElementDefinition.minValue[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'maxValueDate' => {'path'=>'ElementDefinition.maxValue[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
        'maxValueDateTime' => {'path'=>'ElementDefinition.maxValue[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'maxValueInstant' => {'path'=>'ElementDefinition.maxValue[x]', 'type'=>'instant', 'min'=>0, 'max'=>1},
        'maxValueTime' => {'path'=>'ElementDefinition.maxValue[x]', 'type'=>'time', 'min'=>0, 'max'=>1},
        'maxValueDecimal' => {'path'=>'ElementDefinition.maxValue[x]', 'type'=>'decimal', 'min'=>0, 'max'=>1},
        'maxValueInteger' => {'path'=>'ElementDefinition.maxValue[x]', 'type'=>'integer', 'min'=>0, 'max'=>1},
        'maxValuePositiveInt' => {'path'=>'ElementDefinition.maxValue[x]', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
        'maxValueUnsignedInt' => {'path'=>'ElementDefinition.maxValue[x]', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
        'maxValueQuantity' => {'path'=>'ElementDefinition.maxValue[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'maxLength' => {'path'=>'ElementDefinition.maxLength', 'type'=>'integer', 'min'=>0, 'max'=>1},
        'condition' => {'path'=>'ElementDefinition.condition', 'type'=>'id', 'min'=>0, 'max'=>Float::INFINITY},
        'constraint' => {'path'=>'ElementDefinition.constraint', 'type'=>'ElementDefinition::Constraint', 'min'=>0, 'max'=>Float::INFINITY},
        'mustSupport' => {'path'=>'ElementDefinition.mustSupport', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'isModifier' => {'path'=>'ElementDefinition.isModifier', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'isModifierReason' => {'path'=>'ElementDefinition.isModifierReason', 'type'=>'string', 'min'=>0, 'max'=>1},
        'isSummary' => {'path'=>'ElementDefinition.isSummary', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'binding' => {'path'=>'ElementDefinition.binding', 'type'=>'ElementDefinition::Binding', 'min'=>0, 'max'=>1},
        'mapping' => {'path'=>'ElementDefinition.mapping', 'type'=>'ElementDefinition::Mapping', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Slicing < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Slicing.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Slicing.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'discriminator' => {'path'=>'Slicing.discriminator', 'type'=>'ElementDefinition::Slicing::Discriminator', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'path'=>'Slicing.description', 'type'=>'string', 'min'=>0, 'max'=>1},
          'ordered' => {'path'=>'Slicing.ordered', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'rules' => {'valid_codes'=>{'http://hl7.org/fhir/resource-slicing-rules'=>['closed', 'open', 'openAtEnd']}, 'path'=>'Slicing.rules', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-slicing-rules'}}
        }

        class Discriminator < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Discriminator.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Discriminator.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://hl7.org/fhir/discriminator-type'=>['value', 'exists', 'pattern', 'type', 'profile']}, 'path'=>'Discriminator.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/discriminator-type'}},
            'path' => {'path'=>'Discriminator.path', 'type'=>'string', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id        # 0-1 string
          attr_accessor :extension # 0-* [ Extension ]
          attr_accessor :type      # 1-1 code
          attr_accessor :path      # 1-1 string
        end

        attr_accessor :id            # 0-1 string
        attr_accessor :extension     # 0-* [ Extension ]
        attr_accessor :discriminator # 0-* [ ElementDefinition::Slicing::Discriminator ]
        attr_accessor :description   # 0-1 string
        attr_accessor :ordered       # 0-1 boolean
        attr_accessor :rules         # 1-1 code
      end

      class Base < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Base.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Base.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'path' => {'path'=>'Base.path', 'type'=>'string', 'min'=>1, 'max'=>1},
          'min' => {'path'=>'Base.min', 'type'=>'unsignedInt', 'min'=>1, 'max'=>1},
          'max' => {'path'=>'Base.max', 'type'=>'string', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id        # 0-1 string
        attr_accessor :extension # 0-* [ Extension ]
        attr_accessor :path      # 1-1 string
        attr_accessor :min       # 1-1 unsignedInt
        attr_accessor :max       # 1-1 string
      end

      class Type < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Type.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Type.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'path'=>'Type.code', 'type'=>'uri', 'min'=>1, 'max'=>1},
          'profile' => {'path'=>'Type.profile', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY},
          'targetProfile' => {'path'=>'Type.targetProfile', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY},
          'aggregation' => {'valid_codes'=>{'http://hl7.org/fhir/resource-aggregation-mode'=>['contained', 'referenced', 'bundled']}, 'path'=>'Type.aggregation', 'type'=>'code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-aggregation-mode'}},
          'versioning' => {'valid_codes'=>{'http://hl7.org/fhir/reference-version-rules'=>['either', 'independent', 'specific']}, 'path'=>'Type.versioning', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/reference-version-rules'}}
        }

        attr_accessor :id            # 0-1 string
        attr_accessor :extension     # 0-* [ Extension ]
        attr_accessor :code          # 1-1 uri
        attr_accessor :profile       # 0-* [ canonical ]
        attr_accessor :targetProfile # 0-* [ canonical ]
        attr_accessor :aggregation   # 0-* [ code ]
        attr_accessor :versioning    # 0-1 code
      end

      class Example < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'value' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'CodeableReference', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'RatioRange', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'Contributor', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Dosage']
        }
        METADATA = {
          'id' => {'path'=>'Example.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Example.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'label' => {'path'=>'Example.label', 'type'=>'string', 'min'=>1, 'max'=>1},
          'valueBase64Binary' => {'path'=>'Example.value[x]', 'type'=>'base64Binary', 'min'=>1, 'max'=>1},
          'valueBoolean' => {'path'=>'Example.value[x]', 'type'=>'boolean', 'min'=>1, 'max'=>1},
          'valueCanonical' => {'path'=>'Example.value[x]', 'type'=>'canonical', 'min'=>1, 'max'=>1},
          'valueCode' => {'path'=>'Example.value[x]', 'type'=>'code', 'min'=>1, 'max'=>1},
          'valueDate' => {'path'=>'Example.value[x]', 'type'=>'date', 'min'=>1, 'max'=>1},
          'valueDateTime' => {'path'=>'Example.value[x]', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
          'valueDecimal' => {'path'=>'Example.value[x]', 'type'=>'decimal', 'min'=>1, 'max'=>1},
          'valueId' => {'path'=>'Example.value[x]', 'type'=>'id', 'min'=>1, 'max'=>1},
          'valueInstant' => {'path'=>'Example.value[x]', 'type'=>'instant', 'min'=>1, 'max'=>1},
          'valueInteger' => {'path'=>'Example.value[x]', 'type'=>'integer', 'min'=>1, 'max'=>1},
          'valueMarkdown' => {'path'=>'Example.value[x]', 'type'=>'markdown', 'min'=>1, 'max'=>1},
          'valueOid' => {'path'=>'Example.value[x]', 'type'=>'oid', 'min'=>1, 'max'=>1},
          'valuePositiveInt' => {'path'=>'Example.value[x]', 'type'=>'positiveInt', 'min'=>1, 'max'=>1},
          'valueString' => {'path'=>'Example.value[x]', 'type'=>'string', 'min'=>1, 'max'=>1},
          'valueTime' => {'path'=>'Example.value[x]', 'type'=>'time', 'min'=>1, 'max'=>1},
          'valueUnsignedInt' => {'path'=>'Example.value[x]', 'type'=>'unsignedInt', 'min'=>1, 'max'=>1},
          'valueUri' => {'path'=>'Example.value[x]', 'type'=>'uri', 'min'=>1, 'max'=>1},
          'valueUrl' => {'path'=>'Example.value[x]', 'type'=>'url', 'min'=>1, 'max'=>1},
          'valueUuid' => {'path'=>'Example.value[x]', 'type'=>'uuid', 'min'=>1, 'max'=>1},
          'valueAddress' => {'path'=>'Example.value[x]', 'type'=>'Address', 'min'=>1, 'max'=>1},
          'valueAge' => {'path'=>'Example.value[x]', 'type'=>'Age', 'min'=>1, 'max'=>1},
          'valueAnnotation' => {'path'=>'Example.value[x]', 'type'=>'Annotation', 'min'=>1, 'max'=>1},
          'valueAttachment' => {'path'=>'Example.value[x]', 'type'=>'Attachment', 'min'=>1, 'max'=>1},
          'valueCodeableConcept' => {'path'=>'Example.value[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'valueCodeableReference' => {'path'=>'Example.value[x]', 'type'=>'CodeableReference', 'min'=>1, 'max'=>1},
          'valueCoding' => {'path'=>'Example.value[x]', 'type'=>'Coding', 'min'=>1, 'max'=>1},
          'valueContactPoint' => {'path'=>'Example.value[x]', 'type'=>'ContactPoint', 'min'=>1, 'max'=>1},
          'valueCount' => {'path'=>'Example.value[x]', 'type'=>'Count', 'min'=>1, 'max'=>1},
          'valueDistance' => {'path'=>'Example.value[x]', 'type'=>'Distance', 'min'=>1, 'max'=>1},
          'valueDuration' => {'path'=>'Example.value[x]', 'type'=>'Duration', 'min'=>1, 'max'=>1},
          'valueHumanName' => {'path'=>'Example.value[x]', 'type'=>'HumanName', 'min'=>1, 'max'=>1},
          'valueIdentifier' => {'path'=>'Example.value[x]', 'type'=>'Identifier', 'min'=>1, 'max'=>1},
          'valueMoney' => {'path'=>'Example.value[x]', 'type'=>'Money', 'min'=>1, 'max'=>1},
          'valuePeriod' => {'path'=>'Example.value[x]', 'type'=>'Period', 'min'=>1, 'max'=>1},
          'valueQuantity' => {'path'=>'Example.value[x]', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
          'valueRange' => {'path'=>'Example.value[x]', 'type'=>'Range', 'min'=>1, 'max'=>1},
          'valueRatio' => {'path'=>'Example.value[x]', 'type'=>'Ratio', 'min'=>1, 'max'=>1},
          'valueRatioRange' => {'path'=>'Example.value[x]', 'type'=>'RatioRange', 'min'=>1, 'max'=>1},
          'valueReference' => {'path'=>'Example.value[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'valueSampledData' => {'path'=>'Example.value[x]', 'type'=>'SampledData', 'min'=>1, 'max'=>1},
          'valueSignature' => {'path'=>'Example.value[x]', 'type'=>'Signature', 'min'=>1, 'max'=>1},
          'valueTiming' => {'path'=>'Example.value[x]', 'type'=>'Timing', 'min'=>1, 'max'=>1},
          'valueContactDetail' => {'path'=>'Example.value[x]', 'type'=>'ContactDetail', 'min'=>1, 'max'=>1},
          'valueContributor' => {'path'=>'Example.value[x]', 'type'=>'Contributor', 'min'=>1, 'max'=>1},
          'valueDataRequirement' => {'path'=>'Example.value[x]', 'type'=>'DataRequirement', 'min'=>1, 'max'=>1},
          'valueExpression' => {'path'=>'Example.value[x]', 'type'=>'Expression', 'min'=>1, 'max'=>1},
          'valueParameterDefinition' => {'path'=>'Example.value[x]', 'type'=>'ParameterDefinition', 'min'=>1, 'max'=>1},
          'valueRelatedArtifact' => {'path'=>'Example.value[x]', 'type'=>'RelatedArtifact', 'min'=>1, 'max'=>1},
          'valueTriggerDefinition' => {'path'=>'Example.value[x]', 'type'=>'TriggerDefinition', 'min'=>1, 'max'=>1},
          'valueUsageContext' => {'path'=>'Example.value[x]', 'type'=>'UsageContext', 'min'=>1, 'max'=>1},
          'valueDosage' => {'path'=>'Example.value[x]', 'type'=>'Dosage', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                       # 0-1 string
        attr_accessor :extension                # 0-* [ Extension ]
        attr_accessor :label                    # 1-1 string
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
        attr_accessor :valueCodeableReference   # 1-1 CodeableReference
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
        attr_accessor :valueRatioRange          # 1-1 RatioRange
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
      end

      class Constraint < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Constraint.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Constraint.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'key' => {'path'=>'Constraint.key', 'type'=>'id', 'min'=>1, 'max'=>1},
          'requirements' => {'path'=>'Constraint.requirements', 'type'=>'string', 'min'=>0, 'max'=>1},
          'severity' => {'valid_codes'=>{'http://hl7.org/fhir/constraint-severity'=>['error', 'warning']}, 'path'=>'Constraint.severity', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/constraint-severity'}},
          'human' => {'path'=>'Constraint.human', 'type'=>'string', 'min'=>1, 'max'=>1},
          'expression' => {'path'=>'Constraint.expression', 'type'=>'string', 'min'=>0, 'max'=>1},
          'xpath' => {'path'=>'Constraint.xpath', 'type'=>'string', 'min'=>0, 'max'=>1},
          'source' => {'path'=>'Constraint.source', 'type'=>'canonical', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id           # 0-1 string
        attr_accessor :extension    # 0-* [ Extension ]
        attr_accessor :key          # 1-1 id
        attr_accessor :requirements # 0-1 string
        attr_accessor :severity     # 1-1 code
        attr_accessor :human        # 1-1 string
        attr_accessor :expression   # 0-1 string
        attr_accessor :xpath        # 0-1 string
        attr_accessor :source       # 0-1 canonical
      end

      class Binding < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Binding.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Binding.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'strength' => {'valid_codes'=>{'http://hl7.org/fhir/binding-strength'=>['required', 'extensible', 'preferred', 'example']}, 'path'=>'Binding.strength', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/binding-strength'}},
          'description' => {'path'=>'Binding.description', 'type'=>'string', 'min'=>0, 'max'=>1},
          'valueSet' => {'path'=>'Binding.valueSet', 'type'=>'canonical', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id          # 0-1 string
        attr_accessor :extension   # 0-* [ Extension ]
        attr_accessor :strength    # 1-1 code
        attr_accessor :description # 0-1 string
        attr_accessor :valueSet    # 0-1 canonical
      end

      class Mapping < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Mapping.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Mapping.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'identity' => {'path'=>'Mapping.identity', 'type'=>'id', 'min'=>1, 'max'=>1},
          'language' => {'path'=>'Mapping.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
          'map' => {'path'=>'Mapping.map', 'type'=>'string', 'min'=>1, 'max'=>1},
          'comment' => {'path'=>'Mapping.comment', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id        # 0-1 string
        attr_accessor :extension # 0-* [ Extension ]
        attr_accessor :identity  # 1-1 id
        attr_accessor :language  # 0-1 code
        attr_accessor :map       # 1-1 string
        attr_accessor :comment   # 0-1 string
      end

      attr_accessor :id                              # 0-1 string
      attr_accessor :extension                       # 0-* [ Extension ]
      attr_accessor :modifierExtension               # 0-* [ Extension ]
      attr_accessor :path                            # 1-1 string
      attr_accessor :representation                  # 0-* [ code ]
      attr_accessor :sliceName                       # 0-1 string
      attr_accessor :sliceIsConstraining             # 0-1 boolean
      attr_accessor :label                           # 0-1 string
      attr_accessor :code                            # 0-* [ Coding ]
      attr_accessor :slicing                         # 0-1 ElementDefinition::Slicing
      attr_accessor :short                           # 0-1 string
      attr_accessor :definition                      # 0-1 markdown
      attr_accessor :comment                         # 0-1 markdown
      attr_accessor :requirements                    # 0-1 markdown
      attr_accessor :alias                           # 0-* [ string ]
      attr_accessor :min                             # 0-1 unsignedInt
      attr_accessor :max                             # 0-1 string
      attr_accessor :base                            # 0-1 ElementDefinition::Base
      attr_accessor :contentReference                # 0-1 uri
      attr_accessor :type                            # 0-* [ ElementDefinition::Type ]
      attr_accessor :defaultValueBase64Binary        # 0-1 base64Binary
      attr_accessor :defaultValueBoolean             # 0-1 boolean
      attr_accessor :defaultValueCanonical           # 0-1 canonical
      attr_accessor :defaultValueCode                # 0-1 code
      attr_accessor :defaultValueDate                # 0-1 date
      attr_accessor :defaultValueDateTime            # 0-1 dateTime
      attr_accessor :defaultValueDecimal             # 0-1 decimal
      attr_accessor :defaultValueId                  # 0-1 id
      attr_accessor :defaultValueInstant             # 0-1 instant
      attr_accessor :defaultValueInteger             # 0-1 integer
      attr_accessor :defaultValueMarkdown            # 0-1 markdown
      attr_accessor :defaultValueOid                 # 0-1 oid
      attr_accessor :defaultValuePositiveInt         # 0-1 positiveInt
      attr_accessor :defaultValueString              # 0-1 string
      attr_accessor :defaultValueTime                # 0-1 time
      attr_accessor :defaultValueUnsignedInt         # 0-1 unsignedInt
      attr_accessor :defaultValueUri                 # 0-1 uri
      attr_accessor :defaultValueUrl                 # 0-1 url
      attr_accessor :defaultValueUuid                # 0-1 uuid
      attr_accessor :defaultValueAddress             # 0-1 Address
      attr_accessor :defaultValueAge                 # 0-1 Age
      attr_accessor :defaultValueAnnotation          # 0-1 Annotation
      attr_accessor :defaultValueAttachment          # 0-1 Attachment
      attr_accessor :defaultValueCodeableConcept     # 0-1 CodeableConcept
      attr_accessor :defaultValueCodeableReference   # 0-1 CodeableReference
      attr_accessor :defaultValueCoding              # 0-1 Coding
      attr_accessor :defaultValueContactPoint        # 0-1 ContactPoint
      attr_accessor :defaultValueCount               # 0-1 Count
      attr_accessor :defaultValueDistance            # 0-1 Distance
      attr_accessor :defaultValueDuration            # 0-1 Duration
      attr_accessor :defaultValueHumanName           # 0-1 HumanName
      attr_accessor :defaultValueIdentifier          # 0-1 Identifier
      attr_accessor :defaultValueMoney               # 0-1 Money
      attr_accessor :defaultValuePeriod              # 0-1 Period
      attr_accessor :defaultValueQuantity            # 0-1 Quantity
      attr_accessor :defaultValueRange               # 0-1 Range
      attr_accessor :defaultValueRatio               # 0-1 Ratio
      attr_accessor :defaultValueRatioRange          # 0-1 RatioRange
      attr_accessor :defaultValueReference           # 0-1 Reference()
      attr_accessor :defaultValueSampledData         # 0-1 SampledData
      attr_accessor :defaultValueSignature           # 0-1 Signature
      attr_accessor :defaultValueTiming              # 0-1 Timing
      attr_accessor :defaultValueContactDetail       # 0-1 ContactDetail
      attr_accessor :defaultValueContributor         # 0-1 Contributor
      attr_accessor :defaultValueDataRequirement     # 0-1 DataRequirement
      attr_accessor :defaultValueExpression          # 0-1 Expression
      attr_accessor :defaultValueParameterDefinition # 0-1 ParameterDefinition
      attr_accessor :defaultValueRelatedArtifact     # 0-1 RelatedArtifact
      attr_accessor :defaultValueTriggerDefinition   # 0-1 TriggerDefinition
      attr_accessor :defaultValueUsageContext        # 0-1 UsageContext
      attr_accessor :defaultValueDosage              # 0-1 Dosage
      attr_accessor :meaningWhenMissing              # 0-1 markdown
      attr_accessor :orderMeaning                    # 0-1 string
      attr_accessor :fixedBase64Binary               # 0-1 base64Binary
      attr_accessor :fixedBoolean                    # 0-1 boolean
      attr_accessor :fixedCanonical                  # 0-1 canonical
      attr_accessor :fixedCode                       # 0-1 code
      attr_accessor :fixedDate                       # 0-1 date
      attr_accessor :fixedDateTime                   # 0-1 dateTime
      attr_accessor :fixedDecimal                    # 0-1 decimal
      attr_accessor :fixedId                         # 0-1 id
      attr_accessor :fixedInstant                    # 0-1 instant
      attr_accessor :fixedInteger                    # 0-1 integer
      attr_accessor :fixedMarkdown                   # 0-1 markdown
      attr_accessor :fixedOid                        # 0-1 oid
      attr_accessor :fixedPositiveInt                # 0-1 positiveInt
      attr_accessor :fixedString                     # 0-1 string
      attr_accessor :fixedTime                       # 0-1 time
      attr_accessor :fixedUnsignedInt                # 0-1 unsignedInt
      attr_accessor :fixedUri                        # 0-1 uri
      attr_accessor :fixedUrl                        # 0-1 url
      attr_accessor :fixedUuid                       # 0-1 uuid
      attr_accessor :fixedAddress                    # 0-1 Address
      attr_accessor :fixedAge                        # 0-1 Age
      attr_accessor :fixedAnnotation                 # 0-1 Annotation
      attr_accessor :fixedAttachment                 # 0-1 Attachment
      attr_accessor :fixedCodeableConcept            # 0-1 CodeableConcept
      attr_accessor :fixedCodeableReference          # 0-1 CodeableReference
      attr_accessor :fixedCoding                     # 0-1 Coding
      attr_accessor :fixedContactPoint               # 0-1 ContactPoint
      attr_accessor :fixedCount                      # 0-1 Count
      attr_accessor :fixedDistance                   # 0-1 Distance
      attr_accessor :fixedDuration                   # 0-1 Duration
      attr_accessor :fixedHumanName                  # 0-1 HumanName
      attr_accessor :fixedIdentifier                 # 0-1 Identifier
      attr_accessor :fixedMoney                      # 0-1 Money
      attr_accessor :fixedPeriod                     # 0-1 Period
      attr_accessor :fixedQuantity                   # 0-1 Quantity
      attr_accessor :fixedRange                      # 0-1 Range
      attr_accessor :fixedRatio                      # 0-1 Ratio
      attr_accessor :fixedRatioRange                 # 0-1 RatioRange
      attr_accessor :fixedReference                  # 0-1 Reference()
      attr_accessor :fixedSampledData                # 0-1 SampledData
      attr_accessor :fixedSignature                  # 0-1 Signature
      attr_accessor :fixedTiming                     # 0-1 Timing
      attr_accessor :fixedContactDetail              # 0-1 ContactDetail
      attr_accessor :fixedContributor                # 0-1 Contributor
      attr_accessor :fixedDataRequirement            # 0-1 DataRequirement
      attr_accessor :fixedExpression                 # 0-1 Expression
      attr_accessor :fixedParameterDefinition        # 0-1 ParameterDefinition
      attr_accessor :fixedRelatedArtifact            # 0-1 RelatedArtifact
      attr_accessor :fixedTriggerDefinition          # 0-1 TriggerDefinition
      attr_accessor :fixedUsageContext               # 0-1 UsageContext
      attr_accessor :fixedDosage                     # 0-1 Dosage
      attr_accessor :patternBase64Binary             # 0-1 base64Binary
      attr_accessor :patternBoolean                  # 0-1 boolean
      attr_accessor :patternCanonical                # 0-1 canonical
      attr_accessor :patternCode                     # 0-1 code
      attr_accessor :patternDate                     # 0-1 date
      attr_accessor :patternDateTime                 # 0-1 dateTime
      attr_accessor :patternDecimal                  # 0-1 decimal
      attr_accessor :patternId                       # 0-1 id
      attr_accessor :patternInstant                  # 0-1 instant
      attr_accessor :patternInteger                  # 0-1 integer
      attr_accessor :patternMarkdown                 # 0-1 markdown
      attr_accessor :patternOid                      # 0-1 oid
      attr_accessor :patternPositiveInt              # 0-1 positiveInt
      attr_accessor :patternString                   # 0-1 string
      attr_accessor :patternTime                     # 0-1 time
      attr_accessor :patternUnsignedInt              # 0-1 unsignedInt
      attr_accessor :patternUri                      # 0-1 uri
      attr_accessor :patternUrl                      # 0-1 url
      attr_accessor :patternUuid                     # 0-1 uuid
      attr_accessor :patternAddress                  # 0-1 Address
      attr_accessor :patternAge                      # 0-1 Age
      attr_accessor :patternAnnotation               # 0-1 Annotation
      attr_accessor :patternAttachment               # 0-1 Attachment
      attr_accessor :patternCodeableConcept          # 0-1 CodeableConcept
      attr_accessor :patternCodeableReference        # 0-1 CodeableReference
      attr_accessor :patternCoding                   # 0-1 Coding
      attr_accessor :patternContactPoint             # 0-1 ContactPoint
      attr_accessor :patternCount                    # 0-1 Count
      attr_accessor :patternDistance                 # 0-1 Distance
      attr_accessor :patternDuration                 # 0-1 Duration
      attr_accessor :patternHumanName                # 0-1 HumanName
      attr_accessor :patternIdentifier               # 0-1 Identifier
      attr_accessor :patternMoney                    # 0-1 Money
      attr_accessor :patternPeriod                   # 0-1 Period
      attr_accessor :patternQuantity                 # 0-1 Quantity
      attr_accessor :patternRange                    # 0-1 Range
      attr_accessor :patternRatio                    # 0-1 Ratio
      attr_accessor :patternRatioRange               # 0-1 RatioRange
      attr_accessor :patternReference                # 0-1 Reference()
      attr_accessor :patternSampledData              # 0-1 SampledData
      attr_accessor :patternSignature                # 0-1 Signature
      attr_accessor :patternTiming                   # 0-1 Timing
      attr_accessor :patternContactDetail            # 0-1 ContactDetail
      attr_accessor :patternContributor              # 0-1 Contributor
      attr_accessor :patternDataRequirement          # 0-1 DataRequirement
      attr_accessor :patternExpression               # 0-1 Expression
      attr_accessor :patternParameterDefinition      # 0-1 ParameterDefinition
      attr_accessor :patternRelatedArtifact          # 0-1 RelatedArtifact
      attr_accessor :patternTriggerDefinition        # 0-1 TriggerDefinition
      attr_accessor :patternUsageContext             # 0-1 UsageContext
      attr_accessor :patternDosage                   # 0-1 Dosage
      attr_accessor :example                         # 0-* [ ElementDefinition::Example ]
      attr_accessor :minValueDate                    # 0-1 date
      attr_accessor :minValueDateTime                # 0-1 dateTime
      attr_accessor :minValueInstant                 # 0-1 instant
      attr_accessor :minValueTime                    # 0-1 time
      attr_accessor :minValueDecimal                 # 0-1 decimal
      attr_accessor :minValueInteger                 # 0-1 integer
      attr_accessor :minValuePositiveInt             # 0-1 positiveInt
      attr_accessor :minValueUnsignedInt             # 0-1 unsignedInt
      attr_accessor :minValueQuantity                # 0-1 Quantity
      attr_accessor :maxValueDate                    # 0-1 date
      attr_accessor :maxValueDateTime                # 0-1 dateTime
      attr_accessor :maxValueInstant                 # 0-1 instant
      attr_accessor :maxValueTime                    # 0-1 time
      attr_accessor :maxValueDecimal                 # 0-1 decimal
      attr_accessor :maxValueInteger                 # 0-1 integer
      attr_accessor :maxValuePositiveInt             # 0-1 positiveInt
      attr_accessor :maxValueUnsignedInt             # 0-1 unsignedInt
      attr_accessor :maxValueQuantity                # 0-1 Quantity
      attr_accessor :maxLength                       # 0-1 integer
      attr_accessor :condition                       # 0-* [ id ]
      attr_accessor :constraint                      # 0-* [ ElementDefinition::Constraint ]
      attr_accessor :mustSupport                     # 0-1 boolean
      attr_accessor :isModifier                      # 0-1 boolean
      attr_accessor :isModifierReason                # 0-1 string
      attr_accessor :isSummary                       # 0-1 boolean
      attr_accessor :binding                         # 0-1 ElementDefinition::Binding
      attr_accessor :mapping                         # 0-* [ ElementDefinition::Mapping ]
    end
  end
end