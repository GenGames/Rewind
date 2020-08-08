// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.30 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.30;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:0,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:36569,y:32689,varname:node_3138,prsc:2|normal-7824-OUT,custl-2029-OUT,alpha-994-OUT,refract-2597-OUT,voffset-5450-OUT;n:type:ShaderForge.SFN_SceneDepth,id:9002,x:30700,y:33210,varname:node_9002,prsc:2;n:type:ShaderForge.SFN_Depth,id:1953,x:30700,y:33331,varname:node_1953,prsc:2;n:type:ShaderForge.SFN_Subtract,id:4941,x:30886,y:33210,varname:node_4941,prsc:2|A-9002-OUT,B-1953-OUT;n:type:ShaderForge.SFN_Multiply,id:2832,x:30886,y:33331,varname:node_2832,prsc:2|A-4941-OUT,B-7403-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:9365,x:31112,y:33331,varname:node_9365,prsc:2|IN-2832-OUT,IMIN-9555-OUT,IMAX-2136-OUT,OMIN-9385-OUT,OMAX-4978-OUT;n:type:ShaderForge.SFN_Vector1,id:9555,x:30886,y:33447,varname:node_9555,prsc:2,v1:-0.1;n:type:ShaderForge.SFN_Color,id:1879,x:30690,y:33570,ptovrint:False,ptlb:Water Color,ptin:_WaterColor,varname:node_1879,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:2136,x:30886,y:33570,varname:node_2136,prsc:2|A-1879-RGB,B-393-OUT;n:type:ShaderForge.SFN_Vector1,id:393,x:30886,y:33500,varname:node_393,prsc:2,v1:8;n:type:ShaderForge.SFN_Vector1,id:4978,x:31089,y:33500,varname:node_4978,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:9385,x:31089,y:33569,varname:node_9385,prsc:2,v1:1;n:type:ShaderForge.SFN_Clamp01,id:8558,x:31316,y:33331,varname:node_8558,prsc:2|IN-9365-OUT;n:type:ShaderForge.SFN_Power,id:2219,x:31588,y:33333,varname:node_2219,prsc:2|VAL-8558-OUT,EXP-2697-OUT;n:type:ShaderForge.SFN_Vector1,id:2697,x:31316,y:33476,varname:node_2697,prsc:2,v1:3;n:type:ShaderForge.SFN_Multiply,id:5247,x:31588,y:33516,cmnt:Depth Color,varname:node_5247,prsc:2|A-2219-OUT,B-1192-RGB;n:type:ShaderForge.SFN_SceneColor,id:1192,x:31316,y:33535,varname:node_1192,prsc:2;n:type:ShaderForge.SFN_Tex2dAsset,id:93,x:32602,y:32240,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:node_93,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:2009,x:32915,y:32537,varname:node_2009,prsc:2,ntxv:0,isnm:False|UVIN-7387-UVOUT,TEX-93-TEX;n:type:ShaderForge.SFN_Tex2d,id:4884,x:32908,y:32393,varname:node_4884,prsc:2,ntxv:0,isnm:False|UVIN-4478-UVOUT,TEX-93-TEX;n:type:ShaderForge.SFN_Tex2d,id:8094,x:32908,y:32086,varname:node_8094,prsc:2,ntxv:0,isnm:False|UVIN-7952-UVOUT,TEX-93-TEX;n:type:ShaderForge.SFN_Tex2d,id:5167,x:32908,y:32245,varname:node_5167,prsc:2,ntxv:0,isnm:False|UVIN-1106-UVOUT,TEX-93-TEX;n:type:ShaderForge.SFN_FragmentPosition,id:1872,x:30963,y:31840,varname:node_1872,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:6017,x:31183,y:31830,varname:node_6017,prsc:2,cc1:2,cc2:0,cc3:-1,cc4:-1|IN-1872-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:7634,x:31787,y:31567,varname:node_7634,prsc:2,cc1:1,cc2:2,cc3:-1,cc4:-1|IN-1872-XYZ;n:type:ShaderForge.SFN_Multiply,id:3280,x:31141,y:31991,varname:node_3280,prsc:2|A-6017-OUT,B-228-OUT;n:type:ShaderForge.SFN_Vector1,id:228,x:30974,y:32012,varname:node_228,prsc:2,v1:0.02;n:type:ShaderForge.SFN_Add,id:9389,x:33164,y:32413,varname:node_9389,prsc:2|A-4884-R,B-2009-R;n:type:ShaderForge.SFN_Add,id:4424,x:33164,y:32535,varname:node_4424,prsc:2|A-4884-G,B-2009-G;n:type:ShaderForge.SFN_Append,id:3096,x:33357,y:32458,varname:node_3096,prsc:2|A-9389-OUT,B-4424-OUT;n:type:ShaderForge.SFN_Add,id:8977,x:33163,y:32101,varname:node_8977,prsc:2|A-8094-R,B-5167-R;n:type:ShaderForge.SFN_Add,id:1533,x:33163,y:32260,varname:node_1533,prsc:2|A-8094-G,B-5167-G;n:type:ShaderForge.SFN_Append,id:9684,x:33363,y:32177,varname:node_9684,prsc:2|A-8977-OUT,B-1533-OUT;n:type:ShaderForge.SFN_Slider,id:424,x:33316,y:32341,ptovrint:False,ptlb:Detail Wave Intensity,ptin:_DetailWaveIntensity,varname:node_424,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3981464,max:1;n:type:ShaderForge.SFN_Slider,id:7385,x:33279,y:32626,ptovrint:False,ptlb:Big Wave Intensity,ptin:_BigWaveIntensity,varname:node_7385,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1538462,max:1;n:type:ShaderForge.SFN_Append,id:7675,x:34283,y:32441,cmnt:Normal Waves,varname:node_7675,prsc:2|A-4679-OUT,B-9239-OUT;n:type:ShaderForge.SFN_Panner,id:4478,x:31958,y:32375,varname:node_4478,prsc:2,spu:-1,spv:1|UVIN-7150-OUT,DIST-7233-OUT;n:type:ShaderForge.SFN_Panner,id:7387,x:31958,y:32539,varname:node_7387,prsc:2,spu:1,spv:-1|UVIN-1511-OUT,DIST-7233-OUT;n:type:ShaderForge.SFN_Panner,id:7952,x:31958,y:32006,varname:node_7952,prsc:2,spu:1,spv:-1|UVIN-3280-OUT,DIST-349-OUT;n:type:ShaderForge.SFN_Panner,id:1106,x:31958,y:32172,varname:node_1106,prsc:2,spu:-1,spv:1|UVIN-2572-OUT,DIST-349-OUT;n:type:ShaderForge.SFN_Time,id:1117,x:31205,y:32466,varname:node_1117,prsc:2;n:type:ShaderForge.SFN_Multiply,id:349,x:31410,y:32466,varname:node_349,prsc:2|A-1117-TSL,B-4958-OUT,C-583-OUT;n:type:ShaderForge.SFN_Slider,id:4958,x:31211,y:32620,ptovrint:False,ptlb:Water Speed,ptin:_WaterSpeed,varname:node_4958,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.841018,max:8;n:type:ShaderForge.SFN_Multiply,id:6038,x:31141,y:32128,varname:node_6038,prsc:2|A-3280-OUT,B-7525-OUT;n:type:ShaderForge.SFN_Vector1,id:7525,x:30974,y:32162,varname:node_7525,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Add,id:2572,x:31141,y:32250,varname:node_2572,prsc:2|A-6038-OUT,B-3308-OUT;n:type:ShaderForge.SFN_Vector2,id:3308,x:30974,y:32268,varname:node_3308,prsc:2,v1:0.333,v2:0.666;n:type:ShaderForge.SFN_Multiply,id:7150,x:31472,y:32040,varname:node_7150,prsc:2|A-3280-OUT,B-5585-OUT;n:type:ShaderForge.SFN_Multiply,id:1511,x:31472,y:32181,varname:node_1511,prsc:2|A-2572-OUT,B-5585-OUT;n:type:ShaderForge.SFN_Vector1,id:5585,x:30974,y:32401,varname:node_5585,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:7233,x:31380,y:32700,varname:node_7233,prsc:2|A-349-OUT,B-1808-OUT;n:type:ShaderForge.SFN_LightVector,id:3666,x:33257,y:33756,varname:node_3666,prsc:2;n:type:ShaderForge.SFN_ViewReflectionVector,id:2981,x:33257,y:33896,varname:node_2981,prsc:2;n:type:ShaderForge.SFN_Dot,id:1603,x:33494,y:33756,varname:node_1603,prsc:2,dt:1|A-3666-OUT,B-2981-OUT;n:type:ShaderForge.SFN_Power,id:8455,x:33740,y:33708,varname:node_8455,prsc:2|VAL-1603-OUT,EXP-3628-OUT;n:type:ShaderForge.SFN_Slider,id:19,x:33291,y:34080,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_19,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2641236,max:1;n:type:ShaderForge.SFN_RemapRange,id:9031,x:33720,y:34016,varname:node_9031,prsc:2,frmn:0,frmx:1,tomn:1,tomx:11|IN-19-OUT;n:type:ShaderForge.SFN_Exp,id:3628,x:33720,y:33863,varname:node_3628,prsc:2,et:1|IN-9031-OUT;n:type:ShaderForge.SFN_Multiply,id:7204,x:33973,y:33666,cmnt:Water High Light,varname:node_7204,prsc:2|A-873-OUT,B-8455-OUT;n:type:ShaderForge.SFN_ValueProperty,id:873,x:33740,y:33666,ptovrint:False,ptlb:Specular,ptin:_Specular,varname:node_873,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Add,id:7163,x:33973,y:33526,varname:node_7163,prsc:2|A-7204-OUT,B-346-OUT,C-5927-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:3210,x:31994,y:32984,ptovrint:False,ptlb:Reflection Tex,ptin:_ReflectionTex,varname:node_3210,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:645,x:32217,y:32882,varname:node_645,prsc:2,ntxv:0,isnm:False|UVIN-3855-UVOUT,TEX-3210-TEX;n:type:ShaderForge.SFN_ScreenPos,id:3855,x:31994,y:32813,varname:node_3855,prsc:2,sctp:2;n:type:ShaderForge.SFN_Multiply,id:5414,x:32512,y:33018,varname:node_5414,prsc:2|A-645-RGB,B-3647-OUT,C-4688-OUT,D-163-OUT;n:type:ShaderForge.SFN_Fresnel,id:3647,x:32199,y:33074,varname:node_3647,prsc:2|NRM-677-OUT,EXP-8451-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8451,x:31994,y:33184,ptovrint:False,ptlb:Fresnel Reflection,ptin:_FresnelReflection,varname:node_8451,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Blend,id:1727,x:32976,y:33539,varname:node_1727,prsc:2,blmd:6,clmp:True|SRC-5247-OUT,DST-3843-OUT;n:type:ShaderForge.SFN_Lerp,id:7588,x:33793,y:32355,varname:node_7588,prsc:2|A-2559-OUT,B-9684-OUT,T-424-OUT;n:type:ShaderForge.SFN_Vector2,id:2559,x:33594,y:32422,varname:node_2559,prsc:2,v1:0,v2:0;n:type:ShaderForge.SFN_Lerp,id:4044,x:33805,y:32530,varname:node_4044,prsc:2|A-2559-OUT,B-3096-OUT,T-7385-OUT;n:type:ShaderForge.SFN_Add,id:4679,x:34011,y:32391,varname:node_4679,prsc:2|A-4044-OUT,B-7588-OUT;n:type:ShaderForge.SFN_Vector1,id:9239,x:33795,y:32693,varname:node_9239,prsc:2,v1:1;n:type:ShaderForge.SFN_NormalVector,id:677,x:32214,y:33232,prsc:2,pt:True;n:type:ShaderForge.SFN_ValueProperty,id:4688,x:32473,y:33226,ptovrint:False,ptlb:Relection Intensity,ptin:_RelectionIntensity,varname:node_4688,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.8;n:type:ShaderForge.SFN_NormalVector,id:4420,x:34844,y:32117,prsc:2,pt:False;n:type:ShaderForge.SFN_ComponentMask,id:163,x:34844,y:32271,varname:node_163,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-4420-OUT;n:type:ShaderForge.SFN_Lerp,id:9639,x:34879,y:32433,varname:node_9639,prsc:2|A-3241-OUT,B-7675-OUT,T-163-OUT;n:type:ShaderForge.SFN_Vector1,id:3241,x:34610,y:32271,varname:node_3241,prsc:2,v1:0;n:type:ShaderForge.SFN_ComponentMask,id:8637,x:34925,y:32817,varname:node_8637,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9639-OUT;n:type:ShaderForge.SFN_Multiply,id:4233,x:35210,y:32850,varname:node_4233,prsc:2|A-8637-OUT,B-7506-OUT,C-3553-OUT;n:type:ShaderForge.SFN_Slider,id:7506,x:34782,y:33018,ptovrint:False,ptlb:Refraction Power,ptin:_RefractionPower,varname:node_7506,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1043485,max:0.5;n:type:ShaderForge.SFN_Vector1,id:3445,x:35358,y:33232,varname:node_3445,prsc:2,v1:0.3;n:type:ShaderForge.SFN_DepthBlend,id:3553,x:35371,y:33092,varname:node_3553,prsc:2|DIST-3445-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:3126,x:34528,y:33911,ptovrint:False,ptlb:Foam,ptin:_Foam,varname:node_3126,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5933,x:34774,y:33815,varname:node_5933,prsc:2,ntxv:0,isnm:False|UVIN-6069-UVOUT,TEX-3126-TEX;n:type:ShaderForge.SFN_Tex2d,id:2142,x:34774,y:33959,varname:node_2142,prsc:2,ntxv:0,isnm:False|UVIN-2148-UVOUT,TEX-3126-TEX;n:type:ShaderForge.SFN_Multiply,id:111,x:35271,y:33922,varname:node_111,prsc:2|A-5933-RGB,B-2142-RGB,C-2912-OUT,D-163-OUT,E-3925-OUT;n:type:ShaderForge.SFN_Panner,id:6069,x:34483,y:33559,varname:node_6069,prsc:2,spu:1,spv:-1|UVIN-9319-OUT,DIST-3184-OUT;n:type:ShaderForge.SFN_Panner,id:2148,x:34502,y:33717,varname:node_2148,prsc:2,spu:-1,spv:1|UVIN-859-OUT,DIST-3184-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:860,x:34067,y:33926,varname:node_860,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:8516,x:34265,y:33926,varname:node_8516,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-860-XYZ;n:type:ShaderForge.SFN_Multiply,id:9319,x:34254,y:34078,varname:node_9319,prsc:2|A-8516-OUT,B-7752-OUT;n:type:ShaderForge.SFN_Vector1,id:7752,x:34067,y:34098,varname:node_7752,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Vector1,id:5251,x:34067,y:34230,varname:node_5251,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Add,id:859,x:34254,y:34339,varname:node_859,prsc:2|A-1042-OUT,B-5018-OUT;n:type:ShaderForge.SFN_Vector2,id:5018,x:34056,y:34357,varname:node_5018,prsc:2,v1:0.333,v2:0.666;n:type:ShaderForge.SFN_Multiply,id:1042,x:34254,y:34210,varname:node_1042,prsc:2|A-9319-OUT,B-5251-OUT;n:type:ShaderForge.SFN_Time,id:2278,x:34565,y:34277,varname:node_2278,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3184,x:34799,y:34320,varname:node_3184,prsc:2|A-2278-TSL,B-5059-OUT;n:type:ShaderForge.SFN_Slider,id:5059,x:34434,y:34433,ptovrint:False,ptlb:Foam Speed,ptin:_FoamSpeed,varname:node_5059,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:5;n:type:ShaderForge.SFN_ValueProperty,id:7987,x:34774,y:33699,ptovrint:False,ptlb:Foam Distance,ptin:_FoamDistance,varname:node_7987,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_DepthBlend,id:1865,x:34990,y:33699,varname:node_1865,prsc:2|DIST-7987-OUT;n:type:ShaderForge.SFN_OneMinus,id:2912,x:35203,y:33699,varname:node_2912,prsc:2|IN-1865-OUT;n:type:ShaderForge.SFN_Blend,id:346,x:33298,y:33532,varname:node_346,prsc:2,blmd:6,clmp:True|SRC-1727-OUT,DST-111-OUT;n:type:ShaderForge.SFN_Vector1,id:583,x:31173,y:32712,varname:node_583,prsc:2,v1:0.1;n:type:ShaderForge.SFN_ConstantClamp,id:8767,x:35371,y:33290,varname:node_8767,prsc:2,min:0.9,max:1|IN-163-OUT;n:type:ShaderForge.SFN_Multiply,id:7,x:35554,y:33218,varname:node_7,prsc:2|A-3553-OUT,B-8767-OUT;n:type:ShaderForge.SFN_Add,id:3843,x:32957,y:33013,varname:node_3843,prsc:2|A-5414-OUT,B-3115-OUT;n:type:ShaderForge.SFN_OneMinus,id:7526,x:32568,y:32737,varname:node_7526,prsc:2|IN-163-OUT;n:type:ShaderForge.SFN_Multiply,id:3115,x:32915,y:32771,varname:node_3115,prsc:2|A-7526-OUT,B-7402-OUT;n:type:ShaderForge.SFN_Multiply,id:7402,x:32756,y:32839,varname:node_7402,prsc:2|A-9599-OUT,B-4654-OUT;n:type:ShaderForge.SFN_Vector1,id:4654,x:32568,y:32902,varname:node_4654,prsc:2,v1:0.01;n:type:ShaderForge.SFN_Desaturate,id:9599,x:32217,y:32695,varname:node_9599,prsc:2|COL-1879-RGB,DES-6289-OUT;n:type:ShaderForge.SFN_Vector1,id:6289,x:32012,y:32739,varname:node_6289,prsc:2,v1:-2;n:type:ShaderForge.SFN_LightAttenuation,id:5884,x:33720,y:33121,varname:node_5884,prsc:2;n:type:ShaderForge.SFN_LightColor,id:5043,x:33720,y:33253,varname:node_5043,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8678,x:33973,y:33183,varname:node_8678,prsc:2|A-5884-OUT,B-5043-RGB;n:type:ShaderForge.SFN_Multiply,id:6542,x:34458,y:33399,varname:node_6542,prsc:2|A-8678-OUT,B-7163-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3925,x:34994,y:34063,ptovrint:False,ptlb:Foam Intensity,ptin:_FoamIntensity,varname:node_3925,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:7403,x:30690,y:33484,ptovrint:False,ptlb:Water Density,ptin:_WaterDensity,varname:node_7403,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.12;n:type:ShaderForge.SFN_Vector1,id:1808,x:31173,y:32778,varname:node_1808,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Tex2dAsset,id:7321,x:34601,y:31900,ptovrint:False,ptlb:Side Water Distortion,ptin:_SideWaterDistortion,varname:node_7321,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:8565,x:34842,y:31805,varname:node_8565,prsc:2,ntxv:0,isnm:False|UVIN-6408-UVOUT,TEX-7321-TEX;n:type:ShaderForge.SFN_Tex2d,id:1449,x:34842,y:31961,varname:node_1449,prsc:2,ntxv:0,isnm:False|UVIN-5045-UVOUT,TEX-7321-TEX;n:type:ShaderForge.SFN_FragmentPosition,id:4919,x:34617,y:31643,varname:node_4919,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3494,x:32013,y:31577,varname:node_3494,prsc:2|A-7634-OUT,B-6589-OUT,C-6005-OUT;n:type:ShaderForge.SFN_Vector1,id:6589,x:31504,y:31715,varname:node_6589,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Panner,id:6408,x:32714,y:31700,varname:node_6408,prsc:2,spu:1,spv:-1|UVIN-3494-OUT,DIST-3892-OUT;n:type:ShaderForge.SFN_Panner,id:5045,x:32714,y:31861,varname:node_5045,prsc:2,spu:-1,spv:1|UVIN-8528-OUT,DIST-3892-OUT;n:type:ShaderForge.SFN_Time,id:1691,x:31676,y:31786,varname:node_1691,prsc:2;n:type:ShaderForge.SFN_Slider,id:1123,x:31687,y:31931,ptovrint:False,ptlb:Water Distortion Speed,ptin:_WaterDistortionSpeed,varname:node_1123,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.504274,max:3;n:type:ShaderForge.SFN_Multiply,id:3892,x:31920,y:31762,varname:node_3892,prsc:2|A-1691-TSL,B-1123-OUT;n:type:ShaderForge.SFN_Multiply,id:5807,x:32229,y:31773,varname:node_5807,prsc:2|A-3494-OUT,B-1057-OUT;n:type:ShaderForge.SFN_Vector1,id:1057,x:32146,y:31927,varname:node_1057,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Vector2,id:8575,x:32450,y:32018,varname:node_8575,prsc:2,v1:0.333,v2:0.666;n:type:ShaderForge.SFN_Add,id:8528,x:32450,y:31892,varname:node_8528,prsc:2|A-5807-OUT,B-8575-OUT;n:type:ShaderForge.SFN_Add,id:4099,x:35075,y:31839,varname:node_4099,prsc:2|A-8565-R,B-1449-R;n:type:ShaderForge.SFN_Add,id:7075,x:35075,y:31948,varname:node_7075,prsc:2|A-8565-G,B-1449-G;n:type:ShaderForge.SFN_Append,id:7742,x:35334,y:31858,varname:node_7742,prsc:2|A-4099-OUT,B-7075-OUT;n:type:ShaderForge.SFN_Multiply,id:8975,x:35468,y:32266,varname:node_8975,prsc:2|A-3493-OUT,B-4784-OUT;n:type:ShaderForge.SFN_Slider,id:5267,x:35255,y:32013,ptovrint:False,ptlb:Side Refraction Power,ptin:_SideRefractionPower,varname:node_5267,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2805155,max:1;n:type:ShaderForge.SFN_OneMinus,id:4784,x:35167,y:32240,varname:node_4784,prsc:2|IN-163-OUT;n:type:ShaderForge.SFN_Add,id:8257,x:35447,y:32863,varname:node_8257,prsc:2|A-8975-OUT,B-4233-OUT;n:type:ShaderForge.SFN_Multiply,id:3493,x:35684,y:31921,varname:node_3493,prsc:2|A-7742-OUT,B-5267-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6005,x:31504,y:31786,ptovrint:False,ptlb:Side Water Tiling,ptin:_SideWaterTiling,varname:node_6005,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Power,id:5540,x:33615,y:34325,varname:node_5540,prsc:2|VAL-1603-OUT,EXP-5224-OUT;n:type:ShaderForge.SFN_Slider,id:3401,x:33038,y:34292,ptovrint:False,ptlb:Second Gloss,ptin:_SecondGloss,varname:node_3401,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2489707,max:1;n:type:ShaderForge.SFN_RemapRange,id:2868,x:33357,y:34292,varname:node_2868,prsc:2,frmn:0,frmx:1,tomn:1,tomx:11|IN-3401-OUT;n:type:ShaderForge.SFN_Exp,id:5224,x:33357,y:34448,varname:node_5224,prsc:2,et:1|IN-2868-OUT;n:type:ShaderForge.SFN_Multiply,id:5927,x:33788,y:34325,varname:node_5927,prsc:2|A-5540-OUT,B-2921-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2921,x:33615,y:34484,ptovrint:False,ptlb:Gloss Blending Intensity,ptin:_GlossBlendingIntensity,varname:node_2921,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Time,id:9152,x:38116,y:32687,varname:node_9152,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6867,x:38387,y:32708,varname:node_6867,prsc:2|A-9152-TSL,B-1149-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:6410,x:37415,y:31984,varname:node_6410,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9039,x:37739,y:31987,varname:node_9039,prsc:2|A-6410-XYZ,B-1040-OUT;n:type:ShaderForge.SFN_Vector1,id:1040,x:37568,y:32145,varname:node_1040,prsc:2,v1:1;n:type:ShaderForge.SFN_Dot,id:1194,x:38227,y:31969,varname:node_1194,prsc:2,dt:0|A-9025-OUT,B-5039-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5039,x:37950,y:31987,varname:node_5039,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-9039-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8202,x:37844,y:31745,varname:node_8202,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-8150-OUT;n:type:ShaderForge.SFN_Normalize,id:9025,x:38009,y:31745,varname:node_9025,prsc:2|IN-8202-OUT;n:type:ShaderForge.SFN_Vector1,id:7100,x:37592,y:32346,varname:node_7100,prsc:2,v1:2;n:type:ShaderForge.SFN_Pi,id:2102,x:37608,y:32409,varname:node_2102,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2684,x:37769,y:32364,varname:node_2684,prsc:2|A-7100-OUT,B-2102-OUT;n:type:ShaderForge.SFN_Divide,id:8397,x:37822,y:32517,varname:node_8397,prsc:2|A-2684-OUT,B-4711-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4711,x:37592,y:32561,ptovrint:False,ptlb:Wave Length01,ptin:_WaveLength01,varname:_WaveLength_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:200;n:type:ShaderForge.SFN_Multiply,id:7418,x:38439,y:32359,varname:node_7418,prsc:2|A-1194-OUT,B-8397-OUT;n:type:ShaderForge.SFN_Vector3,id:8150,x:37501,y:31647,varname:node_8150,prsc:2,v1:0.3,v2:0,v3:0.7;n:type:ShaderForge.SFN_ValueProperty,id:6385,x:37632,y:32885,ptovrint:False,ptlb:Speed01,ptin:_Speed01,varname:_Speed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:400;n:type:ShaderForge.SFN_Multiply,id:1149,x:38054,y:32868,varname:node_1149,prsc:2|A-8397-OUT,B-6385-OUT;n:type:ShaderForge.SFN_Add,id:3775,x:38674,y:32359,varname:node_3775,prsc:2|A-7418-OUT,B-6867-OUT;n:type:ShaderForge.SFN_Multiply,id:2902,x:38708,y:33044,varname:node_2902,prsc:2|A-6927-OUT,B-1751-OUT,C-8105-OUT;n:type:ShaderForge.SFN_Vector3,id:3009,x:40559,y:32145,varname:node_3009,prsc:2,v1:1,v2:0,v3:0;n:type:ShaderForge.SFN_Multiply,id:7216,x:40559,y:32014,varname:node_7216,prsc:2|A-4489-OUT,B-3009-OUT;n:type:ShaderForge.SFN_Cos,id:1475,x:39764,y:32221,varname:node_1475,prsc:2|IN-3775-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1439,x:40038,y:32020,varname:node_1439,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-8150-OUT;n:type:ShaderForge.SFN_Multiply,id:1481,x:40038,y:32192,varname:node_1481,prsc:2|A-3010-OUT,B-1475-OUT;n:type:ShaderForge.SFN_Multiply,id:3010,x:39764,y:32072,varname:node_3010,prsc:2|A-8228-OUT,B-2902-OUT;n:type:ShaderForge.SFN_Multiply,id:2024,x:39112,y:31834,varname:node_2024,prsc:2|A-8818-OUT,B-2902-OUT,C-8397-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8818,x:39112,y:31739,ptovrint:False,ptlb:Wave Number01,ptin:_WaveNumber01,varname:node_9264,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:670;n:type:ShaderForge.SFN_ValueProperty,id:3221,x:39558,y:31703,ptovrint:False,ptlb:Q01,ptin:_Q01,varname:node_5939,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_Divide,id:8228,x:39585,y:31807,varname:node_8228,prsc:2|A-3221-OUT,B-9081-OUT;n:type:ShaderForge.SFN_Multiply,id:4489,x:40275,y:32005,varname:node_4489,prsc:2|A-1439-OUT,B-1481-OUT;n:type:ShaderForge.SFN_Sin,id:6253,x:39303,y:32651,varname:node_6253,prsc:2|IN-3775-OUT;n:type:ShaderForge.SFN_Multiply,id:4284,x:39661,y:32644,varname:node_4284,prsc:2|A-6253-OUT,B-2902-OUT;n:type:ShaderForge.SFN_Multiply,id:9830,x:40523,y:32732,varname:node_9830,prsc:2|A-5708-OUT,B-4284-OUT;n:type:ShaderForge.SFN_Vector3,id:5708,x:40523,y:32631,varname:node_5708,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Vector3,id:3457,x:40541,y:32468,varname:node_3457,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Multiply,id:920,x:40559,y:32320,varname:node_920,prsc:2|A-3327-OUT,B-3457-OUT;n:type:ShaderForge.SFN_Add,id:5835,x:40917,y:32346,varname:node_5835,prsc:2|A-7216-OUT,B-920-OUT,C-9830-OUT;n:type:ShaderForge.SFN_ComponentMask,id:792,x:40006,y:32387,varname:node_792,prsc:2,cc1:2,cc2:-1,cc3:-1,cc4:-1|IN-8150-OUT;n:type:ShaderForge.SFN_Multiply,id:3327,x:40299,y:32322,varname:node_3327,prsc:2|A-1481-OUT,B-792-OUT;n:type:ShaderForge.SFN_Vector1,id:7356,x:39066,y:31510,varname:node_7356,prsc:2,v1:2;n:type:ShaderForge.SFN_Pi,id:271,x:39082,y:31573,varname:node_271,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9628,x:39227,y:31600,varname:node_9628,prsc:2|A-7356-OUT,B-271-OUT;n:type:ShaderForge.SFN_Multiply,id:9081,x:39338,y:31807,varname:node_9081,prsc:2|A-9628-OUT,B-2024-OUT;n:type:ShaderForge.SFN_Slider,id:6927,x:37262,y:33364,ptovrint:False,ptlb:Ampute01,ptin:_Ampute01,varname:_Ampute_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.089,max:100;n:type:ShaderForge.SFN_Set,id:5635,x:41172,y:32397,varname:wave01,prsc:2|IN-5835-OUT;n:type:ShaderForge.SFN_Get,id:3522,x:36264,y:33107,varname:node_3522,prsc:2|IN-5635-OUT;n:type:ShaderForge.SFN_Time,id:9401,x:38127,y:35090,varname:node_9401,prsc:2;n:type:ShaderForge.SFN_Slider,id:7854,x:37515,y:35607,ptovrint:False,ptlb:Ampute02,ptin:_Ampute02,varname:_Ampute_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.015,max:100;n:type:ShaderForge.SFN_Multiply,id:7828,x:38398,y:35111,varname:node_7828,prsc:2|A-9401-TSL,B-900-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:4570,x:37426,y:34387,varname:node_4570,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1173,x:37750,y:34390,varname:node_1173,prsc:2|A-4570-XYZ,B-1965-OUT;n:type:ShaderForge.SFN_Vector1,id:1965,x:37579,y:34548,varname:node_1965,prsc:2,v1:1;n:type:ShaderForge.SFN_Dot,id:793,x:38238,y:34372,varname:node_793,prsc:2,dt:0|A-7718-OUT,B-9375-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9375,x:37961,y:34390,varname:node_9375,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-1173-OUT;n:type:ShaderForge.SFN_ComponentMask,id:2678,x:37855,y:34148,varname:node_2678,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-6254-OUT;n:type:ShaderForge.SFN_Normalize,id:7718,x:38020,y:34148,varname:node_7718,prsc:2|IN-2678-OUT;n:type:ShaderForge.SFN_Vector1,id:213,x:37603,y:34749,varname:node_213,prsc:2,v1:2;n:type:ShaderForge.SFN_Pi,id:552,x:37619,y:34812,varname:node_552,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4417,x:37780,y:34767,varname:node_4417,prsc:2|A-213-OUT,B-552-OUT;n:type:ShaderForge.SFN_Divide,id:7837,x:37833,y:34920,varname:node_7837,prsc:2|A-4417-OUT,B-1770-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1770,x:37603,y:34964,ptovrint:False,ptlb:Wave Length02,ptin:_WaveLength02,varname:_WaveLength_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:180;n:type:ShaderForge.SFN_Multiply,id:33,x:38514,y:34764,varname:node_33,prsc:2|A-793-OUT,B-7837-OUT;n:type:ShaderForge.SFN_Vector3,id:6254,x:37512,y:34050,varname:node_6254,prsc:2,v1:0.7,v2:0,v3:0.12;n:type:ShaderForge.SFN_ValueProperty,id:7314,x:37620,y:35329,ptovrint:False,ptlb:Speed02,ptin:_Speed02,varname:_Speed_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:380;n:type:ShaderForge.SFN_Multiply,id:900,x:38065,y:35271,varname:node_900,prsc:2|A-7837-OUT,B-7314-OUT;n:type:ShaderForge.SFN_Add,id:9552,x:38781,y:34761,varname:node_9552,prsc:2|A-33-OUT,B-7828-OUT;n:type:ShaderForge.SFN_Multiply,id:9962,x:38719,y:35447,varname:node_9962,prsc:2|A-7854-OUT,B-1751-OUT,C-8105-OUT;n:type:ShaderForge.SFN_Vector3,id:4197,x:40570,y:34581,varname:node_4197,prsc:2,v1:1,v2:0,v3:0;n:type:ShaderForge.SFN_Multiply,id:6371,x:40570,y:34417,varname:node_6371,prsc:2|A-7125-OUT,B-4197-OUT;n:type:ShaderForge.SFN_Cos,id:445,x:39517,y:34636,varname:node_445,prsc:2|IN-9552-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9560,x:40032,y:34408,varname:node_9560,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-6254-OUT;n:type:ShaderForge.SFN_Multiply,id:6075,x:40050,y:34619,varname:node_6075,prsc:2|A-3461-OUT,B-445-OUT;n:type:ShaderForge.SFN_Multiply,id:3461,x:39788,y:34350,varname:node_3461,prsc:2|A-2389-OUT,B-9962-OUT;n:type:ShaderForge.SFN_Multiply,id:9904,x:39144,y:34210,varname:node_9904,prsc:2|A-5566-OUT,B-9962-OUT,C-7837-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5566,x:39099,y:34141,ptovrint:False,ptlb:Wave Number02,ptin:_WaveNumber02,varname:_WaveNumber_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:520;n:type:ShaderForge.SFN_ValueProperty,id:4429,x:39561,y:34106,ptovrint:False,ptlb:Q02,ptin:_Q02,varname:_Q_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Divide,id:2389,x:39601,y:34192,varname:node_2389,prsc:2|A-4429-OUT,B-9468-OUT;n:type:ShaderForge.SFN_Multiply,id:7125,x:40286,y:34408,varname:node_7125,prsc:2|A-9560-OUT,B-6075-OUT;n:type:ShaderForge.SFN_Sin,id:3383,x:39314,y:35054,varname:node_3383,prsc:2|IN-9552-OUT;n:type:ShaderForge.SFN_Multiply,id:5696,x:39672,y:35047,varname:node_5696,prsc:2|A-3383-OUT,B-9962-OUT;n:type:ShaderForge.SFN_Multiply,id:1670,x:40603,y:35191,varname:node_1670,prsc:2|A-5359-OUT,B-5696-OUT;n:type:ShaderForge.SFN_Vector3,id:5359,x:40581,y:35062,varname:node_5359,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Vector3,id:8420,x:40581,y:34891,varname:node_8420,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Multiply,id:9409,x:40570,y:34723,varname:node_9409,prsc:2|A-8042-OUT,B-8420-OUT;n:type:ShaderForge.SFN_Add,id:943,x:40972,y:34589,varname:node_943,prsc:2|A-6371-OUT,B-9409-OUT,C-1670-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6219,x:40050,y:34823,varname:node_6219,prsc:2,cc1:2,cc2:-1,cc3:-1,cc4:-1|IN-6254-OUT;n:type:ShaderForge.SFN_Multiply,id:8042,x:40269,y:34746,varname:node_8042,prsc:2|A-6075-OUT,B-6219-OUT;n:type:ShaderForge.SFN_Vector1,id:7857,x:39081,y:33922,varname:node_7857,prsc:2,v1:2;n:type:ShaderForge.SFN_Pi,id:9810,x:39097,y:33976,varname:node_9810,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8586,x:39246,y:33936,varname:node_8586,prsc:2|A-7857-OUT,B-9810-OUT;n:type:ShaderForge.SFN_Multiply,id:9468,x:39368,y:34210,varname:node_9468,prsc:2|A-8586-OUT,B-9904-OUT;n:type:ShaderForge.SFN_Set,id:2834,x:41184,y:34602,varname:Wave02,prsc:2|IN-943-OUT;n:type:ShaderForge.SFN_Get,id:9872,x:36244,y:33192,varname:node_9872,prsc:2|IN-2834-OUT;n:type:ShaderForge.SFN_Add,id:5450,x:36445,y:33192,varname:node_5450,prsc:2|A-3522-OUT,B-9872-OUT;n:type:ShaderForge.SFN_Relay,id:994,x:36445,y:32949,cmnt:Opacity,varname:node_994,prsc:2|IN-7-OUT;n:type:ShaderForge.SFN_Relay,id:2029,x:36264,y:32930,cmnt:CustomLighting,varname:node_2029,prsc:2|IN-6542-OUT;n:type:ShaderForge.SFN_Relay,id:2597,x:36356,y:32989,cmnt:Refraction,varname:node_2597,prsc:2|IN-8257-OUT;n:type:ShaderForge.SFN_Relay,id:7824,x:36367,y:32769,cmnt:Normal,varname:node_7824,prsc:2|IN-9639-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1751,x:37022,y:33634,ptovrint:False,ptlb:Ampute Multiply,ptin:_AmputeMultiply,varname:node_1751,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.02;n:type:ShaderForge.SFN_Panner,id:4023,x:29792,y:32983,varname:node_4023,prsc:2,spu:1,spv:0;n:type:ShaderForge.SFN_Panner,id:8512,x:30032,y:32983,varname:node_8512,prsc:2,spu:0,spv:1|UVIN-4023-UVOUT;n:type:ShaderForge.SFN_Slider,id:2000,x:26311,y:32538,ptovrint:False,ptlb:Wave 2 X-Direction_copy_copy,ptin:_Wave2XDirection_copy_copy,varname:_Wave2XDirection_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Vector1,id:8105,x:37022,y:33692,varname:node_8105,prsc:2,v1:0.001;proporder:1879-7403-93-424-7385-4958-19-873-3401-2921-3210-8451-4688-7506-3126-5059-7987-3925-7321-1123-5267-6005-4711-6385-8818-3221-1751-6927-7854-1770-7314-5566-4429;pass:END;sub:END;*/

