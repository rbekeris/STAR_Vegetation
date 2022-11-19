CREATE SCHEMA IF NOT EXISTS public;
CREATE TABLE public.registered_areas (
    id serial PRIMARY KEY,
    wkb_geometry geometry(MultiPolygon, 3059),
    objectid bigint,
    period_code VARCHAR,
    parcel_id bigint,
    product_code VARCHAR,
    aid_forms VARCHAR,
    area_declared float8,
    --we need timestamp with timezone
    data_changed_date timestamptz,
    product_description VARCHAR,
    area FLOAT8,
    len FLOAT8
);
INSERT INTO "public"."registered_areas" ("wkb_geometry" , "objectid", "period_code", "parcel_id", "product_code", "aid_forms", "area_declared", "data_changed_date", "product_description", "area", "len") VALUES ('0106000020F30B000001000000010300000001000000C8000000FFB27BF200251C41917EFB7A9B73104198DD93C723251C41143FC69C4B731041BBB88D0659251C418638D685D1721041CFF75323DA251C41AED85F369471104189D2DEA0EF251C417424973F5C71104148E17A5403261C4196B20CF12871104104E78CA80E261C41ED0DBE700B7110413FC6DC7514261C418E06F016FD70104112A5BD8114261C41454772F9FC7010418D28EDCD16261C4187A7574AF7701041F5B9DACA2A261C4182E2C7D8C5701041B5A679C740261C410B4625758F7010419EEFA7064D261C41FED47829717010416A4DF34E50261C41516B9A775D7010414BC8073D47261C41C8073D9B48701041D49AE65D45261C4176711B4D4470104119E258D742261C41FDF6756042701041569FAB6D35261C413E79582838701041401361030D261C41956588231F7010415F984C554C251C41F0A7C6CBC86F104110E9B76F09251C4176E09CD1AA6F10416ABC74D3EA241C41FAEDEB00966F1041190456CEDF241C4101DE0289886F1041F853E325D9241C411D3867447A6F1041CEAACF95DA241C413EE8D9EC706F10415EBA494CDE241C41615452A7696F1041E4141D89E7241C41FDF67560606F1041C1CAA105E7241C4164CC5D4B5D6F1041280F0B35F1241C417D3F35DE456F10412063EE9AF1241C4168B3EAF3446F104197FF90BEF3241C4196218E75406F10417D3F359E55251C4103098ADF726E1041C898BB9694251C413BDF4F0DEE6D10414F401361AC251C412EFF21FDBE6D104167D5E76AAA251C41516B9AF7B96D10413A92CB7FA9251C41E4839E8DB96D10413255302AA1251C417B832FCCB56D1041C0EC9EBC72251C41E09C11A5986D10413108ACDC3C251C4195D40928806D1041E9482EBFBE241C415F984CD5476D1041C8073DDB66241C4144696FF0206D1041ECC039A31B241C419BE61DA7FF6C1041E2E995B2E9231C41014D848DE96C1041E561A1565F231C41EFC9C3C2A36C10416D567DAEE5221C41E3A59BC4736C10416EA3013CD0221C411A51DA5B6C6C10413480B7C063221C416C787A65366C10411973D7520E221C412D431C2B086C104110583934E8201C41713D0A57856B10414D840D4F6F1F1C411D5A647BCE6A10416C09F9204B1F1C41B8AF0327C16A1041D7A3707D0A1F1C41022B8756A96A10419CA223F9EE1E1C4174469476996A1041EC51B81ECF1E1C41A2B437B8856A10415227A0496D1E1C415A643B1F486A1041FB5C6D45261E1C4126E4835E186A1041AA8251C9D11D1C41B98D0630F169104189D2DEA0791D1C416C09F920D0691041DF4F8D97271D1C413D0AD7A3B76910419D8026029C1C1C41CFF753E387691041711B0DA0421C1C4132772D61646910418CB96B89E11B1C419C33A23434691041713D0AD7841B1C41499D80A6036910410B4625752B1B1C4120D26F1FD56810414A0C022B0E1A1C41AF9465C85568104194F606DF68191C4143AD69DE096810416FF08549DD181C4139D6C52DBF67104193A982D1CF181C41C1A8A40EB96710418126C246CA181C41F38E5334B86710410F0BB5E6BF181C4154E3A59BB6671041EE7C3F35B1181C4154E3A59BB66710416ADE714AA1181C4139D6C52DBF6710418D976E528D181C41151DC925D3671041E17A14AE82181C41C13923CADD671041E17A146E45181C41B6847C1026681041C6DCB5840B181C41499D80666A6810416891ED3C08181C41FB5C6D456E681041E5F21F52F8171C414D158C4A7968104124B9FC47E2171C413108ACDC8168104187A7574AC8171C418BFD65F7896810418FC2F56870171C41EC51B85EA56810415DFE433A96161C41FB3A70CEE4681041F1F44A9929161C417B14AE87FF681041DE93878514161C41F54A594601691041FE43FAAD11161C41A9A44EC000691041FBCBEE49F7151C41DA1B7CA1F8681041ACADD85FAB151C41B30C71ACD2681041E10B93E925151C413108ACDC816810413BDF4F0D00141C41000000C0C76710418351491DE5131C413FC6DCB5B16710411904564E58131C41EA95B2CC2967104177BE9F9A8A121C41AA6054525D66104192CB7FC810121C419D802682DE651041287E8C39F5111C4102BC05D2C165104142CF6655F0111C413CBD5216BD6510411D386744CF111C411FF46C169D651041AEB6623FC4111C414F1E166A99651041A245B673BA111C414F1E166A99651041A835CDFBAC111C41AA8251899F65104145477279AB111C41CE88D2DEA065104155302A2985111C41226C78BAC2651041C9E53F247E111C416D567DEEC865104192CB7F080F111C41CE88D21E2B6610413C4ED151CC101C41696FF08567661041FB3A704EC2101C41ABCFD5967066104104560E6DB4101C4195D409287D66104117B7D1C0B0101C41E78C282D88661041D26F5F87AF101C41CC7F48BF906610412CD49AA6B5101C416B2BF617986610410D71ACCBD4101C419D11A57DA96610412063EEDA92111C415B423EA813671041AAF1D28D28131C410C022B47F66710417B14AE87CC141C4105C58FB1DD681041AA8251494E151C415A643B1F22691041D044D8F04E151C419D80268222691041228E75F1B7151C41AED85FF65B691041D578E9E602161C4126E4835E83691041F2D24D626A161C41355EBA89BC691041228E7531C5161C411C7C61B2F66910418E75715BD7161C4148E17A54026A10415986381638171C4110583934386A1041645DDCC6D1171C416F810485886A104144696F703A181C417AA52C03C56A1041A4DFBE8E7C181C412497FF50F26A10412A3A92CB00191C41454772794A6B1041857CD0B3C4191C41CBA145B6CE6B1041F775E05C561A1C41341136FC326C10418F5374A4161B1C412575025AB76C1041EA95B28CDA1B1C41ABCFD5963B6D104100000080781C1C418CB96BC9A96D10413D9B55DF851D1C4150FC1873616E1041E02D9060E81D1C41D95F764FA46E10414A7B832F721E1C41D42B65D9016F1041DDB584BC7E1E1C412EFF217D0A6F1041B81E85EB2E1F1C41F54A59C6836F1041711B0D20C41F1C414BC8077DEA6F1041C4B12EAE33201C4107CE195136701041F7E461A180201C41B515FB4B697010414ED1911CB4201C416EA3013C927010419A999999CC201C412FDD2446A8701041EC51B89ED7201C411C7C61F2AB701041006F8184DC201C411C7C61F2AB7010413108AC1CF1201C41A9A44E809C70104176711BCDFE201C416EA3013C92701041AC1C5A6412211C41925CFEC384701041A1F831E61A211C414E6210187F701041A323B9FC3E211C41E4141D09677010416DE7FBA977211C418CDB684041701041713D0A9780211C41B003E74C3B7010416DE7FBA98E211C412EFF21FD37701041EC2FBB6795211C419BE61D673670104191ED7CBFD8211C41BE9F1AEF2870104154742417E2211C4136AB3E17267010411D5A64BB07221C41B84082A21A701041B459F5F907221C417DD0B3191A701041B1BFEC9E2F221C417FFB3A7009701041CD3B4ED153221C4100000080FA6F1041EC2FBBE763221C415F07CE59F96F10412BF697DD76221C413D0AD72307701041295C8F42BF221C41DB8AFD253D7010417FFB3AF03B231C41363CBDD29E7010414182E2474C231C417FD93DB9AD7010417FD93D794F231C41D50968A2B07010410AD7A3F049231C418351495DB770104162A1D6F424231C4131992A58E470104105A3927AE7221C410BB5A6F93D711041933A018D7C221C4163EE5A42CD7110414A0C02EB7A221C417CF2B090CC7110417958A8B562221C417DAEB6E2EF711041713D0AD757221C41BF0E9C73FE7110417FFB3AF056221C41F6285C0F0172104173D7123243221C412BF697DD1D721041AC1C5AE441221C413B014DC41F721041BDE314DD40221C41AC8BDBE8247210415452276042221C412F6EA3013172104182E2C75879221C417F6ABC346C721041819543CB79221C4193A982116C72104168B3EA337C221C412BF697DD6E721041CDCCCC8C93221C4122FDF6B5827210413A92CB3F94221C419CC42030837210414182E24794221C41B6F3FD5483721041F1F44A59AB221C4144696FF0967210413BDF4F4D0D231C41B8408262D5721041C364AA6075231C412B1895D41373104125068115BA231C41827346D4317310411B2FDD24C4231C4111C7BA3836731041E561A116E5231C412063EE9A4473104160764F1E2B241C412497FF105F73104146B6F33D5F241C41431CEBE270731041EE5A42BE8B241C4166F7E4E17D7310414CA60A4693241C411E166ACD7F731041E3361A0094241C411DC9E5FF7F73104160764F5EA0241C41CF66D5E7837310413EE8D92CE5241C4100000000987310411DC9E5FFE7241C411DC9E5FF97731041EE7C3F35ED241C4177BE9F9A9A731041E09C11E5EE241C41516B9A379B73104140136143EF241C413EE8D96C9A731041AED85FB6FE241C415AF5B99AA0731041FFB27BF200251C41917EFB7A9B731041', 2239581, '2022', 16482580, '112', 'VPM', 28.63, '2022/08/20 09:54:56', 'Kvieši, ziemas', 286050.95234674, 3748.53148595);

CREATE TABLE public.total_production(
    id serial PRIMARY KEY,
    Kultūraugi VARCHAR,
    year VARCHAR,
    value NUMERIC(6,1)
);