Shader "Advanced Water Shader/WaterShader01" {
    Properties {
        _WaterColor ("Water Color", Color) = (0.5,0.5,0.5,1)
        _WaterDensity ("Water Density", Float ) = 0.12
        _NormalMap ("Normal Map", 2D) = "bump" {}
        _DetailWaveIntensity ("Detail Wave Intensity", Range(0, 1)) = 0.3981464
        _BigWaveIntensity ("Big Wave Intensity", Range(0, 1)) = 0.1538462
        _WaterSpeed ("Water Speed", Range(0, 8)) = 1.841018
        _Gloss ("Gloss", Range(0, 1)) = 0.2641236
        _Specular ("Specular", Float ) = 1
        _SecondGloss ("Second Gloss", Range(0, 1)) = 0.2489707
        _GlossBlendingIntensity ("Gloss Blending Intensity", Float ) = 0.5
        _ReflectionTex ("Reflection Tex", 2D) = "white" {}
        _FresnelReflection ("Fresnel Reflection", Float ) = 1
        _RelectionIntensity ("Relection Intensity", Float ) = 0.8
        _RefractionPower ("Refraction Power", Range(0, 0.5)) = 0.1043485
        _Foam ("Foam", 2D) = "white" {}
        _FoamSpeed ("Foam Speed", Range(0, 5)) = 2
        _FoamDistance ("Foam Distance", Float ) = 2
        _FoamIntensity ("Foam Intensity", Float ) = 1
        _SideWaterDistortion ("Side Water Distortion", 2D) = "bump" {}
        _WaterDistortionSpeed ("Water Distortion Speed", Range(0, 3)) = 0.504274
        _SideRefractionPower ("Side Refraction Power", Range(0, 1)) = 0.2805155
        _SideWaterTiling ("Side Water Tiling", Float ) = 1
        _WaveLength01 ("Wave Length01", Float ) = 200
        _Speed01 ("Speed01", Float ) = 400
        _WaveNumber01 ("Wave Number01", Float ) = 670
        _Q01 ("Q01", Float ) = 4
        _AmputeMultiply ("Ampute Multiply", Float ) = 0.02
        _Ampute01 ("Ampute01", Range(0, 100)) = 0.089
        _Ampute02 ("Ampute02", Range(0, 100)) = 0.015
        _WaveLength02 ("Wave Length02", Float ) = 180
        _Speed02 ("Speed02", Float ) = 380
        _WaveNumber02 ("Wave Number02", Float ) = 520
        _Q02 ("Q02", Float ) = 3
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float4 _WaterColor;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _DetailWaveIntensity;
            uniform float _BigWaveIntensity;
            uniform float _WaterSpeed;
            uniform float _Gloss;
            uniform float _Specular;
            uniform sampler2D _ReflectionTex; uniform float4 _ReflectionTex_ST;
            uniform float _FresnelReflection;
            uniform float _RelectionIntensity;
            uniform float _RefractionPower;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            uniform float _FoamSpeed;
            uniform float _FoamDistance;
            uniform float _FoamIntensity;
            uniform float _WaterDensity;
            uniform sampler2D _SideWaterDistortion; uniform float4 _SideWaterDistortion_ST;
            uniform float _WaterDistortionSpeed;
            uniform float _SideRefractionPower;
            uniform float _SideWaterTiling;
            uniform float _SecondGloss;
            uniform float _GlossBlendingIntensity;
            uniform float _WaveLength01;
            uniform float _Speed01;
            uniform float _WaveNumber01;
            uniform float _Q01;
            uniform float _Ampute01;
            uniform float _Ampute02;
            uniform float _WaveLength02;
            uniform float _Speed02;
            uniform float _WaveNumber02;
            uniform float _Q02;
            uniform float _AmputeMultiply;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                float4 screenPos : TEXCOORD4;
                float4 projPos : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float3 node_8150 = float3(0.3,0,0.7);
                float node_8105 = 0.001;
                float node_2902 = (_Ampute01*_AmputeMultiply*node_8105);
                float node_8397 = ((2.0*3.141592654)/_WaveLength01);
                float4 node_9152 = _Time + _TimeEditor;
                float node_3775 = ((dot(normalize(node_8150.rb),(mul(unity_ObjectToWorld, v.vertex).rgb*1.0).rb)*node_8397)+(node_9152.r*(node_8397*_Speed01)));
                float node_1481 = (((_Q01/((2.0*3.141592654)*(_WaveNumber01*node_2902*node_8397)))*node_2902)*cos(node_3775));
                float3 wave01 = (((node_8150.r*node_1481)*float3(1,0,0))+((node_1481*node_8150.b)*float3(0,0,1))+(float3(0,1,0)*(sin(node_3775)*node_2902)));
                float3 node_6254 = float3(0.7,0,0.12);
                float node_9962 = (_Ampute02*_AmputeMultiply*node_8105);
                float node_7837 = ((2.0*3.141592654)/_WaveLength02);
                float4 node_9401 = _Time + _TimeEditor;
                float node_9552 = ((dot(normalize(node_6254.rb),(mul(unity_ObjectToWorld, v.vertex).rgb*1.0).rb)*node_7837)+(node_9401.r*(node_7837*_Speed02)));
                float node_6075 = (((_Q02/((2.0*3.141592654)*(_WaveNumber02*node_9962*node_7837)))*node_9962)*cos(node_9552));
                float3 Wave02 = (((node_6254.r*node_6075)*float3(1,0,0))+((node_6075*node_6254.b)*float3(0,0,1))+(float3(0,1,0)*(sin(node_9552)*node_9962)));
                v.vertex.xyz += (wave01+Wave02);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float node_3241 = 0.0;
                float2 node_2559 = float2(0,0);
                float4 node_1117 = _Time + _TimeEditor;
                float node_349 = (node_1117.r*_WaterSpeed*0.1);
                float node_7233 = (node_349*0.2);
                float2 node_3280 = (i.posWorld.rgb.br*0.02);
                float node_5585 = 0.1;
                float2 node_4478 = ((node_3280*node_5585)+node_7233*float2(-1,1));
                float3 node_4884 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_4478, _NormalMap)));
                float2 node_2572 = ((node_3280*0.8)+float2(0.333,0.666));
                float2 node_7387 = ((node_2572*node_5585)+node_7233*float2(1,-1));
                float3 node_2009 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_7387, _NormalMap)));
                float2 node_7952 = (node_3280+node_349*float2(1,-1));
                float3 node_8094 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_7952, _NormalMap)));
                float2 node_1106 = (node_2572+node_349*float2(-1,1));
                float3 node_5167 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_1106, _NormalMap)));
                float node_163 = i.normalDir.g;
                float3 node_9639 = lerp(float3(node_3241,node_3241,node_3241),float3((lerp(node_2559,float2((node_4884.r+node_2009.r),(node_4884.g+node_2009.g)),_BigWaveIntensity)+lerp(node_2559,float2((node_8094.r+node_5167.r),(node_8094.g+node_5167.g)),_DetailWaveIntensity)),1.0),node_163);
                float3 normalLocal = node_9639;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float4 node_1691 = _Time + _TimeEditor;
                float node_3892 = (node_1691.r*_WaterDistortionSpeed);
                float2 node_3494 = (i.posWorld.rgb.gb*0.1*_SideWaterTiling);
                float2 node_6408 = (node_3494+node_3892*float2(1,-1));
                float3 node_8565 = UnpackNormal(tex2D(_SideWaterDistortion,TRANSFORM_TEX(node_6408, _SideWaterDistortion)));
                float2 node_5045 = (((node_3494*0.8)+float2(0.333,0.666))+node_3892*float2(-1,1));
                float3 node_1449 = UnpackNormal(tex2D(_SideWaterDistortion,TRANSFORM_TEX(node_5045, _SideWaterDistortion)));
                float node_3553 = saturate((sceneZ-partZ)/0.3);
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (((float2((node_8565.r+node_1449.r),(node_8565.g+node_1449.g))*_SideRefractionPower)*(1.0 - node_163))+(node_9639.rg*_RefractionPower*node_3553));
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float node_1603 = max(0,dot(lightDirection,viewReflectDirection));
                float node_9555 = (-0.1);
                float node_9385 = 1.0;
                float4 node_645 = tex2D(_ReflectionTex,TRANSFORM_TEX(sceneUVs.rg, _ReflectionTex));
                float4 node_2278 = _Time + _TimeEditor;
                float node_3184 = (node_2278.r*_FoamSpeed);
                float2 node_9319 = (i.posWorld.rgb.rb*0.3);
                float2 node_6069 = (node_9319+node_3184*float2(1,-1));
                float4 node_5933 = tex2D(_Foam,TRANSFORM_TEX(node_6069, _Foam));
                float2 node_2148 = (((node_9319*0.8)+float2(0.333,0.666))+node_3184*float2(-1,1));
                float4 node_2142 = tex2D(_Foam,TRANSFORM_TEX(node_2148, _Foam));
                float3 finalColor = ((attenuation*_LightColor0.rgb)*((_Specular*pow(node_1603,exp2((_Gloss*10.0+1.0))))+saturate((1.0-(1.0-saturate((1.0-(1.0-(pow(saturate((node_9385 + ( (((sceneZ-partZ)*_WaterDensity) - node_9555) * (0.0 - node_9385) ) / ((_WaterColor.rgb*8.0) - node_9555))),3.0)*sceneColor.rgb))*(1.0-((node_645.rgb*pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelReflection)*_RelectionIntensity*node_163)+((1.0 - node_163)*(lerp(_WaterColor.rgb,dot(_WaterColor.rgb,float3(0.3,0.59,0.11)),(-2.0))*0.01)))))))*(1.0-(node_5933.rgb*node_2142.rgb*(1.0 - saturate((sceneZ-partZ)/_FoamDistance))*node_163*_FoamIntensity))))+(pow(node_1603,exp2((_SecondGloss*10.0+1.0)))*_GlossBlendingIntensity)));
                return fixed4(lerp(sceneColor.rgb, finalColor,(node_3553*clamp(node_163,0.9,1))),1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd
            #pragma exclude_renderers metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float4 _WaterColor;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _DetailWaveIntensity;
            uniform float _BigWaveIntensity;
            uniform float _WaterSpeed;
            uniform float _Gloss;
            uniform float _Specular;
            uniform sampler2D _ReflectionTex; uniform float4 _ReflectionTex_ST;
            uniform float _FresnelReflection;
            uniform float _RelectionIntensity;
            uniform float _RefractionPower;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            uniform float _FoamSpeed;
            uniform float _FoamDistance;
            uniform float _FoamIntensity;
            uniform float _WaterDensity;
            uniform sampler2D _SideWaterDistortion; uniform float4 _SideWaterDistortion_ST;
            uniform float _WaterDistortionSpeed;
            uniform float _SideRefractionPower;
            uniform float _SideWaterTiling;
            uniform float _SecondGloss;
            uniform float _GlossBlendingIntensity;
            uniform float _WaveLength01;
            uniform float _Speed01;
            uniform float _WaveNumber01;
            uniform float _Q01;
            uniform float _Ampute01;
            uniform float _Ampute02;
            uniform float _WaveLength02;
            uniform float _Speed02;
            uniform float _WaveNumber02;
            uniform float _Q02;
            uniform float _AmputeMultiply;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                float4 screenPos : TEXCOORD4;
                float4 projPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float3 node_8150 = float3(0.3,0,0.7);
                float node_8105 = 0.001;
                float node_2902 = (_Ampute01*_AmputeMultiply*node_8105);
                float node_8397 = ((2.0*3.141592654)/_WaveLength01);
                float4 node_9152 = _Time + _TimeEditor;
                float node_3775 = ((dot(normalize(node_8150.rb),(mul(unity_ObjectToWorld, v.vertex).rgb*1.0).rb)*node_8397)+(node_9152.r*(node_8397*_Speed01)));
                float node_1481 = (((_Q01/((2.0*3.141592654)*(_WaveNumber01*node_2902*node_8397)))*node_2902)*cos(node_3775));
                float3 wave01 = (((node_8150.r*node_1481)*float3(1,0,0))+((node_1481*node_8150.b)*float3(0,0,1))+(float3(0,1,0)*(sin(node_3775)*node_2902)));
                float3 node_6254 = float3(0.7,0,0.12);
                float node_9962 = (_Ampute02*_AmputeMultiply*node_8105);
                float node_7837 = ((2.0*3.141592654)/_WaveLength02);
                float4 node_9401 = _Time + _TimeEditor;
                float node_9552 = ((dot(normalize(node_6254.rb),(mul(unity_ObjectToWorld, v.vertex).rgb*1.0).rb)*node_7837)+(node_9401.r*(node_7837*_Speed02)));
                float node_6075 = (((_Q02/((2.0*3.141592654)*(_WaveNumber02*node_9962*node_7837)))*node_9962)*cos(node_9552));
                float3 Wave02 = (((node_6254.r*node_6075)*float3(1,0,0))+((node_6075*node_6254.b)*float3(0,0,1))+(float3(0,1,0)*(sin(node_9552)*node_9962)));
                v.vertex.xyz += (wave01+Wave02);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float node_3241 = 0.0;
                float2 node_2559 = float2(0,0);
                float4 node_1117 = _Time + _TimeEditor;
                float node_349 = (node_1117.r*_WaterSpeed*0.1);
                float node_7233 = (node_349*0.2);
                float2 node_3280 = (i.posWorld.rgb.br*0.02);
                float node_5585 = 0.1;
                float2 node_4478 = ((node_3280*node_5585)+node_7233*float2(-1,1));
                float3 node_4884 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_4478, _NormalMap)));
                float2 node_2572 = ((node_3280*0.8)+float2(0.333,0.666));
                float2 node_7387 = ((node_2572*node_5585)+node_7233*float2(1,-1));
                float3 node_2009 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_7387, _NormalMap)));
                float2 node_7952 = (node_3280+node_349*float2(1,-1));
                float3 node_8094 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_7952, _NormalMap)));
                float2 node_1106 = (node_2572+node_349*float2(-1,1));
                float3 node_5167 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_1106, _NormalMap)));
                float node_163 = i.normalDir.g;
                float3 node_9639 = lerp(float3(node_3241,node_3241,node_3241),float3((lerp(node_2559,float2((node_4884.r+node_2009.r),(node_4884.g+node_2009.g)),_BigWaveIntensity)+lerp(node_2559,float2((node_8094.r+node_5167.r),(node_8094.g+node_5167.g)),_DetailWaveIntensity)),1.0),node_163);
                float3 normalLocal = node_9639;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float4 node_1691 = _Time + _TimeEditor;
                float node_3892 = (node_1691.r*_WaterDistortionSpeed);
                float2 node_3494 = (i.posWorld.rgb.gb*0.1*_SideWaterTiling);
                float2 node_6408 = (node_3494+node_3892*float2(1,-1));
                float3 node_8565 = UnpackNormal(tex2D(_SideWaterDistortion,TRANSFORM_TEX(node_6408, _SideWaterDistortion)));
                float2 node_5045 = (((node_3494*0.8)+float2(0.333,0.666))+node_3892*float2(-1,1));
                float3 node_1449 = UnpackNormal(tex2D(_SideWaterDistortion,TRANSFORM_TEX(node_5045, _SideWaterDistortion)));
                float node_3553 = saturate((sceneZ-partZ)/0.3);
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (((float2((node_8565.r+node_1449.r),(node_8565.g+node_1449.g))*_SideRefractionPower)*(1.0 - node_163))+(node_9639.rg*_RefractionPower*node_3553));
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float node_1603 = max(0,dot(lightDirection,viewReflectDirection));
                float node_9555 = (-0.1);
                float node_9385 = 1.0;
                float4 node_645 = tex2D(_ReflectionTex,TRANSFORM_TEX(sceneUVs.rg, _ReflectionTex));
                float4 node_2278 = _Time + _TimeEditor;
                float node_3184 = (node_2278.r*_FoamSpeed);
                float2 node_9319 = (i.posWorld.rgb.rb*0.3);
                float2 node_6069 = (node_9319+node_3184*float2(1,-1));
                float4 node_5933 = tex2D(_Foam,TRANSFORM_TEX(node_6069, _Foam));
                float2 node_2148 = (((node_9319*0.8)+float2(0.333,0.666))+node_3184*float2(-1,1));
                float4 node_2142 = tex2D(_Foam,TRANSFORM_TEX(node_2148, _Foam));
                float3 finalColor = ((attenuation*_LightColor0.rgb)*((_Specular*pow(node_1603,exp2((_Gloss*10.0+1.0))))+saturate((1.0-(1.0-saturate((1.0-(1.0-(pow(saturate((node_9385 + ( (((sceneZ-partZ)*_WaterDensity) - node_9555) * (0.0 - node_9385) ) / ((_WaterColor.rgb*8.0) - node_9555))),3.0)*sceneColor.rgb))*(1.0-((node_645.rgb*pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelReflection)*_RelectionIntensity*node_163)+((1.0 - node_163)*(lerp(_WaterColor.rgb,dot(_WaterColor.rgb,float3(0.3,0.59,0.11)),(-2.0))*0.01)))))))*(1.0-(node_5933.rgb*node_2142.rgb*(1.0 - saturate((sceneZ-partZ)/_FoamDistance))*node_163*_FoamIntensity))))+(pow(node_1603,exp2((_SecondGloss*10.0+1.0)))*_GlossBlendingIntensity)));
                return fixed4(finalColor,0);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _WaveLength01;
            uniform float _Speed01;
            uniform float _WaveNumber01;
            uniform float _Q01;
            uniform float _Ampute01;
            uniform float _Ampute02;
            uniform float _WaveLength02;
            uniform float _Speed02;
            uniform float _WaveNumber02;
            uniform float _Q02;
            uniform float _AmputeMultiply;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float3 node_8150 = float3(0.3,0,0.7);
                float node_8105 = 0.001;
                float node_2902 = (_Ampute01*_AmputeMultiply*node_8105);
                float node_8397 = ((2.0*3.141592654)/_WaveLength01);
                float4 node_9152 = _Time + _TimeEditor;
                float node_3775 = ((dot(normalize(node_8150.rb),(mul(unity_ObjectToWorld, v.vertex).rgb*1.0).rb)*node_8397)+(node_9152.r*(node_8397*_Speed01)));
                float node_1481 = (((_Q01/((2.0*3.141592654)*(_WaveNumber01*node_2902*node_8397)))*node_2902)*cos(node_3775));
                float3 wave01 = (((node_8150.r*node_1481)*float3(1,0,0))+((node_1481*node_8150.b)*float3(0,0,1))+(float3(0,1,0)*(sin(node_3775)*node_2902)));
                float3 node_6254 = float3(0.7,0,0.12);
                float node_9962 = (_Ampute02*_AmputeMultiply*node_8105);
                float node_7837 = ((2.0*3.141592654)/_WaveLength02);
                float4 node_9401 = _Time + _TimeEditor;
                float node_9552 = ((dot(normalize(node_6254.rb),(mul(unity_ObjectToWorld, v.vertex).rgb*1.0).rb)*node_7837)+(node_9401.r*(node_7837*_Speed02)));
                float node_6075 = (((_Q02/((2.0*3.141592654)*(_WaveNumber02*node_9962*node_7837)))*node_9962)*cos(node_9552));
                float3 Wave02 = (((node_6254.r*node_6075)*float3(1,0,0))+((node_6075*node_6254.b)*float3(0,0,1))+(float3(0,1,0)*(sin(node_9552)*node_9962)));
                v.vertex.xyz += (wave01+Wave02);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
