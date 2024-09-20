﻿Shader "NatureManufacture/URP/Lit/Full Triplanar Cover"
{
    Properties
    {
        _AlphaCutoff("Alpha Cutoff", Range(0, 1)) = 0
        _BaseColor("Base Color", Color) = (1, 1, 1, 0)
        [NoScaleOffset]_BaseColorMap("Base Map(RGB) Alpha(A)", 2D) = "white" {}
        _BaseTilingOffset("Base Tiling and Offset", Vector) = (1, 1, 0, 0)
        _BaseTriplanarThreshold("Base Triplanar Threshold", Range(1, 8)) = 5
        [Normal][NoScaleOffset]_BaseNormalMap("Base Normal Map", 2D) = "bump" {}
        _BaseNormalScale("Base Normal Scale", Range(0, 8)) = 1
        [NoScaleOffset]_BaseMaskMap("Base Mask Map MT(R) AO(G) H(B) SM(A)", 2D) = "white" {}
        _BaseMetallic("Base Metallic", Range(0, 1)) = 1
        _BaseAORemapMin("Base AO Remap Min", Range(0, 1)) = 0
        _BaseAORemapMax("Base AO Remap Max", Range(0, 1)) = 1
        _BaseSmoothnessRemapMin("Base Smoothness Remap Min", Range(0, 1)) = 0
        _BaseSmoothnessRemapMax("Base Smoothness Remap Max", Range(0, 1)) = 1
        [NoScaleOffset]_CoverMaskA("Cover Mask (A) Curvature (R)", 2D) = "white" {}
        _CoverMaskPower("Cover Mask Power", Range(0, 10)) = 1
        _Cover_Amount("Cover Amount", Range(0, 2)) = 0
        _Cover_Amount_Grow_Speed("Cover Amount Grow Speed", Range(0, 3)) = 3
        _CoverDirection("Cover Direction", Vector) = (0, 1, 0, 0)
        _Cover_Max_Angle("Cover Max Angle", Range(0.001, 90)) = 35
        _Cover_Min_Height("Cover Min Height", Float) = -10000
        _Cover_Min_Height_Blending("Cover Min Height Blending", Range(0, 500)) = 1
        _CoverBaseColor("Cover Base Color", Color) = (1, 1, 1, 0)
        [NoScaleOffset]_CoverBaseColorMap("Cover Base Map", 2D) = "white" {}
        _CoverTilingOffset("Cover Tiling Offset", Vector) = (1, 1, 0, 0)
        _CoverTriplanarThreshold("Cover Triplanar Threshold", Range(1, 8)) = 5
        [Normal][NoScaleOffset]_CoverNormalMap("Cover Normal Map", 2D) = "bump" {}
        _CoverNormalScale("Cover Normal Scale", Range(0, 8)) = 1
        _CoverNormalBlendHardness("Cover Normal Blend Hardness", Range(0, 8)) = 1
        _CoverHeightMapMin("Cover Height Map Min", Float) = 0
        _CoverHeightMapMax("Cover Height Map Max", Float) = 1
        _CoverHeightMapOffset("Cover Height Map Offset", Float) = 0
        _CoverHardness("Cover Hardness", Range(0, 10)) = 5
        [NoScaleOffset]_CoverMaskMap("Cover Mask Map MT(R) AO(G) H(B) SM(A)", 2D) = "white" {}
        _CoverMetallic("Cover Metallic", Range(0, 1)) = 1
        _CoverAORemapMin("Cover AO Remap Min", Range(0, 1)) = 0
        _CoverAORemapMax("Cover AO Remap Max", Range(0, 1)) = 1
        _CoverSmoothnessRemapMin("Cover Smoothness Remap Min", Range(0, 1)) = 0
        _CoverSmoothnessRemapMax("Cover Smoothness Remap Max", Range(0, 1)) = 1
        [Normal][NoScaleOffset]_ShapeNormalMap("Shape Normal Map", 2D) = "bump" {}
        _shapeNormalScale("Shape Normal Scale", Float) = 0
        _CovershapeNormalScale("Cover Shape Normal Scale", Float) = 0
        [NoScaleOffset]_ShapeAO("Shape AO(G)", 2D) = "white" {}
        _ShapeAORemapMin("Shape AO Remap Min", Range(0, 1)) = 0
        _ShapeAORemapMax("Shape AO Remap Max", Range(0, 1)) = 1
        _CoverShapeAORemapMin("Cover Shape AO Remap Min", Range(0, 1)) = 0
        _CoverShapeAORemapMax("Cover Shape AO Remap Max", Range(0, 1)) = 1
        [NoScaleOffset]_DetailMap("Detail Map Base (R) Ny(G) Sm(B) Nx(A)", 2D) = "white" {}
        _DetailTilingOffset("Detail Tiling Offset", Vector) = (1, 1, 0, 0)
        _DetailAlbedoScale("Detail Albedo Scale", Range(0, 2)) = 0
        _DetailNormalScale("Detail Normal Scale", Range(0, 2)) = 0
        _DetailSmoothnessScale("Detail Smoothness Scale", Range(0, 2)) = 0
        _DetailCoverAlbedoScale("Detail Cover Albedo Scale", Range(0, 2)) = 0
        _DetailCoverNormalScale("Detail Cover Normal Scale", Range(0, 2)) = 0
        _DetailCoverSmoothnessScale("Detail Cover Smoothness Scale", Range(0, 2)) = 0
        [ToggleUI]_CoverMaskRCurvature("Cover Mask (R) as Curvature", Float) = 0
        _BaseBrightnessCurvMultply("Base Brightness Curv Multply", Float) = 1
        _BaseBrightnessCurvPower("Base Brightness Curv Power", Float) = 1
        _BaseDarknessCurvMultply("Base Darkness Curv Multply", Float) = 1
        _BaseDarknessCurvPower("Base Darkness Curv Power", Float) = 1
        _CoverBrightnessCurvMultply("Cover Brightness Curv Multply", Float) = 1
        _CoverBrightnessCurvPower("Cover Brightness Curv Power", Float) = 1
        _CoverDarknessCurvMultply("Cover Darkness Curv Multply", Float) = 1
        _CoverDarknessCurvPower("Cover Darkness Curv Power", Float) = 1
        _WetColor("Wet Color Vertex(R)", Color) = (0.7735849, 0.7735849, 0.7735849, 0)
        _WetSmoothness("Wet Smoothness Vertex(R)", Range(0, 1)) = 1
        [Toggle]_USEDYNAMICCOVERTSTATICMASKF("Use Dynamic Cover (T) Static Mask (F)", Float) = 1
        [HideInInspector]_WorkflowMode("_WorkflowMode", Float) = 1
        [HideInInspector]_CastShadows("_CastShadows", Float) = 1
        [HideInInspector]_ReceiveShadows("_ReceiveShadows", Float) = 1
        [HideInInspector]_Surface("_Surface", Float) = 0
        [HideInInspector]_Blend("_Blend", Float) = 0
        [HideInInspector]_AlphaClip("_AlphaClip", Float) = 1
        [HideInInspector]_BlendModePreserveSpecular("_BlendModePreserveSpecular", Float) = 0
        [HideInInspector]_SrcBlend("_SrcBlend", Float) = 1
        [HideInInspector]_DstBlend("_DstBlend", Float) = 0
        [HideInInspector][ToggleUI]_ZWrite("_ZWrite", Float) = 1
        [HideInInspector]_ZWriteControl("_ZWriteControl", Float) = 0
        [HideInInspector]_ZTest("_ZTest", Float) = 4
        [HideInInspector]_Cull("_Cull", Float) = 2
        [HideInInspector]_AlphaToMask("_AlphaToMask", Float) = 1
        [HideInInspector]_QueueOffset("_QueueOffset", Float) = 0
        [HideInInspector]_QueueControl("_QueueControl", Float) = -1
        [HideInInspector][NoScaleOffset]unity_Lightmaps("unity_Lightmaps", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset]unity_LightmapsInd("unity_LightmapsInd", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset]unity_ShadowMasks("unity_ShadowMasks", 2DArray) = "" {}
    }
    SubShader
    {
        Tags
        {
            "RenderPipeline"="UniversalPipeline"
            "RenderType"="Opaque"
            "UniversalMaterialType" = "Lit"
            "Queue"="AlphaTest"
            "DisableBatching"="False"
            "ShaderGraphShader"="true"
            "ShaderGraphTargetId"="UniversalLitSubTarget"
        }
        Pass
        {
            Name "Universal Forward"
            Tags
            {
                "LightMode" = "UniversalForward"
            }
        
        // Render State
        Cull [_Cull]
        Blend [_SrcBlend] [_DstBlend]
        ZTest [_ZTest]
        ZWrite [_ZWrite]
        AlphaToMask [_AlphaToMask]
        
        // Debug
        // <None>
        
        // --------------------------------------------------
        // Pass
        
        HLSLPROGRAM
        
        // Pragmas
        #pragma target 2.0
        #pragma multi_compile_instancing
        #pragma multi_compile_fog
        #pragma instancing_options renderinglayer
        #pragma vertex vert
        #pragma fragment frag
        
        // Keywords
        #pragma multi_compile_fragment _ _SCREEN_SPACE_OCCLUSION
        #pragma multi_compile _ LIGHTMAP_ON
        #pragma multi_compile _ DYNAMICLIGHTMAP_ON
        #pragma multi_compile _ DIRLIGHTMAP_COMBINED
        #pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
        #pragma multi_compile _ _ADDITIONAL_LIGHTS_VERTEX _ADDITIONAL_LIGHTS
        #pragma multi_compile_fragment _ _ADDITIONAL_LIGHT_SHADOWS
        #pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
        #pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION
        #pragma multi_compile_fragment _ _SHADOWS_SOFT
        #pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
        #pragma multi_compile _ SHADOWS_SHADOWMASK
        #pragma multi_compile_fragment _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
        #pragma multi_compile_fragment _ _LIGHT_LAYERS
        #pragma multi_compile_fragment _ DEBUG_DISPLAY
        #pragma multi_compile_fragment _ _LIGHT_COOKIES
        #pragma multi_compile _ _FORWARD_PLUS
        #pragma shader_feature_fragment _ _SURFACE_TYPE_TRANSPARENT
        #pragma shader_feature_local_fragment _ _ALPHAPREMULTIPLY_ON
        #pragma shader_feature_local_fragment _ _ALPHAMODULATE_ON
        #pragma shader_feature_local_fragment _ _ALPHATEST_ON
        #pragma shader_feature_local_fragment _ _SPECULAR_SETUP
        #pragma shader_feature_local _ _RECEIVE_SHADOWS_OFF
        #pragma shader_feature_local _ _USEDYNAMICCOVERTSTATICMASKF_ON
        
        #if defined(_USEDYNAMICCOVERTSTATICMASKF_ON)
            #define KEYWORD_PERMUTATION_0
        #else
            #define KEYWORD_PERMUTATION_1
        #endif
        
        
        // Defines
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define _NORMALMAP 1
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define _NORMAL_DROPOFF_TS 1
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_NORMAL
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_TANGENT
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_TEXCOORD0
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_TEXCOORD1
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_TEXCOORD2
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_COLOR
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_POSITION_WS
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_NORMAL_WS
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_TANGENT_WS
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_TEXCOORD0
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_COLOR
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_FOG_AND_VERTEX_LIGHT
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_SHADOW_COORD
        #endif
        
        #define FEATURES_GRAPH_VERTEX
        /* WARNING: $splice Could not find named fragment 'PassInstancing' */
        #define SHADERPASS SHADERPASS_FORWARD
        #define _FOG_FRAGMENT 1
        
        
        // custom interpolator pre-include
        /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
        
        // Includes
        #include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
        #include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
        #include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ProbeVolumeVariants.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
        
        // --------------------------------------------------
        // Structs and Packing
        
        // custom interpolators pre packing
        /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
        
        struct Attributes
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionOS : POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalOS : NORMAL;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 tangentOS : TANGENT;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 uv0 : TEXCOORD0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 uv1 : TEXCOORD1;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 uv2 : TEXCOORD2;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 color : COLOR;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : INSTANCEID_SEMANTIC;
            #endif
            #endif
        };
        struct Varyings
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 positionCS : SV_POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionWS;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalWS;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 tangentWS;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 texCoord0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 color;
            #endif
            #if defined(LIGHTMAP_ON)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float2 staticLightmapUV;
            #endif
            #endif
            #if defined(DYNAMICLIGHTMAP_ON)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float2 dynamicLightmapUV;
            #endif
            #endif
            #if !defined(LIGHTMAP_ON)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 sh;
            #endif
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 fogFactorAndVertexLight;
            #endif
            #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 shadowCoord;
            #endif
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
            #endif
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
            #endif
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif
            #endif
        };
        struct SurfaceDescriptionInputs
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpaceNormal;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 TangentSpaceNormal;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpaceTangent;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpaceBiTangent;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpacePosition;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 AbsoluteWorldSpacePosition;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 uv0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 VertexColor;
            #endif
        };
        struct VertexDescriptionInputs
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpaceNormal;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpaceTangent;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpacePosition;
            #endif
        };
        struct PackedVaryings
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 positionCS : SV_POSITION;
            #endif
            #if defined(LIGHTMAP_ON)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float2 staticLightmapUV : INTERP0;
            #endif
            #endif
            #if defined(DYNAMICLIGHTMAP_ON)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float2 dynamicLightmapUV : INTERP1;
            #endif
            #endif
            #if !defined(LIGHTMAP_ON)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 sh : INTERP2;
            #endif
            #endif
            #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 shadowCoord : INTERP3;
            #endif
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 tangentWS : INTERP4;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 texCoord0 : INTERP5;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 color : INTERP6;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 fogFactorAndVertexLight : INTERP7;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionWS : INTERP8;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalWS : INTERP9;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
            #endif
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
            #endif
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif
            #endif
        };
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        PackedVaryings PackVaryings (Varyings input)
        {
            PackedVaryings output;
            ZERO_INITIALIZE(PackedVaryings, output);
            output.positionCS = input.positionCS;
            #if defined(LIGHTMAP_ON)
            output.staticLightmapUV = input.staticLightmapUV;
            #endif
            #if defined(DYNAMICLIGHTMAP_ON)
            output.dynamicLightmapUV = input.dynamicLightmapUV;
            #endif
            #if !defined(LIGHTMAP_ON)
            output.sh = input.sh;
            #endif
            #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
            output.shadowCoord = input.shadowCoord;
            #endif
            output.tangentWS.xyzw = input.tangentWS;
            output.texCoord0.xyzw = input.texCoord0;
            output.color.xyzw = input.color;
            output.fogFactorAndVertexLight.xyzw = input.fogFactorAndVertexLight;
            output.positionWS.xyz = input.positionWS;
            output.normalWS.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif
            return output;
        }
        
        Varyings UnpackVaryings (PackedVaryings input)
        {
            Varyings output;
            output.positionCS = input.positionCS;
            #if defined(LIGHTMAP_ON)
            output.staticLightmapUV = input.staticLightmapUV;
            #endif
            #if defined(DYNAMICLIGHTMAP_ON)
            output.dynamicLightmapUV = input.dynamicLightmapUV;
            #endif
            #if !defined(LIGHTMAP_ON)
            output.sh = input.sh;
            #endif
            #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
            output.shadowCoord = input.shadowCoord;
            #endif
            output.tangentWS = input.tangentWS.xyzw;
            output.texCoord0 = input.texCoord0.xyzw;
            output.color = input.color.xyzw;
            output.fogFactorAndVertexLight = input.fogFactorAndVertexLight.xyzw;
            output.positionWS = input.positionWS.xyz;
            output.normalWS = input.normalWS.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif
            return output;
        }
        #endif
        
        // --------------------------------------------------
        // Graph
        
        // Graph Properties
        CBUFFER_START(UnityPerMaterial)
        float _AlphaCutoff;
        float4 _BaseColor;
        float4 _BaseColorMap_TexelSize;
        float4 _BaseTilingOffset;
        float _BaseTriplanarThreshold;
        float4 _BaseNormalMap_TexelSize;
        float _BaseNormalScale;
        float4 _BaseMaskMap_TexelSize;
        float _BaseMetallic;
        float _BaseAORemapMin;
        float _BaseAORemapMax;
        float _BaseSmoothnessRemapMin;
        float _BaseSmoothnessRemapMax;
        float4 _CoverMaskA_TexelSize;
        float _CoverMaskPower;
        float _Cover_Amount;
        float _Cover_Amount_Grow_Speed;
        float3 _CoverDirection;
        float _Cover_Max_Angle;
        float _Cover_Min_Height;
        float _Cover_Min_Height_Blending;
        float4 _CoverBaseColor;
        float4 _CoverBaseColorMap_TexelSize;
        float4 _CoverTilingOffset;
        float _CoverTriplanarThreshold;
        float4 _CoverNormalMap_TexelSize;
        float _CoverNormalScale;
        float _CoverNormalBlendHardness;
        float _CoverHeightMapMin;
        float _CoverHeightMapMax;
        float _CoverHeightMapOffset;
        float _CoverHardness;
        float4 _CoverMaskMap_TexelSize;
        float _CoverMetallic;
        float _CoverAORemapMin;
        float _CoverAORemapMax;
        float _CoverSmoothnessRemapMin;
        float _CoverSmoothnessRemapMax;
        float4 _ShapeNormalMap_TexelSize;
        float _shapeNormalScale;
        float _CovershapeNormalScale;
        float4 _ShapeAO_TexelSize;
        float _ShapeAORemapMin;
        float _ShapeAORemapMax;
        float _CoverShapeAORemapMin;
        float _CoverShapeAORemapMax;
        float4 _DetailMap_TexelSize;
        float4 _DetailTilingOffset;
        float _DetailAlbedoScale;
        float _DetailNormalScale;
        float _DetailSmoothnessScale;
        float _DetailCoverAlbedoScale;
        float _DetailCoverNormalScale;
        float _DetailCoverSmoothnessScale;
        float _CoverMaskRCurvature;
        float _BaseBrightnessCurvMultply;
        float _BaseBrightnessCurvPower;
        float _BaseDarknessCurvMultply;
        float _BaseDarknessCurvPower;
        float _CoverBrightnessCurvMultply;
        float _CoverBrightnessCurvPower;
        float _CoverDarknessCurvMultply;
        float _CoverDarknessCurvPower;
        float4 _WetColor;
        float _WetSmoothness;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_BaseNormalMap);
        SAMPLER(sampler_BaseNormalMap);
        TEXTURE2D(_BaseMaskMap);
        SAMPLER(sampler_BaseMaskMap);
        TEXTURE2D(_CoverMaskA);
        SAMPLER(sampler_CoverMaskA);
        TEXTURE2D(_CoverBaseColorMap);
        SAMPLER(sampler_CoverBaseColorMap);
        TEXTURE2D(_CoverNormalMap);
        SAMPLER(sampler_CoverNormalMap);
        TEXTURE2D(_CoverMaskMap);
        SAMPLER(sampler_CoverMaskMap);
        TEXTURE2D(_ShapeNormalMap);
        SAMPLER(sampler_ShapeNormalMap);
        TEXTURE2D(_ShapeAO);
        SAMPLER(sampler_ShapeAO);
        TEXTURE2D(_DetailMap);
        SAMPLER(sampler_DetailMap);
        
        // Graph Includes
        #include "./NM_Object_VSPro_Indirect.cginc"
        
        // -- Property used by ScenePickingPass
        #ifdef SCENEPICKINGPASS
        float4 _SelectionID;
        #endif
        
        // -- Properties used by SceneSelectionPass
        #ifdef SCENESELECTIONPASS
        int _ObjectId;
        int _PassValue;
        #endif
        
        // Graph Functions
        
        void AddPragma_float(float3 A, out float3 Out){
        #pragma instancing_options renderinglayer procedural:setupVSPro
        Out = A;
        }
        
        struct Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float
        {
        };
        
        void SG_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float(float3 Vector3_314C8600, Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float IN, out float3 ObjectSpacePosition_1)
        {
        float3 _Property_5ec158abd968858c9d31ab40df5e9e6f_Out_0_Vector3 = Vector3_314C8600;
        float3 _InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3;
        InjectSetup_float(_Property_5ec158abd968858c9d31ab40df5e9e6f_Out_0_Vector3, _InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3);
        float3 _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3;
        AddPragma_float(_InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3, _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3);
        ObjectSpacePosition_1 = _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3;
        }
        
        void Unity_Divide_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A / B;
        }
        
        void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
        {
            RGBA = float4(R, G, B, A);
            RGB = float3(R, G, B);
            RG = float2(R, G);
        }
        
        void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
        {
        Out = A * B;
        }
        
        void Unity_Sign_float3(float3 In, out float3 Out)
        {
            Out = sign(In);
        }
        
        void Unity_Multiply_float2_float2(float2 A, float2 B, out float2 Out)
        {
        Out = A * B;
        }
        
        void Unity_Absolute_float3(float3 In, out float3 Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float3(float3 A, float3 B, out float3 Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Multiply_float3_float3(float3 A, float3 B, out float3 Out)
        {
        Out = A * B;
        }
        
        void Unity_Multiply_float_float(float A, float B, out float Out)
        {
        Out = A * B;
        }
        
        void Unity_Add_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A + B;
        }
        
        void Unity_Add_float(float A, float B, out float Out)
        {
            Out = A + B;
        }
        
        struct Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float
        {
        float3 WorldSpaceNormal;
        float3 AbsoluteWorldSpacePosition;
        };
        
        void SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(UnityTexture2D Texture2D_80A3D28F, float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float IN, out float4 XYZ_1, out float4 XZ_2, out float4 YZ_3, out float4 XY_4)
        {
        UnityTexture2D _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D = Texture2D_80A3D28F;
        float _Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
        float _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
        float _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
        float _Split_89ed63cb625cb3878c183d0b71c03400_A_4_Float = 0;
        float4 _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4;
        float3 _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3;
        float2 _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, 0, 0, _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3, _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2);
        float _Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float = Vector1_41461AC9;
        float4 _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4);
        float3 _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3;
        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3);
        float _Split_742547a7039de986a646d04c157ae549_R_1_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[0];
        float _Split_742547a7039de986a646d04c157ae549_G_2_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[1];
        float _Split_742547a7039de986a646d04c157ae549_B_3_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[2];
        float _Split_742547a7039de986a646d04c157ae549_A_4_Float = 0;
        float2 _Vector2_40a8919e571ec18499de72022c155b38_Out_0_Vector2 = float2(_Split_742547a7039de986a646d04c157ae549_G_2_Float, 1);
        float2 _Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4.xy), _Vector2_40a8919e571ec18499de72022c155b38_Out_0_Vector2, _Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2);
        float4 _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2) );
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_R_4_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.r;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_G_5_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.g;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_B_6_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.b;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_A_7_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.a;
        float3 _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3;
        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3);
        float _Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float = Vector1_E4D1C13A;
        float3 _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3;
        Unity_Power_float3(_Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3, (_Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float.xxx), _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3);
        float3 _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3);
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[0];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[1];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[2];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_A_4_Float = 0;
        float4 _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float.xxxx), _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4);
        float4 _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4;
        float3 _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3;
        float2 _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3, _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2);
        float4 _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4);
        float _Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float;
        Unity_Multiply_float_float(_Split_742547a7039de986a646d04c157ae549_B_3_Float, -1, _Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float);
        float2 _Vector2_caa25d55d456a58982bdfc39b1b43f3f_Out_0_Vector2 = float2(_Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float, 1);
        float2 _Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4.xy), _Vector2_caa25d55d456a58982bdfc39b1b43f3f_Out_0_Vector2, _Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2);
        float4 _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2) );
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_R_4_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.r;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_G_5_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.g;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_B_6_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.b;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_A_7_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.a;
        float4 _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float.xxxx), _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4);
        float4 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4;
        float3 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3;
        float2 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2);
        float4 _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4);
        float2 _Vector2_54dfd40df2fc78809955dd272f2cf0c3_Out_0_Vector2 = float2(_Split_742547a7039de986a646d04c157ae549_R_1_Float, 1);
        float2 _Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4.xy), _Vector2_54dfd40df2fc78809955dd272f2cf0c3_Out_0_Vector2, _Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2);
        float4 _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2) );
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_R_4_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.r;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_G_5_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.g;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_B_6_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.b;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_A_7_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.a;
        float4 _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float.xxxx), _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4);
        float4 _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4;
        Unity_Add_float4(_Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4, _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4);
        float4 _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4;
        Unity_Add_float4(_Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4, _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4);
        float _Add_e59af300bba2498db32eac1412123447_Out_2_Float;
        Unity_Add_float(_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float, _Add_e59af300bba2498db32eac1412123447_Out_2_Float);
        float _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float;
        Unity_Add_float(_Add_e59af300bba2498db32eac1412123447_Out_2_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float, _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float);
        float4 _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4;
        Unity_Divide_float4(_Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4, (_Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float.xxxx), _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4);
        XYZ_1 = _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4;
        XZ_2 = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4;
        YZ_3 = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4;
        XY_4 = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4;
        }
        
        void Unity_Clamp_float(float In, float Min, float Max, out float Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Absolute_float(float In, out float Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float(float A, float B, out float Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Clamp_float4(float4 In, float4 Min, float4 Max, out float4 Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Branch_float4(float Predicate, float4 True, float4 False, out float4 Out)
        {
            Out = Predicate ? True : False;
        }
        
        void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
        {
            Out = UV * Tiling + Offset;
        }
        
        void Unity_Saturate_float(float In, out float Out)
        {
            Out = saturate(In);
        }
        
        void Unity_SquareRoot_float4(float4 In, out float4 Out)
        {
            Out = sqrt(In);
        }
        
        void Unity_Sign_float(float In, out float Out)
        {
            Out = sign(In);
        }
        
        void Unity_Ceiling_float(float In, out float Out)
        {
            Out = ceil(In);
        }
        
        void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
        {
            Out = lerp(A, B, T);
        }
        
        struct Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float
        {
        };
        
        void SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float(float4 Color_9AA111D3, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float IN, out float3 OutVector4_1)
        {
        float4 _Property_012510d774fb7f8b860f5270dca4500f_Out_0_Vector4 = Color_9AA111D3;
        float4 _SquareRoot_c2c57d0223a9538aa9240890c3cacb0c_Out_1_Vector4;
        Unity_SquareRoot_float4(_Property_012510d774fb7f8b860f5270dca4500f_Out_0_Vector4, _SquareRoot_c2c57d0223a9538aa9240890c3cacb0c_Out_1_Vector4);
        float _Property_a00e29241d12f983b30177515b367ec9_Out_0_Float = Vector1_FBE622A2;
        float _Sign_343a45ede7349283a681c6bd9998fd8e_Out_1_Float;
        Unity_Sign_float(_Property_a00e29241d12f983b30177515b367ec9_Out_0_Float, _Sign_343a45ede7349283a681c6bd9998fd8e_Out_1_Float);
        float _Add_681019b8f5d3d68bb482d419c9fc61a9_Out_2_Float;
        Unity_Add_float(_Sign_343a45ede7349283a681c6bd9998fd8e_Out_1_Float, 1, _Add_681019b8f5d3d68bb482d419c9fc61a9_Out_2_Float);
        float _Multiply_e8f4cb722712a880ac0db6c7461427f7_Out_2_Float;
        Unity_Multiply_float_float(_Add_681019b8f5d3d68bb482d419c9fc61a9_Out_2_Float, 0.5, _Multiply_e8f4cb722712a880ac0db6c7461427f7_Out_2_Float);
        float _Ceiling_95ad15988aa9b98184875fa754feae01_Out_1_Float;
        Unity_Ceiling_float(_Multiply_e8f4cb722712a880ac0db6c7461427f7_Out_2_Float, _Ceiling_95ad15988aa9b98184875fa754feae01_Out_1_Float);
        float _Property_2db1c747a05ee284a8b00076062f91a4_Out_0_Float = Vector1_8C15C351;
        float _Multiply_9564ecda5193bc8286d9ff771c9226cd_Out_2_Float;
        Unity_Multiply_float_float(_Property_2db1c747a05ee284a8b00076062f91a4_Out_0_Float, _Property_2db1c747a05ee284a8b00076062f91a4_Out_0_Float, _Multiply_9564ecda5193bc8286d9ff771c9226cd_Out_2_Float);
        float4 _Lerp_b3cdb01fc3c5b988ac9b184943bf7c01_Out_3_Vector4;
        Unity_Lerp_float4(_SquareRoot_c2c57d0223a9538aa9240890c3cacb0c_Out_1_Vector4, (_Ceiling_95ad15988aa9b98184875fa754feae01_Out_1_Float.xxxx), (_Multiply_9564ecda5193bc8286d9ff771c9226cd_Out_2_Float.xxxx), _Lerp_b3cdb01fc3c5b988ac9b184943bf7c01_Out_3_Vector4);
        float4 _Multiply_39d1daff98488f8ea2cd794ad4f20926_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Lerp_b3cdb01fc3c5b988ac9b184943bf7c01_Out_3_Vector4, _Lerp_b3cdb01fc3c5b988ac9b184943bf7c01_Out_3_Vector4, _Multiply_39d1daff98488f8ea2cd794ad4f20926_Out_2_Vector4);
        OutVector4_1 = (_Multiply_39d1daff98488f8ea2cd794ad4f20926_Out_2_Vector4.xyz);
        }
        
        void Unity_Add_float2(float2 A, float2 B, out float2 Out)
        {
            Out = A + B;
        }
        
        void Unity_DotProduct_float2(float2 A, float2 B, out float Out)
        {
            Out = dot(A, B);
        }
        
        void Unity_OneMinus_float(float In, out float Out)
        {
            Out = 1 - In;
        }
        
        void Unity_SquareRoot_float(float In, out float Out)
        {
            Out = sqrt(In);
        }
        
        void Unity_Add_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A + B;
        }
        
        void Unity_Divide_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A / B;
        }
        
        void Unity_Normalize_float3(float3 In, out float3 Out)
        {
            Out = normalize(In);
        }
        
        struct Bindings_TriplanarNMn_059da9746584140498cd018db3c76047_float
        {
        float3 WorldSpaceNormal;
        float3 WorldSpaceTangent;
        float3 WorldSpaceBiTangent;
        float3 WorldSpacePosition;
        };
        
        void SG_TriplanarNMn_059da9746584140498cd018db3c76047_float(UnityTexture2D Texture2D_80A3D28F, float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNMn_059da9746584140498cd018db3c76047_float IN, out float4 XYZ_1, out float4 XZ_2, out float4 YZ_3, out float4 XY_4)
        {
        UnityTexture2D _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D = Texture2D_80A3D28F;
        float _Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float = IN.WorldSpacePosition[0];
        float _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float = IN.WorldSpacePosition[1];
        float _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float = IN.WorldSpacePosition[2];
        float _Split_89ed63cb625cb3878c183d0b71c03400_A_4_Float = 0;
        float4 _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4;
        float3 _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3;
        float2 _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, 0, 0, _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3, _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2);
        float _Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float = Vector1_41461AC9;
        float4 _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4);
        float3 _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3;
        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3);
        float _Split_6299d4ddcc4c74828aea40a46fdb896e_R_1_Float = _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3[0];
        float _Split_6299d4ddcc4c74828aea40a46fdb896e_G_2_Float = _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3[1];
        float _Split_6299d4ddcc4c74828aea40a46fdb896e_B_3_Float = _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3[2];
        float _Split_6299d4ddcc4c74828aea40a46fdb896e_A_4_Float = 0;
        float2 _Vector2_b76cb1842101e58b9e636d49b075c612_Out_0_Vector2 = float2(_Split_6299d4ddcc4c74828aea40a46fdb896e_G_2_Float, 1);
        float2 _Multiply_a87753ad90594382bf3a3a95abbadbc8_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4.xy), _Vector2_b76cb1842101e58b9e636d49b075c612_Out_0_Vector2, _Multiply_a87753ad90594382bf3a3a95abbadbc8_Out_2_Vector2);
        float4 _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_a87753ad90594382bf3a3a95abbadbc8_Out_2_Vector2) );
        _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4);
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_R_4_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.r;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_G_5_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.g;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_B_6_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.b;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_A_7_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.a;
        float2 _Vector2_ad6bd100e273d78fa409a30a77bfa2cc_Out_0_Vector2 = float2(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_R_4_Float, _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_G_5_Float);
        float2 _Multiply_31e8db88ee20c985a9850d1a58f3282b_Out_2_Vector2;
        Unity_Multiply_float2_float2(_Vector2_ad6bd100e273d78fa409a30a77bfa2cc_Out_0_Vector2, _Vector2_b76cb1842101e58b9e636d49b075c612_Out_0_Vector2, _Multiply_31e8db88ee20c985a9850d1a58f3282b_Out_2_Vector2);
        float _Split_5ed44bf2eca0868f81eb18100f49d1fa_R_1_Float = IN.WorldSpaceNormal[0];
        float _Split_5ed44bf2eca0868f81eb18100f49d1fa_G_2_Float = IN.WorldSpaceNormal[1];
        float _Split_5ed44bf2eca0868f81eb18100f49d1fa_B_3_Float = IN.WorldSpaceNormal[2];
        float _Split_5ed44bf2eca0868f81eb18100f49d1fa_A_4_Float = 0;
        float2 _Vector2_70e5837843f28b8b9d64cada3697bd5a_Out_0_Vector2 = float2(_Split_5ed44bf2eca0868f81eb18100f49d1fa_R_1_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_B_3_Float);
        float2 _Add_1145b2f896593d80aa864a34e6702562_Out_2_Vector2;
        Unity_Add_float2(_Multiply_31e8db88ee20c985a9850d1a58f3282b_Out_2_Vector2, _Vector2_70e5837843f28b8b9d64cada3697bd5a_Out_0_Vector2, _Add_1145b2f896593d80aa864a34e6702562_Out_2_Vector2);
        float _Split_2bc77ca2d17bd78cb2383770ce50b179_R_1_Float = _Add_1145b2f896593d80aa864a34e6702562_Out_2_Vector2[0];
        float _Split_2bc77ca2d17bd78cb2383770ce50b179_G_2_Float = _Add_1145b2f896593d80aa864a34e6702562_Out_2_Vector2[1];
        float _Split_2bc77ca2d17bd78cb2383770ce50b179_B_3_Float = 0;
        float _Split_2bc77ca2d17bd78cb2383770ce50b179_A_4_Float = 0;
        float _Multiply_e4fe778b81456d819c52bb414cd95968_Out_2_Float;
        Unity_Multiply_float_float(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_B_6_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_G_2_Float, _Multiply_e4fe778b81456d819c52bb414cd95968_Out_2_Float);
        float3 _Vector3_08f62c5c01619e849f1a7d85a44531ac_Out_0_Vector3 = float3(_Split_2bc77ca2d17bd78cb2383770ce50b179_R_1_Float, _Multiply_e4fe778b81456d819c52bb414cd95968_Out_2_Float, _Split_2bc77ca2d17bd78cb2383770ce50b179_G_2_Float);
        float3 _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3;
        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3);
        float _Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float = Vector1_E4D1C13A;
        float3 _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3;
        Unity_Power_float3(_Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3, (_Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float.xxx), _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3);
        float3 _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3);
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[0];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[1];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[2];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_A_4_Float = 0;
        float3 _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Vector3_08f62c5c01619e849f1a7d85a44531ac_Out_0_Vector3, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float.xxx), _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector3);
        float4 _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4;
        float3 _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3;
        float2 _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3, _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2);
        float4 _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4);
        float _Multiply_de711f4a4614bd89a463b53374cf4036_Out_2_Float;
        Unity_Multiply_float_float(_Split_6299d4ddcc4c74828aea40a46fdb896e_B_3_Float, -1, _Multiply_de711f4a4614bd89a463b53374cf4036_Out_2_Float);
        float2 _Vector2_4ed33f0c73b2698fa6f3c1b77fe76808_Out_0_Vector2 = float2(_Multiply_de711f4a4614bd89a463b53374cf4036_Out_2_Float, 1);
        float2 _Multiply_2af6058cc6ccb88caefd2799bb5941e8_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4.xy), _Vector2_4ed33f0c73b2698fa6f3c1b77fe76808_Out_0_Vector2, _Multiply_2af6058cc6ccb88caefd2799bb5941e8_Out_2_Vector2);
        float4 _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_2af6058cc6ccb88caefd2799bb5941e8_Out_2_Vector2) );
        _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4);
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_R_4_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.r;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_G_5_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.g;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_B_6_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.b;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_A_7_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.a;
        float2 _Vector2_fe9aedd4528c7486ada4abdca0b0944e_Out_0_Vector2 = float2(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_R_4_Float, _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_G_5_Float);
        float2 _Multiply_02b9b4665ad9918d8721bcaddc82f06f_Out_2_Vector2;
        Unity_Multiply_float2_float2(_Vector2_fe9aedd4528c7486ada4abdca0b0944e_Out_0_Vector2, _Vector2_4ed33f0c73b2698fa6f3c1b77fe76808_Out_0_Vector2, _Multiply_02b9b4665ad9918d8721bcaddc82f06f_Out_2_Vector2);
        float2 _Vector2_a74a85274da15181abb63cc5e8df0de1_Out_0_Vector2 = float2(_Split_5ed44bf2eca0868f81eb18100f49d1fa_R_1_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_G_2_Float);
        float2 _Add_b227c84042055e8faa1a9fdc69529707_Out_2_Vector2;
        Unity_Add_float2(_Multiply_02b9b4665ad9918d8721bcaddc82f06f_Out_2_Vector2, _Vector2_a74a85274da15181abb63cc5e8df0de1_Out_0_Vector2, _Add_b227c84042055e8faa1a9fdc69529707_Out_2_Vector2);
        float _Split_2cfb9eacd8762483941459cdf28bda97_R_1_Float = _Add_b227c84042055e8faa1a9fdc69529707_Out_2_Vector2[0];
        float _Split_2cfb9eacd8762483941459cdf28bda97_G_2_Float = _Add_b227c84042055e8faa1a9fdc69529707_Out_2_Vector2[1];
        float _Split_2cfb9eacd8762483941459cdf28bda97_B_3_Float = 0;
        float _Split_2cfb9eacd8762483941459cdf28bda97_A_4_Float = 0;
        float _Multiply_1d65ce08ce672087879125f2e13c4004_Out_2_Float;
        Unity_Multiply_float_float(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_B_6_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_B_3_Float, _Multiply_1d65ce08ce672087879125f2e13c4004_Out_2_Float);
        float3 _Vector3_ba6cfb4671e8c58f9b41ea1dc23102ca_Out_0_Vector3 = float3(_Split_2cfb9eacd8762483941459cdf28bda97_R_1_Float, _Split_2cfb9eacd8762483941459cdf28bda97_G_2_Float, _Multiply_1d65ce08ce672087879125f2e13c4004_Out_2_Float);
        float3 _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Vector3_ba6cfb4671e8c58f9b41ea1dc23102ca_Out_0_Vector3, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float.xxx), _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector3);
        float4 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4;
        float3 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3;
        float2 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2);
        float4 _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4);
        float2 _Vector2_a1e23e0f921b6484818f009a2b12a5ba_Out_0_Vector2 = float2(_Split_6299d4ddcc4c74828aea40a46fdb896e_R_1_Float, 1);
        float2 _Multiply_862402885a49f18cb87278ab53bc6744_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4.xy), _Vector2_a1e23e0f921b6484818f009a2b12a5ba_Out_0_Vector2, _Multiply_862402885a49f18cb87278ab53bc6744_Out_2_Vector2);
        float4 _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_862402885a49f18cb87278ab53bc6744_Out_2_Vector2) );
        _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4);
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_R_4_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.r;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_G_5_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.g;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_B_6_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.b;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_A_7_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.a;
        float _Multiply_4649b768be76d784a3284bacde795359_Out_2_Float;
        Unity_Multiply_float_float(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_B_6_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_R_1_Float, _Multiply_4649b768be76d784a3284bacde795359_Out_2_Float);
        float2 _Vector2_819fcd5eb484438eacad1987576d7d67_Out_0_Vector2 = float2(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_R_4_Float, _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_G_5_Float);
        float2 _Multiply_58530ebb3c6d798b93686a76247bf505_Out_2_Vector2;
        Unity_Multiply_float2_float2(_Vector2_819fcd5eb484438eacad1987576d7d67_Out_0_Vector2, _Vector2_a1e23e0f921b6484818f009a2b12a5ba_Out_0_Vector2, _Multiply_58530ebb3c6d798b93686a76247bf505_Out_2_Vector2);
        float2 _Vector2_e293c112b2f49e88a5fe46dfb1fbeb40_Out_0_Vector2 = float2(_Split_5ed44bf2eca0868f81eb18100f49d1fa_B_3_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_G_2_Float);
        float2 _Add_cf00fb232c6e2b8e973ab2f84453f55e_Out_2_Vector2;
        Unity_Add_float2(_Multiply_58530ebb3c6d798b93686a76247bf505_Out_2_Vector2, _Vector2_e293c112b2f49e88a5fe46dfb1fbeb40_Out_0_Vector2, _Add_cf00fb232c6e2b8e973ab2f84453f55e_Out_2_Vector2);
        float _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_R_1_Float = _Add_cf00fb232c6e2b8e973ab2f84453f55e_Out_2_Vector2[0];
        float _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_G_2_Float = _Add_cf00fb232c6e2b8e973ab2f84453f55e_Out_2_Vector2[1];
        float _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_B_3_Float = 0;
        float _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_A_4_Float = 0;
        float3 _Vector3_13a08d5940172a84a78ee3d9b8766833_Out_0_Vector3 = float3(_Multiply_4649b768be76d784a3284bacde795359_Out_2_Float, _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_G_2_Float, _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_R_1_Float);
        float3 _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Vector3_13a08d5940172a84a78ee3d9b8766833_Out_0_Vector3, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float.xxx), _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector3);
        float3 _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector3;
        Unity_Add_float3(_Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector3, _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector3, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector3);
        float3 _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector3;
        Unity_Add_float3(_Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector3, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector3, _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector3);
        float _Add_e59af300bba2498db32eac1412123447_Out_2_Float;
        Unity_Add_float(_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float, _Add_e59af300bba2498db32eac1412123447_Out_2_Float);
        float _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float;
        Unity_Add_float(_Add_e59af300bba2498db32eac1412123447_Out_2_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float, _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float);
        float3 _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector3;
        Unity_Divide_float3(_Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector3, (_Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float.xxx), _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector3);
        float3 _Transform_73eecc0c3689d184a34c8d0f28a58adf_Out_1_Vector3;
        {
        float3x3 tangentTransform = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
        _Transform_73eecc0c3689d184a34c8d0f28a58adf_Out_1_Vector3 = TransformWorldToTangentDir(_Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector3.xyz, tangentTransform, true);
        }
        float3 _Normalize_15ef346824db0a8797631ed8b998e673_Out_1_Vector3;
        Unity_Normalize_float3(_Transform_73eecc0c3689d184a34c8d0f28a58adf_Out_1_Vector3, _Normalize_15ef346824db0a8797631ed8b998e673_Out_1_Vector3);
        XYZ_1 = (float4(_Normalize_15ef346824db0a8797631ed8b998e673_Out_1_Vector3, 1.0));
        XZ_2 = (float4(_Vector3_08f62c5c01619e849f1a7d85a44531ac_Out_0_Vector3, 1.0));
        YZ_3 = (float4(_Vector3_ba6cfb4671e8c58f9b41ea1dc23102ca_Out_0_Vector3, 1.0));
        XY_4 = (float4(_Vector3_13a08d5940172a84a78ee3d9b8766833_Out_0_Vector3, 1.0));
        }
        
        void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
        {
            Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
        }
        
        void Unity_NormalBlend_float(float3 A, float3 B, out float3 Out)
        {
            Out = SafeNormalize(float3(A.rg + B.rg, A.b * B.b));
        }
        
        void Unity_Subtract_float(float A, float B, out float Out)
        {
            Out = A - B;
        }
        
        void Unity_Divide_float(float A, float B, out float Out)
        {
            Out = A / B;
        }
        
        void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
        {
            Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
        }
        
        void Unity_Lerp_float(float A, float B, float T, out float Out)
        {
            Out = lerp(A, B, T);
        }
        
        struct Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a_float
        {
        };
        
        void SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a_float(float Vector1_32317166, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a_float IN, out float SmoothnessOverlay_1)
        {
        float _Property_728cc50521e9e988ac9cbff4872d5139_Out_0_Float = Vector1_32317166;
        float _Property_a00e29241d12f983b30177515b367ec9_Out_0_Float = Vector1_FBE622A2;
        float _Sign_343a45ede7349283a681c6bd9998fd8e_Out_1_Float;
        Unity_Sign_float(_Property_a00e29241d12f983b30177515b367ec9_Out_0_Float, _Sign_343a45ede7349283a681c6bd9998fd8e_Out_1_Float);
        float _Add_681019b8f5d3d68bb482d419c9fc61a9_Out_2_Float;
        Unity_Add_float(_Sign_343a45ede7349283a681c6bd9998fd8e_Out_1_Float, 1, _Add_681019b8f5d3d68bb482d419c9fc61a9_Out_2_Float);
        float _Multiply_e8f4cb722712a880ac0db6c7461427f7_Out_2_Float;
        Unity_Multiply_float_float(_Add_681019b8f5d3d68bb482d419c9fc61a9_Out_2_Float, 0.5, _Multiply_e8f4cb722712a880ac0db6c7461427f7_Out_2_Float);
        float _Ceiling_95ad15988aa9b98184875fa754feae01_Out_1_Float;
        Unity_Ceiling_float(_Multiply_e8f4cb722712a880ac0db6c7461427f7_Out_2_Float, _Ceiling_95ad15988aa9b98184875fa754feae01_Out_1_Float);
        float _Property_2db1c747a05ee284a8b00076062f91a4_Out_0_Float = Vector1_8C15C351;
        float _Lerp_b3cdb01fc3c5b988ac9b184943bf7c01_Out_3_Float;
        Unity_Lerp_float(_Property_728cc50521e9e988ac9cbff4872d5139_Out_0_Float, _Ceiling_95ad15988aa9b98184875fa754feae01_Out_1_Float, _Property_2db1c747a05ee284a8b00076062f91a4_Out_0_Float, _Lerp_b3cdb01fc3c5b988ac9b184943bf7c01_Out_3_Float);
        SmoothnessOverlay_1 = _Lerp_b3cdb01fc3c5b988ac9b184943bf7c01_Out_3_Float;
        }
        
        void Unity_Minimum_float(float A, float B, out float Out)
        {
            Out = min(A, B);
        };
        
        // Custom interpolators pre vertex
        /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
        
        // Graph Vertex
        struct VertexDescription
        {
            float3 Position;
            float3 Normal;
            float3 Tangent;
        };
        
        VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
        {
            VertexDescription description = (VertexDescription)0;
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301;
            float3 _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3;
            SG_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float(IN.ObjectSpacePosition, _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301, _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3);
            #endif
            description.Position = _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3;
            description.Normal = IN.ObjectSpaceNormal;
            description.Tangent = IN.ObjectSpaceTangent;
            return description;
        }
        
        // Custom interpolators, pre surface
        #ifdef FEATURES_GRAPH_VERTEX
        Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
        {
        return output;
        }
        #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
        #endif
        
        // Graph Pixel
        struct SurfaceDescription
        {
            float3 BaseColor;
            float3 NormalTS;
            float3 Emission;
            float Metallic;
            float3 Specular;
            float Smoothness;
            float Occlusion;
            float Alpha;
            float AlphaClipThreshold;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_b4deafa94a27e588ab2e901ce05fd5c2_Out_0_Boolean = _CoverMaskRCurvature;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_6c17ebaaa33d938990da19e6860d987c_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_72f47eee6df1cd8dbc7790612f96361f_Out_0_Vector4 = _BaseTilingOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4;
            Unity_Divide_float4(float4(1, 1, 0, 0), _Property_72f47eee6df1cd8dbc7790612f96361f_Out_0_Vector4, _Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float = _BaseTriplanarThreshold;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e;
            _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XZ_2_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_YZ_3_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XY_4_Vector4;
            SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(_Property_6c17ebaaa33d938990da19e6860d987c_Out_0_Texture2D, (_Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4).x, _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XZ_2_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_YZ_3_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_9465a0f7ac851b8daf29a27b34e035be_Out_0_Vector4 = _BaseColor;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Multiply_4cbb8fe598df6b8995e151b170112293_Out_2_Vector4;
            Unity_Multiply_float4_float4(_TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4, _Property_9465a0f7ac851b8daf29a27b34e035be_Out_0_Vector4, _Multiply_4cbb8fe598df6b8995e151b170112293_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_6bf54b76e7bec584b1f7856c6442c603_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_CoverMaskA);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _UV_71e815f5c2f7188e9df5850b0bfa07ba_Out_0_Vector4 = IN.uv0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_6bf54b76e7bec584b1f7856c6442c603_Out_0_Texture2D.tex, _Property_6bf54b76e7bec584b1f7856c6442c603_Out_0_Texture2D.samplerstate, _Property_6bf54b76e7bec584b1f7856c6442c603_Out_0_Texture2D.GetTransformedUV((_UV_71e815f5c2f7188e9df5850b0bfa07ba_Out_0_Vector4.xy)) );
            float _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_R_4_Float = _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4.r;
            float _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_G_5_Float = _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4.g;
            float _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_B_6_Float = _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4.b;
            float _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_A_7_Float = _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4.a;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_61d87310f8d25683b3e258b2a7c32687_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_R_4_Float, 2, _Multiply_61d87310f8d25683b3e258b2a7c32687_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_2a04a0bb2acbb08cbe9bed32574a79f2_Out_0_Float = _BaseDarknessCurvMultply;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_22ddb374af8b978e8e07fbefa70c9485_Out_2_Float;
            Unity_Multiply_float_float(_Multiply_61d87310f8d25683b3e258b2a7c32687_Out_2_Float, _Property_2a04a0bb2acbb08cbe9bed32574a79f2_Out_0_Float, _Multiply_22ddb374af8b978e8e07fbefa70c9485_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_8ba74b557a6292888d4ba32c8da72989_Out_3_Float;
            Unity_Clamp_float(_Multiply_22ddb374af8b978e8e07fbefa70c9485_Out_2_Float, 0, 1, _Clamp_8ba74b557a6292888d4ba32c8da72989_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_80289d7a8316d28bb4411239017120b6_Out_1_Float;
            Unity_Absolute_float(_Clamp_8ba74b557a6292888d4ba32c8da72989_Out_3_Float, _Absolute_80289d7a8316d28bb4411239017120b6_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_ed4690b030015f83b3b06ac15e9d0ac7_Out_0_Float = _BaseDarknessCurvPower;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_5ba92bd090fe278aa7287667dd405d23_Out_2_Float;
            Unity_Power_float(_Absolute_80289d7a8316d28bb4411239017120b6_Out_1_Float, _Property_ed4690b030015f83b3b06ac15e9d0ac7_Out_0_Float, _Power_5ba92bd090fe278aa7287667dd405d23_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_22c4e36fffdf1887adb074e78bbc7b44_Out_3_Float;
            Unity_Clamp_float(_Power_5ba92bd090fe278aa7287667dd405d23_Out_2_Float, 0, 1, _Clamp_22c4e36fffdf1887adb074e78bbc7b44_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Multiply_f0be8921ed844a8aac9de0d40006f34b_Out_2_Vector4;
            Unity_Multiply_float4_float4(_Multiply_4cbb8fe598df6b8995e151b170112293_Out_2_Vector4, (_Clamp_22c4e36fffdf1887adb074e78bbc7b44_Out_3_Float.xxxx), _Multiply_f0be8921ed844a8aac9de0d40006f34b_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Clamp_864c8f6cb2a43a89b921dce01e0ef53b_Out_3_Vector4;
            Unity_Clamp_float4(_Multiply_f0be8921ed844a8aac9de0d40006f34b_Out_2_Vector4, float4(0, 0, 0, 0), float4(1, 1, 1, 1), _Clamp_864c8f6cb2a43a89b921dce01e0ef53b_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_a49c8f8c03fef888a861c2d7c17af6f8_Out_2_Float;
            Unity_Add_float(_Multiply_61d87310f8d25683b3e258b2a7c32687_Out_2_Float, -1, _Add_a49c8f8c03fef888a861c2d7c17af6f8_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_9323cd642f42ed8cbac9c6df151c47fa_Out_3_Float;
            Unity_Clamp_float(_Add_a49c8f8c03fef888a861c2d7c17af6f8_Out_2_Float, 0, 1, _Clamp_9323cd642f42ed8cbac9c6df151c47fa_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_33f339ef1ed862819656675eee2fb944_Out_0_Float = _BaseBrightnessCurvMultply;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_b0785816d24af2898f76ec8a2429185e_Out_2_Float;
            Unity_Multiply_float_float(_Clamp_9323cd642f42ed8cbac9c6df151c47fa_Out_3_Float, _Property_33f339ef1ed862819656675eee2fb944_Out_0_Float, _Multiply_b0785816d24af2898f76ec8a2429185e_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_b973335853a46c8a81e03c3bd287d046_Out_3_Float;
            Unity_Clamp_float(_Multiply_b0785816d24af2898f76ec8a2429185e_Out_2_Float, 0, 1, _Clamp_b973335853a46c8a81e03c3bd287d046_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_cc9743a0986aaa84a27e8f69f9752f76_Out_1_Float;
            Unity_Absolute_float(_Clamp_b973335853a46c8a81e03c3bd287d046_Out_3_Float, _Absolute_cc9743a0986aaa84a27e8f69f9752f76_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_3c0b9cbbfa7d0d828d63c00b91d92336_Out_0_Float = _BaseBrightnessCurvPower;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_1ed803ec6c9f7c848be6ac4c00192882_Out_2_Float;
            Unity_Power_float(_Absolute_cc9743a0986aaa84a27e8f69f9752f76_Out_1_Float, _Property_3c0b9cbbfa7d0d828d63c00b91d92336_Out_0_Float, _Power_1ed803ec6c9f7c848be6ac4c00192882_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_1e8c74117b5d6c8fa33005b50ce04bb8_Out_3_Float;
            Unity_Clamp_float(_Power_1ed803ec6c9f7c848be6ac4c00192882_Out_2_Float, 0, 1, _Clamp_1e8c74117b5d6c8fa33005b50ce04bb8_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Add_e8ceba55bdbffe8eb19f02736be349aa_Out_2_Vector4;
            Unity_Add_float4(_Clamp_864c8f6cb2a43a89b921dce01e0ef53b_Out_3_Vector4, (_Clamp_1e8c74117b5d6c8fa33005b50ce04bb8_Out_3_Float.xxxx), _Add_e8ceba55bdbffe8eb19f02736be349aa_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Clamp_96d8dcc832f8cc8ba79cc5afd2f1c865_Out_3_Vector4;
            Unity_Clamp_float4(_Add_e8ceba55bdbffe8eb19f02736be349aa_Out_2_Vector4, float4(0, 0, 0, 0), float4(1, 1, 1, 1), _Clamp_96d8dcc832f8cc8ba79cc5afd2f1c865_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Branch_2498532d512ec68fa0efb263834949f7_Out_3_Vector4;
            Unity_Branch_float4(_Property_b4deafa94a27e588ab2e901ce05fd5c2_Out_0_Boolean, _Clamp_96d8dcc832f8cc8ba79cc5afd2f1c865_Out_3_Vector4, _Multiply_4cbb8fe598df6b8995e151b170112293_Out_2_Vector4, _Branch_2498532d512ec68fa0efb263834949f7_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_8c38efbdc687808784e64df5f7851a74_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_DetailMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4 = _DetailTilingOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_6b7d8752798f268c8b3cb4ab5a46f73e_R_1_Float = _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4[0];
            float _Split_6b7d8752798f268c8b3cb4ab5a46f73e_G_2_Float = _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4[1];
            float _Split_6b7d8752798f268c8b3cb4ab5a46f73e_B_3_Float = _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4[2];
            float _Split_6b7d8752798f268c8b3cb4ab5a46f73e_A_4_Float = _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_6d91e5afee3d4e88ba756da4c0cbfcb2_Out_0_Vector2 = float2(_Split_6b7d8752798f268c8b3cb4ab5a46f73e_R_1_Float, _Split_6b7d8752798f268c8b3cb4ab5a46f73e_G_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_692caa48e2186d8b83435fe066df038c_Out_0_Vector2 = float2(_Split_6b7d8752798f268c8b3cb4ab5a46f73e_B_3_Float, _Split_6b7d8752798f268c8b3cb4ab5a46f73e_A_4_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _TilingAndOffset_6c4e5074c066068fbf7f993634c1cb8d_Out_3_Vector2;
            Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_6d91e5afee3d4e88ba756da4c0cbfcb2_Out_0_Vector2, _Vector2_692caa48e2186d8b83435fe066df038c_Out_0_Vector2, _TilingAndOffset_6c4e5074c066068fbf7f993634c1cb8d_Out_3_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_8c38efbdc687808784e64df5f7851a74_Out_0_Texture2D.tex, _Property_8c38efbdc687808784e64df5f7851a74_Out_0_Texture2D.samplerstate, _Property_8c38efbdc687808784e64df5f7851a74_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_6c4e5074c066068fbf7f993634c1cb8d_Out_3_Vector2) );
            float _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_R_4_Float = _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4.r;
            float _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_G_5_Float = _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4.g;
            float _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_B_6_Float = _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4.b;
            float _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_A_7_Float = _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4.a;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_a9cd845f93693a80b6111fb063544a74_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_R_4_Float, 2, _Multiply_a9cd845f93693a80b6111fb063544a74_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_cef5411ef4065b849dab8ae41142e9e9_Out_2_Float;
            Unity_Add_float(_Multiply_a9cd845f93693a80b6111fb063544a74_Out_2_Float, -1, _Add_cef5411ef4065b849dab8ae41142e9e9_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_86c816f0fd959684a1e6e728b9519627_Out_0_Float = _DetailAlbedoScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_1ee7e827f3048f858e7b5c2c28318efe_Out_2_Float;
            Unity_Multiply_float_float(_Add_cef5411ef4065b849dab8ae41142e9e9_Out_2_Float, _Property_86c816f0fd959684a1e6e728b9519627_Out_0_Float, _Multiply_1ee7e827f3048f858e7b5c2c28318efe_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_b4653e33464aa08c993df6c9b8355a51_Out_1_Float;
            Unity_Saturate_float(_Multiply_1ee7e827f3048f858e7b5c2c28318efe_Out_2_Float, _Saturate_b4653e33464aa08c993df6c9b8355a51_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_1b7c4e8f9d7c0f86adab6f50c6958c56_Out_1_Float;
            Unity_Absolute_float(_Saturate_b4653e33464aa08c993df6c9b8355a51_Out_1_Float, _Absolute_1b7c4e8f9d7c0f86adab6f50c6958c56_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float _BlendOverlayBaseColor_9ffabe2fc453cb81a840278206c992a9;
            float3 _BlendOverlayBaseColor_9ffabe2fc453cb81a840278206c992a9_OutVector4_1_Vector3;
            SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float(_Branch_2498532d512ec68fa0efb263834949f7_Out_3_Vector4, _Add_cef5411ef4065b849dab8ae41142e9e9_Out_2_Float, _Absolute_1b7c4e8f9d7c0f86adab6f50c6958c56_Out_1_Float, _BlendOverlayBaseColor_9ffabe2fc453cb81a840278206c992a9, _BlendOverlayBaseColor_9ffabe2fc453cb81a840278206c992a9_OutVector4_1_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_cb1daa31a8aa778e83e89aea442a2d54_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_CoverBaseColorMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_ccec42aa79dbde8c8b90b6b19097f847_Out_0_Vector4 = _CoverTilingOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4;
            Unity_Divide_float4(float4(1, 1, 0, 0), _Property_ccec42aa79dbde8c8b90b6b19097f847_Out_0_Vector4, _Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_7e0717fa374eed86a380cfe44b28edf0_Out_0_Float = _CoverTriplanarThreshold;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float _TriplanarNM_629ab1e956a2e889871d22b762bf4375;
            _TriplanarNM_629ab1e956a2e889871d22b762bf4375.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNM_629ab1e956a2e889871d22b762bf4375.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
            float4 _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XYZ_1_Vector4;
            float4 _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XZ_2_Vector4;
            float4 _TriplanarNM_629ab1e956a2e889871d22b762bf4375_YZ_3_Vector4;
            float4 _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XY_4_Vector4;
            SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(_Property_cb1daa31a8aa778e83e89aea442a2d54_Out_0_Texture2D, (_Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4).x, _Property_7e0717fa374eed86a380cfe44b28edf0_Out_0_Float, _TriplanarNM_629ab1e956a2e889871d22b762bf4375, _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XYZ_1_Vector4, _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XZ_2_Vector4, _TriplanarNM_629ab1e956a2e889871d22b762bf4375_YZ_3_Vector4, _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_def3e41ed70425849fd44f5047e437fe_Out_0_Vector4 = _CoverBaseColor;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Multiply_66ad5344cffca188ba4604c5629ca8c5_Out_2_Vector4;
            Unity_Multiply_float4_float4(_TriplanarNM_629ab1e956a2e889871d22b762bf4375_XYZ_1_Vector4, _Property_def3e41ed70425849fd44f5047e437fe_Out_0_Vector4, _Multiply_66ad5344cffca188ba4604c5629ca8c5_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_bfbeca46f6256b8ba5a9c7eecc1952fa_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_R_4_Float, 2, _Multiply_bfbeca46f6256b8ba5a9c7eecc1952fa_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_559a8a631f049c80a0540b05cb8f37a2_Out_0_Float = _CoverDarknessCurvMultply;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_1c2f0f7f36765c8c89e3326d3be9d903_Out_2_Float;
            Unity_Multiply_float_float(_Multiply_bfbeca46f6256b8ba5a9c7eecc1952fa_Out_2_Float, _Property_559a8a631f049c80a0540b05cb8f37a2_Out_0_Float, _Multiply_1c2f0f7f36765c8c89e3326d3be9d903_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_ad38cc41210e8f868ed1b357dc4e7b74_Out_3_Float;
            Unity_Clamp_float(_Multiply_1c2f0f7f36765c8c89e3326d3be9d903_Out_2_Float, 0, 1, _Clamp_ad38cc41210e8f868ed1b357dc4e7b74_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_ae69e110d4c49280b35c4e7b54b5a7f1_Out_1_Float;
            Unity_Absolute_float(_Clamp_ad38cc41210e8f868ed1b357dc4e7b74_Out_3_Float, _Absolute_ae69e110d4c49280b35c4e7b54b5a7f1_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_46a6a9ede4568980b45a07904918a504_Out_0_Float = _CoverDarknessCurvPower;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_4b2b68959f57c88ea44a62ea10ca1fe9_Out_2_Float;
            Unity_Power_float(_Absolute_ae69e110d4c49280b35c4e7b54b5a7f1_Out_1_Float, _Property_46a6a9ede4568980b45a07904918a504_Out_0_Float, _Power_4b2b68959f57c88ea44a62ea10ca1fe9_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_103f46053cfbe588a9814688e733efcf_Out_3_Float;
            Unity_Clamp_float(_Power_4b2b68959f57c88ea44a62ea10ca1fe9_Out_2_Float, 0, 1, _Clamp_103f46053cfbe588a9814688e733efcf_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Multiply_c7ad9f79dda0b489afa94b67d63fa000_Out_2_Vector4;
            Unity_Multiply_float4_float4(_Multiply_66ad5344cffca188ba4604c5629ca8c5_Out_2_Vector4, (_Clamp_103f46053cfbe588a9814688e733efcf_Out_3_Float.xxxx), _Multiply_c7ad9f79dda0b489afa94b67d63fa000_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Clamp_d7af96dc6cc5f988a0591b241ed78acc_Out_3_Vector4;
            Unity_Clamp_float4(_Multiply_c7ad9f79dda0b489afa94b67d63fa000_Out_2_Vector4, float4(0, 0, 0, 0), float4(1, 1, 1, 1), _Clamp_d7af96dc6cc5f988a0591b241ed78acc_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_8fd457fe97f9638cafa0323faa2a8dfc_Out_2_Float;
            Unity_Add_float(_Multiply_bfbeca46f6256b8ba5a9c7eecc1952fa_Out_2_Float, -1, _Add_8fd457fe97f9638cafa0323faa2a8dfc_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_978695ad7d0e828ba992b5cb3ca26eae_Out_3_Float;
            Unity_Clamp_float(_Add_8fd457fe97f9638cafa0323faa2a8dfc_Out_2_Float, 0, 1, _Clamp_978695ad7d0e828ba992b5cb3ca26eae_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_67c192d19b444a81849a1176f3a697f6_Out_0_Float = _CoverBrightnessCurvMultply;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_3d670a97734e8c878835f7360055572a_Out_2_Float;
            Unity_Multiply_float_float(_Clamp_978695ad7d0e828ba992b5cb3ca26eae_Out_3_Float, _Property_67c192d19b444a81849a1176f3a697f6_Out_0_Float, _Multiply_3d670a97734e8c878835f7360055572a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_db58547294da9e8785ee7b6c3a976698_Out_3_Float;
            Unity_Clamp_float(_Multiply_3d670a97734e8c878835f7360055572a_Out_2_Float, 0, 1, _Clamp_db58547294da9e8785ee7b6c3a976698_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_8b40786bf852328aaa652dc116916196_Out_1_Float;
            Unity_Absolute_float(_Clamp_db58547294da9e8785ee7b6c3a976698_Out_3_Float, _Absolute_8b40786bf852328aaa652dc116916196_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_a09af913dea5a68c9a7bab01c65be2c8_Out_0_Float = _CoverBrightnessCurvPower;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_c0b759d680738485abb57d1a2b3b80b9_Out_2_Float;
            Unity_Power_float(_Absolute_8b40786bf852328aaa652dc116916196_Out_1_Float, _Property_a09af913dea5a68c9a7bab01c65be2c8_Out_0_Float, _Power_c0b759d680738485abb57d1a2b3b80b9_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_1305e9cad6dd178cb5bfe84a93942985_Out_3_Float;
            Unity_Clamp_float(_Power_c0b759d680738485abb57d1a2b3b80b9_Out_2_Float, 0, 1, _Clamp_1305e9cad6dd178cb5bfe84a93942985_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Add_7db003c440510b8aabb72b85c537eb52_Out_2_Vector4;
            Unity_Add_float4(_Clamp_d7af96dc6cc5f988a0591b241ed78acc_Out_3_Vector4, (_Clamp_1305e9cad6dd178cb5bfe84a93942985_Out_3_Float.xxxx), _Add_7db003c440510b8aabb72b85c537eb52_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Clamp_72f41eca0c04cf8996f777072fe268a5_Out_3_Vector4;
            Unity_Clamp_float4(_Add_7db003c440510b8aabb72b85c537eb52_Out_2_Vector4, float4(0, 0, 0, 0), float4(1, 1, 1, 1), _Clamp_72f41eca0c04cf8996f777072fe268a5_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Branch_6d2c90f4f3988386a2faf0998e6ed26b_Out_3_Vector4;
            Unity_Branch_float4(_Property_b4deafa94a27e588ab2e901ce05fd5c2_Out_0_Boolean, _Clamp_72f41eca0c04cf8996f777072fe268a5_Out_3_Vector4, _Multiply_66ad5344cffca188ba4604c5629ca8c5_Out_2_Vector4, _Branch_6d2c90f4f3988386a2faf0998e6ed26b_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_857e1bdb72dc5d84a584fe6e3ff2329a_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_R_4_Float, 2, _Multiply_857e1bdb72dc5d84a584fe6e3ff2329a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_370337bea3e6fd8caacf4da48d0aa1b4_Out_2_Float;
            Unity_Add_float(_Multiply_857e1bdb72dc5d84a584fe6e3ff2329a_Out_2_Float, -1, _Add_370337bea3e6fd8caacf4da48d0aa1b4_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_62ca1795c20eb18985f6e7f9939ddf03_Out_0_Float = _DetailCoverAlbedoScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_3fd659a76cb9ae8ea60a8742620bd73c_Out_2_Float;
            Unity_Multiply_float_float(_Add_370337bea3e6fd8caacf4da48d0aa1b4_Out_2_Float, _Property_62ca1795c20eb18985f6e7f9939ddf03_Out_0_Float, _Multiply_3fd659a76cb9ae8ea60a8742620bd73c_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_8adac7fd6fcfdf8580ba2b7f00df5a41_Out_1_Float;
            Unity_Saturate_float(_Multiply_3fd659a76cb9ae8ea60a8742620bd73c_Out_2_Float, _Saturate_8adac7fd6fcfdf8580ba2b7f00df5a41_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_65f0556758f3f08483bdc59c1861e254_Out_1_Float;
            Unity_Absolute_float(_Saturate_8adac7fd6fcfdf8580ba2b7f00df5a41_Out_1_Float, _Absolute_65f0556758f3f08483bdc59c1861e254_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float _BlendOverlayBaseColor_e008078375b0f98abd6bae3cdc0a3816;
            float3 _BlendOverlayBaseColor_e008078375b0f98abd6bae3cdc0a3816_OutVector4_1_Vector3;
            SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float(_Branch_6d2c90f4f3988386a2faf0998e6ed26b_Out_3_Vector4, _Add_370337bea3e6fd8caacf4da48d0aa1b4_Out_2_Float, _Absolute_65f0556758f3f08483bdc59c1861e254_Out_1_Float, _BlendOverlayBaseColor_e008078375b0f98abd6bae3cdc0a3816, _BlendOverlayBaseColor_e008078375b0f98abd6bae3cdc0a3816_OutVector4_1_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_53b4f3caa35448849236e404330ffd86_Out_0_Float = _CoverMaskPower;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_04bf3e7568d5f48eb573d01235d77199_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_A_7_Float, _Property_53b4f3caa35448849236e404330ffd86_Out_0_Float, _Multiply_04bf3e7568d5f48eb573d01235d77199_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_1a91f1e3aec2228bbfb2a0736004946e_Out_3_Float;
            Unity_Clamp_float(_Multiply_04bf3e7568d5f48eb573d01235d77199_Out_2_Float, 0, 1, _Clamp_1a91f1e3aec2228bbfb2a0736004946e_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_39041ef87771e683b834dd7eca6b60aa_R_1_Float = IN.VertexColor[0];
            float _Split_39041ef87771e683b834dd7eca6b60aa_G_2_Float = IN.VertexColor[1];
            float _Split_39041ef87771e683b834dd7eca6b60aa_B_3_Float = IN.VertexColor[2];
            float _Split_39041ef87771e683b834dd7eca6b60aa_A_4_Float = IN.VertexColor[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Property_7c6ba36b7f75fd828a781ef390fe81fc_Out_0_Vector3 = _CoverDirection;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_ff34f3d24838f9889391530c04d6424b_Out_0_Vector2 = float2(_SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_A_7_Float, _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_G_5_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Multiply_120ef27f63ba4986acb31850d2223033_Out_2_Vector2;
            Unity_Multiply_float2_float2(_Vector2_ff34f3d24838f9889391530c04d6424b_Out_0_Vector2, float2(2, 2), _Multiply_120ef27f63ba4986acb31850d2223033_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Add_039ef572252c1f8b9ab1d9732873c6fd_Out_2_Vector2;
            Unity_Add_float2(_Multiply_120ef27f63ba4986acb31850d2223033_Out_2_Vector2, float2(-1, -1), _Add_039ef572252c1f8b9ab1d9732873c6fd_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_a4bc7e1c8f487182befa14cc923c5d7e_Out_0_Float = _DetailNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2;
            Unity_Multiply_float2_float2(_Add_039ef572252c1f8b9ab1d9732873c6fd_Out_2_Vector2, (_Property_a4bc7e1c8f487182befa14cc923c5d7e_Out_0_Float.xx), _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_817710a160cfd38f84dcd2ffe4ac9433_R_1_Float = _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2[0];
            float _Split_817710a160cfd38f84dcd2ffe4ac9433_G_2_Float = _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2[1];
            float _Split_817710a160cfd38f84dcd2ffe4ac9433_B_3_Float = 0;
            float _Split_817710a160cfd38f84dcd2ffe4ac9433_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _DotProduct_3a85ce810a5835809449d39fc0d43a7c_Out_2_Float;
            Unity_DotProduct_float2(_Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2, _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2, _DotProduct_3a85ce810a5835809449d39fc0d43a7c_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_ee7cc148f5d6c28596b254c9279b2d7c_Out_1_Float;
            Unity_Saturate_float(_DotProduct_3a85ce810a5835809449d39fc0d43a7c_Out_2_Float, _Saturate_ee7cc148f5d6c28596b254c9279b2d7c_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_81925f2879ac8985a29ea1d3496d3737_Out_1_Float;
            Unity_OneMinus_float(_Saturate_ee7cc148f5d6c28596b254c9279b2d7c_Out_1_Float, _OneMinus_81925f2879ac8985a29ea1d3496d3737_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _SquareRoot_679457140ebdbc8690be9c70d79c2c1e_Out_1_Float;
            Unity_SquareRoot_float(_OneMinus_81925f2879ac8985a29ea1d3496d3737_Out_1_Float, _SquareRoot_679457140ebdbc8690be9c70d79c2c1e_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Vector3_f1f5f90ed8452788a91000853614a735_Out_0_Vector3 = float3(_Split_817710a160cfd38f84dcd2ffe4ac9433_R_1_Float, _Split_817710a160cfd38f84dcd2ffe4ac9433_G_2_Float, _SquareRoot_679457140ebdbc8690be9c70d79c2c1e_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_bdb50713d9952086bf4040254f8555ed_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseNormalMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNMn_059da9746584140498cd018db3c76047_float _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a;
            _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a.WorldSpaceTangent = IN.WorldSpaceTangent;
            _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
            _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a.WorldSpacePosition = IN.WorldSpacePosition;
            float4 _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XYZ_1_Vector4;
            float4 _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XZ_2_Vector4;
            float4 _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_YZ_3_Vector4;
            float4 _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XY_4_Vector4;
            SG_TriplanarNMn_059da9746584140498cd018db3c76047_float(_Property_bdb50713d9952086bf4040254f8555ed_Out_0_Texture2D, (_Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4).x, _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XYZ_1_Vector4, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XZ_2_Vector4, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_YZ_3_Vector4, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_eacffd623cf35d848606835e2ba45716_Out_0_Float = _BaseNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalStrength_ec69d73d79314488b62d6a9c43da4dfe_Out_2_Vector3;
            Unity_NormalStrength_float((_TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XYZ_1_Vector4.xyz), _Property_eacffd623cf35d848606835e2ba45716_Out_0_Float, _NormalStrength_ec69d73d79314488b62d6a9c43da4dfe_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_904e20298b6e8d87823dd334eda299d8_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_ShapeNormalMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_904e20298b6e8d87823dd334eda299d8_Out_0_Texture2D.tex, _Property_904e20298b6e8d87823dd334eda299d8_Out_0_Texture2D.samplerstate, _Property_904e20298b6e8d87823dd334eda299d8_Out_0_Texture2D.GetTransformedUV(IN.uv0.xy) );
            _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4);
            float _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_R_4_Float = _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.r;
            float _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_G_5_Float = _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.g;
            float _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_B_6_Float = _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.b;
            float _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_A_7_Float = _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.a;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_c1ff82ca84d4238e8cf089d81f0b36bd_Out_0_Float = _shapeNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalStrength_44610f37afea2585a26a19d4e1f5e8ae_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.xyz), _Property_c1ff82ca84d4238e8cf089d81f0b36bd_Out_0_Float, _NormalStrength_44610f37afea2585a26a19d4e1f5e8ae_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalBlend_00b50fa0bb2ee087958824288a62541d_Out_2_Vector3;
            Unity_NormalBlend_float(_NormalStrength_ec69d73d79314488b62d6a9c43da4dfe_Out_2_Vector3, _NormalStrength_44610f37afea2585a26a19d4e1f5e8ae_Out_2_Vector3, _NormalBlend_00b50fa0bb2ee087958824288a62541d_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalBlend_a694ea2f4baada8da0978a00c2ccb417_Out_2_Vector3;
            Unity_NormalBlend_float(_Vector3_f1f5f90ed8452788a91000853614a735_Out_0_Vector3, _NormalBlend_00b50fa0bb2ee087958824288a62541d_Out_2_Vector3, _NormalBlend_a694ea2f4baada8da0978a00c2ccb417_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_97f32254bc217f89994d4619c96f8442_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_CoverNormalMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNMn_059da9746584140498cd018db3c76047_float _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28;
            _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28.WorldSpaceTangent = IN.WorldSpaceTangent;
            _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
            _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28.WorldSpacePosition = IN.WorldSpacePosition;
            float4 _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XYZ_1_Vector4;
            float4 _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XZ_2_Vector4;
            float4 _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_YZ_3_Vector4;
            float4 _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XY_4_Vector4;
            SG_TriplanarNMn_059da9746584140498cd018db3c76047_float(_Property_97f32254bc217f89994d4619c96f8442_Out_0_Texture2D, (_Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4).x, _Property_7e0717fa374eed86a380cfe44b28edf0_Out_0_Float, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XYZ_1_Vector4, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XZ_2_Vector4, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_YZ_3_Vector4, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_d6c69131205a1189837880dcb3f8d3d0_Out_0_Float = _CoverNormalBlendHardness;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalStrength_9dc5b89ad68a7185bbbaed44b704eec7_Out_2_Vector3;
            Unity_NormalStrength_float((_TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XYZ_1_Vector4.xyz), _Property_d6c69131205a1189837880dcb3f8d3d0_Out_0_Float, _NormalStrength_9dc5b89ad68a7185bbbaed44b704eec7_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_51fa8dd95f84a68e9130a8ecefb8c986_Out_0_Float = _CovershapeNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalStrength_9c8b92cfc893a386b69204d34b74152b_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.xyz), _Property_51fa8dd95f84a68e9130a8ecefb8c986_Out_0_Float, _NormalStrength_9c8b92cfc893a386b69204d34b74152b_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalBlend_782afb0f64887e8380e83132b6a5810e_Out_2_Vector3;
            Unity_NormalBlend_float(_NormalStrength_9dc5b89ad68a7185bbbaed44b704eec7_Out_2_Vector3, _NormalStrength_9c8b92cfc893a386b69204d34b74152b_Out_2_Vector3, _NormalBlend_782afb0f64887e8380e83132b6a5810e_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Property_7c6ba36b7f75fd828a781ef390fe81fc_Out_0_Vector3, IN.WorldSpaceNormal, _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_96256a8185f0568abafec3a227827546_R_1_Float = _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3[0];
            float _Split_96256a8185f0568abafec3a227827546_G_2_Float = _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3[1];
            float _Split_96256a8185f0568abafec3a227827546_B_3_Float = _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3[2];
            float _Split_96256a8185f0568abafec3a227827546_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_f5913a02d21120849228d323bef35553_Out_2_Float;
            Unity_Add_float(_Split_96256a8185f0568abafec3a227827546_R_1_Float, _Split_96256a8185f0568abafec3a227827546_G_2_Float, _Add_f5913a02d21120849228d323bef35553_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_9a058a92f487128798a7f94472c0ca30_Out_2_Float;
            Unity_Add_float(_Add_f5913a02d21120849228d323bef35553_Out_2_Float, _Split_96256a8185f0568abafec3a227827546_B_3_Float, _Add_9a058a92f487128798a7f94472c0ca30_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_da7d9b77e00889889a1cf846bbb669a5_Out_0_Float = _Cover_Amount;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_9ac7e0db72fe9d8297f925d7a8d82981_Out_0_Float = _Cover_Amount_Grow_Speed;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Subtract_0f19dd2c94f6928ba6cdfc45f693284d_Out_2_Float;
            Unity_Subtract_float(4, _Property_9ac7e0db72fe9d8297f925d7a8d82981_Out_0_Float, _Subtract_0f19dd2c94f6928ba6cdfc45f693284d_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Divide_3bef9bbb9755dc8696f8ac17007a2366_Out_2_Float;
            Unity_Divide_float(_Property_da7d9b77e00889889a1cf846bbb669a5_Out_0_Float, _Subtract_0f19dd2c94f6928ba6cdfc45f693284d_Out_2_Float, _Divide_3bef9bbb9755dc8696f8ac17007a2366_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_1fc5042ab3ae9989938f02ed525d6d1b_Out_1_Float;
            Unity_Absolute_float(_Divide_3bef9bbb9755dc8696f8ac17007a2366_Out_2_Float, _Absolute_1fc5042ab3ae9989938f02ed525d6d1b_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_7f87f809e802fe8cae930b82dfe1911c_Out_2_Float;
            Unity_Power_float(_Absolute_1fc5042ab3ae9989938f02ed525d6d1b_Out_1_Float, _Subtract_0f19dd2c94f6928ba6cdfc45f693284d_Out_2_Float, _Power_7f87f809e802fe8cae930b82dfe1911c_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float;
            Unity_Clamp_float(_Power_7f87f809e802fe8cae930b82dfe1911c_Out_2_Float, 0, 2, _Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_b9d25c21d933788b84d54f7c635149e2_Out_2_Float;
            Unity_Multiply_float_float(_Add_9a058a92f487128798a7f94472c0ca30_Out_2_Float, _Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float, _Multiply_b9d25c21d933788b84d54f7c635149e2_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_fbb647649cdbf583a108c0f8cdf6aaa0_Out_1_Float;
            Unity_Saturate_float(_Multiply_b9d25c21d933788b84d54f7c635149e2_Out_2_Float, _Saturate_fbb647649cdbf583a108c0f8cdf6aaa0_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_ee2e002d790e45849c0cbd1357a0ce4a_Out_3_Float;
            Unity_Clamp_float(_Add_9a058a92f487128798a7f94472c0ca30_Out_2_Float, 0, 0.9999, _Clamp_ee2e002d790e45849c0cbd1357a0ce4a_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_d4885ba189012a86826100355a8ee1d1_Out_0_Float = _Cover_Max_Angle;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Divide_5bd014a6111174888637d9078175ccbb_Out_2_Float;
            Unity_Divide_float(_Property_d4885ba189012a86826100355a8ee1d1_Out_0_Float, 45, _Divide_5bd014a6111174888637d9078175ccbb_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_80b741ae772c4d8191d5f26898f95578_Out_1_Float;
            Unity_OneMinus_float(_Divide_5bd014a6111174888637d9078175ccbb_Out_2_Float, _OneMinus_80b741ae772c4d8191d5f26898f95578_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Subtract_f22c892d39e02b8abe6ab26a57a62249_Out_2_Float;
            Unity_Subtract_float(_Clamp_ee2e002d790e45849c0cbd1357a0ce4a_Out_3_Float, _OneMinus_80b741ae772c4d8191d5f26898f95578_Out_1_Float, _Subtract_f22c892d39e02b8abe6ab26a57a62249_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_fdfdf3d8e65f078c9f4a01f83b01f048_Out_3_Float;
            Unity_Clamp_float(_Subtract_f22c892d39e02b8abe6ab26a57a62249_Out_2_Float, 0, 2, _Clamp_fdfdf3d8e65f078c9f4a01f83b01f048_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Divide_9c6c3a806810a3809e3c224188106363_Out_2_Float;
            Unity_Divide_float(1, _Divide_5bd014a6111174888637d9078175ccbb_Out_2_Float, _Divide_9c6c3a806810a3809e3c224188106363_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_e65088594cdcd48fa0f022fc8175c8c9_Out_2_Float;
            Unity_Multiply_float_float(_Clamp_fdfdf3d8e65f078c9f4a01f83b01f048_Out_3_Float, _Divide_9c6c3a806810a3809e3c224188106363_Out_2_Float, _Multiply_e65088594cdcd48fa0f022fc8175c8c9_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_2b394cd0bed344818ffb9eed9e5c53e1_Out_1_Float;
            Unity_Absolute_float(_Multiply_e65088594cdcd48fa0f022fc8175c8c9_Out_2_Float, _Absolute_2b394cd0bed344818ffb9eed9e5c53e1_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_cb57d5e16197578e8e8ba3400aab436b_Out_0_Float = _CoverHardness;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_21df469b2db977828d49344ca1eec030_Out_2_Float;
            Unity_Power_float(_Absolute_2b394cd0bed344818ffb9eed9e5c53e1_Out_1_Float, _Property_cb57d5e16197578e8e8ba3400aab436b_Out_0_Float, _Power_21df469b2db977828d49344ca1eec030_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_d6dc82050413eb849dfc6983ad308f63_Out_0_Float = _Cover_Min_Height;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_55ba8ae17d7e908a8c116f016933a5c4_Out_1_Float;
            Unity_OneMinus_float(_Property_d6dc82050413eb849dfc6983ad308f63_Out_0_Float, _OneMinus_55ba8ae17d7e908a8c116f016933a5c4_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_9034d1eb71e07a84aaafa21620d0ebcb_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
            float _Split_9034d1eb71e07a84aaafa21620d0ebcb_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
            float _Split_9034d1eb71e07a84aaafa21620d0ebcb_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
            float _Split_9034d1eb71e07a84aaafa21620d0ebcb_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float;
            Unity_Add_float(_OneMinus_55ba8ae17d7e908a8c116f016933a5c4_Out_1_Float, _Split_9034d1eb71e07a84aaafa21620d0ebcb_G_2_Float, _Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_e4c251a4fa894882bb13119a081a7170_Out_2_Float;
            Unity_Add_float(_Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float, 1, _Add_e4c251a4fa894882bb13119a081a7170_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_eb62a527acaafa88b6e28bfaa49893f4_Out_3_Float;
            Unity_Clamp_float(_Add_e4c251a4fa894882bb13119a081a7170_Out_2_Float, 0, 1, _Clamp_eb62a527acaafa88b6e28bfaa49893f4_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_f9094ebaecca9780b46893a792429806_Out_0_Float = _Cover_Min_Height_Blending;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_18ea921b495add86a362e3706f6c9569_Out_2_Float;
            Unity_Add_float(_Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float, _Property_f9094ebaecca9780b46893a792429806_Out_0_Float, _Add_18ea921b495add86a362e3706f6c9569_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Divide_bbf053c5aa7f6a88becd534af7ba8301_Out_2_Float;
            Unity_Divide_float(_Add_18ea921b495add86a362e3706f6c9569_Out_2_Float, _Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float, _Divide_bbf053c5aa7f6a88becd534af7ba8301_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_327fa2c4164bb68a86132da6b0e7e78f_Out_1_Float;
            Unity_OneMinus_float(_Divide_bbf053c5aa7f6a88becd534af7ba8301_Out_2_Float, _OneMinus_327fa2c4164bb68a86132da6b0e7e78f_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_ecd7b6a41e7af88fa3cbef16a3bc5b02_Out_2_Float;
            Unity_Add_float(_OneMinus_327fa2c4164bb68a86132da6b0e7e78f_Out_1_Float, -0.5, _Add_ecd7b6a41e7af88fa3cbef16a3bc5b02_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_e1620f6d6ff43682b4ad7b309118f941_Out_3_Float;
            Unity_Clamp_float(_Add_ecd7b6a41e7af88fa3cbef16a3bc5b02_Out_2_Float, 0, 1, _Clamp_e1620f6d6ff43682b4ad7b309118f941_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_5c0e00010d3f368db3787628623c361a_Out_2_Float;
            Unity_Add_float(_Clamp_eb62a527acaafa88b6e28bfaa49893f4_Out_3_Float, _Clamp_e1620f6d6ff43682b4ad7b309118f941_Out_3_Float, _Add_5c0e00010d3f368db3787628623c361a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_94e731fd5526ec8281dee0a6143f09c1_Out_3_Float;
            Unity_Clamp_float(_Add_5c0e00010d3f368db3787628623c361a_Out_2_Float, 0, 1, _Clamp_94e731fd5526ec8281dee0a6143f09c1_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_18e2801a2e62658287a6f37f74c849c5_Out_2_Float;
            Unity_Multiply_float_float(_Power_21df469b2db977828d49344ca1eec030_Out_2_Float, _Clamp_94e731fd5526ec8281dee0a6143f09c1_Out_3_Float, _Multiply_18e2801a2e62658287a6f37f74c849c5_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_b364ac6af25fa58db4da48bef2655e44_Out_2_Float;
            Unity_Multiply_float_float(_Saturate_fbb647649cdbf583a108c0f8cdf6aaa0_Out_1_Float, _Multiply_18e2801a2e62658287a6f37f74c849c5_Out_2_Float, _Multiply_b364ac6af25fa58db4da48bef2655e44_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Lerp_ce0e66ae6c014a87bf6b30846c04b2f6_Out_3_Vector3;
            Unity_Lerp_float3(_NormalBlend_a694ea2f4baada8da0978a00c2ccb417_Out_2_Vector3, _NormalBlend_782afb0f64887e8380e83132b6a5810e_Out_2_Vector3, (_Multiply_b364ac6af25fa58db4da48bef2655e44_Out_2_Float.xxx), _Lerp_ce0e66ae6c014a87bf6b30846c04b2f6_Out_3_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Transform_770d1933b55d1b84a0bd6db42f3c78c9_Out_1_Vector3;
            {
                float3x3 tangentTransform = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                _Transform_770d1933b55d1b84a0bd6db42f3c78c9_Out_1_Vector3 = TransformTangentToWorldDir(_Lerp_ce0e66ae6c014a87bf6b30846c04b2f6_Out_3_Vector3.xyz, tangentTransform, true).xyz;
            }
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Property_7c6ba36b7f75fd828a781ef390fe81fc_Out_0_Vector3, _Transform_770d1933b55d1b84a0bd6db42f3c78c9_Out_1_Vector3, _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_R_1_Float = _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3[0];
            float _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_G_2_Float = _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3[1];
            float _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_B_3_Float = _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3[2];
            float _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_edda96f9db17d38cb56cd74fad991c1b_Out_2_Float;
            Unity_Add_float(_Split_0aa1fa7994fd9383afd7d2a31b8a5c58_R_1_Float, _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_G_2_Float, _Add_edda96f9db17d38cb56cd74fad991c1b_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_f4f04e53f77faf80ace8c0f8e979843c_Out_2_Float;
            Unity_Add_float(_Add_edda96f9db17d38cb56cd74fad991c1b_Out_2_Float, _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_B_3_Float, _Add_f4f04e53f77faf80ace8c0f8e979843c_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_5a81fd82c6a81e899179cd6a617a9aec_Out_2_Float;
            Unity_Multiply_float_float(_Add_f4f04e53f77faf80ace8c0f8e979843c_Out_2_Float, _Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float, _Multiply_5a81fd82c6a81e899179cd6a617a9aec_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_e06a505285f5238a853337d02932891b_Out_2_Float;
            Unity_Multiply_float_float(_Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float, _Property_cb57d5e16197578e8e8ba3400aab436b_Out_0_Float, _Multiply_e06a505285f5238a853337d02932891b_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_088b09a855d8228bb73f1fecf4e444fd_Out_2_Float;
            Unity_Multiply_float_float(_Multiply_e06a505285f5238a853337d02932891b_Out_2_Float, _Multiply_18e2801a2e62658287a6f37f74c849c5_Out_2_Float, _Multiply_088b09a855d8228bb73f1fecf4e444fd_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_5636b2845aba9a8cae86012e0ece3ad1_Out_2_Float;
            Unity_Multiply_float_float(_Multiply_5a81fd82c6a81e899179cd6a617a9aec_Out_2_Float, _Multiply_088b09a855d8228bb73f1fecf4e444fd_Out_2_Float, _Multiply_5636b2845aba9a8cae86012e0ece3ad1_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_69f7b0977ddb53899920af6323e8d0fe_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_CoverMaskMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7;
            _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
            float4 _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4;
            float4 _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XZ_2_Vector4;
            float4 _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_YZ_3_Vector4;
            float4 _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XY_4_Vector4;
            SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(_Property_69f7b0977ddb53899920af6323e8d0fe_Out_0_Texture2D, (_Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4).x, _Property_7e0717fa374eed86a380cfe44b28edf0_Out_0_Float, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XZ_2_Vector4, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_YZ_3_Vector4, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_e4be19cd1f232a808ae6fe9f9259cd4e_R_1_Float = _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4[0];
            float _Split_e4be19cd1f232a808ae6fe9f9259cd4e_G_2_Float = _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4[1];
            float _Split_e4be19cd1f232a808ae6fe9f9259cd4e_B_3_Float = _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4[2];
            float _Split_e4be19cd1f232a808ae6fe9f9259cd4e_A_4_Float = _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_48f133c0cba9a8819633d2d3b23b260c_Out_0_Float = _CoverHeightMapMin;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_739d4be9d8e77c85a5db4914565db091_Out_0_Float = _CoverHeightMapMax;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_a40393428558cd879a301cba41adb10c_Out_0_Vector2 = float2(_Property_48f133c0cba9a8819633d2d3b23b260c_Out_0_Float, _Property_739d4be9d8e77c85a5db4914565db091_Out_0_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_895edb6e4c6a818eb2e6568e3d0027ee_Out_0_Float = _CoverHeightMapOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Add_5fe0b993c875028f97cc5b6530321a12_Out_2_Vector2;
            Unity_Add_float2(_Vector2_a40393428558cd879a301cba41adb10c_Out_0_Vector2, (_Property_895edb6e4c6a818eb2e6568e3d0027ee_Out_0_Float.xx), _Add_5fe0b993c875028f97cc5b6530321a12_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Remap_6cd0f9512cc2918594d1639bafc06c6c_Out_3_Float;
            Unity_Remap_float(_Split_e4be19cd1f232a808ae6fe9f9259cd4e_B_3_Float, float2 (0, 1), _Add_5fe0b993c875028f97cc5b6530321a12_Out_2_Vector2, _Remap_6cd0f9512cc2918594d1639bafc06c6c_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_786d36b14fbdef808dd9ac0bb660bdf9_Out_2_Float;
            Unity_Multiply_float_float(_Multiply_5636b2845aba9a8cae86012e0ece3ad1_Out_2_Float, _Remap_6cd0f9512cc2918594d1639bafc06c6c_Out_3_Float, _Multiply_786d36b14fbdef808dd9ac0bb660bdf9_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_1112e16c39010a8faf99d2d7fde4e1b7_Out_2_Float;
            Unity_Multiply_float_float(_Split_39041ef87771e683b834dd7eca6b60aa_G_2_Float, _Multiply_786d36b14fbdef808dd9ac0bb660bdf9_Out_2_Float, _Multiply_1112e16c39010a8faf99d2d7fde4e1b7_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_76a165b3be307289a7e59c5b70b05c89_Out_1_Float;
            Unity_Saturate_float(_Multiply_1112e16c39010a8faf99d2d7fde4e1b7_Out_2_Float, _Saturate_76a165b3be307289a7e59c5b70b05c89_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_fa29688e7d617f8690fad410f7cb077a_Out_2_Float;
            Unity_Multiply_float_float(_Clamp_1a91f1e3aec2228bbfb2a0736004946e_Out_3_Float, _Saturate_76a165b3be307289a7e59c5b70b05c89_Out_1_Float, _Multiply_fa29688e7d617f8690fad410f7cb077a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #if defined(_USEDYNAMICCOVERTSTATICMASKF_ON)
            float _UseDynamicCoverTStaticMaskF_965d575a85d3a285888696251619b92a_Out_0_Float = _Multiply_fa29688e7d617f8690fad410f7cb077a_Out_2_Float;
            #else
            float _UseDynamicCoverTStaticMaskF_965d575a85d3a285888696251619b92a_Out_0_Float = _Clamp_1a91f1e3aec2228bbfb2a0736004946e_Out_3_Float;
            #endif
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Lerp_c59b54e4e94ab88e92b146539960ac48_Out_3_Vector3;
            Unity_Lerp_float3(_BlendOverlayBaseColor_9ffabe2fc453cb81a840278206c992a9_OutVector4_1_Vector3, _BlendOverlayBaseColor_e008078375b0f98abd6bae3cdc0a3816_OutVector4_1_Vector3, (_UseDynamicCoverTStaticMaskF_965d575a85d3a285888696251619b92a_Out_0_Float.xxx), _Lerp_c59b54e4e94ab88e92b146539960ac48_Out_3_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_b04bab91d39976849400b89ad7b519ea_Out_0_Vector4 = _WetColor;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Multiply_d49d385c7400348896380ca150a49179_Out_2_Vector3;
            Unity_Multiply_float3_float3((_Property_b04bab91d39976849400b89ad7b519ea_Out_0_Vector4.xyz), _Lerp_c59b54e4e94ab88e92b146539960ac48_Out_3_Vector3, _Multiply_d49d385c7400348896380ca150a49179_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_6a89d72ac6ee8288843130b19eac4072_Out_1_Float;
            Unity_OneMinus_float(_Split_39041ef87771e683b834dd7eca6b60aa_R_1_Float, _OneMinus_6a89d72ac6ee8288843130b19eac4072_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Lerp_ab54871dfce4b381bee887d0813c791a_Out_3_Vector3;
            Unity_Lerp_float3(_Lerp_c59b54e4e94ab88e92b146539960ac48_Out_3_Vector3, _Multiply_d49d385c7400348896380ca150a49179_Out_2_Vector3, (_OneMinus_6a89d72ac6ee8288843130b19eac4072_Out_1_Float.xxx), _Lerp_ab54871dfce4b381bee887d0813c791a_Out_3_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_c9f2639eb2cf2c82bf8d7326dd3c4ff2_Out_0_Float = _CoverNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalStrength_11fe288d2bd3798f94888fd2b82f09b7_Out_2_Vector3;
            Unity_NormalStrength_float((_TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XYZ_1_Vector4.xyz), _Property_c9f2639eb2cf2c82bf8d7326dd3c4ff2_Out_0_Float, _NormalStrength_11fe288d2bd3798f94888fd2b82f09b7_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalBlend_8bb9d57d46ba6983962d37dcf1ba249a_Out_2_Vector3;
            Unity_NormalBlend_float(_NormalStrength_11fe288d2bd3798f94888fd2b82f09b7_Out_2_Vector3, _NormalStrength_9c8b92cfc893a386b69204d34b74152b_Out_2_Vector3, _NormalBlend_8bb9d57d46ba6983962d37dcf1ba249a_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_1f2067b251a2228e97722c53a81a0d8d_Out_0_Vector2 = float2(_SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_A_7_Float, _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_G_5_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Multiply_bca5a77fdaa6aa84ae77c3f10c5bc518_Out_2_Vector2;
            Unity_Multiply_float2_float2(_Vector2_1f2067b251a2228e97722c53a81a0d8d_Out_0_Vector2, float2(2, 2), _Multiply_bca5a77fdaa6aa84ae77c3f10c5bc518_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Add_5eee5bcf3b917e8f921582f2494d7c91_Out_2_Vector2;
            Unity_Add_float2(_Multiply_bca5a77fdaa6aa84ae77c3f10c5bc518_Out_2_Vector2, float2(-1, -1), _Add_5eee5bcf3b917e8f921582f2494d7c91_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_870958da12967689b96cd248fab52878_Out_0_Float = _DetailCoverNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Multiply_29511e56d4f95d8a8bad00f2e5c325cf_Out_2_Vector2;
            Unity_Multiply_float2_float2(_Add_5eee5bcf3b917e8f921582f2494d7c91_Out_2_Vector2, (_Property_870958da12967689b96cd248fab52878_Out_0_Float.xx), _Multiply_29511e56d4f95d8a8bad00f2e5c325cf_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_cbcfcc8c5cdae088b8698f81d170d861_R_1_Float = _Multiply_29511e56d4f95d8a8bad00f2e5c325cf_Out_2_Vector2[0];
            float _Split_cbcfcc8c5cdae088b8698f81d170d861_G_2_Float = _Multiply_29511e56d4f95d8a8bad00f2e5c325cf_Out_2_Vector2[1];
            float _Split_cbcfcc8c5cdae088b8698f81d170d861_B_3_Float = 0;
            float _Split_cbcfcc8c5cdae088b8698f81d170d861_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _DotProduct_49f574a08493ae8586b8c40e956441b4_Out_2_Float;
            Unity_DotProduct_float2(_Multiply_29511e56d4f95d8a8bad00f2e5c325cf_Out_2_Vector2, _Multiply_29511e56d4f95d8a8bad00f2e5c325cf_Out_2_Vector2, _DotProduct_49f574a08493ae8586b8c40e956441b4_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_88e2f0801d3bb88392b10d2188ae9021_Out_1_Float;
            Unity_Saturate_float(_DotProduct_49f574a08493ae8586b8c40e956441b4_Out_2_Float, _Saturate_88e2f0801d3bb88392b10d2188ae9021_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_ee53d1e20d3fb68c9d4db8e2f72ef434_Out_1_Float;
            Unity_OneMinus_float(_Saturate_88e2f0801d3bb88392b10d2188ae9021_Out_1_Float, _OneMinus_ee53d1e20d3fb68c9d4db8e2f72ef434_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _SquareRoot_7550b60d50be208c8e72b59c1ca4633d_Out_1_Float;
            Unity_SquareRoot_float(_OneMinus_ee53d1e20d3fb68c9d4db8e2f72ef434_Out_1_Float, _SquareRoot_7550b60d50be208c8e72b59c1ca4633d_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Vector3_093ec16217e61384b437e05bbaf4d9a8_Out_0_Vector3 = float3(_Split_cbcfcc8c5cdae088b8698f81d170d861_R_1_Float, _Split_cbcfcc8c5cdae088b8698f81d170d861_G_2_Float, _SquareRoot_7550b60d50be208c8e72b59c1ca4633d_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalBlend_5f10f2889281d88fa53650e7c471ad87_Out_2_Vector3;
            Unity_NormalBlend_float(_NormalBlend_8bb9d57d46ba6983962d37dcf1ba249a_Out_2_Vector3, _Vector3_093ec16217e61384b437e05bbaf4d9a8_Out_0_Vector3, _NormalBlend_5f10f2889281d88fa53650e7c471ad87_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Lerp_850434193793408fadaa26fc92231b75_Out_3_Vector3;
            Unity_Lerp_float3(_NormalBlend_a694ea2f4baada8da0978a00c2ccb417_Out_2_Vector3, _NormalBlend_5f10f2889281d88fa53650e7c471ad87_Out_2_Vector3, (_UseDynamicCoverTStaticMaskF_965d575a85d3a285888696251619b92a_Out_0_Float.xxx), _Lerp_850434193793408fadaa26fc92231b75_Out_3_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_100eebf1571bda85b1877ccb357b8341_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseMaskMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float _TriplanarNM_49170cf29e668789a77a85434e3e94fc;
            _TriplanarNM_49170cf29e668789a77a85434e3e94fc.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNM_49170cf29e668789a77a85434e3e94fc.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
            float4 _TriplanarNM_49170cf29e668789a77a85434e3e94fc_XYZ_1_Vector4;
            float4 _TriplanarNM_49170cf29e668789a77a85434e3e94fc_XZ_2_Vector4;
            float4 _TriplanarNM_49170cf29e668789a77a85434e3e94fc_YZ_3_Vector4;
            float4 _TriplanarNM_49170cf29e668789a77a85434e3e94fc_XY_4_Vector4;
            SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(_Property_100eebf1571bda85b1877ccb357b8341_Out_0_Texture2D, (_Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4).x, _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float, _TriplanarNM_49170cf29e668789a77a85434e3e94fc, _TriplanarNM_49170cf29e668789a77a85434e3e94fc_XYZ_1_Vector4, _TriplanarNM_49170cf29e668789a77a85434e3e94fc_XZ_2_Vector4, _TriplanarNM_49170cf29e668789a77a85434e3e94fc_YZ_3_Vector4, _TriplanarNM_49170cf29e668789a77a85434e3e94fc_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_6938e7c9c9edf188aec235e5f2d35bde_R_1_Float = _TriplanarNM_49170cf29e668789a77a85434e3e94fc_XYZ_1_Vector4[0];
            float _Split_6938e7c9c9edf188aec235e5f2d35bde_G_2_Float = _TriplanarNM_49170cf29e668789a77a85434e3e94fc_XYZ_1_Vector4[1];
            float _Split_6938e7c9c9edf188aec235e5f2d35bde_B_3_Float = _TriplanarNM_49170cf29e668789a77a85434e3e94fc_XYZ_1_Vector4[2];
            float _Split_6938e7c9c9edf188aec235e5f2d35bde_A_4_Float = _TriplanarNM_49170cf29e668789a77a85434e3e94fc_XYZ_1_Vector4[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_a0497633c27d2e87a72a42408bce7eda_Out_0_Float = _BaseMetallic;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_939fe20444a1c6878a6aa954ecd2e895_Out_2_Float;
            Unity_Multiply_float_float(_Split_6938e7c9c9edf188aec235e5f2d35bde_R_1_Float, _Property_a0497633c27d2e87a72a42408bce7eda_Out_0_Float, _Multiply_939fe20444a1c6878a6aa954ecd2e895_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_43c632cf405356869acfeeec3c1338c4_Out_0_Float = _BaseAORemapMin;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_af898f2de7e0f7829feb1f14d8d66fde_Out_0_Float = _BaseAORemapMax;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_fa3c664fb637c38ba4e2a6fa56358285_Out_0_Vector2 = float2(_Property_43c632cf405356869acfeeec3c1338c4_Out_0_Float, _Property_af898f2de7e0f7829feb1f14d8d66fde_Out_0_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Remap_189962673b1de1849b060d11a440f95c_Out_3_Float;
            Unity_Remap_float(_Split_6938e7c9c9edf188aec235e5f2d35bde_G_2_Float, float2 (0, 1), _Vector2_fa3c664fb637c38ba4e2a6fa56358285_Out_0_Vector2, _Remap_189962673b1de1849b060d11a440f95c_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_e6da399a84859084b7c7f93b5763116c_Out_0_Float = _BaseSmoothnessRemapMin;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_113d2cead56a9685bd340bb8217f4b25_Out_0_Float = _BaseSmoothnessRemapMax;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_f477dd4aea95708bad152f2a583260e3_Out_0_Vector2 = float2(_Property_e6da399a84859084b7c7f93b5763116c_Out_0_Float, _Property_113d2cead56a9685bd340bb8217f4b25_Out_0_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Remap_a52c5f6577fc1980a5e299a6e0ddf409_Out_3_Float;
            Unity_Remap_float(_Split_6938e7c9c9edf188aec235e5f2d35bde_A_4_Float, float2 (0, 1), _Vector2_f477dd4aea95708bad152f2a583260e3_Out_0_Vector2, _Remap_a52c5f6577fc1980a5e299a6e0ddf409_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_5a48ad6ac413448ead726e9871257076_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_B_6_Float, 2, _Multiply_5a48ad6ac413448ead726e9871257076_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_f11cb1aeb2e4478e9aefa74e378fd580_Out_2_Float;
            Unity_Add_float(_Multiply_5a48ad6ac413448ead726e9871257076_Out_2_Float, -1, _Add_f11cb1aeb2e4478e9aefa74e378fd580_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_f758606784e4ad84b486c3914d1289de_Out_0_Float = _DetailSmoothnessScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_0e5ad6a6ef59dc8e8ed0c369e8449deb_Out_2_Float;
            Unity_Multiply_float_float(_Add_f11cb1aeb2e4478e9aefa74e378fd580_Out_2_Float, _Property_f758606784e4ad84b486c3914d1289de_Out_0_Float, _Multiply_0e5ad6a6ef59dc8e8ed0c369e8449deb_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_c67c50f580946c8db52700c1860eb41c_Out_1_Float;
            Unity_Saturate_float(_Multiply_0e5ad6a6ef59dc8e8ed0c369e8449deb_Out_2_Float, _Saturate_c67c50f580946c8db52700c1860eb41c_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_1cc215099acfe18a825b04bc28feb9f0_Out_1_Float;
            Unity_Absolute_float(_Saturate_c67c50f580946c8db52700c1860eb41c_Out_1_Float, _Absolute_1cc215099acfe18a825b04bc28feb9f0_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a_float _BlendOverlayDetailSmoothness_c5fcd30f5d100980ad9314e0e56d2d60;
            float _BlendOverlayDetailSmoothness_c5fcd30f5d100980ad9314e0e56d2d60_SmoothnessOverlay_1_Float;
            SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a_float(_Remap_a52c5f6577fc1980a5e299a6e0ddf409_Out_3_Float, _Add_f11cb1aeb2e4478e9aefa74e378fd580_Out_2_Float, _Absolute_1cc215099acfe18a825b04bc28feb9f0_Out_1_Float, _BlendOverlayDetailSmoothness_c5fcd30f5d100980ad9314e0e56d2d60, _BlendOverlayDetailSmoothness_c5fcd30f5d100980ad9314e0e56d2d60_SmoothnessOverlay_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_28feb3d1dd4dfd82a6e9d9ea40874a00_Out_1_Float;
            Unity_Saturate_float(_BlendOverlayDetailSmoothness_c5fcd30f5d100980ad9314e0e56d2d60_SmoothnessOverlay_1_Float, _Saturate_28feb3d1dd4dfd82a6e9d9ea40874a00_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Vector3_3f6927cdb1485a88950f0508b64a02c3_Out_0_Vector3 = float3(_Multiply_939fe20444a1c6878a6aa954ecd2e895_Out_2_Float, _Remap_189962673b1de1849b060d11a440f95c_Out_3_Float, _Saturate_28feb3d1dd4dfd82a6e9d9ea40874a00_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_a3f085b4921132839c45645c6957db36_R_1_Float = _Vector3_3f6927cdb1485a88950f0508b64a02c3_Out_0_Vector3[0];
            float _Split_a3f085b4921132839c45645c6957db36_G_2_Float = _Vector3_3f6927cdb1485a88950f0508b64a02c3_Out_0_Vector3[1];
            float _Split_a3f085b4921132839c45645c6957db36_B_3_Float = _Vector3_3f6927cdb1485a88950f0508b64a02c3_Out_0_Vector3[2];
            float _Split_a3f085b4921132839c45645c6957db36_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_a337addb4e03728f9252bc8a6a177248_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_ShapeAO);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _SampleTexture2D_30f1eb8bb12139818feda1d316a19063_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_a337addb4e03728f9252bc8a6a177248_Out_0_Texture2D.tex, _Property_a337addb4e03728f9252bc8a6a177248_Out_0_Texture2D.samplerstate, _Property_a337addb4e03728f9252bc8a6a177248_Out_0_Texture2D.GetTransformedUV(IN.uv0.xy) );
            float _SampleTexture2D_30f1eb8bb12139818feda1d316a19063_R_4_Float = _SampleTexture2D_30f1eb8bb12139818feda1d316a19063_RGBA_0_Vector4.r;
            float _SampleTexture2D_30f1eb8bb12139818feda1d316a19063_G_5_Float = _SampleTexture2D_30f1eb8bb12139818feda1d316a19063_RGBA_0_Vector4.g;
            float _SampleTexture2D_30f1eb8bb12139818feda1d316a19063_B_6_Float = _SampleTexture2D_30f1eb8bb12139818feda1d316a19063_RGBA_0_Vector4.b;
            float _SampleTexture2D_30f1eb8bb12139818feda1d316a19063_A_7_Float = _SampleTexture2D_30f1eb8bb12139818feda1d316a19063_RGBA_0_Vector4.a;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_40f4f30c157e9685bb7143db5354c653_Out_0_Float = _ShapeAORemapMin;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_d4ccc2976eff1783bf06a4f261fca13d_Out_0_Float = _ShapeAORemapMax;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_37a4546ff8dc048b86f6aa6ebb2fb00f_Out_0_Vector2 = float2(_Property_40f4f30c157e9685bb7143db5354c653_Out_0_Float, _Property_d4ccc2976eff1783bf06a4f261fca13d_Out_0_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Remap_a6f636e9e457818cbfaae20d34b71a2d_Out_3_Float;
            Unity_Remap_float(_SampleTexture2D_30f1eb8bb12139818feda1d316a19063_G_5_Float, float2 (0, 1), _Vector2_37a4546ff8dc048b86f6aa6ebb2fb00f_Out_0_Vector2, _Remap_a6f636e9e457818cbfaae20d34b71a2d_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Minimum_501ebb5b4e229b8aac4dbd04b29050d5_Out_2_Float;
            Unity_Minimum_float(_Split_a3f085b4921132839c45645c6957db36_G_2_Float, _Remap_a6f636e9e457818cbfaae20d34b71a2d_Out_3_Float, _Minimum_501ebb5b4e229b8aac4dbd04b29050d5_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Vector3_030cf682c34de683a72045679e26d4b9_Out_0_Vector3 = float3(_Split_a3f085b4921132839c45645c6957db36_R_1_Float, _Minimum_501ebb5b4e229b8aac4dbd04b29050d5_Out_2_Float, _Split_a3f085b4921132839c45645c6957db36_B_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_b370e8d3b9ffee808f76bccb584effca_Out_0_Float = _CoverMetallic;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_567d226d6ee3678b835fc603c61a0d82_Out_2_Float;
            Unity_Multiply_float_float(_Split_e4be19cd1f232a808ae6fe9f9259cd4e_R_1_Float, _Property_b370e8d3b9ffee808f76bccb584effca_Out_0_Float, _Multiply_567d226d6ee3678b835fc603c61a0d82_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_4a085303db2d958ebb91f6f1f35a6503_Out_0_Float = _CoverAORemapMin;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_391cee991053628f88fc2212fedb9d42_Out_0_Float = _CoverAORemapMax;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_e7d10960a73d6b84bd3a8970b6637257_Out_0_Vector2 = float2(_Property_4a085303db2d958ebb91f6f1f35a6503_Out_0_Float, _Property_391cee991053628f88fc2212fedb9d42_Out_0_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Remap_9f7f311e6e30a889a38f188ab0cb5e1b_Out_3_Float;
            Unity_Remap_float(_Split_e4be19cd1f232a808ae6fe9f9259cd4e_G_2_Float, float2 (0, 1), _Vector2_e7d10960a73d6b84bd3a8970b6637257_Out_0_Vector2, _Remap_9f7f311e6e30a889a38f188ab0cb5e1b_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_9220c2c2b4394381a676f3c6ebf9f6af_Out_0_Float = _CoverSmoothnessRemapMin;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_652fead90d293e8489aaba867d2200dc_Out_0_Float = _CoverSmoothnessRemapMax;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_56e5ec5345586385ac2aa3f11f507d03_Out_0_Vector2 = float2(_Property_9220c2c2b4394381a676f3c6ebf9f6af_Out_0_Float, _Property_652fead90d293e8489aaba867d2200dc_Out_0_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Remap_8b01373c0b0cf285a0f235790d6f9d33_Out_3_Float;
            Unity_Remap_float(_Split_e4be19cd1f232a808ae6fe9f9259cd4e_A_4_Float, float2 (0, 1), _Vector2_56e5ec5345586385ac2aa3f11f507d03_Out_0_Vector2, _Remap_8b01373c0b0cf285a0f235790d6f9d33_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_58bef2d241342982aeaae4e24ba1df8a_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_B_6_Float, 2, _Multiply_58bef2d241342982aeaae4e24ba1df8a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_81a595ae5f1e3282acf06f1df37b64c2_Out_2_Float;
            Unity_Add_float(_Multiply_58bef2d241342982aeaae4e24ba1df8a_Out_2_Float, -1, _Add_81a595ae5f1e3282acf06f1df37b64c2_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_3ed83ca55f58998dbe226f5f9b76e027_Out_0_Float = _DetailCoverSmoothnessScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_74906e003b997c849ed2791e2fc67605_Out_2_Float;
            Unity_Multiply_float_float(_Add_81a595ae5f1e3282acf06f1df37b64c2_Out_2_Float, _Property_3ed83ca55f58998dbe226f5f9b76e027_Out_0_Float, _Multiply_74906e003b997c849ed2791e2fc67605_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_247072f7d3d75a8c91db3d3dcd5a2a5f_Out_1_Float;
            Unity_Saturate_float(_Multiply_74906e003b997c849ed2791e2fc67605_Out_2_Float, _Saturate_247072f7d3d75a8c91db3d3dcd5a2a5f_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_957fdd533fa9558f834128f10756a125_Out_1_Float;
            Unity_Absolute_float(_Saturate_247072f7d3d75a8c91db3d3dcd5a2a5f_Out_1_Float, _Absolute_957fdd533fa9558f834128f10756a125_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a_float _BlendOverlayDetailSmoothness_d902e436ab1d838592bcb5ed72d7ac21;
            float _BlendOverlayDetailSmoothness_d902e436ab1d838592bcb5ed72d7ac21_SmoothnessOverlay_1_Float;
            SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a_float(_Remap_8b01373c0b0cf285a0f235790d6f9d33_Out_3_Float, _Add_81a595ae5f1e3282acf06f1df37b64c2_Out_2_Float, _Absolute_957fdd533fa9558f834128f10756a125_Out_1_Float, _BlendOverlayDetailSmoothness_d902e436ab1d838592bcb5ed72d7ac21, _BlendOverlayDetailSmoothness_d902e436ab1d838592bcb5ed72d7ac21_SmoothnessOverlay_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_c4254159e578118790b749b67ef5dc56_Out_1_Float;
            Unity_Saturate_float(_BlendOverlayDetailSmoothness_d902e436ab1d838592bcb5ed72d7ac21_SmoothnessOverlay_1_Float, _Saturate_c4254159e578118790b749b67ef5dc56_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Vector3_9f7dc5bf207e128a96593d633f04b22f_Out_0_Vector3 = float3(_Multiply_567d226d6ee3678b835fc603c61a0d82_Out_2_Float, _Remap_9f7f311e6e30a889a38f188ab0cb5e1b_Out_3_Float, _Saturate_c4254159e578118790b749b67ef5dc56_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_209739aec66e278989401e697b4c7d26_R_1_Float = _Vector3_9f7dc5bf207e128a96593d633f04b22f_Out_0_Vector3[0];
            float _Split_209739aec66e278989401e697b4c7d26_G_2_Float = _Vector3_9f7dc5bf207e128a96593d633f04b22f_Out_0_Vector3[1];
            float _Split_209739aec66e278989401e697b4c7d26_B_3_Float = _Vector3_9f7dc5bf207e128a96593d633f04b22f_Out_0_Vector3[2];
            float _Split_209739aec66e278989401e697b4c7d26_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_e6232b13ef0ede8c80a6047003a81ad6_Out_0_Float = _CoverShapeAORemapMin;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_d56e3e92363f46839c21a3e3ec40277f_Out_0_Float = _CoverShapeAORemapMax;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_05dc96538e5cef8d8259e04e75938b20_Out_0_Vector2 = float2(_Property_e6232b13ef0ede8c80a6047003a81ad6_Out_0_Float, _Property_d56e3e92363f46839c21a3e3ec40277f_Out_0_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Remap_f34a4145e440f186ae0e0dec31aab8a0_Out_3_Float;
            Unity_Remap_float(_SampleTexture2D_30f1eb8bb12139818feda1d316a19063_G_5_Float, float2 (0, 1), _Vector2_05dc96538e5cef8d8259e04e75938b20_Out_0_Vector2, _Remap_f34a4145e440f186ae0e0dec31aab8a0_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Minimum_a27e302fb2b5878d805ffb7e2a73e53e_Out_2_Float;
            Unity_Minimum_float(_Split_209739aec66e278989401e697b4c7d26_G_2_Float, _Remap_f34a4145e440f186ae0e0dec31aab8a0_Out_3_Float, _Minimum_a27e302fb2b5878d805ffb7e2a73e53e_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Vector3_31a24cfaf59fe286aedbf33be3362916_Out_0_Vector3 = float3(_Split_209739aec66e278989401e697b4c7d26_R_1_Float, _Minimum_a27e302fb2b5878d805ffb7e2a73e53e_Out_2_Float, _Split_209739aec66e278989401e697b4c7d26_B_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Lerp_ce2dc49924dd3c8e84b50a2de28e8eeb_Out_3_Vector3;
            Unity_Lerp_float3(_Vector3_030cf682c34de683a72045679e26d4b9_Out_0_Vector3, _Vector3_31a24cfaf59fe286aedbf33be3362916_Out_0_Vector3, (_UseDynamicCoverTStaticMaskF_965d575a85d3a285888696251619b92a_Out_0_Float.xxx), _Lerp_ce2dc49924dd3c8e84b50a2de28e8eeb_Out_3_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_42589655820b5480b3fcffcf6f169bb9_R_1_Float = _Lerp_ce2dc49924dd3c8e84b50a2de28e8eeb_Out_3_Vector3[0];
            float _Split_42589655820b5480b3fcffcf6f169bb9_G_2_Float = _Lerp_ce2dc49924dd3c8e84b50a2de28e8eeb_Out_3_Vector3[1];
            float _Split_42589655820b5480b3fcffcf6f169bb9_B_3_Float = _Lerp_ce2dc49924dd3c8e84b50a2de28e8eeb_Out_3_Vector3[2];
            float _Split_42589655820b5480b3fcffcf6f169bb9_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_fbc3f497caff048793a7e6422c64f62e_Out_0_Float = _WetSmoothness;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Lerp_a6aa37e095501585bf7e9df1f08c9562_Out_3_Float;
            Unity_Lerp_float(_Split_42589655820b5480b3fcffcf6f169bb9_B_3_Float, _Property_fbc3f497caff048793a7e6422c64f62e_Out_0_Float, _OneMinus_6a89d72ac6ee8288843130b19eac4072_Out_1_Float, _Lerp_a6aa37e095501585bf7e9df1f08c9562_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_R_1_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[0];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_G_2_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[1];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_B_3_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[2];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_A_4_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_532ef6f6b0f1be8b91821eb9e0f91998_Out_0_Float = _AlphaCutoff;
            #endif
            surface.BaseColor = _Lerp_ab54871dfce4b381bee887d0813c791a_Out_3_Vector3;
            surface.NormalTS = _Lerp_850434193793408fadaa26fc92231b75_Out_3_Vector3;
            surface.Emission = float3(0, 0, 0);
            surface.Metallic = _Split_42589655820b5480b3fcffcf6f169bb9_R_1_Float;
            surface.Specular = IsGammaSpace() ? float3(0.5, 0.5, 0.5) : SRGBToLinear(float3(0.5, 0.5, 0.5));
            surface.Smoothness = _Lerp_a6aa37e095501585bf7e9df1f08c9562_Out_3_Float;
            surface.Occlusion = _Split_42589655820b5480b3fcffcf6f169bb9_G_2_Float;
            surface.Alpha = _Split_6a301da40f6f1d8d8b206a60cb2c2a22_A_4_Float;
            surface.AlphaClipThreshold = _Property_532ef6f6b0f1be8b91821eb9e0f91998_Out_0_Float;
            return surface;
        }
        
        // --------------------------------------------------
        // Build Graph Inputs
        #ifdef HAVE_VFX_MODIFICATION
        #define VFX_SRP_ATTRIBUTES Attributes
        #define VFX_SRP_VARYINGS Varyings
        #define VFX_SRP_SURFACE_INPUTS SurfaceDescriptionInputs
        #endif
        VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpaceNormal =                          input.normalOS;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpaceTangent =                         input.tangentOS.xyz;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpacePosition =                        input.positionOS;
        #endif
        
        
            return output;
        }
        SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
        #ifdef HAVE_VFX_MODIFICATION
        #if VFX_USE_GRAPH_VALUES
            uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
            /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
        #endif
            /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
        
        #endif
        
            
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // must use interpolated tangent, bitangent and normal before they are normalized in the pixel shader.
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        float3 unnormalizedNormalWS = input.normalWS;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        const float renormFactor = 1.0 / length(unnormalizedNormalWS);
        #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // use bitangent on the fly like in hdrp
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // IMPORTANT! If we ever support Flip on double sided materials ensure bitangent and tangent are NOT flipped.
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        float crossSign = (input.tangentWS.w > 0.0 ? 1.0 : -1.0)* GetOddNegativeScale();
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        float3 bitang = crossSign * cross(input.normalWS.xyz, input.tangentWS.xyz);
        #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpaceNormal = renormFactor * input.normalWS.xyz;      // we want a unit length Normal Vector node in shader graph
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.TangentSpaceNormal = float3(0.0f, 0.0f, 1.0f);
        #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // to pr               eserve mikktspace compliance we use same scale renormFactor as was used on the normal.
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // This                is explained in section 2.2 in "surface gradient based bump mapping framework"
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpaceTangent = renormFactor * input.tangentWS.xyz;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpaceBiTangent = renormFactor * bitang;
        #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpacePosition = input.positionWS;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.AbsoluteWorldSpacePosition = GetAbsolutePositionWS(input.positionWS);
        #endif
        
        
            #if UNITY_UV_STARTS_AT_TOP
            #else
            #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.uv0 = input.texCoord0;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.VertexColor = input.color;
        #endif
        
        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
        #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
        #else
        #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
        #endif
        #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
        
                return output;
        }
        
        // --------------------------------------------------
        // Main
        
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/PBRForwardPass.hlsl"
        
        // --------------------------------------------------
        // Visual Effect Vertex Invocations
        #ifdef HAVE_VFX_MODIFICATION
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
        #endif
        
        ENDHLSL
        }
        Pass
        {
            Name "GBuffer"
            Tags
            {
                "LightMode" = "UniversalGBuffer"
            }
        
        // Render State
        Cull [_Cull]
        Blend [_SrcBlend] [_DstBlend]
        ZTest [_ZTest]
        ZWrite [_ZWrite]
        
        // Debug
        // <None>
        
        // --------------------------------------------------
        // Pass
        
        HLSLPROGRAM
        
        // Pragmas
        #pragma target 4.5
        #pragma exclude_renderers gles3 glcore
        #pragma multi_compile_instancing
        #pragma multi_compile_fog
        #pragma instancing_options renderinglayer
        #pragma vertex vert
        #pragma fragment frag
        
        // Keywords
        #pragma multi_compile _ LIGHTMAP_ON
        #pragma multi_compile _ DYNAMICLIGHTMAP_ON
        #pragma multi_compile _ DIRLIGHTMAP_COMBINED
        #pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
        #pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
        #pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION
        #pragma multi_compile_fragment _ _SHADOWS_SOFT
        #pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
        #pragma multi_compile _ SHADOWS_SHADOWMASK
        #pragma multi_compile _ _MIXED_LIGHTING_SUBTRACTIVE
        #pragma multi_compile_fragment _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
        #pragma multi_compile_fragment _ _GBUFFER_NORMALS_OCT
        #pragma multi_compile_fragment _ _RENDER_PASS_ENABLED
        #pragma multi_compile_fragment _ DEBUG_DISPLAY
        #pragma shader_feature_fragment _ _SURFACE_TYPE_TRANSPARENT
        #pragma shader_feature_local_fragment _ _ALPHAPREMULTIPLY_ON
        #pragma shader_feature_local_fragment _ _ALPHAMODULATE_ON
        #pragma shader_feature_local_fragment _ _ALPHATEST_ON
        #pragma shader_feature_local_fragment _ _SPECULAR_SETUP
        #pragma shader_feature_local _ _RECEIVE_SHADOWS_OFF
        #pragma shader_feature_local _ _USEDYNAMICCOVERTSTATICMASKF_ON
        
        #if defined(_USEDYNAMICCOVERTSTATICMASKF_ON)
            #define KEYWORD_PERMUTATION_0
        #else
            #define KEYWORD_PERMUTATION_1
        #endif
        
        
        // Defines
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define _NORMALMAP 1
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define _NORMAL_DROPOFF_TS 1
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_NORMAL
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_TANGENT
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_TEXCOORD0
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_TEXCOORD1
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_TEXCOORD2
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_COLOR
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_POSITION_WS
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_NORMAL_WS
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_TANGENT_WS
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_TEXCOORD0
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_COLOR
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_FOG_AND_VERTEX_LIGHT
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_SHADOW_COORD
        #endif
        
        #define FEATURES_GRAPH_VERTEX
        /* WARNING: $splice Could not find named fragment 'PassInstancing' */
        #define SHADERPASS SHADERPASS_GBUFFER
        #define _FOG_FRAGMENT 1
        
        
        // custom interpolator pre-include
        /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
        
        // Includes
        #include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
        #include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
        #include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ProbeVolumeVariants.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
        
        // --------------------------------------------------
        // Structs and Packing
        
        // custom interpolators pre packing
        /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
        
        struct Attributes
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionOS : POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalOS : NORMAL;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 tangentOS : TANGENT;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 uv0 : TEXCOORD0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 uv1 : TEXCOORD1;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 uv2 : TEXCOORD2;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 color : COLOR;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : INSTANCEID_SEMANTIC;
            #endif
            #endif
        };
        struct Varyings
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 positionCS : SV_POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionWS;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalWS;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 tangentWS;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 texCoord0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 color;
            #endif
            #if defined(LIGHTMAP_ON)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float2 staticLightmapUV;
            #endif
            #endif
            #if defined(DYNAMICLIGHTMAP_ON)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float2 dynamicLightmapUV;
            #endif
            #endif
            #if !defined(LIGHTMAP_ON)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 sh;
            #endif
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 fogFactorAndVertexLight;
            #endif
            #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 shadowCoord;
            #endif
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
            #endif
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
            #endif
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif
            #endif
        };
        struct SurfaceDescriptionInputs
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpaceNormal;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 TangentSpaceNormal;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpaceTangent;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpaceBiTangent;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpacePosition;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 AbsoluteWorldSpacePosition;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 uv0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 VertexColor;
            #endif
        };
        struct VertexDescriptionInputs
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpaceNormal;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpaceTangent;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpacePosition;
            #endif
        };
        struct PackedVaryings
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 positionCS : SV_POSITION;
            #endif
            #if defined(LIGHTMAP_ON)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float2 staticLightmapUV : INTERP0;
            #endif
            #endif
            #if defined(DYNAMICLIGHTMAP_ON)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float2 dynamicLightmapUV : INTERP1;
            #endif
            #endif
            #if !defined(LIGHTMAP_ON)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 sh : INTERP2;
            #endif
            #endif
            #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 shadowCoord : INTERP3;
            #endif
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 tangentWS : INTERP4;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 texCoord0 : INTERP5;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 color : INTERP6;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 fogFactorAndVertexLight : INTERP7;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionWS : INTERP8;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalWS : INTERP9;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
            #endif
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
            #endif
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif
            #endif
        };
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        PackedVaryings PackVaryings (Varyings input)
        {
            PackedVaryings output;
            ZERO_INITIALIZE(PackedVaryings, output);
            output.positionCS = input.positionCS;
            #if defined(LIGHTMAP_ON)
            output.staticLightmapUV = input.staticLightmapUV;
            #endif
            #if defined(DYNAMICLIGHTMAP_ON)
            output.dynamicLightmapUV = input.dynamicLightmapUV;
            #endif
            #if !defined(LIGHTMAP_ON)
            output.sh = input.sh;
            #endif
            #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
            output.shadowCoord = input.shadowCoord;
            #endif
            output.tangentWS.xyzw = input.tangentWS;
            output.texCoord0.xyzw = input.texCoord0;
            output.color.xyzw = input.color;
            output.fogFactorAndVertexLight.xyzw = input.fogFactorAndVertexLight;
            output.positionWS.xyz = input.positionWS;
            output.normalWS.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif
            return output;
        }
        
        Varyings UnpackVaryings (PackedVaryings input)
        {
            Varyings output;
            output.positionCS = input.positionCS;
            #if defined(LIGHTMAP_ON)
            output.staticLightmapUV = input.staticLightmapUV;
            #endif
            #if defined(DYNAMICLIGHTMAP_ON)
            output.dynamicLightmapUV = input.dynamicLightmapUV;
            #endif
            #if !defined(LIGHTMAP_ON)
            output.sh = input.sh;
            #endif
            #if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
            output.shadowCoord = input.shadowCoord;
            #endif
            output.tangentWS = input.tangentWS.xyzw;
            output.texCoord0 = input.texCoord0.xyzw;
            output.color = input.color.xyzw;
            output.fogFactorAndVertexLight = input.fogFactorAndVertexLight.xyzw;
            output.positionWS = input.positionWS.xyz;
            output.normalWS = input.normalWS.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif
            return output;
        }
        #endif
        
        // --------------------------------------------------
        // Graph
        
        // Graph Properties
        CBUFFER_START(UnityPerMaterial)
        float _AlphaCutoff;
        float4 _BaseColor;
        float4 _BaseColorMap_TexelSize;
        float4 _BaseTilingOffset;
        float _BaseTriplanarThreshold;
        float4 _BaseNormalMap_TexelSize;
        float _BaseNormalScale;
        float4 _BaseMaskMap_TexelSize;
        float _BaseMetallic;
        float _BaseAORemapMin;
        float _BaseAORemapMax;
        float _BaseSmoothnessRemapMin;
        float _BaseSmoothnessRemapMax;
        float4 _CoverMaskA_TexelSize;
        float _CoverMaskPower;
        float _Cover_Amount;
        float _Cover_Amount_Grow_Speed;
        float3 _CoverDirection;
        float _Cover_Max_Angle;
        float _Cover_Min_Height;
        float _Cover_Min_Height_Blending;
        float4 _CoverBaseColor;
        float4 _CoverBaseColorMap_TexelSize;
        float4 _CoverTilingOffset;
        float _CoverTriplanarThreshold;
        float4 _CoverNormalMap_TexelSize;
        float _CoverNormalScale;
        float _CoverNormalBlendHardness;
        float _CoverHeightMapMin;
        float _CoverHeightMapMax;
        float _CoverHeightMapOffset;
        float _CoverHardness;
        float4 _CoverMaskMap_TexelSize;
        float _CoverMetallic;
        float _CoverAORemapMin;
        float _CoverAORemapMax;
        float _CoverSmoothnessRemapMin;
        float _CoverSmoothnessRemapMax;
        float4 _ShapeNormalMap_TexelSize;
        float _shapeNormalScale;
        float _CovershapeNormalScale;
        float4 _ShapeAO_TexelSize;
        float _ShapeAORemapMin;
        float _ShapeAORemapMax;
        float _CoverShapeAORemapMin;
        float _CoverShapeAORemapMax;
        float4 _DetailMap_TexelSize;
        float4 _DetailTilingOffset;
        float _DetailAlbedoScale;
        float _DetailNormalScale;
        float _DetailSmoothnessScale;
        float _DetailCoverAlbedoScale;
        float _DetailCoverNormalScale;
        float _DetailCoverSmoothnessScale;
        float _CoverMaskRCurvature;
        float _BaseBrightnessCurvMultply;
        float _BaseBrightnessCurvPower;
        float _BaseDarknessCurvMultply;
        float _BaseDarknessCurvPower;
        float _CoverBrightnessCurvMultply;
        float _CoverBrightnessCurvPower;
        float _CoverDarknessCurvMultply;
        float _CoverDarknessCurvPower;
        float4 _WetColor;
        float _WetSmoothness;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_BaseNormalMap);
        SAMPLER(sampler_BaseNormalMap);
        TEXTURE2D(_BaseMaskMap);
        SAMPLER(sampler_BaseMaskMap);
        TEXTURE2D(_CoverMaskA);
        SAMPLER(sampler_CoverMaskA);
        TEXTURE2D(_CoverBaseColorMap);
        SAMPLER(sampler_CoverBaseColorMap);
        TEXTURE2D(_CoverNormalMap);
        SAMPLER(sampler_CoverNormalMap);
        TEXTURE2D(_CoverMaskMap);
        SAMPLER(sampler_CoverMaskMap);
        TEXTURE2D(_ShapeNormalMap);
        SAMPLER(sampler_ShapeNormalMap);
        TEXTURE2D(_ShapeAO);
        SAMPLER(sampler_ShapeAO);
        TEXTURE2D(_DetailMap);
        SAMPLER(sampler_DetailMap);
        
        // Graph Includes
        #include "./NM_Object_VSPro_Indirect.cginc"
        
        // -- Property used by ScenePickingPass
        #ifdef SCENEPICKINGPASS
        float4 _SelectionID;
        #endif
        
        // -- Properties used by SceneSelectionPass
        #ifdef SCENESELECTIONPASS
        int _ObjectId;
        int _PassValue;
        #endif
        
        // Graph Functions
        
        void AddPragma_float(float3 A, out float3 Out){
        #pragma instancing_options renderinglayer procedural:setupVSPro
        Out = A;
        }
        
        struct Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float
        {
        };
        
        void SG_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float(float3 Vector3_314C8600, Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float IN, out float3 ObjectSpacePosition_1)
        {
        float3 _Property_5ec158abd968858c9d31ab40df5e9e6f_Out_0_Vector3 = Vector3_314C8600;
        float3 _InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3;
        InjectSetup_float(_Property_5ec158abd968858c9d31ab40df5e9e6f_Out_0_Vector3, _InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3);
        float3 _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3;
        AddPragma_float(_InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3, _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3);
        ObjectSpacePosition_1 = _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3;
        }
        
        void Unity_Divide_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A / B;
        }
        
        void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
        {
            RGBA = float4(R, G, B, A);
            RGB = float3(R, G, B);
            RG = float2(R, G);
        }
        
        void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
        {
        Out = A * B;
        }
        
        void Unity_Sign_float3(float3 In, out float3 Out)
        {
            Out = sign(In);
        }
        
        void Unity_Multiply_float2_float2(float2 A, float2 B, out float2 Out)
        {
        Out = A * B;
        }
        
        void Unity_Absolute_float3(float3 In, out float3 Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float3(float3 A, float3 B, out float3 Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Multiply_float3_float3(float3 A, float3 B, out float3 Out)
        {
        Out = A * B;
        }
        
        void Unity_Multiply_float_float(float A, float B, out float Out)
        {
        Out = A * B;
        }
        
        void Unity_Add_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A + B;
        }
        
        void Unity_Add_float(float A, float B, out float Out)
        {
            Out = A + B;
        }
        
        struct Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float
        {
        float3 WorldSpaceNormal;
        float3 AbsoluteWorldSpacePosition;
        };
        
        void SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(UnityTexture2D Texture2D_80A3D28F, float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float IN, out float4 XYZ_1, out float4 XZ_2, out float4 YZ_3, out float4 XY_4)
        {
        UnityTexture2D _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D = Texture2D_80A3D28F;
        float _Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
        float _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
        float _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
        float _Split_89ed63cb625cb3878c183d0b71c03400_A_4_Float = 0;
        float4 _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4;
        float3 _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3;
        float2 _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, 0, 0, _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3, _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2);
        float _Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float = Vector1_41461AC9;
        float4 _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4);
        float3 _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3;
        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3);
        float _Split_742547a7039de986a646d04c157ae549_R_1_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[0];
        float _Split_742547a7039de986a646d04c157ae549_G_2_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[1];
        float _Split_742547a7039de986a646d04c157ae549_B_3_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[2];
        float _Split_742547a7039de986a646d04c157ae549_A_4_Float = 0;
        float2 _Vector2_40a8919e571ec18499de72022c155b38_Out_0_Vector2 = float2(_Split_742547a7039de986a646d04c157ae549_G_2_Float, 1);
        float2 _Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4.xy), _Vector2_40a8919e571ec18499de72022c155b38_Out_0_Vector2, _Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2);
        float4 _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2) );
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_R_4_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.r;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_G_5_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.g;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_B_6_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.b;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_A_7_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.a;
        float3 _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3;
        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3);
        float _Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float = Vector1_E4D1C13A;
        float3 _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3;
        Unity_Power_float3(_Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3, (_Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float.xxx), _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3);
        float3 _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3);
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[0];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[1];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[2];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_A_4_Float = 0;
        float4 _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float.xxxx), _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4);
        float4 _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4;
        float3 _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3;
        float2 _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3, _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2);
        float4 _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4);
        float _Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float;
        Unity_Multiply_float_float(_Split_742547a7039de986a646d04c157ae549_B_3_Float, -1, _Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float);
        float2 _Vector2_caa25d55d456a58982bdfc39b1b43f3f_Out_0_Vector2 = float2(_Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float, 1);
        float2 _Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4.xy), _Vector2_caa25d55d456a58982bdfc39b1b43f3f_Out_0_Vector2, _Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2);
        float4 _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2) );
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_R_4_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.r;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_G_5_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.g;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_B_6_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.b;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_A_7_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.a;
        float4 _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float.xxxx), _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4);
        float4 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4;
        float3 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3;
        float2 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2);
        float4 _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4);
        float2 _Vector2_54dfd40df2fc78809955dd272f2cf0c3_Out_0_Vector2 = float2(_Split_742547a7039de986a646d04c157ae549_R_1_Float, 1);
        float2 _Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4.xy), _Vector2_54dfd40df2fc78809955dd272f2cf0c3_Out_0_Vector2, _Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2);
        float4 _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2) );
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_R_4_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.r;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_G_5_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.g;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_B_6_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.b;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_A_7_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.a;
        float4 _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float.xxxx), _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4);
        float4 _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4;
        Unity_Add_float4(_Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4, _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4);
        float4 _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4;
        Unity_Add_float4(_Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4, _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4);
        float _Add_e59af300bba2498db32eac1412123447_Out_2_Float;
        Unity_Add_float(_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float, _Add_e59af300bba2498db32eac1412123447_Out_2_Float);
        float _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float;
        Unity_Add_float(_Add_e59af300bba2498db32eac1412123447_Out_2_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float, _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float);
        float4 _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4;
        Unity_Divide_float4(_Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4, (_Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float.xxxx), _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4);
        XYZ_1 = _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4;
        XZ_2 = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4;
        YZ_3 = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4;
        XY_4 = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4;
        }
        
        void Unity_Clamp_float(float In, float Min, float Max, out float Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Absolute_float(float In, out float Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float(float A, float B, out float Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Clamp_float4(float4 In, float4 Min, float4 Max, out float4 Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Branch_float4(float Predicate, float4 True, float4 False, out float4 Out)
        {
            Out = Predicate ? True : False;
        }
        
        void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
        {
            Out = UV * Tiling + Offset;
        }
        
        void Unity_Saturate_float(float In, out float Out)
        {
            Out = saturate(In);
        }
        
        void Unity_SquareRoot_float4(float4 In, out float4 Out)
        {
            Out = sqrt(In);
        }
        
        void Unity_Sign_float(float In, out float Out)
        {
            Out = sign(In);
        }
        
        void Unity_Ceiling_float(float In, out float Out)
        {
            Out = ceil(In);
        }
        
        void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
        {
            Out = lerp(A, B, T);
        }
        
        struct Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float
        {
        };
        
        void SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float(float4 Color_9AA111D3, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float IN, out float3 OutVector4_1)
        {
        float4 _Property_012510d774fb7f8b860f5270dca4500f_Out_0_Vector4 = Color_9AA111D3;
        float4 _SquareRoot_c2c57d0223a9538aa9240890c3cacb0c_Out_1_Vector4;
        Unity_SquareRoot_float4(_Property_012510d774fb7f8b860f5270dca4500f_Out_0_Vector4, _SquareRoot_c2c57d0223a9538aa9240890c3cacb0c_Out_1_Vector4);
        float _Property_a00e29241d12f983b30177515b367ec9_Out_0_Float = Vector1_FBE622A2;
        float _Sign_343a45ede7349283a681c6bd9998fd8e_Out_1_Float;
        Unity_Sign_float(_Property_a00e29241d12f983b30177515b367ec9_Out_0_Float, _Sign_343a45ede7349283a681c6bd9998fd8e_Out_1_Float);
        float _Add_681019b8f5d3d68bb482d419c9fc61a9_Out_2_Float;
        Unity_Add_float(_Sign_343a45ede7349283a681c6bd9998fd8e_Out_1_Float, 1, _Add_681019b8f5d3d68bb482d419c9fc61a9_Out_2_Float);
        float _Multiply_e8f4cb722712a880ac0db6c7461427f7_Out_2_Float;
        Unity_Multiply_float_float(_Add_681019b8f5d3d68bb482d419c9fc61a9_Out_2_Float, 0.5, _Multiply_e8f4cb722712a880ac0db6c7461427f7_Out_2_Float);
        float _Ceiling_95ad15988aa9b98184875fa754feae01_Out_1_Float;
        Unity_Ceiling_float(_Multiply_e8f4cb722712a880ac0db6c7461427f7_Out_2_Float, _Ceiling_95ad15988aa9b98184875fa754feae01_Out_1_Float);
        float _Property_2db1c747a05ee284a8b00076062f91a4_Out_0_Float = Vector1_8C15C351;
        float _Multiply_9564ecda5193bc8286d9ff771c9226cd_Out_2_Float;
        Unity_Multiply_float_float(_Property_2db1c747a05ee284a8b00076062f91a4_Out_0_Float, _Property_2db1c747a05ee284a8b00076062f91a4_Out_0_Float, _Multiply_9564ecda5193bc8286d9ff771c9226cd_Out_2_Float);
        float4 _Lerp_b3cdb01fc3c5b988ac9b184943bf7c01_Out_3_Vector4;
        Unity_Lerp_float4(_SquareRoot_c2c57d0223a9538aa9240890c3cacb0c_Out_1_Vector4, (_Ceiling_95ad15988aa9b98184875fa754feae01_Out_1_Float.xxxx), (_Multiply_9564ecda5193bc8286d9ff771c9226cd_Out_2_Float.xxxx), _Lerp_b3cdb01fc3c5b988ac9b184943bf7c01_Out_3_Vector4);
        float4 _Multiply_39d1daff98488f8ea2cd794ad4f20926_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Lerp_b3cdb01fc3c5b988ac9b184943bf7c01_Out_3_Vector4, _Lerp_b3cdb01fc3c5b988ac9b184943bf7c01_Out_3_Vector4, _Multiply_39d1daff98488f8ea2cd794ad4f20926_Out_2_Vector4);
        OutVector4_1 = (_Multiply_39d1daff98488f8ea2cd794ad4f20926_Out_2_Vector4.xyz);
        }
        
        void Unity_Add_float2(float2 A, float2 B, out float2 Out)
        {
            Out = A + B;
        }
        
        void Unity_DotProduct_float2(float2 A, float2 B, out float Out)
        {
            Out = dot(A, B);
        }
        
        void Unity_OneMinus_float(float In, out float Out)
        {
            Out = 1 - In;
        }
        
        void Unity_SquareRoot_float(float In, out float Out)
        {
            Out = sqrt(In);
        }
        
        void Unity_Add_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A + B;
        }
        
        void Unity_Divide_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A / B;
        }
        
        void Unity_Normalize_float3(float3 In, out float3 Out)
        {
            Out = normalize(In);
        }
        
        struct Bindings_TriplanarNMn_059da9746584140498cd018db3c76047_float
        {
        float3 WorldSpaceNormal;
        float3 WorldSpaceTangent;
        float3 WorldSpaceBiTangent;
        float3 WorldSpacePosition;
        };
        
        void SG_TriplanarNMn_059da9746584140498cd018db3c76047_float(UnityTexture2D Texture2D_80A3D28F, float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNMn_059da9746584140498cd018db3c76047_float IN, out float4 XYZ_1, out float4 XZ_2, out float4 YZ_3, out float4 XY_4)
        {
        UnityTexture2D _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D = Texture2D_80A3D28F;
        float _Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float = IN.WorldSpacePosition[0];
        float _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float = IN.WorldSpacePosition[1];
        float _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float = IN.WorldSpacePosition[2];
        float _Split_89ed63cb625cb3878c183d0b71c03400_A_4_Float = 0;
        float4 _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4;
        float3 _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3;
        float2 _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, 0, 0, _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3, _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2);
        float _Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float = Vector1_41461AC9;
        float4 _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4);
        float3 _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3;
        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3);
        float _Split_6299d4ddcc4c74828aea40a46fdb896e_R_1_Float = _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3[0];
        float _Split_6299d4ddcc4c74828aea40a46fdb896e_G_2_Float = _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3[1];
        float _Split_6299d4ddcc4c74828aea40a46fdb896e_B_3_Float = _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3[2];
        float _Split_6299d4ddcc4c74828aea40a46fdb896e_A_4_Float = 0;
        float2 _Vector2_b76cb1842101e58b9e636d49b075c612_Out_0_Vector2 = float2(_Split_6299d4ddcc4c74828aea40a46fdb896e_G_2_Float, 1);
        float2 _Multiply_a87753ad90594382bf3a3a95abbadbc8_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4.xy), _Vector2_b76cb1842101e58b9e636d49b075c612_Out_0_Vector2, _Multiply_a87753ad90594382bf3a3a95abbadbc8_Out_2_Vector2);
        float4 _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_a87753ad90594382bf3a3a95abbadbc8_Out_2_Vector2) );
        _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4);
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_R_4_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.r;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_G_5_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.g;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_B_6_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.b;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_A_7_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.a;
        float2 _Vector2_ad6bd100e273d78fa409a30a77bfa2cc_Out_0_Vector2 = float2(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_R_4_Float, _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_G_5_Float);
        float2 _Multiply_31e8db88ee20c985a9850d1a58f3282b_Out_2_Vector2;
        Unity_Multiply_float2_float2(_Vector2_ad6bd100e273d78fa409a30a77bfa2cc_Out_0_Vector2, _Vector2_b76cb1842101e58b9e636d49b075c612_Out_0_Vector2, _Multiply_31e8db88ee20c985a9850d1a58f3282b_Out_2_Vector2);
        float _Split_5ed44bf2eca0868f81eb18100f49d1fa_R_1_Float = IN.WorldSpaceNormal[0];
        float _Split_5ed44bf2eca0868f81eb18100f49d1fa_G_2_Float = IN.WorldSpaceNormal[1];
        float _Split_5ed44bf2eca0868f81eb18100f49d1fa_B_3_Float = IN.WorldSpaceNormal[2];
        float _Split_5ed44bf2eca0868f81eb18100f49d1fa_A_4_Float = 0;
        float2 _Vector2_70e5837843f28b8b9d64cada3697bd5a_Out_0_Vector2 = float2(_Split_5ed44bf2eca0868f81eb18100f49d1fa_R_1_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_B_3_Float);
        float2 _Add_1145b2f896593d80aa864a34e6702562_Out_2_Vector2;
        Unity_Add_float2(_Multiply_31e8db88ee20c985a9850d1a58f3282b_Out_2_Vector2, _Vector2_70e5837843f28b8b9d64cada3697bd5a_Out_0_Vector2, _Add_1145b2f896593d80aa864a34e6702562_Out_2_Vector2);
        float _Split_2bc77ca2d17bd78cb2383770ce50b179_R_1_Float = _Add_1145b2f896593d80aa864a34e6702562_Out_2_Vector2[0];
        float _Split_2bc77ca2d17bd78cb2383770ce50b179_G_2_Float = _Add_1145b2f896593d80aa864a34e6702562_Out_2_Vector2[1];
        float _Split_2bc77ca2d17bd78cb2383770ce50b179_B_3_Float = 0;
        float _Split_2bc77ca2d17bd78cb2383770ce50b179_A_4_Float = 0;
        float _Multiply_e4fe778b81456d819c52bb414cd95968_Out_2_Float;
        Unity_Multiply_float_float(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_B_6_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_G_2_Float, _Multiply_e4fe778b81456d819c52bb414cd95968_Out_2_Float);
        float3 _Vector3_08f62c5c01619e849f1a7d85a44531ac_Out_0_Vector3 = float3(_Split_2bc77ca2d17bd78cb2383770ce50b179_R_1_Float, _Multiply_e4fe778b81456d819c52bb414cd95968_Out_2_Float, _Split_2bc77ca2d17bd78cb2383770ce50b179_G_2_Float);
        float3 _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3;
        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3);
        float _Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float = Vector1_E4D1C13A;
        float3 _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3;
        Unity_Power_float3(_Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3, (_Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float.xxx), _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3);
        float3 _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3);
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[0];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[1];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[2];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_A_4_Float = 0;
        float3 _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Vector3_08f62c5c01619e849f1a7d85a44531ac_Out_0_Vector3, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float.xxx), _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector3);
        float4 _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4;
        float3 _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3;
        float2 _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3, _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2);
        float4 _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4);
        float _Multiply_de711f4a4614bd89a463b53374cf4036_Out_2_Float;
        Unity_Multiply_float_float(_Split_6299d4ddcc4c74828aea40a46fdb896e_B_3_Float, -1, _Multiply_de711f4a4614bd89a463b53374cf4036_Out_2_Float);
        float2 _Vector2_4ed33f0c73b2698fa6f3c1b77fe76808_Out_0_Vector2 = float2(_Multiply_de711f4a4614bd89a463b53374cf4036_Out_2_Float, 1);
        float2 _Multiply_2af6058cc6ccb88caefd2799bb5941e8_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4.xy), _Vector2_4ed33f0c73b2698fa6f3c1b77fe76808_Out_0_Vector2, _Multiply_2af6058cc6ccb88caefd2799bb5941e8_Out_2_Vector2);
        float4 _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_2af6058cc6ccb88caefd2799bb5941e8_Out_2_Vector2) );
        _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4);
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_R_4_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.r;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_G_5_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.g;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_B_6_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.b;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_A_7_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.a;
        float2 _Vector2_fe9aedd4528c7486ada4abdca0b0944e_Out_0_Vector2 = float2(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_R_4_Float, _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_G_5_Float);
        float2 _Multiply_02b9b4665ad9918d8721bcaddc82f06f_Out_2_Vector2;
        Unity_Multiply_float2_float2(_Vector2_fe9aedd4528c7486ada4abdca0b0944e_Out_0_Vector2, _Vector2_4ed33f0c73b2698fa6f3c1b77fe76808_Out_0_Vector2, _Multiply_02b9b4665ad9918d8721bcaddc82f06f_Out_2_Vector2);
        float2 _Vector2_a74a85274da15181abb63cc5e8df0de1_Out_0_Vector2 = float2(_Split_5ed44bf2eca0868f81eb18100f49d1fa_R_1_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_G_2_Float);
        float2 _Add_b227c84042055e8faa1a9fdc69529707_Out_2_Vector2;
        Unity_Add_float2(_Multiply_02b9b4665ad9918d8721bcaddc82f06f_Out_2_Vector2, _Vector2_a74a85274da15181abb63cc5e8df0de1_Out_0_Vector2, _Add_b227c84042055e8faa1a9fdc69529707_Out_2_Vector2);
        float _Split_2cfb9eacd8762483941459cdf28bda97_R_1_Float = _Add_b227c84042055e8faa1a9fdc69529707_Out_2_Vector2[0];
        float _Split_2cfb9eacd8762483941459cdf28bda97_G_2_Float = _Add_b227c84042055e8faa1a9fdc69529707_Out_2_Vector2[1];
        float _Split_2cfb9eacd8762483941459cdf28bda97_B_3_Float = 0;
        float _Split_2cfb9eacd8762483941459cdf28bda97_A_4_Float = 0;
        float _Multiply_1d65ce08ce672087879125f2e13c4004_Out_2_Float;
        Unity_Multiply_float_float(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_B_6_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_B_3_Float, _Multiply_1d65ce08ce672087879125f2e13c4004_Out_2_Float);
        float3 _Vector3_ba6cfb4671e8c58f9b41ea1dc23102ca_Out_0_Vector3 = float3(_Split_2cfb9eacd8762483941459cdf28bda97_R_1_Float, _Split_2cfb9eacd8762483941459cdf28bda97_G_2_Float, _Multiply_1d65ce08ce672087879125f2e13c4004_Out_2_Float);
        float3 _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Vector3_ba6cfb4671e8c58f9b41ea1dc23102ca_Out_0_Vector3, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float.xxx), _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector3);
        float4 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4;
        float3 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3;
        float2 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2);
        float4 _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4);
        float2 _Vector2_a1e23e0f921b6484818f009a2b12a5ba_Out_0_Vector2 = float2(_Split_6299d4ddcc4c74828aea40a46fdb896e_R_1_Float, 1);
        float2 _Multiply_862402885a49f18cb87278ab53bc6744_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4.xy), _Vector2_a1e23e0f921b6484818f009a2b12a5ba_Out_0_Vector2, _Multiply_862402885a49f18cb87278ab53bc6744_Out_2_Vector2);
        float4 _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_862402885a49f18cb87278ab53bc6744_Out_2_Vector2) );
        _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4);
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_R_4_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.r;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_G_5_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.g;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_B_6_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.b;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_A_7_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.a;
        float _Multiply_4649b768be76d784a3284bacde795359_Out_2_Float;
        Unity_Multiply_float_float(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_B_6_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_R_1_Float, _Multiply_4649b768be76d784a3284bacde795359_Out_2_Float);
        float2 _Vector2_819fcd5eb484438eacad1987576d7d67_Out_0_Vector2 = float2(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_R_4_Float, _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_G_5_Float);
        float2 _Multiply_58530ebb3c6d798b93686a76247bf505_Out_2_Vector2;
        Unity_Multiply_float2_float2(_Vector2_819fcd5eb484438eacad1987576d7d67_Out_0_Vector2, _Vector2_a1e23e0f921b6484818f009a2b12a5ba_Out_0_Vector2, _Multiply_58530ebb3c6d798b93686a76247bf505_Out_2_Vector2);
        float2 _Vector2_e293c112b2f49e88a5fe46dfb1fbeb40_Out_0_Vector2 = float2(_Split_5ed44bf2eca0868f81eb18100f49d1fa_B_3_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_G_2_Float);
        float2 _Add_cf00fb232c6e2b8e973ab2f84453f55e_Out_2_Vector2;
        Unity_Add_float2(_Multiply_58530ebb3c6d798b93686a76247bf505_Out_2_Vector2, _Vector2_e293c112b2f49e88a5fe46dfb1fbeb40_Out_0_Vector2, _Add_cf00fb232c6e2b8e973ab2f84453f55e_Out_2_Vector2);
        float _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_R_1_Float = _Add_cf00fb232c6e2b8e973ab2f84453f55e_Out_2_Vector2[0];
        float _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_G_2_Float = _Add_cf00fb232c6e2b8e973ab2f84453f55e_Out_2_Vector2[1];
        float _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_B_3_Float = 0;
        float _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_A_4_Float = 0;
        float3 _Vector3_13a08d5940172a84a78ee3d9b8766833_Out_0_Vector3 = float3(_Multiply_4649b768be76d784a3284bacde795359_Out_2_Float, _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_G_2_Float, _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_R_1_Float);
        float3 _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Vector3_13a08d5940172a84a78ee3d9b8766833_Out_0_Vector3, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float.xxx), _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector3);
        float3 _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector3;
        Unity_Add_float3(_Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector3, _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector3, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector3);
        float3 _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector3;
        Unity_Add_float3(_Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector3, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector3, _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector3);
        float _Add_e59af300bba2498db32eac1412123447_Out_2_Float;
        Unity_Add_float(_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float, _Add_e59af300bba2498db32eac1412123447_Out_2_Float);
        float _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float;
        Unity_Add_float(_Add_e59af300bba2498db32eac1412123447_Out_2_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float, _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float);
        float3 _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector3;
        Unity_Divide_float3(_Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector3, (_Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float.xxx), _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector3);
        float3 _Transform_73eecc0c3689d184a34c8d0f28a58adf_Out_1_Vector3;
        {
        float3x3 tangentTransform = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
        _Transform_73eecc0c3689d184a34c8d0f28a58adf_Out_1_Vector3 = TransformWorldToTangentDir(_Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector3.xyz, tangentTransform, true);
        }
        float3 _Normalize_15ef346824db0a8797631ed8b998e673_Out_1_Vector3;
        Unity_Normalize_float3(_Transform_73eecc0c3689d184a34c8d0f28a58adf_Out_1_Vector3, _Normalize_15ef346824db0a8797631ed8b998e673_Out_1_Vector3);
        XYZ_1 = (float4(_Normalize_15ef346824db0a8797631ed8b998e673_Out_1_Vector3, 1.0));
        XZ_2 = (float4(_Vector3_08f62c5c01619e849f1a7d85a44531ac_Out_0_Vector3, 1.0));
        YZ_3 = (float4(_Vector3_ba6cfb4671e8c58f9b41ea1dc23102ca_Out_0_Vector3, 1.0));
        XY_4 = (float4(_Vector3_13a08d5940172a84a78ee3d9b8766833_Out_0_Vector3, 1.0));
        }
        
        void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
        {
            Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
        }
        
        void Unity_NormalBlend_float(float3 A, float3 B, out float3 Out)
        {
            Out = SafeNormalize(float3(A.rg + B.rg, A.b * B.b));
        }
        
        void Unity_Subtract_float(float A, float B, out float Out)
        {
            Out = A - B;
        }
        
        void Unity_Divide_float(float A, float B, out float Out)
        {
            Out = A / B;
        }
        
        void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
        {
            Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
        }
        
        void Unity_Lerp_float(float A, float B, float T, out float Out)
        {
            Out = lerp(A, B, T);
        }
        
        struct Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a_float
        {
        };
        
        void SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a_float(float Vector1_32317166, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a_float IN, out float SmoothnessOverlay_1)
        {
        float _Property_728cc50521e9e988ac9cbff4872d5139_Out_0_Float = Vector1_32317166;
        float _Property_a00e29241d12f983b30177515b367ec9_Out_0_Float = Vector1_FBE622A2;
        float _Sign_343a45ede7349283a681c6bd9998fd8e_Out_1_Float;
        Unity_Sign_float(_Property_a00e29241d12f983b30177515b367ec9_Out_0_Float, _Sign_343a45ede7349283a681c6bd9998fd8e_Out_1_Float);
        float _Add_681019b8f5d3d68bb482d419c9fc61a9_Out_2_Float;
        Unity_Add_float(_Sign_343a45ede7349283a681c6bd9998fd8e_Out_1_Float, 1, _Add_681019b8f5d3d68bb482d419c9fc61a9_Out_2_Float);
        float _Multiply_e8f4cb722712a880ac0db6c7461427f7_Out_2_Float;
        Unity_Multiply_float_float(_Add_681019b8f5d3d68bb482d419c9fc61a9_Out_2_Float, 0.5, _Multiply_e8f4cb722712a880ac0db6c7461427f7_Out_2_Float);
        float _Ceiling_95ad15988aa9b98184875fa754feae01_Out_1_Float;
        Unity_Ceiling_float(_Multiply_e8f4cb722712a880ac0db6c7461427f7_Out_2_Float, _Ceiling_95ad15988aa9b98184875fa754feae01_Out_1_Float);
        float _Property_2db1c747a05ee284a8b00076062f91a4_Out_0_Float = Vector1_8C15C351;
        float _Lerp_b3cdb01fc3c5b988ac9b184943bf7c01_Out_3_Float;
        Unity_Lerp_float(_Property_728cc50521e9e988ac9cbff4872d5139_Out_0_Float, _Ceiling_95ad15988aa9b98184875fa754feae01_Out_1_Float, _Property_2db1c747a05ee284a8b00076062f91a4_Out_0_Float, _Lerp_b3cdb01fc3c5b988ac9b184943bf7c01_Out_3_Float);
        SmoothnessOverlay_1 = _Lerp_b3cdb01fc3c5b988ac9b184943bf7c01_Out_3_Float;
        }
        
        void Unity_Minimum_float(float A, float B, out float Out)
        {
            Out = min(A, B);
        };
        
        // Custom interpolators pre vertex
        /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
        
        // Graph Vertex
        struct VertexDescription
        {
            float3 Position;
            float3 Normal;
            float3 Tangent;
        };
        
        VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
        {
            VertexDescription description = (VertexDescription)0;
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301;
            float3 _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3;
            SG_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float(IN.ObjectSpacePosition, _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301, _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3);
            #endif
            description.Position = _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3;
            description.Normal = IN.ObjectSpaceNormal;
            description.Tangent = IN.ObjectSpaceTangent;
            return description;
        }
        
        // Custom interpolators, pre surface
        #ifdef FEATURES_GRAPH_VERTEX
        Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
        {
        return output;
        }
        #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
        #endif
        
        // Graph Pixel
        struct SurfaceDescription
        {
            float3 BaseColor;
            float3 NormalTS;
            float3 Emission;
            float Metallic;
            float3 Specular;
            float Smoothness;
            float Occlusion;
            float Alpha;
            float AlphaClipThreshold;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_b4deafa94a27e588ab2e901ce05fd5c2_Out_0_Boolean = _CoverMaskRCurvature;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_6c17ebaaa33d938990da19e6860d987c_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_72f47eee6df1cd8dbc7790612f96361f_Out_0_Vector4 = _BaseTilingOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4;
            Unity_Divide_float4(float4(1, 1, 0, 0), _Property_72f47eee6df1cd8dbc7790612f96361f_Out_0_Vector4, _Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float = _BaseTriplanarThreshold;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e;
            _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XZ_2_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_YZ_3_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XY_4_Vector4;
            SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(_Property_6c17ebaaa33d938990da19e6860d987c_Out_0_Texture2D, (_Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4).x, _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XZ_2_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_YZ_3_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_9465a0f7ac851b8daf29a27b34e035be_Out_0_Vector4 = _BaseColor;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Multiply_4cbb8fe598df6b8995e151b170112293_Out_2_Vector4;
            Unity_Multiply_float4_float4(_TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4, _Property_9465a0f7ac851b8daf29a27b34e035be_Out_0_Vector4, _Multiply_4cbb8fe598df6b8995e151b170112293_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_6bf54b76e7bec584b1f7856c6442c603_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_CoverMaskA);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _UV_71e815f5c2f7188e9df5850b0bfa07ba_Out_0_Vector4 = IN.uv0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_6bf54b76e7bec584b1f7856c6442c603_Out_0_Texture2D.tex, _Property_6bf54b76e7bec584b1f7856c6442c603_Out_0_Texture2D.samplerstate, _Property_6bf54b76e7bec584b1f7856c6442c603_Out_0_Texture2D.GetTransformedUV((_UV_71e815f5c2f7188e9df5850b0bfa07ba_Out_0_Vector4.xy)) );
            float _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_R_4_Float = _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4.r;
            float _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_G_5_Float = _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4.g;
            float _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_B_6_Float = _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4.b;
            float _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_A_7_Float = _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4.a;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_61d87310f8d25683b3e258b2a7c32687_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_R_4_Float, 2, _Multiply_61d87310f8d25683b3e258b2a7c32687_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_2a04a0bb2acbb08cbe9bed32574a79f2_Out_0_Float = _BaseDarknessCurvMultply;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_22ddb374af8b978e8e07fbefa70c9485_Out_2_Float;
            Unity_Multiply_float_float(_Multiply_61d87310f8d25683b3e258b2a7c32687_Out_2_Float, _Property_2a04a0bb2acbb08cbe9bed32574a79f2_Out_0_Float, _Multiply_22ddb374af8b978e8e07fbefa70c9485_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_8ba74b557a6292888d4ba32c8da72989_Out_3_Float;
            Unity_Clamp_float(_Multiply_22ddb374af8b978e8e07fbefa70c9485_Out_2_Float, 0, 1, _Clamp_8ba74b557a6292888d4ba32c8da72989_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_80289d7a8316d28bb4411239017120b6_Out_1_Float;
            Unity_Absolute_float(_Clamp_8ba74b557a6292888d4ba32c8da72989_Out_3_Float, _Absolute_80289d7a8316d28bb4411239017120b6_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_ed4690b030015f83b3b06ac15e9d0ac7_Out_0_Float = _BaseDarknessCurvPower;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_5ba92bd090fe278aa7287667dd405d23_Out_2_Float;
            Unity_Power_float(_Absolute_80289d7a8316d28bb4411239017120b6_Out_1_Float, _Property_ed4690b030015f83b3b06ac15e9d0ac7_Out_0_Float, _Power_5ba92bd090fe278aa7287667dd405d23_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_22c4e36fffdf1887adb074e78bbc7b44_Out_3_Float;
            Unity_Clamp_float(_Power_5ba92bd090fe278aa7287667dd405d23_Out_2_Float, 0, 1, _Clamp_22c4e36fffdf1887adb074e78bbc7b44_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Multiply_f0be8921ed844a8aac9de0d40006f34b_Out_2_Vector4;
            Unity_Multiply_float4_float4(_Multiply_4cbb8fe598df6b8995e151b170112293_Out_2_Vector4, (_Clamp_22c4e36fffdf1887adb074e78bbc7b44_Out_3_Float.xxxx), _Multiply_f0be8921ed844a8aac9de0d40006f34b_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Clamp_864c8f6cb2a43a89b921dce01e0ef53b_Out_3_Vector4;
            Unity_Clamp_float4(_Multiply_f0be8921ed844a8aac9de0d40006f34b_Out_2_Vector4, float4(0, 0, 0, 0), float4(1, 1, 1, 1), _Clamp_864c8f6cb2a43a89b921dce01e0ef53b_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_a49c8f8c03fef888a861c2d7c17af6f8_Out_2_Float;
            Unity_Add_float(_Multiply_61d87310f8d25683b3e258b2a7c32687_Out_2_Float, -1, _Add_a49c8f8c03fef888a861c2d7c17af6f8_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_9323cd642f42ed8cbac9c6df151c47fa_Out_3_Float;
            Unity_Clamp_float(_Add_a49c8f8c03fef888a861c2d7c17af6f8_Out_2_Float, 0, 1, _Clamp_9323cd642f42ed8cbac9c6df151c47fa_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_33f339ef1ed862819656675eee2fb944_Out_0_Float = _BaseBrightnessCurvMultply;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_b0785816d24af2898f76ec8a2429185e_Out_2_Float;
            Unity_Multiply_float_float(_Clamp_9323cd642f42ed8cbac9c6df151c47fa_Out_3_Float, _Property_33f339ef1ed862819656675eee2fb944_Out_0_Float, _Multiply_b0785816d24af2898f76ec8a2429185e_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_b973335853a46c8a81e03c3bd287d046_Out_3_Float;
            Unity_Clamp_float(_Multiply_b0785816d24af2898f76ec8a2429185e_Out_2_Float, 0, 1, _Clamp_b973335853a46c8a81e03c3bd287d046_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_cc9743a0986aaa84a27e8f69f9752f76_Out_1_Float;
            Unity_Absolute_float(_Clamp_b973335853a46c8a81e03c3bd287d046_Out_3_Float, _Absolute_cc9743a0986aaa84a27e8f69f9752f76_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_3c0b9cbbfa7d0d828d63c00b91d92336_Out_0_Float = _BaseBrightnessCurvPower;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_1ed803ec6c9f7c848be6ac4c00192882_Out_2_Float;
            Unity_Power_float(_Absolute_cc9743a0986aaa84a27e8f69f9752f76_Out_1_Float, _Property_3c0b9cbbfa7d0d828d63c00b91d92336_Out_0_Float, _Power_1ed803ec6c9f7c848be6ac4c00192882_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_1e8c74117b5d6c8fa33005b50ce04bb8_Out_3_Float;
            Unity_Clamp_float(_Power_1ed803ec6c9f7c848be6ac4c00192882_Out_2_Float, 0, 1, _Clamp_1e8c74117b5d6c8fa33005b50ce04bb8_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Add_e8ceba55bdbffe8eb19f02736be349aa_Out_2_Vector4;
            Unity_Add_float4(_Clamp_864c8f6cb2a43a89b921dce01e0ef53b_Out_3_Vector4, (_Clamp_1e8c74117b5d6c8fa33005b50ce04bb8_Out_3_Float.xxxx), _Add_e8ceba55bdbffe8eb19f02736be349aa_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Clamp_96d8dcc832f8cc8ba79cc5afd2f1c865_Out_3_Vector4;
            Unity_Clamp_float4(_Add_e8ceba55bdbffe8eb19f02736be349aa_Out_2_Vector4, float4(0, 0, 0, 0), float4(1, 1, 1, 1), _Clamp_96d8dcc832f8cc8ba79cc5afd2f1c865_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Branch_2498532d512ec68fa0efb263834949f7_Out_3_Vector4;
            Unity_Branch_float4(_Property_b4deafa94a27e588ab2e901ce05fd5c2_Out_0_Boolean, _Clamp_96d8dcc832f8cc8ba79cc5afd2f1c865_Out_3_Vector4, _Multiply_4cbb8fe598df6b8995e151b170112293_Out_2_Vector4, _Branch_2498532d512ec68fa0efb263834949f7_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_8c38efbdc687808784e64df5f7851a74_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_DetailMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4 = _DetailTilingOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_6b7d8752798f268c8b3cb4ab5a46f73e_R_1_Float = _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4[0];
            float _Split_6b7d8752798f268c8b3cb4ab5a46f73e_G_2_Float = _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4[1];
            float _Split_6b7d8752798f268c8b3cb4ab5a46f73e_B_3_Float = _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4[2];
            float _Split_6b7d8752798f268c8b3cb4ab5a46f73e_A_4_Float = _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_6d91e5afee3d4e88ba756da4c0cbfcb2_Out_0_Vector2 = float2(_Split_6b7d8752798f268c8b3cb4ab5a46f73e_R_1_Float, _Split_6b7d8752798f268c8b3cb4ab5a46f73e_G_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_692caa48e2186d8b83435fe066df038c_Out_0_Vector2 = float2(_Split_6b7d8752798f268c8b3cb4ab5a46f73e_B_3_Float, _Split_6b7d8752798f268c8b3cb4ab5a46f73e_A_4_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _TilingAndOffset_6c4e5074c066068fbf7f993634c1cb8d_Out_3_Vector2;
            Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_6d91e5afee3d4e88ba756da4c0cbfcb2_Out_0_Vector2, _Vector2_692caa48e2186d8b83435fe066df038c_Out_0_Vector2, _TilingAndOffset_6c4e5074c066068fbf7f993634c1cb8d_Out_3_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_8c38efbdc687808784e64df5f7851a74_Out_0_Texture2D.tex, _Property_8c38efbdc687808784e64df5f7851a74_Out_0_Texture2D.samplerstate, _Property_8c38efbdc687808784e64df5f7851a74_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_6c4e5074c066068fbf7f993634c1cb8d_Out_3_Vector2) );
            float _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_R_4_Float = _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4.r;
            float _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_G_5_Float = _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4.g;
            float _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_B_6_Float = _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4.b;
            float _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_A_7_Float = _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4.a;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_a9cd845f93693a80b6111fb063544a74_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_R_4_Float, 2, _Multiply_a9cd845f93693a80b6111fb063544a74_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_cef5411ef4065b849dab8ae41142e9e9_Out_2_Float;
            Unity_Add_float(_Multiply_a9cd845f93693a80b6111fb063544a74_Out_2_Float, -1, _Add_cef5411ef4065b849dab8ae41142e9e9_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_86c816f0fd959684a1e6e728b9519627_Out_0_Float = _DetailAlbedoScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_1ee7e827f3048f858e7b5c2c28318efe_Out_2_Float;
            Unity_Multiply_float_float(_Add_cef5411ef4065b849dab8ae41142e9e9_Out_2_Float, _Property_86c816f0fd959684a1e6e728b9519627_Out_0_Float, _Multiply_1ee7e827f3048f858e7b5c2c28318efe_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_b4653e33464aa08c993df6c9b8355a51_Out_1_Float;
            Unity_Saturate_float(_Multiply_1ee7e827f3048f858e7b5c2c28318efe_Out_2_Float, _Saturate_b4653e33464aa08c993df6c9b8355a51_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_1b7c4e8f9d7c0f86adab6f50c6958c56_Out_1_Float;
            Unity_Absolute_float(_Saturate_b4653e33464aa08c993df6c9b8355a51_Out_1_Float, _Absolute_1b7c4e8f9d7c0f86adab6f50c6958c56_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float _BlendOverlayBaseColor_9ffabe2fc453cb81a840278206c992a9;
            float3 _BlendOverlayBaseColor_9ffabe2fc453cb81a840278206c992a9_OutVector4_1_Vector3;
            SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float(_Branch_2498532d512ec68fa0efb263834949f7_Out_3_Vector4, _Add_cef5411ef4065b849dab8ae41142e9e9_Out_2_Float, _Absolute_1b7c4e8f9d7c0f86adab6f50c6958c56_Out_1_Float, _BlendOverlayBaseColor_9ffabe2fc453cb81a840278206c992a9, _BlendOverlayBaseColor_9ffabe2fc453cb81a840278206c992a9_OutVector4_1_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_cb1daa31a8aa778e83e89aea442a2d54_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_CoverBaseColorMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_ccec42aa79dbde8c8b90b6b19097f847_Out_0_Vector4 = _CoverTilingOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4;
            Unity_Divide_float4(float4(1, 1, 0, 0), _Property_ccec42aa79dbde8c8b90b6b19097f847_Out_0_Vector4, _Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_7e0717fa374eed86a380cfe44b28edf0_Out_0_Float = _CoverTriplanarThreshold;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float _TriplanarNM_629ab1e956a2e889871d22b762bf4375;
            _TriplanarNM_629ab1e956a2e889871d22b762bf4375.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNM_629ab1e956a2e889871d22b762bf4375.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
            float4 _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XYZ_1_Vector4;
            float4 _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XZ_2_Vector4;
            float4 _TriplanarNM_629ab1e956a2e889871d22b762bf4375_YZ_3_Vector4;
            float4 _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XY_4_Vector4;
            SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(_Property_cb1daa31a8aa778e83e89aea442a2d54_Out_0_Texture2D, (_Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4).x, _Property_7e0717fa374eed86a380cfe44b28edf0_Out_0_Float, _TriplanarNM_629ab1e956a2e889871d22b762bf4375, _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XYZ_1_Vector4, _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XZ_2_Vector4, _TriplanarNM_629ab1e956a2e889871d22b762bf4375_YZ_3_Vector4, _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_def3e41ed70425849fd44f5047e437fe_Out_0_Vector4 = _CoverBaseColor;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Multiply_66ad5344cffca188ba4604c5629ca8c5_Out_2_Vector4;
            Unity_Multiply_float4_float4(_TriplanarNM_629ab1e956a2e889871d22b762bf4375_XYZ_1_Vector4, _Property_def3e41ed70425849fd44f5047e437fe_Out_0_Vector4, _Multiply_66ad5344cffca188ba4604c5629ca8c5_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_bfbeca46f6256b8ba5a9c7eecc1952fa_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_R_4_Float, 2, _Multiply_bfbeca46f6256b8ba5a9c7eecc1952fa_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_559a8a631f049c80a0540b05cb8f37a2_Out_0_Float = _CoverDarknessCurvMultply;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_1c2f0f7f36765c8c89e3326d3be9d903_Out_2_Float;
            Unity_Multiply_float_float(_Multiply_bfbeca46f6256b8ba5a9c7eecc1952fa_Out_2_Float, _Property_559a8a631f049c80a0540b05cb8f37a2_Out_0_Float, _Multiply_1c2f0f7f36765c8c89e3326d3be9d903_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_ad38cc41210e8f868ed1b357dc4e7b74_Out_3_Float;
            Unity_Clamp_float(_Multiply_1c2f0f7f36765c8c89e3326d3be9d903_Out_2_Float, 0, 1, _Clamp_ad38cc41210e8f868ed1b357dc4e7b74_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_ae69e110d4c49280b35c4e7b54b5a7f1_Out_1_Float;
            Unity_Absolute_float(_Clamp_ad38cc41210e8f868ed1b357dc4e7b74_Out_3_Float, _Absolute_ae69e110d4c49280b35c4e7b54b5a7f1_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_46a6a9ede4568980b45a07904918a504_Out_0_Float = _CoverDarknessCurvPower;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_4b2b68959f57c88ea44a62ea10ca1fe9_Out_2_Float;
            Unity_Power_float(_Absolute_ae69e110d4c49280b35c4e7b54b5a7f1_Out_1_Float, _Property_46a6a9ede4568980b45a07904918a504_Out_0_Float, _Power_4b2b68959f57c88ea44a62ea10ca1fe9_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_103f46053cfbe588a9814688e733efcf_Out_3_Float;
            Unity_Clamp_float(_Power_4b2b68959f57c88ea44a62ea10ca1fe9_Out_2_Float, 0, 1, _Clamp_103f46053cfbe588a9814688e733efcf_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Multiply_c7ad9f79dda0b489afa94b67d63fa000_Out_2_Vector4;
            Unity_Multiply_float4_float4(_Multiply_66ad5344cffca188ba4604c5629ca8c5_Out_2_Vector4, (_Clamp_103f46053cfbe588a9814688e733efcf_Out_3_Float.xxxx), _Multiply_c7ad9f79dda0b489afa94b67d63fa000_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Clamp_d7af96dc6cc5f988a0591b241ed78acc_Out_3_Vector4;
            Unity_Clamp_float4(_Multiply_c7ad9f79dda0b489afa94b67d63fa000_Out_2_Vector4, float4(0, 0, 0, 0), float4(1, 1, 1, 1), _Clamp_d7af96dc6cc5f988a0591b241ed78acc_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_8fd457fe97f9638cafa0323faa2a8dfc_Out_2_Float;
            Unity_Add_float(_Multiply_bfbeca46f6256b8ba5a9c7eecc1952fa_Out_2_Float, -1, _Add_8fd457fe97f9638cafa0323faa2a8dfc_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_978695ad7d0e828ba992b5cb3ca26eae_Out_3_Float;
            Unity_Clamp_float(_Add_8fd457fe97f9638cafa0323faa2a8dfc_Out_2_Float, 0, 1, _Clamp_978695ad7d0e828ba992b5cb3ca26eae_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_67c192d19b444a81849a1176f3a697f6_Out_0_Float = _CoverBrightnessCurvMultply;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_3d670a97734e8c878835f7360055572a_Out_2_Float;
            Unity_Multiply_float_float(_Clamp_978695ad7d0e828ba992b5cb3ca26eae_Out_3_Float, _Property_67c192d19b444a81849a1176f3a697f6_Out_0_Float, _Multiply_3d670a97734e8c878835f7360055572a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_db58547294da9e8785ee7b6c3a976698_Out_3_Float;
            Unity_Clamp_float(_Multiply_3d670a97734e8c878835f7360055572a_Out_2_Float, 0, 1, _Clamp_db58547294da9e8785ee7b6c3a976698_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_8b40786bf852328aaa652dc116916196_Out_1_Float;
            Unity_Absolute_float(_Clamp_db58547294da9e8785ee7b6c3a976698_Out_3_Float, _Absolute_8b40786bf852328aaa652dc116916196_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_a09af913dea5a68c9a7bab01c65be2c8_Out_0_Float = _CoverBrightnessCurvPower;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_c0b759d680738485abb57d1a2b3b80b9_Out_2_Float;
            Unity_Power_float(_Absolute_8b40786bf852328aaa652dc116916196_Out_1_Float, _Property_a09af913dea5a68c9a7bab01c65be2c8_Out_0_Float, _Power_c0b759d680738485abb57d1a2b3b80b9_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_1305e9cad6dd178cb5bfe84a93942985_Out_3_Float;
            Unity_Clamp_float(_Power_c0b759d680738485abb57d1a2b3b80b9_Out_2_Float, 0, 1, _Clamp_1305e9cad6dd178cb5bfe84a93942985_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Add_7db003c440510b8aabb72b85c537eb52_Out_2_Vector4;
            Unity_Add_float4(_Clamp_d7af96dc6cc5f988a0591b241ed78acc_Out_3_Vector4, (_Clamp_1305e9cad6dd178cb5bfe84a93942985_Out_3_Float.xxxx), _Add_7db003c440510b8aabb72b85c537eb52_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Clamp_72f41eca0c04cf8996f777072fe268a5_Out_3_Vector4;
            Unity_Clamp_float4(_Add_7db003c440510b8aabb72b85c537eb52_Out_2_Vector4, float4(0, 0, 0, 0), float4(1, 1, 1, 1), _Clamp_72f41eca0c04cf8996f777072fe268a5_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Branch_6d2c90f4f3988386a2faf0998e6ed26b_Out_3_Vector4;
            Unity_Branch_float4(_Property_b4deafa94a27e588ab2e901ce05fd5c2_Out_0_Boolean, _Clamp_72f41eca0c04cf8996f777072fe268a5_Out_3_Vector4, _Multiply_66ad5344cffca188ba4604c5629ca8c5_Out_2_Vector4, _Branch_6d2c90f4f3988386a2faf0998e6ed26b_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_857e1bdb72dc5d84a584fe6e3ff2329a_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_R_4_Float, 2, _Multiply_857e1bdb72dc5d84a584fe6e3ff2329a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_370337bea3e6fd8caacf4da48d0aa1b4_Out_2_Float;
            Unity_Add_float(_Multiply_857e1bdb72dc5d84a584fe6e3ff2329a_Out_2_Float, -1, _Add_370337bea3e6fd8caacf4da48d0aa1b4_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_62ca1795c20eb18985f6e7f9939ddf03_Out_0_Float = _DetailCoverAlbedoScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_3fd659a76cb9ae8ea60a8742620bd73c_Out_2_Float;
            Unity_Multiply_float_float(_Add_370337bea3e6fd8caacf4da48d0aa1b4_Out_2_Float, _Property_62ca1795c20eb18985f6e7f9939ddf03_Out_0_Float, _Multiply_3fd659a76cb9ae8ea60a8742620bd73c_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_8adac7fd6fcfdf8580ba2b7f00df5a41_Out_1_Float;
            Unity_Saturate_float(_Multiply_3fd659a76cb9ae8ea60a8742620bd73c_Out_2_Float, _Saturate_8adac7fd6fcfdf8580ba2b7f00df5a41_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_65f0556758f3f08483bdc59c1861e254_Out_1_Float;
            Unity_Absolute_float(_Saturate_8adac7fd6fcfdf8580ba2b7f00df5a41_Out_1_Float, _Absolute_65f0556758f3f08483bdc59c1861e254_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float _BlendOverlayBaseColor_e008078375b0f98abd6bae3cdc0a3816;
            float3 _BlendOverlayBaseColor_e008078375b0f98abd6bae3cdc0a3816_OutVector4_1_Vector3;
            SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float(_Branch_6d2c90f4f3988386a2faf0998e6ed26b_Out_3_Vector4, _Add_370337bea3e6fd8caacf4da48d0aa1b4_Out_2_Float, _Absolute_65f0556758f3f08483bdc59c1861e254_Out_1_Float, _BlendOverlayBaseColor_e008078375b0f98abd6bae3cdc0a3816, _BlendOverlayBaseColor_e008078375b0f98abd6bae3cdc0a3816_OutVector4_1_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_53b4f3caa35448849236e404330ffd86_Out_0_Float = _CoverMaskPower;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_04bf3e7568d5f48eb573d01235d77199_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_A_7_Float, _Property_53b4f3caa35448849236e404330ffd86_Out_0_Float, _Multiply_04bf3e7568d5f48eb573d01235d77199_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_1a91f1e3aec2228bbfb2a0736004946e_Out_3_Float;
            Unity_Clamp_float(_Multiply_04bf3e7568d5f48eb573d01235d77199_Out_2_Float, 0, 1, _Clamp_1a91f1e3aec2228bbfb2a0736004946e_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_39041ef87771e683b834dd7eca6b60aa_R_1_Float = IN.VertexColor[0];
            float _Split_39041ef87771e683b834dd7eca6b60aa_G_2_Float = IN.VertexColor[1];
            float _Split_39041ef87771e683b834dd7eca6b60aa_B_3_Float = IN.VertexColor[2];
            float _Split_39041ef87771e683b834dd7eca6b60aa_A_4_Float = IN.VertexColor[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Property_7c6ba36b7f75fd828a781ef390fe81fc_Out_0_Vector3 = _CoverDirection;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_ff34f3d24838f9889391530c04d6424b_Out_0_Vector2 = float2(_SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_A_7_Float, _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_G_5_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Multiply_120ef27f63ba4986acb31850d2223033_Out_2_Vector2;
            Unity_Multiply_float2_float2(_Vector2_ff34f3d24838f9889391530c04d6424b_Out_0_Vector2, float2(2, 2), _Multiply_120ef27f63ba4986acb31850d2223033_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Add_039ef572252c1f8b9ab1d9732873c6fd_Out_2_Vector2;
            Unity_Add_float2(_Multiply_120ef27f63ba4986acb31850d2223033_Out_2_Vector2, float2(-1, -1), _Add_039ef572252c1f8b9ab1d9732873c6fd_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_a4bc7e1c8f487182befa14cc923c5d7e_Out_0_Float = _DetailNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2;
            Unity_Multiply_float2_float2(_Add_039ef572252c1f8b9ab1d9732873c6fd_Out_2_Vector2, (_Property_a4bc7e1c8f487182befa14cc923c5d7e_Out_0_Float.xx), _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_817710a160cfd38f84dcd2ffe4ac9433_R_1_Float = _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2[0];
            float _Split_817710a160cfd38f84dcd2ffe4ac9433_G_2_Float = _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2[1];
            float _Split_817710a160cfd38f84dcd2ffe4ac9433_B_3_Float = 0;
            float _Split_817710a160cfd38f84dcd2ffe4ac9433_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _DotProduct_3a85ce810a5835809449d39fc0d43a7c_Out_2_Float;
            Unity_DotProduct_float2(_Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2, _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2, _DotProduct_3a85ce810a5835809449d39fc0d43a7c_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_ee7cc148f5d6c28596b254c9279b2d7c_Out_1_Float;
            Unity_Saturate_float(_DotProduct_3a85ce810a5835809449d39fc0d43a7c_Out_2_Float, _Saturate_ee7cc148f5d6c28596b254c9279b2d7c_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_81925f2879ac8985a29ea1d3496d3737_Out_1_Float;
            Unity_OneMinus_float(_Saturate_ee7cc148f5d6c28596b254c9279b2d7c_Out_1_Float, _OneMinus_81925f2879ac8985a29ea1d3496d3737_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _SquareRoot_679457140ebdbc8690be9c70d79c2c1e_Out_1_Float;
            Unity_SquareRoot_float(_OneMinus_81925f2879ac8985a29ea1d3496d3737_Out_1_Float, _SquareRoot_679457140ebdbc8690be9c70d79c2c1e_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Vector3_f1f5f90ed8452788a91000853614a735_Out_0_Vector3 = float3(_Split_817710a160cfd38f84dcd2ffe4ac9433_R_1_Float, _Split_817710a160cfd38f84dcd2ffe4ac9433_G_2_Float, _SquareRoot_679457140ebdbc8690be9c70d79c2c1e_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_bdb50713d9952086bf4040254f8555ed_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseNormalMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNMn_059da9746584140498cd018db3c76047_float _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a;
            _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a.WorldSpaceTangent = IN.WorldSpaceTangent;
            _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
            _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a.WorldSpacePosition = IN.WorldSpacePosition;
            float4 _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XYZ_1_Vector4;
            float4 _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XZ_2_Vector4;
            float4 _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_YZ_3_Vector4;
            float4 _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XY_4_Vector4;
            SG_TriplanarNMn_059da9746584140498cd018db3c76047_float(_Property_bdb50713d9952086bf4040254f8555ed_Out_0_Texture2D, (_Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4).x, _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XYZ_1_Vector4, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XZ_2_Vector4, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_YZ_3_Vector4, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_eacffd623cf35d848606835e2ba45716_Out_0_Float = _BaseNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalStrength_ec69d73d79314488b62d6a9c43da4dfe_Out_2_Vector3;
            Unity_NormalStrength_float((_TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XYZ_1_Vector4.xyz), _Property_eacffd623cf35d848606835e2ba45716_Out_0_Float, _NormalStrength_ec69d73d79314488b62d6a9c43da4dfe_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_904e20298b6e8d87823dd334eda299d8_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_ShapeNormalMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_904e20298b6e8d87823dd334eda299d8_Out_0_Texture2D.tex, _Property_904e20298b6e8d87823dd334eda299d8_Out_0_Texture2D.samplerstate, _Property_904e20298b6e8d87823dd334eda299d8_Out_0_Texture2D.GetTransformedUV(IN.uv0.xy) );
            _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4);
            float _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_R_4_Float = _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.r;
            float _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_G_5_Float = _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.g;
            float _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_B_6_Float = _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.b;
            float _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_A_7_Float = _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.a;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_c1ff82ca84d4238e8cf089d81f0b36bd_Out_0_Float = _shapeNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalStrength_44610f37afea2585a26a19d4e1f5e8ae_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.xyz), _Property_c1ff82ca84d4238e8cf089d81f0b36bd_Out_0_Float, _NormalStrength_44610f37afea2585a26a19d4e1f5e8ae_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalBlend_00b50fa0bb2ee087958824288a62541d_Out_2_Vector3;
            Unity_NormalBlend_float(_NormalStrength_ec69d73d79314488b62d6a9c43da4dfe_Out_2_Vector3, _NormalStrength_44610f37afea2585a26a19d4e1f5e8ae_Out_2_Vector3, _NormalBlend_00b50fa0bb2ee087958824288a62541d_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalBlend_a694ea2f4baada8da0978a00c2ccb417_Out_2_Vector3;
            Unity_NormalBlend_float(_Vector3_f1f5f90ed8452788a91000853614a735_Out_0_Vector3, _NormalBlend_00b50fa0bb2ee087958824288a62541d_Out_2_Vector3, _NormalBlend_a694ea2f4baada8da0978a00c2ccb417_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_97f32254bc217f89994d4619c96f8442_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_CoverNormalMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNMn_059da9746584140498cd018db3c76047_float _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28;
            _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28.WorldSpaceTangent = IN.WorldSpaceTangent;
            _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
            _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28.WorldSpacePosition = IN.WorldSpacePosition;
            float4 _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XYZ_1_Vector4;
            float4 _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XZ_2_Vector4;
            float4 _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_YZ_3_Vector4;
            float4 _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XY_4_Vector4;
            SG_TriplanarNMn_059da9746584140498cd018db3c76047_float(_Property_97f32254bc217f89994d4619c96f8442_Out_0_Texture2D, (_Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4).x, _Property_7e0717fa374eed86a380cfe44b28edf0_Out_0_Float, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XYZ_1_Vector4, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XZ_2_Vector4, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_YZ_3_Vector4, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_d6c69131205a1189837880dcb3f8d3d0_Out_0_Float = _CoverNormalBlendHardness;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalStrength_9dc5b89ad68a7185bbbaed44b704eec7_Out_2_Vector3;
            Unity_NormalStrength_float((_TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XYZ_1_Vector4.xyz), _Property_d6c69131205a1189837880dcb3f8d3d0_Out_0_Float, _NormalStrength_9dc5b89ad68a7185bbbaed44b704eec7_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_51fa8dd95f84a68e9130a8ecefb8c986_Out_0_Float = _CovershapeNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalStrength_9c8b92cfc893a386b69204d34b74152b_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.xyz), _Property_51fa8dd95f84a68e9130a8ecefb8c986_Out_0_Float, _NormalStrength_9c8b92cfc893a386b69204d34b74152b_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalBlend_782afb0f64887e8380e83132b6a5810e_Out_2_Vector3;
            Unity_NormalBlend_float(_NormalStrength_9dc5b89ad68a7185bbbaed44b704eec7_Out_2_Vector3, _NormalStrength_9c8b92cfc893a386b69204d34b74152b_Out_2_Vector3, _NormalBlend_782afb0f64887e8380e83132b6a5810e_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Property_7c6ba36b7f75fd828a781ef390fe81fc_Out_0_Vector3, IN.WorldSpaceNormal, _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_96256a8185f0568abafec3a227827546_R_1_Float = _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3[0];
            float _Split_96256a8185f0568abafec3a227827546_G_2_Float = _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3[1];
            float _Split_96256a8185f0568abafec3a227827546_B_3_Float = _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3[2];
            float _Split_96256a8185f0568abafec3a227827546_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_f5913a02d21120849228d323bef35553_Out_2_Float;
            Unity_Add_float(_Split_96256a8185f0568abafec3a227827546_R_1_Float, _Split_96256a8185f0568abafec3a227827546_G_2_Float, _Add_f5913a02d21120849228d323bef35553_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_9a058a92f487128798a7f94472c0ca30_Out_2_Float;
            Unity_Add_float(_Add_f5913a02d21120849228d323bef35553_Out_2_Float, _Split_96256a8185f0568abafec3a227827546_B_3_Float, _Add_9a058a92f487128798a7f94472c0ca30_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_da7d9b77e00889889a1cf846bbb669a5_Out_0_Float = _Cover_Amount;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_9ac7e0db72fe9d8297f925d7a8d82981_Out_0_Float = _Cover_Amount_Grow_Speed;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Subtract_0f19dd2c94f6928ba6cdfc45f693284d_Out_2_Float;
            Unity_Subtract_float(4, _Property_9ac7e0db72fe9d8297f925d7a8d82981_Out_0_Float, _Subtract_0f19dd2c94f6928ba6cdfc45f693284d_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Divide_3bef9bbb9755dc8696f8ac17007a2366_Out_2_Float;
            Unity_Divide_float(_Property_da7d9b77e00889889a1cf846bbb669a5_Out_0_Float, _Subtract_0f19dd2c94f6928ba6cdfc45f693284d_Out_2_Float, _Divide_3bef9bbb9755dc8696f8ac17007a2366_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_1fc5042ab3ae9989938f02ed525d6d1b_Out_1_Float;
            Unity_Absolute_float(_Divide_3bef9bbb9755dc8696f8ac17007a2366_Out_2_Float, _Absolute_1fc5042ab3ae9989938f02ed525d6d1b_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_7f87f809e802fe8cae930b82dfe1911c_Out_2_Float;
            Unity_Power_float(_Absolute_1fc5042ab3ae9989938f02ed525d6d1b_Out_1_Float, _Subtract_0f19dd2c94f6928ba6cdfc45f693284d_Out_2_Float, _Power_7f87f809e802fe8cae930b82dfe1911c_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float;
            Unity_Clamp_float(_Power_7f87f809e802fe8cae930b82dfe1911c_Out_2_Float, 0, 2, _Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_b9d25c21d933788b84d54f7c635149e2_Out_2_Float;
            Unity_Multiply_float_float(_Add_9a058a92f487128798a7f94472c0ca30_Out_2_Float, _Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float, _Multiply_b9d25c21d933788b84d54f7c635149e2_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_fbb647649cdbf583a108c0f8cdf6aaa0_Out_1_Float;
            Unity_Saturate_float(_Multiply_b9d25c21d933788b84d54f7c635149e2_Out_2_Float, _Saturate_fbb647649cdbf583a108c0f8cdf6aaa0_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_ee2e002d790e45849c0cbd1357a0ce4a_Out_3_Float;
            Unity_Clamp_float(_Add_9a058a92f487128798a7f94472c0ca30_Out_2_Float, 0, 0.9999, _Clamp_ee2e002d790e45849c0cbd1357a0ce4a_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_d4885ba189012a86826100355a8ee1d1_Out_0_Float = _Cover_Max_Angle;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Divide_5bd014a6111174888637d9078175ccbb_Out_2_Float;
            Unity_Divide_float(_Property_d4885ba189012a86826100355a8ee1d1_Out_0_Float, 45, _Divide_5bd014a6111174888637d9078175ccbb_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_80b741ae772c4d8191d5f26898f95578_Out_1_Float;
            Unity_OneMinus_float(_Divide_5bd014a6111174888637d9078175ccbb_Out_2_Float, _OneMinus_80b741ae772c4d8191d5f26898f95578_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Subtract_f22c892d39e02b8abe6ab26a57a62249_Out_2_Float;
            Unity_Subtract_float(_Clamp_ee2e002d790e45849c0cbd1357a0ce4a_Out_3_Float, _OneMinus_80b741ae772c4d8191d5f26898f95578_Out_1_Float, _Subtract_f22c892d39e02b8abe6ab26a57a62249_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_fdfdf3d8e65f078c9f4a01f83b01f048_Out_3_Float;
            Unity_Clamp_float(_Subtract_f22c892d39e02b8abe6ab26a57a62249_Out_2_Float, 0, 2, _Clamp_fdfdf3d8e65f078c9f4a01f83b01f048_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Divide_9c6c3a806810a3809e3c224188106363_Out_2_Float;
            Unity_Divide_float(1, _Divide_5bd014a6111174888637d9078175ccbb_Out_2_Float, _Divide_9c6c3a806810a3809e3c224188106363_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_e65088594cdcd48fa0f022fc8175c8c9_Out_2_Float;
            Unity_Multiply_float_float(_Clamp_fdfdf3d8e65f078c9f4a01f83b01f048_Out_3_Float, _Divide_9c6c3a806810a3809e3c224188106363_Out_2_Float, _Multiply_e65088594cdcd48fa0f022fc8175c8c9_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_2b394cd0bed344818ffb9eed9e5c53e1_Out_1_Float;
            Unity_Absolute_float(_Multiply_e65088594cdcd48fa0f022fc8175c8c9_Out_2_Float, _Absolute_2b394cd0bed344818ffb9eed9e5c53e1_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_cb57d5e16197578e8e8ba3400aab436b_Out_0_Float = _CoverHardness;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_21df469b2db977828d49344ca1eec030_Out_2_Float;
            Unity_Power_float(_Absolute_2b394cd0bed344818ffb9eed9e5c53e1_Out_1_Float, _Property_cb57d5e16197578e8e8ba3400aab436b_Out_0_Float, _Power_21df469b2db977828d49344ca1eec030_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_d6dc82050413eb849dfc6983ad308f63_Out_0_Float = _Cover_Min_Height;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_55ba8ae17d7e908a8c116f016933a5c4_Out_1_Float;
            Unity_OneMinus_float(_Property_d6dc82050413eb849dfc6983ad308f63_Out_0_Float, _OneMinus_55ba8ae17d7e908a8c116f016933a5c4_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_9034d1eb71e07a84aaafa21620d0ebcb_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
            float _Split_9034d1eb71e07a84aaafa21620d0ebcb_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
            float _Split_9034d1eb71e07a84aaafa21620d0ebcb_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
            float _Split_9034d1eb71e07a84aaafa21620d0ebcb_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float;
            Unity_Add_float(_OneMinus_55ba8ae17d7e908a8c116f016933a5c4_Out_1_Float, _Split_9034d1eb71e07a84aaafa21620d0ebcb_G_2_Float, _Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_e4c251a4fa894882bb13119a081a7170_Out_2_Float;
            Unity_Add_float(_Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float, 1, _Add_e4c251a4fa894882bb13119a081a7170_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_eb62a527acaafa88b6e28bfaa49893f4_Out_3_Float;
            Unity_Clamp_float(_Add_e4c251a4fa894882bb13119a081a7170_Out_2_Float, 0, 1, _Clamp_eb62a527acaafa88b6e28bfaa49893f4_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_f9094ebaecca9780b46893a792429806_Out_0_Float = _Cover_Min_Height_Blending;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_18ea921b495add86a362e3706f6c9569_Out_2_Float;
            Unity_Add_float(_Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float, _Property_f9094ebaecca9780b46893a792429806_Out_0_Float, _Add_18ea921b495add86a362e3706f6c9569_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Divide_bbf053c5aa7f6a88becd534af7ba8301_Out_2_Float;
            Unity_Divide_float(_Add_18ea921b495add86a362e3706f6c9569_Out_2_Float, _Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float, _Divide_bbf053c5aa7f6a88becd534af7ba8301_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_327fa2c4164bb68a86132da6b0e7e78f_Out_1_Float;
            Unity_OneMinus_float(_Divide_bbf053c5aa7f6a88becd534af7ba8301_Out_2_Float, _OneMinus_327fa2c4164bb68a86132da6b0e7e78f_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_ecd7b6a41e7af88fa3cbef16a3bc5b02_Out_2_Float;
            Unity_Add_float(_OneMinus_327fa2c4164bb68a86132da6b0e7e78f_Out_1_Float, -0.5, _Add_ecd7b6a41e7af88fa3cbef16a3bc5b02_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_e1620f6d6ff43682b4ad7b309118f941_Out_3_Float;
            Unity_Clamp_float(_Add_ecd7b6a41e7af88fa3cbef16a3bc5b02_Out_2_Float, 0, 1, _Clamp_e1620f6d6ff43682b4ad7b309118f941_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_5c0e00010d3f368db3787628623c361a_Out_2_Float;
            Unity_Add_float(_Clamp_eb62a527acaafa88b6e28bfaa49893f4_Out_3_Float, _Clamp_e1620f6d6ff43682b4ad7b309118f941_Out_3_Float, _Add_5c0e00010d3f368db3787628623c361a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_94e731fd5526ec8281dee0a6143f09c1_Out_3_Float;
            Unity_Clamp_float(_Add_5c0e00010d3f368db3787628623c361a_Out_2_Float, 0, 1, _Clamp_94e731fd5526ec8281dee0a6143f09c1_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_18e2801a2e62658287a6f37f74c849c5_Out_2_Float;
            Unity_Multiply_float_float(_Power_21df469b2db977828d49344ca1eec030_Out_2_Float, _Clamp_94e731fd5526ec8281dee0a6143f09c1_Out_3_Float, _Multiply_18e2801a2e62658287a6f37f74c849c5_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_b364ac6af25fa58db4da48bef2655e44_Out_2_Float;
            Unity_Multiply_float_float(_Saturate_fbb647649cdbf583a108c0f8cdf6aaa0_Out_1_Float, _Multiply_18e2801a2e62658287a6f37f74c849c5_Out_2_Float, _Multiply_b364ac6af25fa58db4da48bef2655e44_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Lerp_ce0e66ae6c014a87bf6b30846c04b2f6_Out_3_Vector3;
            Unity_Lerp_float3(_NormalBlend_a694ea2f4baada8da0978a00c2ccb417_Out_2_Vector3, _NormalBlend_782afb0f64887e8380e83132b6a5810e_Out_2_Vector3, (_Multiply_b364ac6af25fa58db4da48bef2655e44_Out_2_Float.xxx), _Lerp_ce0e66ae6c014a87bf6b30846c04b2f6_Out_3_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Transform_770d1933b55d1b84a0bd6db42f3c78c9_Out_1_Vector3;
            {
                float3x3 tangentTransform = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                _Transform_770d1933b55d1b84a0bd6db42f3c78c9_Out_1_Vector3 = TransformTangentToWorldDir(_Lerp_ce0e66ae6c014a87bf6b30846c04b2f6_Out_3_Vector3.xyz, tangentTransform, true).xyz;
            }
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Property_7c6ba36b7f75fd828a781ef390fe81fc_Out_0_Vector3, _Transform_770d1933b55d1b84a0bd6db42f3c78c9_Out_1_Vector3, _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_R_1_Float = _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3[0];
            float _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_G_2_Float = _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3[1];
            float _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_B_3_Float = _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3[2];
            float _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_edda96f9db17d38cb56cd74fad991c1b_Out_2_Float;
            Unity_Add_float(_Split_0aa1fa7994fd9383afd7d2a31b8a5c58_R_1_Float, _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_G_2_Float, _Add_edda96f9db17d38cb56cd74fad991c1b_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_f4f04e53f77faf80ace8c0f8e979843c_Out_2_Float;
            Unity_Add_float(_Add_edda96f9db17d38cb56cd74fad991c1b_Out_2_Float, _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_B_3_Float, _Add_f4f04e53f77faf80ace8c0f8e979843c_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_5a81fd82c6a81e899179cd6a617a9aec_Out_2_Float;
            Unity_Multiply_float_float(_Add_f4f04e53f77faf80ace8c0f8e979843c_Out_2_Float, _Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float, _Multiply_5a81fd82c6a81e899179cd6a617a9aec_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_e06a505285f5238a853337d02932891b_Out_2_Float;
            Unity_Multiply_float_float(_Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float, _Property_cb57d5e16197578e8e8ba3400aab436b_Out_0_Float, _Multiply_e06a505285f5238a853337d02932891b_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_088b09a855d8228bb73f1fecf4e444fd_Out_2_Float;
            Unity_Multiply_float_float(_Multiply_e06a505285f5238a853337d02932891b_Out_2_Float, _Multiply_18e2801a2e62658287a6f37f74c849c5_Out_2_Float, _Multiply_088b09a855d8228bb73f1fecf4e444fd_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_5636b2845aba9a8cae86012e0ece3ad1_Out_2_Float;
            Unity_Multiply_float_float(_Multiply_5a81fd82c6a81e899179cd6a617a9aec_Out_2_Float, _Multiply_088b09a855d8228bb73f1fecf4e444fd_Out_2_Float, _Multiply_5636b2845aba9a8cae86012e0ece3ad1_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_69f7b0977ddb53899920af6323e8d0fe_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_CoverMaskMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7;
            _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
            float4 _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4;
            float4 _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XZ_2_Vector4;
            float4 _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_YZ_3_Vector4;
            float4 _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XY_4_Vector4;
            SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(_Property_69f7b0977ddb53899920af6323e8d0fe_Out_0_Texture2D, (_Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4).x, _Property_7e0717fa374eed86a380cfe44b28edf0_Out_0_Float, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XZ_2_Vector4, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_YZ_3_Vector4, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_e4be19cd1f232a808ae6fe9f9259cd4e_R_1_Float = _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4[0];
            float _Split_e4be19cd1f232a808ae6fe9f9259cd4e_G_2_Float = _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4[1];
            float _Split_e4be19cd1f232a808ae6fe9f9259cd4e_B_3_Float = _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4[2];
            float _Split_e4be19cd1f232a808ae6fe9f9259cd4e_A_4_Float = _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_48f133c0cba9a8819633d2d3b23b260c_Out_0_Float = _CoverHeightMapMin;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_739d4be9d8e77c85a5db4914565db091_Out_0_Float = _CoverHeightMapMax;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_a40393428558cd879a301cba41adb10c_Out_0_Vector2 = float2(_Property_48f133c0cba9a8819633d2d3b23b260c_Out_0_Float, _Property_739d4be9d8e77c85a5db4914565db091_Out_0_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_895edb6e4c6a818eb2e6568e3d0027ee_Out_0_Float = _CoverHeightMapOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Add_5fe0b993c875028f97cc5b6530321a12_Out_2_Vector2;
            Unity_Add_float2(_Vector2_a40393428558cd879a301cba41adb10c_Out_0_Vector2, (_Property_895edb6e4c6a818eb2e6568e3d0027ee_Out_0_Float.xx), _Add_5fe0b993c875028f97cc5b6530321a12_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Remap_6cd0f9512cc2918594d1639bafc06c6c_Out_3_Float;
            Unity_Remap_float(_Split_e4be19cd1f232a808ae6fe9f9259cd4e_B_3_Float, float2 (0, 1), _Add_5fe0b993c875028f97cc5b6530321a12_Out_2_Vector2, _Remap_6cd0f9512cc2918594d1639bafc06c6c_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_786d36b14fbdef808dd9ac0bb660bdf9_Out_2_Float;
            Unity_Multiply_float_float(_Multiply_5636b2845aba9a8cae86012e0ece3ad1_Out_2_Float, _Remap_6cd0f9512cc2918594d1639bafc06c6c_Out_3_Float, _Multiply_786d36b14fbdef808dd9ac0bb660bdf9_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_1112e16c39010a8faf99d2d7fde4e1b7_Out_2_Float;
            Unity_Multiply_float_float(_Split_39041ef87771e683b834dd7eca6b60aa_G_2_Float, _Multiply_786d36b14fbdef808dd9ac0bb660bdf9_Out_2_Float, _Multiply_1112e16c39010a8faf99d2d7fde4e1b7_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_76a165b3be307289a7e59c5b70b05c89_Out_1_Float;
            Unity_Saturate_float(_Multiply_1112e16c39010a8faf99d2d7fde4e1b7_Out_2_Float, _Saturate_76a165b3be307289a7e59c5b70b05c89_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_fa29688e7d617f8690fad410f7cb077a_Out_2_Float;
            Unity_Multiply_float_float(_Clamp_1a91f1e3aec2228bbfb2a0736004946e_Out_3_Float, _Saturate_76a165b3be307289a7e59c5b70b05c89_Out_1_Float, _Multiply_fa29688e7d617f8690fad410f7cb077a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #if defined(_USEDYNAMICCOVERTSTATICMASKF_ON)
            float _UseDynamicCoverTStaticMaskF_965d575a85d3a285888696251619b92a_Out_0_Float = _Multiply_fa29688e7d617f8690fad410f7cb077a_Out_2_Float;
            #else
            float _UseDynamicCoverTStaticMaskF_965d575a85d3a285888696251619b92a_Out_0_Float = _Clamp_1a91f1e3aec2228bbfb2a0736004946e_Out_3_Float;
            #endif
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Lerp_c59b54e4e94ab88e92b146539960ac48_Out_3_Vector3;
            Unity_Lerp_float3(_BlendOverlayBaseColor_9ffabe2fc453cb81a840278206c992a9_OutVector4_1_Vector3, _BlendOverlayBaseColor_e008078375b0f98abd6bae3cdc0a3816_OutVector4_1_Vector3, (_UseDynamicCoverTStaticMaskF_965d575a85d3a285888696251619b92a_Out_0_Float.xxx), _Lerp_c59b54e4e94ab88e92b146539960ac48_Out_3_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_b04bab91d39976849400b89ad7b519ea_Out_0_Vector4 = _WetColor;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Multiply_d49d385c7400348896380ca150a49179_Out_2_Vector3;
            Unity_Multiply_float3_float3((_Property_b04bab91d39976849400b89ad7b519ea_Out_0_Vector4.xyz), _Lerp_c59b54e4e94ab88e92b146539960ac48_Out_3_Vector3, _Multiply_d49d385c7400348896380ca150a49179_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_6a89d72ac6ee8288843130b19eac4072_Out_1_Float;
            Unity_OneMinus_float(_Split_39041ef87771e683b834dd7eca6b60aa_R_1_Float, _OneMinus_6a89d72ac6ee8288843130b19eac4072_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Lerp_ab54871dfce4b381bee887d0813c791a_Out_3_Vector3;
            Unity_Lerp_float3(_Lerp_c59b54e4e94ab88e92b146539960ac48_Out_3_Vector3, _Multiply_d49d385c7400348896380ca150a49179_Out_2_Vector3, (_OneMinus_6a89d72ac6ee8288843130b19eac4072_Out_1_Float.xxx), _Lerp_ab54871dfce4b381bee887d0813c791a_Out_3_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_c9f2639eb2cf2c82bf8d7326dd3c4ff2_Out_0_Float = _CoverNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalStrength_11fe288d2bd3798f94888fd2b82f09b7_Out_2_Vector3;
            Unity_NormalStrength_float((_TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XYZ_1_Vector4.xyz), _Property_c9f2639eb2cf2c82bf8d7326dd3c4ff2_Out_0_Float, _NormalStrength_11fe288d2bd3798f94888fd2b82f09b7_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalBlend_8bb9d57d46ba6983962d37dcf1ba249a_Out_2_Vector3;
            Unity_NormalBlend_float(_NormalStrength_11fe288d2bd3798f94888fd2b82f09b7_Out_2_Vector3, _NormalStrength_9c8b92cfc893a386b69204d34b74152b_Out_2_Vector3, _NormalBlend_8bb9d57d46ba6983962d37dcf1ba249a_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_1f2067b251a2228e97722c53a81a0d8d_Out_0_Vector2 = float2(_SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_A_7_Float, _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_G_5_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Multiply_bca5a77fdaa6aa84ae77c3f10c5bc518_Out_2_Vector2;
            Unity_Multiply_float2_float2(_Vector2_1f2067b251a2228e97722c53a81a0d8d_Out_0_Vector2, float2(2, 2), _Multiply_bca5a77fdaa6aa84ae77c3f10c5bc518_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Add_5eee5bcf3b917e8f921582f2494d7c91_Out_2_Vector2;
            Unity_Add_float2(_Multiply_bca5a77fdaa6aa84ae77c3f10c5bc518_Out_2_Vector2, float2(-1, -1), _Add_5eee5bcf3b917e8f921582f2494d7c91_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_870958da12967689b96cd248fab52878_Out_0_Float = _DetailCoverNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Multiply_29511e56d4f95d8a8bad00f2e5c325cf_Out_2_Vector2;
            Unity_Multiply_float2_float2(_Add_5eee5bcf3b917e8f921582f2494d7c91_Out_2_Vector2, (_Property_870958da12967689b96cd248fab52878_Out_0_Float.xx), _Multiply_29511e56d4f95d8a8bad00f2e5c325cf_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_cbcfcc8c5cdae088b8698f81d170d861_R_1_Float = _Multiply_29511e56d4f95d8a8bad00f2e5c325cf_Out_2_Vector2[0];
            float _Split_cbcfcc8c5cdae088b8698f81d170d861_G_2_Float = _Multiply_29511e56d4f95d8a8bad00f2e5c325cf_Out_2_Vector2[1];
            float _Split_cbcfcc8c5cdae088b8698f81d170d861_B_3_Float = 0;
            float _Split_cbcfcc8c5cdae088b8698f81d170d861_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _DotProduct_49f574a08493ae8586b8c40e956441b4_Out_2_Float;
            Unity_DotProduct_float2(_Multiply_29511e56d4f95d8a8bad00f2e5c325cf_Out_2_Vector2, _Multiply_29511e56d4f95d8a8bad00f2e5c325cf_Out_2_Vector2, _DotProduct_49f574a08493ae8586b8c40e956441b4_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_88e2f0801d3bb88392b10d2188ae9021_Out_1_Float;
            Unity_Saturate_float(_DotProduct_49f574a08493ae8586b8c40e956441b4_Out_2_Float, _Saturate_88e2f0801d3bb88392b10d2188ae9021_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_ee53d1e20d3fb68c9d4db8e2f72ef434_Out_1_Float;
            Unity_OneMinus_float(_Saturate_88e2f0801d3bb88392b10d2188ae9021_Out_1_Float, _OneMinus_ee53d1e20d3fb68c9d4db8e2f72ef434_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _SquareRoot_7550b60d50be208c8e72b59c1ca4633d_Out_1_Float;
            Unity_SquareRoot_float(_OneMinus_ee53d1e20d3fb68c9d4db8e2f72ef434_Out_1_Float, _SquareRoot_7550b60d50be208c8e72b59c1ca4633d_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Vector3_093ec16217e61384b437e05bbaf4d9a8_Out_0_Vector3 = float3(_Split_cbcfcc8c5cdae088b8698f81d170d861_R_1_Float, _Split_cbcfcc8c5cdae088b8698f81d170d861_G_2_Float, _SquareRoot_7550b60d50be208c8e72b59c1ca4633d_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalBlend_5f10f2889281d88fa53650e7c471ad87_Out_2_Vector3;
            Unity_NormalBlend_float(_NormalBlend_8bb9d57d46ba6983962d37dcf1ba249a_Out_2_Vector3, _Vector3_093ec16217e61384b437e05bbaf4d9a8_Out_0_Vector3, _NormalBlend_5f10f2889281d88fa53650e7c471ad87_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Lerp_850434193793408fadaa26fc92231b75_Out_3_Vector3;
            Unity_Lerp_float3(_NormalBlend_a694ea2f4baada8da0978a00c2ccb417_Out_2_Vector3, _NormalBlend_5f10f2889281d88fa53650e7c471ad87_Out_2_Vector3, (_UseDynamicCoverTStaticMaskF_965d575a85d3a285888696251619b92a_Out_0_Float.xxx), _Lerp_850434193793408fadaa26fc92231b75_Out_3_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_100eebf1571bda85b1877ccb357b8341_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseMaskMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float _TriplanarNM_49170cf29e668789a77a85434e3e94fc;
            _TriplanarNM_49170cf29e668789a77a85434e3e94fc.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNM_49170cf29e668789a77a85434e3e94fc.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
            float4 _TriplanarNM_49170cf29e668789a77a85434e3e94fc_XYZ_1_Vector4;
            float4 _TriplanarNM_49170cf29e668789a77a85434e3e94fc_XZ_2_Vector4;
            float4 _TriplanarNM_49170cf29e668789a77a85434e3e94fc_YZ_3_Vector4;
            float4 _TriplanarNM_49170cf29e668789a77a85434e3e94fc_XY_4_Vector4;
            SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(_Property_100eebf1571bda85b1877ccb357b8341_Out_0_Texture2D, (_Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4).x, _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float, _TriplanarNM_49170cf29e668789a77a85434e3e94fc, _TriplanarNM_49170cf29e668789a77a85434e3e94fc_XYZ_1_Vector4, _TriplanarNM_49170cf29e668789a77a85434e3e94fc_XZ_2_Vector4, _TriplanarNM_49170cf29e668789a77a85434e3e94fc_YZ_3_Vector4, _TriplanarNM_49170cf29e668789a77a85434e3e94fc_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_6938e7c9c9edf188aec235e5f2d35bde_R_1_Float = _TriplanarNM_49170cf29e668789a77a85434e3e94fc_XYZ_1_Vector4[0];
            float _Split_6938e7c9c9edf188aec235e5f2d35bde_G_2_Float = _TriplanarNM_49170cf29e668789a77a85434e3e94fc_XYZ_1_Vector4[1];
            float _Split_6938e7c9c9edf188aec235e5f2d35bde_B_3_Float = _TriplanarNM_49170cf29e668789a77a85434e3e94fc_XYZ_1_Vector4[2];
            float _Split_6938e7c9c9edf188aec235e5f2d35bde_A_4_Float = _TriplanarNM_49170cf29e668789a77a85434e3e94fc_XYZ_1_Vector4[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_a0497633c27d2e87a72a42408bce7eda_Out_0_Float = _BaseMetallic;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_939fe20444a1c6878a6aa954ecd2e895_Out_2_Float;
            Unity_Multiply_float_float(_Split_6938e7c9c9edf188aec235e5f2d35bde_R_1_Float, _Property_a0497633c27d2e87a72a42408bce7eda_Out_0_Float, _Multiply_939fe20444a1c6878a6aa954ecd2e895_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_43c632cf405356869acfeeec3c1338c4_Out_0_Float = _BaseAORemapMin;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_af898f2de7e0f7829feb1f14d8d66fde_Out_0_Float = _BaseAORemapMax;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_fa3c664fb637c38ba4e2a6fa56358285_Out_0_Vector2 = float2(_Property_43c632cf405356869acfeeec3c1338c4_Out_0_Float, _Property_af898f2de7e0f7829feb1f14d8d66fde_Out_0_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Remap_189962673b1de1849b060d11a440f95c_Out_3_Float;
            Unity_Remap_float(_Split_6938e7c9c9edf188aec235e5f2d35bde_G_2_Float, float2 (0, 1), _Vector2_fa3c664fb637c38ba4e2a6fa56358285_Out_0_Vector2, _Remap_189962673b1de1849b060d11a440f95c_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_e6da399a84859084b7c7f93b5763116c_Out_0_Float = _BaseSmoothnessRemapMin;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_113d2cead56a9685bd340bb8217f4b25_Out_0_Float = _BaseSmoothnessRemapMax;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_f477dd4aea95708bad152f2a583260e3_Out_0_Vector2 = float2(_Property_e6da399a84859084b7c7f93b5763116c_Out_0_Float, _Property_113d2cead56a9685bd340bb8217f4b25_Out_0_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Remap_a52c5f6577fc1980a5e299a6e0ddf409_Out_3_Float;
            Unity_Remap_float(_Split_6938e7c9c9edf188aec235e5f2d35bde_A_4_Float, float2 (0, 1), _Vector2_f477dd4aea95708bad152f2a583260e3_Out_0_Vector2, _Remap_a52c5f6577fc1980a5e299a6e0ddf409_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_5a48ad6ac413448ead726e9871257076_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_B_6_Float, 2, _Multiply_5a48ad6ac413448ead726e9871257076_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_f11cb1aeb2e4478e9aefa74e378fd580_Out_2_Float;
            Unity_Add_float(_Multiply_5a48ad6ac413448ead726e9871257076_Out_2_Float, -1, _Add_f11cb1aeb2e4478e9aefa74e378fd580_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_f758606784e4ad84b486c3914d1289de_Out_0_Float = _DetailSmoothnessScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_0e5ad6a6ef59dc8e8ed0c369e8449deb_Out_2_Float;
            Unity_Multiply_float_float(_Add_f11cb1aeb2e4478e9aefa74e378fd580_Out_2_Float, _Property_f758606784e4ad84b486c3914d1289de_Out_0_Float, _Multiply_0e5ad6a6ef59dc8e8ed0c369e8449deb_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_c67c50f580946c8db52700c1860eb41c_Out_1_Float;
            Unity_Saturate_float(_Multiply_0e5ad6a6ef59dc8e8ed0c369e8449deb_Out_2_Float, _Saturate_c67c50f580946c8db52700c1860eb41c_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_1cc215099acfe18a825b04bc28feb9f0_Out_1_Float;
            Unity_Absolute_float(_Saturate_c67c50f580946c8db52700c1860eb41c_Out_1_Float, _Absolute_1cc215099acfe18a825b04bc28feb9f0_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a_float _BlendOverlayDetailSmoothness_c5fcd30f5d100980ad9314e0e56d2d60;
            float _BlendOverlayDetailSmoothness_c5fcd30f5d100980ad9314e0e56d2d60_SmoothnessOverlay_1_Float;
            SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a_float(_Remap_a52c5f6577fc1980a5e299a6e0ddf409_Out_3_Float, _Add_f11cb1aeb2e4478e9aefa74e378fd580_Out_2_Float, _Absolute_1cc215099acfe18a825b04bc28feb9f0_Out_1_Float, _BlendOverlayDetailSmoothness_c5fcd30f5d100980ad9314e0e56d2d60, _BlendOverlayDetailSmoothness_c5fcd30f5d100980ad9314e0e56d2d60_SmoothnessOverlay_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_28feb3d1dd4dfd82a6e9d9ea40874a00_Out_1_Float;
            Unity_Saturate_float(_BlendOverlayDetailSmoothness_c5fcd30f5d100980ad9314e0e56d2d60_SmoothnessOverlay_1_Float, _Saturate_28feb3d1dd4dfd82a6e9d9ea40874a00_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Vector3_3f6927cdb1485a88950f0508b64a02c3_Out_0_Vector3 = float3(_Multiply_939fe20444a1c6878a6aa954ecd2e895_Out_2_Float, _Remap_189962673b1de1849b060d11a440f95c_Out_3_Float, _Saturate_28feb3d1dd4dfd82a6e9d9ea40874a00_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_a3f085b4921132839c45645c6957db36_R_1_Float = _Vector3_3f6927cdb1485a88950f0508b64a02c3_Out_0_Vector3[0];
            float _Split_a3f085b4921132839c45645c6957db36_G_2_Float = _Vector3_3f6927cdb1485a88950f0508b64a02c3_Out_0_Vector3[1];
            float _Split_a3f085b4921132839c45645c6957db36_B_3_Float = _Vector3_3f6927cdb1485a88950f0508b64a02c3_Out_0_Vector3[2];
            float _Split_a3f085b4921132839c45645c6957db36_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_a337addb4e03728f9252bc8a6a177248_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_ShapeAO);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _SampleTexture2D_30f1eb8bb12139818feda1d316a19063_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_a337addb4e03728f9252bc8a6a177248_Out_0_Texture2D.tex, _Property_a337addb4e03728f9252bc8a6a177248_Out_0_Texture2D.samplerstate, _Property_a337addb4e03728f9252bc8a6a177248_Out_0_Texture2D.GetTransformedUV(IN.uv0.xy) );
            float _SampleTexture2D_30f1eb8bb12139818feda1d316a19063_R_4_Float = _SampleTexture2D_30f1eb8bb12139818feda1d316a19063_RGBA_0_Vector4.r;
            float _SampleTexture2D_30f1eb8bb12139818feda1d316a19063_G_5_Float = _SampleTexture2D_30f1eb8bb12139818feda1d316a19063_RGBA_0_Vector4.g;
            float _SampleTexture2D_30f1eb8bb12139818feda1d316a19063_B_6_Float = _SampleTexture2D_30f1eb8bb12139818feda1d316a19063_RGBA_0_Vector4.b;
            float _SampleTexture2D_30f1eb8bb12139818feda1d316a19063_A_7_Float = _SampleTexture2D_30f1eb8bb12139818feda1d316a19063_RGBA_0_Vector4.a;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_40f4f30c157e9685bb7143db5354c653_Out_0_Float = _ShapeAORemapMin;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_d4ccc2976eff1783bf06a4f261fca13d_Out_0_Float = _ShapeAORemapMax;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_37a4546ff8dc048b86f6aa6ebb2fb00f_Out_0_Vector2 = float2(_Property_40f4f30c157e9685bb7143db5354c653_Out_0_Float, _Property_d4ccc2976eff1783bf06a4f261fca13d_Out_0_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Remap_a6f636e9e457818cbfaae20d34b71a2d_Out_3_Float;
            Unity_Remap_float(_SampleTexture2D_30f1eb8bb12139818feda1d316a19063_G_5_Float, float2 (0, 1), _Vector2_37a4546ff8dc048b86f6aa6ebb2fb00f_Out_0_Vector2, _Remap_a6f636e9e457818cbfaae20d34b71a2d_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Minimum_501ebb5b4e229b8aac4dbd04b29050d5_Out_2_Float;
            Unity_Minimum_float(_Split_a3f085b4921132839c45645c6957db36_G_2_Float, _Remap_a6f636e9e457818cbfaae20d34b71a2d_Out_3_Float, _Minimum_501ebb5b4e229b8aac4dbd04b29050d5_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Vector3_030cf682c34de683a72045679e26d4b9_Out_0_Vector3 = float3(_Split_a3f085b4921132839c45645c6957db36_R_1_Float, _Minimum_501ebb5b4e229b8aac4dbd04b29050d5_Out_2_Float, _Split_a3f085b4921132839c45645c6957db36_B_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_b370e8d3b9ffee808f76bccb584effca_Out_0_Float = _CoverMetallic;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_567d226d6ee3678b835fc603c61a0d82_Out_2_Float;
            Unity_Multiply_float_float(_Split_e4be19cd1f232a808ae6fe9f9259cd4e_R_1_Float, _Property_b370e8d3b9ffee808f76bccb584effca_Out_0_Float, _Multiply_567d226d6ee3678b835fc603c61a0d82_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_4a085303db2d958ebb91f6f1f35a6503_Out_0_Float = _CoverAORemapMin;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_391cee991053628f88fc2212fedb9d42_Out_0_Float = _CoverAORemapMax;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_e7d10960a73d6b84bd3a8970b6637257_Out_0_Vector2 = float2(_Property_4a085303db2d958ebb91f6f1f35a6503_Out_0_Float, _Property_391cee991053628f88fc2212fedb9d42_Out_0_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Remap_9f7f311e6e30a889a38f188ab0cb5e1b_Out_3_Float;
            Unity_Remap_float(_Split_e4be19cd1f232a808ae6fe9f9259cd4e_G_2_Float, float2 (0, 1), _Vector2_e7d10960a73d6b84bd3a8970b6637257_Out_0_Vector2, _Remap_9f7f311e6e30a889a38f188ab0cb5e1b_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_9220c2c2b4394381a676f3c6ebf9f6af_Out_0_Float = _CoverSmoothnessRemapMin;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_652fead90d293e8489aaba867d2200dc_Out_0_Float = _CoverSmoothnessRemapMax;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_56e5ec5345586385ac2aa3f11f507d03_Out_0_Vector2 = float2(_Property_9220c2c2b4394381a676f3c6ebf9f6af_Out_0_Float, _Property_652fead90d293e8489aaba867d2200dc_Out_0_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Remap_8b01373c0b0cf285a0f235790d6f9d33_Out_3_Float;
            Unity_Remap_float(_Split_e4be19cd1f232a808ae6fe9f9259cd4e_A_4_Float, float2 (0, 1), _Vector2_56e5ec5345586385ac2aa3f11f507d03_Out_0_Vector2, _Remap_8b01373c0b0cf285a0f235790d6f9d33_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_58bef2d241342982aeaae4e24ba1df8a_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_B_6_Float, 2, _Multiply_58bef2d241342982aeaae4e24ba1df8a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_81a595ae5f1e3282acf06f1df37b64c2_Out_2_Float;
            Unity_Add_float(_Multiply_58bef2d241342982aeaae4e24ba1df8a_Out_2_Float, -1, _Add_81a595ae5f1e3282acf06f1df37b64c2_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_3ed83ca55f58998dbe226f5f9b76e027_Out_0_Float = _DetailCoverSmoothnessScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_74906e003b997c849ed2791e2fc67605_Out_2_Float;
            Unity_Multiply_float_float(_Add_81a595ae5f1e3282acf06f1df37b64c2_Out_2_Float, _Property_3ed83ca55f58998dbe226f5f9b76e027_Out_0_Float, _Multiply_74906e003b997c849ed2791e2fc67605_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_247072f7d3d75a8c91db3d3dcd5a2a5f_Out_1_Float;
            Unity_Saturate_float(_Multiply_74906e003b997c849ed2791e2fc67605_Out_2_Float, _Saturate_247072f7d3d75a8c91db3d3dcd5a2a5f_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_957fdd533fa9558f834128f10756a125_Out_1_Float;
            Unity_Absolute_float(_Saturate_247072f7d3d75a8c91db3d3dcd5a2a5f_Out_1_Float, _Absolute_957fdd533fa9558f834128f10756a125_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a_float _BlendOverlayDetailSmoothness_d902e436ab1d838592bcb5ed72d7ac21;
            float _BlendOverlayDetailSmoothness_d902e436ab1d838592bcb5ed72d7ac21_SmoothnessOverlay_1_Float;
            SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a_float(_Remap_8b01373c0b0cf285a0f235790d6f9d33_Out_3_Float, _Add_81a595ae5f1e3282acf06f1df37b64c2_Out_2_Float, _Absolute_957fdd533fa9558f834128f10756a125_Out_1_Float, _BlendOverlayDetailSmoothness_d902e436ab1d838592bcb5ed72d7ac21, _BlendOverlayDetailSmoothness_d902e436ab1d838592bcb5ed72d7ac21_SmoothnessOverlay_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_c4254159e578118790b749b67ef5dc56_Out_1_Float;
            Unity_Saturate_float(_BlendOverlayDetailSmoothness_d902e436ab1d838592bcb5ed72d7ac21_SmoothnessOverlay_1_Float, _Saturate_c4254159e578118790b749b67ef5dc56_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Vector3_9f7dc5bf207e128a96593d633f04b22f_Out_0_Vector3 = float3(_Multiply_567d226d6ee3678b835fc603c61a0d82_Out_2_Float, _Remap_9f7f311e6e30a889a38f188ab0cb5e1b_Out_3_Float, _Saturate_c4254159e578118790b749b67ef5dc56_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_209739aec66e278989401e697b4c7d26_R_1_Float = _Vector3_9f7dc5bf207e128a96593d633f04b22f_Out_0_Vector3[0];
            float _Split_209739aec66e278989401e697b4c7d26_G_2_Float = _Vector3_9f7dc5bf207e128a96593d633f04b22f_Out_0_Vector3[1];
            float _Split_209739aec66e278989401e697b4c7d26_B_3_Float = _Vector3_9f7dc5bf207e128a96593d633f04b22f_Out_0_Vector3[2];
            float _Split_209739aec66e278989401e697b4c7d26_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_e6232b13ef0ede8c80a6047003a81ad6_Out_0_Float = _CoverShapeAORemapMin;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_d56e3e92363f46839c21a3e3ec40277f_Out_0_Float = _CoverShapeAORemapMax;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_05dc96538e5cef8d8259e04e75938b20_Out_0_Vector2 = float2(_Property_e6232b13ef0ede8c80a6047003a81ad6_Out_0_Float, _Property_d56e3e92363f46839c21a3e3ec40277f_Out_0_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Remap_f34a4145e440f186ae0e0dec31aab8a0_Out_3_Float;
            Unity_Remap_float(_SampleTexture2D_30f1eb8bb12139818feda1d316a19063_G_5_Float, float2 (0, 1), _Vector2_05dc96538e5cef8d8259e04e75938b20_Out_0_Vector2, _Remap_f34a4145e440f186ae0e0dec31aab8a0_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Minimum_a27e302fb2b5878d805ffb7e2a73e53e_Out_2_Float;
            Unity_Minimum_float(_Split_209739aec66e278989401e697b4c7d26_G_2_Float, _Remap_f34a4145e440f186ae0e0dec31aab8a0_Out_3_Float, _Minimum_a27e302fb2b5878d805ffb7e2a73e53e_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Vector3_31a24cfaf59fe286aedbf33be3362916_Out_0_Vector3 = float3(_Split_209739aec66e278989401e697b4c7d26_R_1_Float, _Minimum_a27e302fb2b5878d805ffb7e2a73e53e_Out_2_Float, _Split_209739aec66e278989401e697b4c7d26_B_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Lerp_ce2dc49924dd3c8e84b50a2de28e8eeb_Out_3_Vector3;
            Unity_Lerp_float3(_Vector3_030cf682c34de683a72045679e26d4b9_Out_0_Vector3, _Vector3_31a24cfaf59fe286aedbf33be3362916_Out_0_Vector3, (_UseDynamicCoverTStaticMaskF_965d575a85d3a285888696251619b92a_Out_0_Float.xxx), _Lerp_ce2dc49924dd3c8e84b50a2de28e8eeb_Out_3_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_42589655820b5480b3fcffcf6f169bb9_R_1_Float = _Lerp_ce2dc49924dd3c8e84b50a2de28e8eeb_Out_3_Vector3[0];
            float _Split_42589655820b5480b3fcffcf6f169bb9_G_2_Float = _Lerp_ce2dc49924dd3c8e84b50a2de28e8eeb_Out_3_Vector3[1];
            float _Split_42589655820b5480b3fcffcf6f169bb9_B_3_Float = _Lerp_ce2dc49924dd3c8e84b50a2de28e8eeb_Out_3_Vector3[2];
            float _Split_42589655820b5480b3fcffcf6f169bb9_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_fbc3f497caff048793a7e6422c64f62e_Out_0_Float = _WetSmoothness;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Lerp_a6aa37e095501585bf7e9df1f08c9562_Out_3_Float;
            Unity_Lerp_float(_Split_42589655820b5480b3fcffcf6f169bb9_B_3_Float, _Property_fbc3f497caff048793a7e6422c64f62e_Out_0_Float, _OneMinus_6a89d72ac6ee8288843130b19eac4072_Out_1_Float, _Lerp_a6aa37e095501585bf7e9df1f08c9562_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_R_1_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[0];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_G_2_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[1];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_B_3_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[2];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_A_4_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_532ef6f6b0f1be8b91821eb9e0f91998_Out_0_Float = _AlphaCutoff;
            #endif
            surface.BaseColor = _Lerp_ab54871dfce4b381bee887d0813c791a_Out_3_Vector3;
            surface.NormalTS = _Lerp_850434193793408fadaa26fc92231b75_Out_3_Vector3;
            surface.Emission = float3(0, 0, 0);
            surface.Metallic = _Split_42589655820b5480b3fcffcf6f169bb9_R_1_Float;
            surface.Specular = IsGammaSpace() ? float3(0.5, 0.5, 0.5) : SRGBToLinear(float3(0.5, 0.5, 0.5));
            surface.Smoothness = _Lerp_a6aa37e095501585bf7e9df1f08c9562_Out_3_Float;
            surface.Occlusion = _Split_42589655820b5480b3fcffcf6f169bb9_G_2_Float;
            surface.Alpha = _Split_6a301da40f6f1d8d8b206a60cb2c2a22_A_4_Float;
            surface.AlphaClipThreshold = _Property_532ef6f6b0f1be8b91821eb9e0f91998_Out_0_Float;
            return surface;
        }
        
        // --------------------------------------------------
        // Build Graph Inputs
        #ifdef HAVE_VFX_MODIFICATION
        #define VFX_SRP_ATTRIBUTES Attributes
        #define VFX_SRP_VARYINGS Varyings
        #define VFX_SRP_SURFACE_INPUTS SurfaceDescriptionInputs
        #endif
        VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpaceNormal =                          input.normalOS;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpaceTangent =                         input.tangentOS.xyz;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpacePosition =                        input.positionOS;
        #endif
        
        
            return output;
        }
        SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
        #ifdef HAVE_VFX_MODIFICATION
        #if VFX_USE_GRAPH_VALUES
            uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
            /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
        #endif
            /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
        
        #endif
        
            
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // must use interpolated tangent, bitangent and normal before they are normalized in the pixel shader.
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        float3 unnormalizedNormalWS = input.normalWS;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        const float renormFactor = 1.0 / length(unnormalizedNormalWS);
        #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // use bitangent on the fly like in hdrp
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // IMPORTANT! If we ever support Flip on double sided materials ensure bitangent and tangent are NOT flipped.
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        float crossSign = (input.tangentWS.w > 0.0 ? 1.0 : -1.0)* GetOddNegativeScale();
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        float3 bitang = crossSign * cross(input.normalWS.xyz, input.tangentWS.xyz);
        #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpaceNormal = renormFactor * input.normalWS.xyz;      // we want a unit length Normal Vector node in shader graph
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.TangentSpaceNormal = float3(0.0f, 0.0f, 1.0f);
        #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // to pr               eserve mikktspace compliance we use same scale renormFactor as was used on the normal.
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // This                is explained in section 2.2 in "surface gradient based bump mapping framework"
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpaceTangent = renormFactor * input.tangentWS.xyz;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpaceBiTangent = renormFactor * bitang;
        #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpacePosition = input.positionWS;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.AbsoluteWorldSpacePosition = GetAbsolutePositionWS(input.positionWS);
        #endif
        
        
            #if UNITY_UV_STARTS_AT_TOP
            #else
            #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.uv0 = input.texCoord0;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.VertexColor = input.color;
        #endif
        
        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
        #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
        #else
        #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
        #endif
        #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
        
                return output;
        }
        
        // --------------------------------------------------
        // Main
        
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/UnityGBuffer.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/PBRGBufferPass.hlsl"
        
        // --------------------------------------------------
        // Visual Effect Vertex Invocations
        #ifdef HAVE_VFX_MODIFICATION
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
        #endif
        
        ENDHLSL
        }
        Pass
        {
            Name "ShadowCaster"
            Tags
            {
                "LightMode" = "ShadowCaster"
            }
        
        // Render State
        Cull [_Cull]
        ZTest LEqual
        ZWrite On
        ColorMask 0
        
        // Debug
        // <None>
        
        // --------------------------------------------------
        // Pass
        
        HLSLPROGRAM
        
        // Pragmas
        #pragma target 2.0
        #pragma multi_compile_instancing
        #pragma vertex vert
        #pragma fragment frag
        
        // Keywords
        #pragma multi_compile_vertex _ _CASTING_PUNCTUAL_LIGHT_SHADOW
        #pragma shader_feature_local_fragment _ _ALPHATEST_ON
        #pragma shader_feature_local _ _USEDYNAMICCOVERTSTATICMASKF_ON
        
        #if defined(_USEDYNAMICCOVERTSTATICMASKF_ON)
            #define KEYWORD_PERMUTATION_0
        #else
            #define KEYWORD_PERMUTATION_1
        #endif
        
        
        // Defines
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define _NORMALMAP 1
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define _NORMAL_DROPOFF_TS 1
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_NORMAL
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_TANGENT
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_POSITION_WS
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_NORMAL_WS
        #endif
        
        #define FEATURES_GRAPH_VERTEX
        /* WARNING: $splice Could not find named fragment 'PassInstancing' */
        #define SHADERPASS SHADERPASS_SHADOWCASTER
        
        
        // custom interpolator pre-include
        /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
        
        // Includes
        #include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
        
        // --------------------------------------------------
        // Structs and Packing
        
        // custom interpolators pre packing
        /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
        
        struct Attributes
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionOS : POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalOS : NORMAL;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 tangentOS : TANGENT;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : INSTANCEID_SEMANTIC;
            #endif
            #endif
        };
        struct Varyings
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 positionCS : SV_POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionWS;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalWS;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
            #endif
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
            #endif
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif
            #endif
        };
        struct SurfaceDescriptionInputs
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpaceNormal;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 AbsoluteWorldSpacePosition;
            #endif
        };
        struct VertexDescriptionInputs
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpaceNormal;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpaceTangent;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpacePosition;
            #endif
        };
        struct PackedVaryings
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 positionCS : SV_POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionWS : INTERP0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalWS : INTERP1;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
            #endif
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
            #endif
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif
            #endif
        };
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        PackedVaryings PackVaryings (Varyings input)
        {
            PackedVaryings output;
            ZERO_INITIALIZE(PackedVaryings, output);
            output.positionCS = input.positionCS;
            output.positionWS.xyz = input.positionWS;
            output.normalWS.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif
            return output;
        }
        
        Varyings UnpackVaryings (PackedVaryings input)
        {
            Varyings output;
            output.positionCS = input.positionCS;
            output.positionWS = input.positionWS.xyz;
            output.normalWS = input.normalWS.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif
            return output;
        }
        #endif
        
        // --------------------------------------------------
        // Graph
        
        // Graph Properties
        CBUFFER_START(UnityPerMaterial)
        float _AlphaCutoff;
        float4 _BaseColor;
        float4 _BaseColorMap_TexelSize;
        float4 _BaseTilingOffset;
        float _BaseTriplanarThreshold;
        float4 _BaseNormalMap_TexelSize;
        float _BaseNormalScale;
        float4 _BaseMaskMap_TexelSize;
        float _BaseMetallic;
        float _BaseAORemapMin;
        float _BaseAORemapMax;
        float _BaseSmoothnessRemapMin;
        float _BaseSmoothnessRemapMax;
        float4 _CoverMaskA_TexelSize;
        float _CoverMaskPower;
        float _Cover_Amount;
        float _Cover_Amount_Grow_Speed;
        float3 _CoverDirection;
        float _Cover_Max_Angle;
        float _Cover_Min_Height;
        float _Cover_Min_Height_Blending;
        float4 _CoverBaseColor;
        float4 _CoverBaseColorMap_TexelSize;
        float4 _CoverTilingOffset;
        float _CoverTriplanarThreshold;
        float4 _CoverNormalMap_TexelSize;
        float _CoverNormalScale;
        float _CoverNormalBlendHardness;
        float _CoverHeightMapMin;
        float _CoverHeightMapMax;
        float _CoverHeightMapOffset;
        float _CoverHardness;
        float4 _CoverMaskMap_TexelSize;
        float _CoverMetallic;
        float _CoverAORemapMin;
        float _CoverAORemapMax;
        float _CoverSmoothnessRemapMin;
        float _CoverSmoothnessRemapMax;
        float4 _ShapeNormalMap_TexelSize;
        float _shapeNormalScale;
        float _CovershapeNormalScale;
        float4 _ShapeAO_TexelSize;
        float _ShapeAORemapMin;
        float _ShapeAORemapMax;
        float _CoverShapeAORemapMin;
        float _CoverShapeAORemapMax;
        float4 _DetailMap_TexelSize;
        float4 _DetailTilingOffset;
        float _DetailAlbedoScale;
        float _DetailNormalScale;
        float _DetailSmoothnessScale;
        float _DetailCoverAlbedoScale;
        float _DetailCoverNormalScale;
        float _DetailCoverSmoothnessScale;
        float _CoverMaskRCurvature;
        float _BaseBrightnessCurvMultply;
        float _BaseBrightnessCurvPower;
        float _BaseDarknessCurvMultply;
        float _BaseDarknessCurvPower;
        float _CoverBrightnessCurvMultply;
        float _CoverBrightnessCurvPower;
        float _CoverDarknessCurvMultply;
        float _CoverDarknessCurvPower;
        float4 _WetColor;
        float _WetSmoothness;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_BaseNormalMap);
        SAMPLER(sampler_BaseNormalMap);
        TEXTURE2D(_BaseMaskMap);
        SAMPLER(sampler_BaseMaskMap);
        TEXTURE2D(_CoverMaskA);
        SAMPLER(sampler_CoverMaskA);
        TEXTURE2D(_CoverBaseColorMap);
        SAMPLER(sampler_CoverBaseColorMap);
        TEXTURE2D(_CoverNormalMap);
        SAMPLER(sampler_CoverNormalMap);
        TEXTURE2D(_CoverMaskMap);
        SAMPLER(sampler_CoverMaskMap);
        TEXTURE2D(_ShapeNormalMap);
        SAMPLER(sampler_ShapeNormalMap);
        TEXTURE2D(_ShapeAO);
        SAMPLER(sampler_ShapeAO);
        TEXTURE2D(_DetailMap);
        SAMPLER(sampler_DetailMap);
        
        // Graph Includes
        #include "./NM_Object_VSPro_Indirect.cginc"
        
        // -- Property used by ScenePickingPass
        #ifdef SCENEPICKINGPASS
        float4 _SelectionID;
        #endif
        
        // -- Properties used by SceneSelectionPass
        #ifdef SCENESELECTIONPASS
        int _ObjectId;
        int _PassValue;
        #endif
        
        // Graph Functions
        
        void AddPragma_float(float3 A, out float3 Out){
        #pragma instancing_options renderinglayer procedural:setupVSPro
        Out = A;
        }
        
        struct Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float
        {
        };
        
        void SG_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float(float3 Vector3_314C8600, Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float IN, out float3 ObjectSpacePosition_1)
        {
        float3 _Property_5ec158abd968858c9d31ab40df5e9e6f_Out_0_Vector3 = Vector3_314C8600;
        float3 _InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3;
        InjectSetup_float(_Property_5ec158abd968858c9d31ab40df5e9e6f_Out_0_Vector3, _InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3);
        float3 _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3;
        AddPragma_float(_InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3, _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3);
        ObjectSpacePosition_1 = _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3;
        }
        
        void Unity_Divide_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A / B;
        }
        
        void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
        {
            RGBA = float4(R, G, B, A);
            RGB = float3(R, G, B);
            RG = float2(R, G);
        }
        
        void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
        {
        Out = A * B;
        }
        
        void Unity_Sign_float3(float3 In, out float3 Out)
        {
            Out = sign(In);
        }
        
        void Unity_Multiply_float2_float2(float2 A, float2 B, out float2 Out)
        {
        Out = A * B;
        }
        
        void Unity_Absolute_float3(float3 In, out float3 Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float3(float3 A, float3 B, out float3 Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Multiply_float3_float3(float3 A, float3 B, out float3 Out)
        {
        Out = A * B;
        }
        
        void Unity_Multiply_float_float(float A, float B, out float Out)
        {
        Out = A * B;
        }
        
        void Unity_Add_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A + B;
        }
        
        void Unity_Add_float(float A, float B, out float Out)
        {
            Out = A + B;
        }
        
        struct Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float
        {
        float3 WorldSpaceNormal;
        float3 AbsoluteWorldSpacePosition;
        };
        
        void SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(UnityTexture2D Texture2D_80A3D28F, float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float IN, out float4 XYZ_1, out float4 XZ_2, out float4 YZ_3, out float4 XY_4)
        {
        UnityTexture2D _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D = Texture2D_80A3D28F;
        float _Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
        float _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
        float _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
        float _Split_89ed63cb625cb3878c183d0b71c03400_A_4_Float = 0;
        float4 _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4;
        float3 _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3;
        float2 _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, 0, 0, _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3, _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2);
        float _Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float = Vector1_41461AC9;
        float4 _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4);
        float3 _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3;
        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3);
        float _Split_742547a7039de986a646d04c157ae549_R_1_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[0];
        float _Split_742547a7039de986a646d04c157ae549_G_2_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[1];
        float _Split_742547a7039de986a646d04c157ae549_B_3_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[2];
        float _Split_742547a7039de986a646d04c157ae549_A_4_Float = 0;
        float2 _Vector2_40a8919e571ec18499de72022c155b38_Out_0_Vector2 = float2(_Split_742547a7039de986a646d04c157ae549_G_2_Float, 1);
        float2 _Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4.xy), _Vector2_40a8919e571ec18499de72022c155b38_Out_0_Vector2, _Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2);
        float4 _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2) );
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_R_4_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.r;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_G_5_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.g;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_B_6_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.b;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_A_7_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.a;
        float3 _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3;
        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3);
        float _Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float = Vector1_E4D1C13A;
        float3 _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3;
        Unity_Power_float3(_Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3, (_Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float.xxx), _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3);
        float3 _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3);
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[0];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[1];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[2];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_A_4_Float = 0;
        float4 _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float.xxxx), _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4);
        float4 _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4;
        float3 _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3;
        float2 _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3, _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2);
        float4 _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4);
        float _Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float;
        Unity_Multiply_float_float(_Split_742547a7039de986a646d04c157ae549_B_3_Float, -1, _Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float);
        float2 _Vector2_caa25d55d456a58982bdfc39b1b43f3f_Out_0_Vector2 = float2(_Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float, 1);
        float2 _Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4.xy), _Vector2_caa25d55d456a58982bdfc39b1b43f3f_Out_0_Vector2, _Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2);
        float4 _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2) );
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_R_4_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.r;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_G_5_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.g;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_B_6_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.b;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_A_7_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.a;
        float4 _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float.xxxx), _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4);
        float4 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4;
        float3 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3;
        float2 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2);
        float4 _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4);
        float2 _Vector2_54dfd40df2fc78809955dd272f2cf0c3_Out_0_Vector2 = float2(_Split_742547a7039de986a646d04c157ae549_R_1_Float, 1);
        float2 _Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4.xy), _Vector2_54dfd40df2fc78809955dd272f2cf0c3_Out_0_Vector2, _Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2);
        float4 _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2) );
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_R_4_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.r;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_G_5_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.g;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_B_6_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.b;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_A_7_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.a;
        float4 _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float.xxxx), _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4);
        float4 _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4;
        Unity_Add_float4(_Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4, _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4);
        float4 _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4;
        Unity_Add_float4(_Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4, _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4);
        float _Add_e59af300bba2498db32eac1412123447_Out_2_Float;
        Unity_Add_float(_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float, _Add_e59af300bba2498db32eac1412123447_Out_2_Float);
        float _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float;
        Unity_Add_float(_Add_e59af300bba2498db32eac1412123447_Out_2_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float, _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float);
        float4 _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4;
        Unity_Divide_float4(_Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4, (_Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float.xxxx), _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4);
        XYZ_1 = _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4;
        XZ_2 = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4;
        YZ_3 = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4;
        XY_4 = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4;
        }
        
        // Custom interpolators pre vertex
        /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
        
        // Graph Vertex
        struct VertexDescription
        {
            float3 Position;
            float3 Normal;
            float3 Tangent;
        };
        
        VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
        {
            VertexDescription description = (VertexDescription)0;
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301;
            float3 _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3;
            SG_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float(IN.ObjectSpacePosition, _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301, _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3);
            #endif
            description.Position = _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3;
            description.Normal = IN.ObjectSpaceNormal;
            description.Tangent = IN.ObjectSpaceTangent;
            return description;
        }
        
        // Custom interpolators, pre surface
        #ifdef FEATURES_GRAPH_VERTEX
        Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
        {
        return output;
        }
        #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
        #endif
        
        // Graph Pixel
        struct SurfaceDescription
        {
            float Alpha;
            float AlphaClipThreshold;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_6c17ebaaa33d938990da19e6860d987c_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_72f47eee6df1cd8dbc7790612f96361f_Out_0_Vector4 = _BaseTilingOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4;
            Unity_Divide_float4(float4(1, 1, 0, 0), _Property_72f47eee6df1cd8dbc7790612f96361f_Out_0_Vector4, _Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float = _BaseTriplanarThreshold;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e;
            _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XZ_2_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_YZ_3_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XY_4_Vector4;
            SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(_Property_6c17ebaaa33d938990da19e6860d987c_Out_0_Texture2D, (_Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4).x, _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XZ_2_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_YZ_3_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_R_1_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[0];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_G_2_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[1];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_B_3_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[2];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_A_4_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_532ef6f6b0f1be8b91821eb9e0f91998_Out_0_Float = _AlphaCutoff;
            #endif
            surface.Alpha = _Split_6a301da40f6f1d8d8b206a60cb2c2a22_A_4_Float;
            surface.AlphaClipThreshold = _Property_532ef6f6b0f1be8b91821eb9e0f91998_Out_0_Float;
            return surface;
        }
        
        // --------------------------------------------------
        // Build Graph Inputs
        #ifdef HAVE_VFX_MODIFICATION
        #define VFX_SRP_ATTRIBUTES Attributes
        #define VFX_SRP_VARYINGS Varyings
        #define VFX_SRP_SURFACE_INPUTS SurfaceDescriptionInputs
        #endif
        VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpaceNormal =                          input.normalOS;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpaceTangent =                         input.tangentOS.xyz;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpacePosition =                        input.positionOS;
        #endif
        
        
            return output;
        }
        SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
        #ifdef HAVE_VFX_MODIFICATION
        #if VFX_USE_GRAPH_VALUES
            uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
            /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
        #endif
            /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
        
        #endif
        
            
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // must use interpolated tangent, bitangent and normal before they are normalized in the pixel shader.
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        float3 unnormalizedNormalWS = input.normalWS;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        const float renormFactor = 1.0 / length(unnormalizedNormalWS);
        #endif
        
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpaceNormal = renormFactor * input.normalWS.xyz;      // we want a unit length Normal Vector node in shader graph
        #endif
        
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.AbsoluteWorldSpacePosition = GetAbsolutePositionWS(input.positionWS);
        #endif
        
        
            #if UNITY_UV_STARTS_AT_TOP
            #else
            #endif
        
        
        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
        #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
        #else
        #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
        #endif
        #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
        
                return output;
        }
        
        // --------------------------------------------------
        // Main
        
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShadowCasterPass.hlsl"
        
        // --------------------------------------------------
        // Visual Effect Vertex Invocations
        #ifdef HAVE_VFX_MODIFICATION
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
        #endif
        
        ENDHLSL
        }
        Pass
        {
            Name "DepthOnly"
            Tags
            {
                "LightMode" = "DepthOnly"
            }
        
        // Render State
        Cull [_Cull]
        ZTest LEqual
        ZWrite On
        ColorMask R
        
        // Debug
        // <None>
        
        // --------------------------------------------------
        // Pass
        
        HLSLPROGRAM
        
        // Pragmas
        #pragma target 2.0
        #pragma multi_compile_instancing
        #pragma vertex vert
        #pragma fragment frag
        
        // Keywords
        #pragma shader_feature_local_fragment _ _ALPHATEST_ON
        #pragma shader_feature_local _ _USEDYNAMICCOVERTSTATICMASKF_ON
        
        #if defined(_USEDYNAMICCOVERTSTATICMASKF_ON)
            #define KEYWORD_PERMUTATION_0
        #else
            #define KEYWORD_PERMUTATION_1
        #endif
        
        
        // Defines
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define _NORMALMAP 1
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define _NORMAL_DROPOFF_TS 1
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_NORMAL
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_TANGENT
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_POSITION_WS
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_NORMAL_WS
        #endif
        
        #define FEATURES_GRAPH_VERTEX
        /* WARNING: $splice Could not find named fragment 'PassInstancing' */
        #define SHADERPASS SHADERPASS_DEPTHONLY
        
        
        // custom interpolator pre-include
        /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
        
        // Includes
        #include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
        
        // --------------------------------------------------
        // Structs and Packing
        
        // custom interpolators pre packing
        /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
        
        struct Attributes
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionOS : POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalOS : NORMAL;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 tangentOS : TANGENT;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : INSTANCEID_SEMANTIC;
            #endif
            #endif
        };
        struct Varyings
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 positionCS : SV_POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionWS;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalWS;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
            #endif
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
            #endif
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif
            #endif
        };
        struct SurfaceDescriptionInputs
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpaceNormal;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 AbsoluteWorldSpacePosition;
            #endif
        };
        struct VertexDescriptionInputs
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpaceNormal;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpaceTangent;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpacePosition;
            #endif
        };
        struct PackedVaryings
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 positionCS : SV_POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionWS : INTERP0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalWS : INTERP1;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
            #endif
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
            #endif
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif
            #endif
        };
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        PackedVaryings PackVaryings (Varyings input)
        {
            PackedVaryings output;
            ZERO_INITIALIZE(PackedVaryings, output);
            output.positionCS = input.positionCS;
            output.positionWS.xyz = input.positionWS;
            output.normalWS.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif
            return output;
        }
        
        Varyings UnpackVaryings (PackedVaryings input)
        {
            Varyings output;
            output.positionCS = input.positionCS;
            output.positionWS = input.positionWS.xyz;
            output.normalWS = input.normalWS.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif
            return output;
        }
        #endif
        
        // --------------------------------------------------
        // Graph
        
        // Graph Properties
        CBUFFER_START(UnityPerMaterial)
        float _AlphaCutoff;
        float4 _BaseColor;
        float4 _BaseColorMap_TexelSize;
        float4 _BaseTilingOffset;
        float _BaseTriplanarThreshold;
        float4 _BaseNormalMap_TexelSize;
        float _BaseNormalScale;
        float4 _BaseMaskMap_TexelSize;
        float _BaseMetallic;
        float _BaseAORemapMin;
        float _BaseAORemapMax;
        float _BaseSmoothnessRemapMin;
        float _BaseSmoothnessRemapMax;
        float4 _CoverMaskA_TexelSize;
        float _CoverMaskPower;
        float _Cover_Amount;
        float _Cover_Amount_Grow_Speed;
        float3 _CoverDirection;
        float _Cover_Max_Angle;
        float _Cover_Min_Height;
        float _Cover_Min_Height_Blending;
        float4 _CoverBaseColor;
        float4 _CoverBaseColorMap_TexelSize;
        float4 _CoverTilingOffset;
        float _CoverTriplanarThreshold;
        float4 _CoverNormalMap_TexelSize;
        float _CoverNormalScale;
        float _CoverNormalBlendHardness;
        float _CoverHeightMapMin;
        float _CoverHeightMapMax;
        float _CoverHeightMapOffset;
        float _CoverHardness;
        float4 _CoverMaskMap_TexelSize;
        float _CoverMetallic;
        float _CoverAORemapMin;
        float _CoverAORemapMax;
        float _CoverSmoothnessRemapMin;
        float _CoverSmoothnessRemapMax;
        float4 _ShapeNormalMap_TexelSize;
        float _shapeNormalScale;
        float _CovershapeNormalScale;
        float4 _ShapeAO_TexelSize;
        float _ShapeAORemapMin;
        float _ShapeAORemapMax;
        float _CoverShapeAORemapMin;
        float _CoverShapeAORemapMax;
        float4 _DetailMap_TexelSize;
        float4 _DetailTilingOffset;
        float _DetailAlbedoScale;
        float _DetailNormalScale;
        float _DetailSmoothnessScale;
        float _DetailCoverAlbedoScale;
        float _DetailCoverNormalScale;
        float _DetailCoverSmoothnessScale;
        float _CoverMaskRCurvature;
        float _BaseBrightnessCurvMultply;
        float _BaseBrightnessCurvPower;
        float _BaseDarknessCurvMultply;
        float _BaseDarknessCurvPower;
        float _CoverBrightnessCurvMultply;
        float _CoverBrightnessCurvPower;
        float _CoverDarknessCurvMultply;
        float _CoverDarknessCurvPower;
        float4 _WetColor;
        float _WetSmoothness;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_BaseNormalMap);
        SAMPLER(sampler_BaseNormalMap);
        TEXTURE2D(_BaseMaskMap);
        SAMPLER(sampler_BaseMaskMap);
        TEXTURE2D(_CoverMaskA);
        SAMPLER(sampler_CoverMaskA);
        TEXTURE2D(_CoverBaseColorMap);
        SAMPLER(sampler_CoverBaseColorMap);
        TEXTURE2D(_CoverNormalMap);
        SAMPLER(sampler_CoverNormalMap);
        TEXTURE2D(_CoverMaskMap);
        SAMPLER(sampler_CoverMaskMap);
        TEXTURE2D(_ShapeNormalMap);
        SAMPLER(sampler_ShapeNormalMap);
        TEXTURE2D(_ShapeAO);
        SAMPLER(sampler_ShapeAO);
        TEXTURE2D(_DetailMap);
        SAMPLER(sampler_DetailMap);
        
        // Graph Includes
        #include "./NM_Object_VSPro_Indirect.cginc"
        
        // -- Property used by ScenePickingPass
        #ifdef SCENEPICKINGPASS
        float4 _SelectionID;
        #endif
        
        // -- Properties used by SceneSelectionPass
        #ifdef SCENESELECTIONPASS
        int _ObjectId;
        int _PassValue;
        #endif
        
        // Graph Functions
        
        void AddPragma_float(float3 A, out float3 Out){
        #pragma instancing_options renderinglayer procedural:setupVSPro
        Out = A;
        }
        
        struct Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float
        {
        };
        
        void SG_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float(float3 Vector3_314C8600, Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float IN, out float3 ObjectSpacePosition_1)
        {
        float3 _Property_5ec158abd968858c9d31ab40df5e9e6f_Out_0_Vector3 = Vector3_314C8600;
        float3 _InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3;
        InjectSetup_float(_Property_5ec158abd968858c9d31ab40df5e9e6f_Out_0_Vector3, _InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3);
        float3 _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3;
        AddPragma_float(_InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3, _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3);
        ObjectSpacePosition_1 = _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3;
        }
        
        void Unity_Divide_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A / B;
        }
        
        void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
        {
            RGBA = float4(R, G, B, A);
            RGB = float3(R, G, B);
            RG = float2(R, G);
        }
        
        void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
        {
        Out = A * B;
        }
        
        void Unity_Sign_float3(float3 In, out float3 Out)
        {
            Out = sign(In);
        }
        
        void Unity_Multiply_float2_float2(float2 A, float2 B, out float2 Out)
        {
        Out = A * B;
        }
        
        void Unity_Absolute_float3(float3 In, out float3 Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float3(float3 A, float3 B, out float3 Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Multiply_float3_float3(float3 A, float3 B, out float3 Out)
        {
        Out = A * B;
        }
        
        void Unity_Multiply_float_float(float A, float B, out float Out)
        {
        Out = A * B;
        }
        
        void Unity_Add_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A + B;
        }
        
        void Unity_Add_float(float A, float B, out float Out)
        {
            Out = A + B;
        }
        
        struct Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float
        {
        float3 WorldSpaceNormal;
        float3 AbsoluteWorldSpacePosition;
        };
        
        void SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(UnityTexture2D Texture2D_80A3D28F, float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float IN, out float4 XYZ_1, out float4 XZ_2, out float4 YZ_3, out float4 XY_4)
        {
        UnityTexture2D _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D = Texture2D_80A3D28F;
        float _Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
        float _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
        float _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
        float _Split_89ed63cb625cb3878c183d0b71c03400_A_4_Float = 0;
        float4 _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4;
        float3 _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3;
        float2 _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, 0, 0, _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3, _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2);
        float _Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float = Vector1_41461AC9;
        float4 _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4);
        float3 _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3;
        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3);
        float _Split_742547a7039de986a646d04c157ae549_R_1_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[0];
        float _Split_742547a7039de986a646d04c157ae549_G_2_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[1];
        float _Split_742547a7039de986a646d04c157ae549_B_3_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[2];
        float _Split_742547a7039de986a646d04c157ae549_A_4_Float = 0;
        float2 _Vector2_40a8919e571ec18499de72022c155b38_Out_0_Vector2 = float2(_Split_742547a7039de986a646d04c157ae549_G_2_Float, 1);
        float2 _Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4.xy), _Vector2_40a8919e571ec18499de72022c155b38_Out_0_Vector2, _Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2);
        float4 _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2) );
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_R_4_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.r;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_G_5_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.g;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_B_6_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.b;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_A_7_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.a;
        float3 _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3;
        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3);
        float _Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float = Vector1_E4D1C13A;
        float3 _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3;
        Unity_Power_float3(_Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3, (_Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float.xxx), _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3);
        float3 _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3);
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[0];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[1];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[2];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_A_4_Float = 0;
        float4 _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float.xxxx), _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4);
        float4 _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4;
        float3 _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3;
        float2 _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3, _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2);
        float4 _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4);
        float _Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float;
        Unity_Multiply_float_float(_Split_742547a7039de986a646d04c157ae549_B_3_Float, -1, _Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float);
        float2 _Vector2_caa25d55d456a58982bdfc39b1b43f3f_Out_0_Vector2 = float2(_Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float, 1);
        float2 _Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4.xy), _Vector2_caa25d55d456a58982bdfc39b1b43f3f_Out_0_Vector2, _Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2);
        float4 _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2) );
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_R_4_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.r;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_G_5_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.g;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_B_6_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.b;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_A_7_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.a;
        float4 _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float.xxxx), _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4);
        float4 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4;
        float3 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3;
        float2 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2);
        float4 _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4);
        float2 _Vector2_54dfd40df2fc78809955dd272f2cf0c3_Out_0_Vector2 = float2(_Split_742547a7039de986a646d04c157ae549_R_1_Float, 1);
        float2 _Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4.xy), _Vector2_54dfd40df2fc78809955dd272f2cf0c3_Out_0_Vector2, _Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2);
        float4 _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2) );
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_R_4_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.r;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_G_5_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.g;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_B_6_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.b;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_A_7_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.a;
        float4 _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float.xxxx), _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4);
        float4 _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4;
        Unity_Add_float4(_Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4, _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4);
        float4 _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4;
        Unity_Add_float4(_Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4, _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4);
        float _Add_e59af300bba2498db32eac1412123447_Out_2_Float;
        Unity_Add_float(_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float, _Add_e59af300bba2498db32eac1412123447_Out_2_Float);
        float _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float;
        Unity_Add_float(_Add_e59af300bba2498db32eac1412123447_Out_2_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float, _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float);
        float4 _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4;
        Unity_Divide_float4(_Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4, (_Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float.xxxx), _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4);
        XYZ_1 = _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4;
        XZ_2 = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4;
        YZ_3 = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4;
        XY_4 = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4;
        }
        
        // Custom interpolators pre vertex
        /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
        
        // Graph Vertex
        struct VertexDescription
        {
            float3 Position;
            float3 Normal;
            float3 Tangent;
        };
        
        VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
        {
            VertexDescription description = (VertexDescription)0;
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301;
            float3 _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3;
            SG_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float(IN.ObjectSpacePosition, _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301, _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3);
            #endif
            description.Position = _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3;
            description.Normal = IN.ObjectSpaceNormal;
            description.Tangent = IN.ObjectSpaceTangent;
            return description;
        }
        
        // Custom interpolators, pre surface
        #ifdef FEATURES_GRAPH_VERTEX
        Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
        {
        return output;
        }
        #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
        #endif
        
        // Graph Pixel
        struct SurfaceDescription
        {
            float Alpha;
            float AlphaClipThreshold;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_6c17ebaaa33d938990da19e6860d987c_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_72f47eee6df1cd8dbc7790612f96361f_Out_0_Vector4 = _BaseTilingOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4;
            Unity_Divide_float4(float4(1, 1, 0, 0), _Property_72f47eee6df1cd8dbc7790612f96361f_Out_0_Vector4, _Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float = _BaseTriplanarThreshold;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e;
            _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XZ_2_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_YZ_3_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XY_4_Vector4;
            SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(_Property_6c17ebaaa33d938990da19e6860d987c_Out_0_Texture2D, (_Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4).x, _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XZ_2_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_YZ_3_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_R_1_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[0];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_G_2_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[1];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_B_3_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[2];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_A_4_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_532ef6f6b0f1be8b91821eb9e0f91998_Out_0_Float = _AlphaCutoff;
            #endif
            surface.Alpha = _Split_6a301da40f6f1d8d8b206a60cb2c2a22_A_4_Float;
            surface.AlphaClipThreshold = _Property_532ef6f6b0f1be8b91821eb9e0f91998_Out_0_Float;
            return surface;
        }
        
        // --------------------------------------------------
        // Build Graph Inputs
        #ifdef HAVE_VFX_MODIFICATION
        #define VFX_SRP_ATTRIBUTES Attributes
        #define VFX_SRP_VARYINGS Varyings
        #define VFX_SRP_SURFACE_INPUTS SurfaceDescriptionInputs
        #endif
        VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpaceNormal =                          input.normalOS;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpaceTangent =                         input.tangentOS.xyz;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpacePosition =                        input.positionOS;
        #endif
        
        
            return output;
        }
        SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
        #ifdef HAVE_VFX_MODIFICATION
        #if VFX_USE_GRAPH_VALUES
            uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
            /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
        #endif
            /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
        
        #endif
        
            
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // must use interpolated tangent, bitangent and normal before they are normalized in the pixel shader.
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        float3 unnormalizedNormalWS = input.normalWS;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        const float renormFactor = 1.0 / length(unnormalizedNormalWS);
        #endif
        
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpaceNormal = renormFactor * input.normalWS.xyz;      // we want a unit length Normal Vector node in shader graph
        #endif
        
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.AbsoluteWorldSpacePosition = GetAbsolutePositionWS(input.positionWS);
        #endif
        
        
            #if UNITY_UV_STARTS_AT_TOP
            #else
            #endif
        
        
        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
        #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
        #else
        #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
        #endif
        #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
        
                return output;
        }
        
        // --------------------------------------------------
        // Main
        
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/DepthOnlyPass.hlsl"
        
        // --------------------------------------------------
        // Visual Effect Vertex Invocations
        #ifdef HAVE_VFX_MODIFICATION
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
        #endif
        
        ENDHLSL
        }
        Pass
        {
            Name "DepthNormals"
            Tags
            {
                "LightMode" = "DepthNormals"
            }
        
        // Render State
        Cull [_Cull]
        ZTest LEqual
        ZWrite On
        
        // Debug
        // <None>
        
        // --------------------------------------------------
        // Pass
        
        HLSLPROGRAM
        
        // Pragmas
        #pragma target 2.0
        #pragma multi_compile_instancing
        #pragma vertex vert
        #pragma fragment frag
        
        // Keywords
        #pragma shader_feature_local_fragment _ _ALPHATEST_ON
        #pragma shader_feature_local _ _USEDYNAMICCOVERTSTATICMASKF_ON
        
        #if defined(_USEDYNAMICCOVERTSTATICMASKF_ON)
            #define KEYWORD_PERMUTATION_0
        #else
            #define KEYWORD_PERMUTATION_1
        #endif
        
        
        // Defines
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define _NORMALMAP 1
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define _NORMAL_DROPOFF_TS 1
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_NORMAL
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_TANGENT
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_TEXCOORD0
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_TEXCOORD1
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_COLOR
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_POSITION_WS
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_NORMAL_WS
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_TANGENT_WS
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_TEXCOORD0
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_COLOR
        #endif
        
        #define FEATURES_GRAPH_VERTEX
        /* WARNING: $splice Could not find named fragment 'PassInstancing' */
        #define SHADERPASS SHADERPASS_DEPTHNORMALS
        
        
        // custom interpolator pre-include
        /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
        
        // Includes
        #include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
        #include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
        
        // --------------------------------------------------
        // Structs and Packing
        
        // custom interpolators pre packing
        /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
        
        struct Attributes
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionOS : POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalOS : NORMAL;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 tangentOS : TANGENT;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 uv0 : TEXCOORD0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 uv1 : TEXCOORD1;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 color : COLOR;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : INSTANCEID_SEMANTIC;
            #endif
            #endif
        };
        struct Varyings
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 positionCS : SV_POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionWS;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalWS;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 tangentWS;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 texCoord0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 color;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
            #endif
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
            #endif
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif
            #endif
        };
        struct SurfaceDescriptionInputs
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpaceNormal;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 TangentSpaceNormal;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpaceTangent;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpaceBiTangent;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpacePosition;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 AbsoluteWorldSpacePosition;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 uv0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 VertexColor;
            #endif
        };
        struct VertexDescriptionInputs
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpaceNormal;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpaceTangent;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpacePosition;
            #endif
        };
        struct PackedVaryings
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 positionCS : SV_POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 tangentWS : INTERP0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 texCoord0 : INTERP1;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 color : INTERP2;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionWS : INTERP3;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalWS : INTERP4;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
            #endif
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
            #endif
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif
            #endif
        };
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        PackedVaryings PackVaryings (Varyings input)
        {
            PackedVaryings output;
            ZERO_INITIALIZE(PackedVaryings, output);
            output.positionCS = input.positionCS;
            output.tangentWS.xyzw = input.tangentWS;
            output.texCoord0.xyzw = input.texCoord0;
            output.color.xyzw = input.color;
            output.positionWS.xyz = input.positionWS;
            output.normalWS.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif
            return output;
        }
        
        Varyings UnpackVaryings (PackedVaryings input)
        {
            Varyings output;
            output.positionCS = input.positionCS;
            output.tangentWS = input.tangentWS.xyzw;
            output.texCoord0 = input.texCoord0.xyzw;
            output.color = input.color.xyzw;
            output.positionWS = input.positionWS.xyz;
            output.normalWS = input.normalWS.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif
            return output;
        }
        #endif
        
        // --------------------------------------------------
        // Graph
        
        // Graph Properties
        CBUFFER_START(UnityPerMaterial)
        float _AlphaCutoff;
        float4 _BaseColor;
        float4 _BaseColorMap_TexelSize;
        float4 _BaseTilingOffset;
        float _BaseTriplanarThreshold;
        float4 _BaseNormalMap_TexelSize;
        float _BaseNormalScale;
        float4 _BaseMaskMap_TexelSize;
        float _BaseMetallic;
        float _BaseAORemapMin;
        float _BaseAORemapMax;
        float _BaseSmoothnessRemapMin;
        float _BaseSmoothnessRemapMax;
        float4 _CoverMaskA_TexelSize;
        float _CoverMaskPower;
        float _Cover_Amount;
        float _Cover_Amount_Grow_Speed;
        float3 _CoverDirection;
        float _Cover_Max_Angle;
        float _Cover_Min_Height;
        float _Cover_Min_Height_Blending;
        float4 _CoverBaseColor;
        float4 _CoverBaseColorMap_TexelSize;
        float4 _CoverTilingOffset;
        float _CoverTriplanarThreshold;
        float4 _CoverNormalMap_TexelSize;
        float _CoverNormalScale;
        float _CoverNormalBlendHardness;
        float _CoverHeightMapMin;
        float _CoverHeightMapMax;
        float _CoverHeightMapOffset;
        float _CoverHardness;
        float4 _CoverMaskMap_TexelSize;
        float _CoverMetallic;
        float _CoverAORemapMin;
        float _CoverAORemapMax;
        float _CoverSmoothnessRemapMin;
        float _CoverSmoothnessRemapMax;
        float4 _ShapeNormalMap_TexelSize;
        float _shapeNormalScale;
        float _CovershapeNormalScale;
        float4 _ShapeAO_TexelSize;
        float _ShapeAORemapMin;
        float _ShapeAORemapMax;
        float _CoverShapeAORemapMin;
        float _CoverShapeAORemapMax;
        float4 _DetailMap_TexelSize;
        float4 _DetailTilingOffset;
        float _DetailAlbedoScale;
        float _DetailNormalScale;
        float _DetailSmoothnessScale;
        float _DetailCoverAlbedoScale;
        float _DetailCoverNormalScale;
        float _DetailCoverSmoothnessScale;
        float _CoverMaskRCurvature;
        float _BaseBrightnessCurvMultply;
        float _BaseBrightnessCurvPower;
        float _BaseDarknessCurvMultply;
        float _BaseDarknessCurvPower;
        float _CoverBrightnessCurvMultply;
        float _CoverBrightnessCurvPower;
        float _CoverDarknessCurvMultply;
        float _CoverDarknessCurvPower;
        float4 _WetColor;
        float _WetSmoothness;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_BaseNormalMap);
        SAMPLER(sampler_BaseNormalMap);
        TEXTURE2D(_BaseMaskMap);
        SAMPLER(sampler_BaseMaskMap);
        TEXTURE2D(_CoverMaskA);
        SAMPLER(sampler_CoverMaskA);
        TEXTURE2D(_CoverBaseColorMap);
        SAMPLER(sampler_CoverBaseColorMap);
        TEXTURE2D(_CoverNormalMap);
        SAMPLER(sampler_CoverNormalMap);
        TEXTURE2D(_CoverMaskMap);
        SAMPLER(sampler_CoverMaskMap);
        TEXTURE2D(_ShapeNormalMap);
        SAMPLER(sampler_ShapeNormalMap);
        TEXTURE2D(_ShapeAO);
        SAMPLER(sampler_ShapeAO);
        TEXTURE2D(_DetailMap);
        SAMPLER(sampler_DetailMap);
        
        // Graph Includes
        #include "./NM_Object_VSPro_Indirect.cginc"
        
        // -- Property used by ScenePickingPass
        #ifdef SCENEPICKINGPASS
        float4 _SelectionID;
        #endif
        
        // -- Properties used by SceneSelectionPass
        #ifdef SCENESELECTIONPASS
        int _ObjectId;
        int _PassValue;
        #endif
        
        // Graph Functions
        
        void AddPragma_float(float3 A, out float3 Out){
        #pragma instancing_options renderinglayer procedural:setupVSPro
        Out = A;
        }
        
        struct Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float
        {
        };
        
        void SG_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float(float3 Vector3_314C8600, Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float IN, out float3 ObjectSpacePosition_1)
        {
        float3 _Property_5ec158abd968858c9d31ab40df5e9e6f_Out_0_Vector3 = Vector3_314C8600;
        float3 _InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3;
        InjectSetup_float(_Property_5ec158abd968858c9d31ab40df5e9e6f_Out_0_Vector3, _InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3);
        float3 _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3;
        AddPragma_float(_InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3, _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3);
        ObjectSpacePosition_1 = _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3;
        }
        
        void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
        {
            Out = UV * Tiling + Offset;
        }
        
        void Unity_Multiply_float2_float2(float2 A, float2 B, out float2 Out)
        {
            Out = A * B;
        }
        
        void Unity_Add_float2(float2 A, float2 B, out float2 Out)
        {
            Out = A + B;
        }
        
        void Unity_DotProduct_float2(float2 A, float2 B, out float Out)
        {
            Out = dot(A, B);
        }
        
        void Unity_Saturate_float(float In, out float Out)
        {
            Out = saturate(In);
        }
        
        void Unity_OneMinus_float(float In, out float Out)
        {
            Out = 1 - In;
        }
        
        void Unity_SquareRoot_float(float In, out float Out)
        {
            Out = sqrt(In);
        }
        
        void Unity_Divide_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A / B;
        }
        
        void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
        {
            RGBA = float4(R, G, B, A);
            RGB = float3(R, G, B);
            RG = float2(R, G);
        }
        
        void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
        {
        Out = A * B;
        }
        
        void Unity_Sign_float3(float3 In, out float3 Out)
        {
            Out = sign(In);
        }
        
        void Unity_Multiply_float_float(float A, float B, out float Out)
        {
        Out = A * B;
        }
        
        void Unity_Absolute_float3(float3 In, out float3 Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float3(float3 A, float3 B, out float3 Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Multiply_float3_float3(float3 A, float3 B, out float3 Out)
        {
        Out = A * B;
        }
        
        void Unity_Add_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A + B;
        }
        
        void Unity_Add_float(float A, float B, out float Out)
        {
            Out = A + B;
        }
        
        void Unity_Divide_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A / B;
        }
        
        void Unity_Normalize_float3(float3 In, out float3 Out)
        {
            Out = normalize(In);
        }
        
        struct Bindings_TriplanarNMn_059da9746584140498cd018db3c76047_float
        {
        float3 WorldSpaceNormal;
        float3 WorldSpaceTangent;
        float3 WorldSpaceBiTangent;
        float3 WorldSpacePosition;
        };
        
        void SG_TriplanarNMn_059da9746584140498cd018db3c76047_float(UnityTexture2D Texture2D_80A3D28F, float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNMn_059da9746584140498cd018db3c76047_float IN, out float4 XYZ_1, out float4 XZ_2, out float4 YZ_3, out float4 XY_4)
        {
        UnityTexture2D _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D = Texture2D_80A3D28F;
        float _Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float = IN.WorldSpacePosition[0];
        float _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float = IN.WorldSpacePosition[1];
        float _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float = IN.WorldSpacePosition[2];
        float _Split_89ed63cb625cb3878c183d0b71c03400_A_4_Float = 0;
        float4 _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4;
        float3 _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3;
        float2 _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, 0, 0, _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3, _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2);
        float _Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float = Vector1_41461AC9;
        float4 _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4);
        float3 _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3;
        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3);
        float _Split_6299d4ddcc4c74828aea40a46fdb896e_R_1_Float = _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3[0];
        float _Split_6299d4ddcc4c74828aea40a46fdb896e_G_2_Float = _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3[1];
        float _Split_6299d4ddcc4c74828aea40a46fdb896e_B_3_Float = _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3[2];
        float _Split_6299d4ddcc4c74828aea40a46fdb896e_A_4_Float = 0;
        float2 _Vector2_b76cb1842101e58b9e636d49b075c612_Out_0_Vector2 = float2(_Split_6299d4ddcc4c74828aea40a46fdb896e_G_2_Float, 1);
        float2 _Multiply_a87753ad90594382bf3a3a95abbadbc8_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4.xy), _Vector2_b76cb1842101e58b9e636d49b075c612_Out_0_Vector2, _Multiply_a87753ad90594382bf3a3a95abbadbc8_Out_2_Vector2);
        float4 _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_a87753ad90594382bf3a3a95abbadbc8_Out_2_Vector2) );
        _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4);
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_R_4_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.r;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_G_5_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.g;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_B_6_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.b;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_A_7_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.a;
        float2 _Vector2_ad6bd100e273d78fa409a30a77bfa2cc_Out_0_Vector2 = float2(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_R_4_Float, _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_G_5_Float);
        float2 _Multiply_31e8db88ee20c985a9850d1a58f3282b_Out_2_Vector2;
        Unity_Multiply_float2_float2(_Vector2_ad6bd100e273d78fa409a30a77bfa2cc_Out_0_Vector2, _Vector2_b76cb1842101e58b9e636d49b075c612_Out_0_Vector2, _Multiply_31e8db88ee20c985a9850d1a58f3282b_Out_2_Vector2);
        float _Split_5ed44bf2eca0868f81eb18100f49d1fa_R_1_Float = IN.WorldSpaceNormal[0];
        float _Split_5ed44bf2eca0868f81eb18100f49d1fa_G_2_Float = IN.WorldSpaceNormal[1];
        float _Split_5ed44bf2eca0868f81eb18100f49d1fa_B_3_Float = IN.WorldSpaceNormal[2];
        float _Split_5ed44bf2eca0868f81eb18100f49d1fa_A_4_Float = 0;
        float2 _Vector2_70e5837843f28b8b9d64cada3697bd5a_Out_0_Vector2 = float2(_Split_5ed44bf2eca0868f81eb18100f49d1fa_R_1_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_B_3_Float);
        float2 _Add_1145b2f896593d80aa864a34e6702562_Out_2_Vector2;
        Unity_Add_float2(_Multiply_31e8db88ee20c985a9850d1a58f3282b_Out_2_Vector2, _Vector2_70e5837843f28b8b9d64cada3697bd5a_Out_0_Vector2, _Add_1145b2f896593d80aa864a34e6702562_Out_2_Vector2);
        float _Split_2bc77ca2d17bd78cb2383770ce50b179_R_1_Float = _Add_1145b2f896593d80aa864a34e6702562_Out_2_Vector2[0];
        float _Split_2bc77ca2d17bd78cb2383770ce50b179_G_2_Float = _Add_1145b2f896593d80aa864a34e6702562_Out_2_Vector2[1];
        float _Split_2bc77ca2d17bd78cb2383770ce50b179_B_3_Float = 0;
        float _Split_2bc77ca2d17bd78cb2383770ce50b179_A_4_Float = 0;
        float _Multiply_e4fe778b81456d819c52bb414cd95968_Out_2_Float;
        Unity_Multiply_float_float(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_B_6_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_G_2_Float, _Multiply_e4fe778b81456d819c52bb414cd95968_Out_2_Float);
        float3 _Vector3_08f62c5c01619e849f1a7d85a44531ac_Out_0_Vector3 = float3(_Split_2bc77ca2d17bd78cb2383770ce50b179_R_1_Float, _Multiply_e4fe778b81456d819c52bb414cd95968_Out_2_Float, _Split_2bc77ca2d17bd78cb2383770ce50b179_G_2_Float);
        float3 _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3;
        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3);
        float _Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float = Vector1_E4D1C13A;
        float3 _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3;
        Unity_Power_float3(_Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3, (_Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float.xxx), _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3);
        float3 _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3);
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[0];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[1];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[2];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_A_4_Float = 0;
        float3 _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Vector3_08f62c5c01619e849f1a7d85a44531ac_Out_0_Vector3, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float.xxx), _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector3);
        float4 _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4;
        float3 _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3;
        float2 _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3, _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2);
        float4 _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4);
        float _Multiply_de711f4a4614bd89a463b53374cf4036_Out_2_Float;
        Unity_Multiply_float_float(_Split_6299d4ddcc4c74828aea40a46fdb896e_B_3_Float, -1, _Multiply_de711f4a4614bd89a463b53374cf4036_Out_2_Float);
        float2 _Vector2_4ed33f0c73b2698fa6f3c1b77fe76808_Out_0_Vector2 = float2(_Multiply_de711f4a4614bd89a463b53374cf4036_Out_2_Float, 1);
        float2 _Multiply_2af6058cc6ccb88caefd2799bb5941e8_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4.xy), _Vector2_4ed33f0c73b2698fa6f3c1b77fe76808_Out_0_Vector2, _Multiply_2af6058cc6ccb88caefd2799bb5941e8_Out_2_Vector2);
        float4 _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_2af6058cc6ccb88caefd2799bb5941e8_Out_2_Vector2) );
        _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4);
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_R_4_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.r;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_G_5_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.g;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_B_6_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.b;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_A_7_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.a;
        float2 _Vector2_fe9aedd4528c7486ada4abdca0b0944e_Out_0_Vector2 = float2(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_R_4_Float, _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_G_5_Float);
        float2 _Multiply_02b9b4665ad9918d8721bcaddc82f06f_Out_2_Vector2;
        Unity_Multiply_float2_float2(_Vector2_fe9aedd4528c7486ada4abdca0b0944e_Out_0_Vector2, _Vector2_4ed33f0c73b2698fa6f3c1b77fe76808_Out_0_Vector2, _Multiply_02b9b4665ad9918d8721bcaddc82f06f_Out_2_Vector2);
        float2 _Vector2_a74a85274da15181abb63cc5e8df0de1_Out_0_Vector2 = float2(_Split_5ed44bf2eca0868f81eb18100f49d1fa_R_1_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_G_2_Float);
        float2 _Add_b227c84042055e8faa1a9fdc69529707_Out_2_Vector2;
        Unity_Add_float2(_Multiply_02b9b4665ad9918d8721bcaddc82f06f_Out_2_Vector2, _Vector2_a74a85274da15181abb63cc5e8df0de1_Out_0_Vector2, _Add_b227c84042055e8faa1a9fdc69529707_Out_2_Vector2);
        float _Split_2cfb9eacd8762483941459cdf28bda97_R_1_Float = _Add_b227c84042055e8faa1a9fdc69529707_Out_2_Vector2[0];
        float _Split_2cfb9eacd8762483941459cdf28bda97_G_2_Float = _Add_b227c84042055e8faa1a9fdc69529707_Out_2_Vector2[1];
        float _Split_2cfb9eacd8762483941459cdf28bda97_B_3_Float = 0;
        float _Split_2cfb9eacd8762483941459cdf28bda97_A_4_Float = 0;
        float _Multiply_1d65ce08ce672087879125f2e13c4004_Out_2_Float;
        Unity_Multiply_float_float(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_B_6_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_B_3_Float, _Multiply_1d65ce08ce672087879125f2e13c4004_Out_2_Float);
        float3 _Vector3_ba6cfb4671e8c58f9b41ea1dc23102ca_Out_0_Vector3 = float3(_Split_2cfb9eacd8762483941459cdf28bda97_R_1_Float, _Split_2cfb9eacd8762483941459cdf28bda97_G_2_Float, _Multiply_1d65ce08ce672087879125f2e13c4004_Out_2_Float);
        float3 _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Vector3_ba6cfb4671e8c58f9b41ea1dc23102ca_Out_0_Vector3, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float.xxx), _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector3);
        float4 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4;
        float3 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3;
        float2 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2);
        float4 _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4);
        float2 _Vector2_a1e23e0f921b6484818f009a2b12a5ba_Out_0_Vector2 = float2(_Split_6299d4ddcc4c74828aea40a46fdb896e_R_1_Float, 1);
        float2 _Multiply_862402885a49f18cb87278ab53bc6744_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4.xy), _Vector2_a1e23e0f921b6484818f009a2b12a5ba_Out_0_Vector2, _Multiply_862402885a49f18cb87278ab53bc6744_Out_2_Vector2);
        float4 _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_862402885a49f18cb87278ab53bc6744_Out_2_Vector2) );
        _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4);
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_R_4_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.r;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_G_5_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.g;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_B_6_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.b;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_A_7_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.a;
        float _Multiply_4649b768be76d784a3284bacde795359_Out_2_Float;
        Unity_Multiply_float_float(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_B_6_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_R_1_Float, _Multiply_4649b768be76d784a3284bacde795359_Out_2_Float);
        float2 _Vector2_819fcd5eb484438eacad1987576d7d67_Out_0_Vector2 = float2(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_R_4_Float, _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_G_5_Float);
        float2 _Multiply_58530ebb3c6d798b93686a76247bf505_Out_2_Vector2;
        Unity_Multiply_float2_float2(_Vector2_819fcd5eb484438eacad1987576d7d67_Out_0_Vector2, _Vector2_a1e23e0f921b6484818f009a2b12a5ba_Out_0_Vector2, _Multiply_58530ebb3c6d798b93686a76247bf505_Out_2_Vector2);
        float2 _Vector2_e293c112b2f49e88a5fe46dfb1fbeb40_Out_0_Vector2 = float2(_Split_5ed44bf2eca0868f81eb18100f49d1fa_B_3_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_G_2_Float);
        float2 _Add_cf00fb232c6e2b8e973ab2f84453f55e_Out_2_Vector2;
        Unity_Add_float2(_Multiply_58530ebb3c6d798b93686a76247bf505_Out_2_Vector2, _Vector2_e293c112b2f49e88a5fe46dfb1fbeb40_Out_0_Vector2, _Add_cf00fb232c6e2b8e973ab2f84453f55e_Out_2_Vector2);
        float _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_R_1_Float = _Add_cf00fb232c6e2b8e973ab2f84453f55e_Out_2_Vector2[0];
        float _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_G_2_Float = _Add_cf00fb232c6e2b8e973ab2f84453f55e_Out_2_Vector2[1];
        float _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_B_3_Float = 0;
        float _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_A_4_Float = 0;
        float3 _Vector3_13a08d5940172a84a78ee3d9b8766833_Out_0_Vector3 = float3(_Multiply_4649b768be76d784a3284bacde795359_Out_2_Float, _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_G_2_Float, _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_R_1_Float);
        float3 _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Vector3_13a08d5940172a84a78ee3d9b8766833_Out_0_Vector3, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float.xxx), _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector3);
        float3 _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector3;
        Unity_Add_float3(_Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector3, _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector3, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector3);
        float3 _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector3;
        Unity_Add_float3(_Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector3, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector3, _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector3);
        float _Add_e59af300bba2498db32eac1412123447_Out_2_Float;
        Unity_Add_float(_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float, _Add_e59af300bba2498db32eac1412123447_Out_2_Float);
        float _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float;
        Unity_Add_float(_Add_e59af300bba2498db32eac1412123447_Out_2_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float, _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float);
        float3 _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector3;
        Unity_Divide_float3(_Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector3, (_Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float.xxx), _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector3);
        float3 _Transform_73eecc0c3689d184a34c8d0f28a58adf_Out_1_Vector3;
        {
        float3x3 tangentTransform = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
        _Transform_73eecc0c3689d184a34c8d0f28a58adf_Out_1_Vector3 = TransformWorldToTangentDir(_Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector3.xyz, tangentTransform, true);
        }
        float3 _Normalize_15ef346824db0a8797631ed8b998e673_Out_1_Vector3;
        Unity_Normalize_float3(_Transform_73eecc0c3689d184a34c8d0f28a58adf_Out_1_Vector3, _Normalize_15ef346824db0a8797631ed8b998e673_Out_1_Vector3);
        XYZ_1 = (float4(_Normalize_15ef346824db0a8797631ed8b998e673_Out_1_Vector3, 1.0));
        XZ_2 = (float4(_Vector3_08f62c5c01619e849f1a7d85a44531ac_Out_0_Vector3, 1.0));
        YZ_3 = (float4(_Vector3_ba6cfb4671e8c58f9b41ea1dc23102ca_Out_0_Vector3, 1.0));
        XY_4 = (float4(_Vector3_13a08d5940172a84a78ee3d9b8766833_Out_0_Vector3, 1.0));
        }
        
        void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
        {
            Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
        }
        
        void Unity_NormalBlend_float(float3 A, float3 B, out float3 Out)
        {
            Out = SafeNormalize(float3(A.rg + B.rg, A.b * B.b));
        }
        
        void Unity_Clamp_float(float In, float Min, float Max, out float Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Subtract_float(float A, float B, out float Out)
        {
            Out = A - B;
        }
        
        void Unity_Divide_float(float A, float B, out float Out)
        {
            Out = A / B;
        }
        
        void Unity_Absolute_float(float In, out float Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float(float A, float B, out float Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_Add_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A + B;
        }
        
        struct Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float
        {
        float3 WorldSpaceNormal;
        float3 AbsoluteWorldSpacePosition;
        };
        
        void SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(UnityTexture2D Texture2D_80A3D28F, float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float IN, out float4 XYZ_1, out float4 XZ_2, out float4 YZ_3, out float4 XY_4)
        {
        UnityTexture2D _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D = Texture2D_80A3D28F;
        float _Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
        float _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
        float _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
        float _Split_89ed63cb625cb3878c183d0b71c03400_A_4_Float = 0;
        float4 _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4;
        float3 _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3;
        float2 _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, 0, 0, _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3, _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2);
        float _Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float = Vector1_41461AC9;
        float4 _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4);
        float3 _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3;
        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3);
        float _Split_742547a7039de986a646d04c157ae549_R_1_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[0];
        float _Split_742547a7039de986a646d04c157ae549_G_2_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[1];
        float _Split_742547a7039de986a646d04c157ae549_B_3_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[2];
        float _Split_742547a7039de986a646d04c157ae549_A_4_Float = 0;
        float2 _Vector2_40a8919e571ec18499de72022c155b38_Out_0_Vector2 = float2(_Split_742547a7039de986a646d04c157ae549_G_2_Float, 1);
        float2 _Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4.xy), _Vector2_40a8919e571ec18499de72022c155b38_Out_0_Vector2, _Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2);
        float4 _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2) );
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_R_4_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.r;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_G_5_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.g;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_B_6_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.b;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_A_7_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.a;
        float3 _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3;
        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3);
        float _Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float = Vector1_E4D1C13A;
        float3 _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3;
        Unity_Power_float3(_Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3, (_Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float.xxx), _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3);
        float3 _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3);
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[0];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[1];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[2];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_A_4_Float = 0;
        float4 _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float.xxxx), _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4);
        float4 _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4;
        float3 _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3;
        float2 _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3, _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2);
        float4 _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4);
        float _Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float;
        Unity_Multiply_float_float(_Split_742547a7039de986a646d04c157ae549_B_3_Float, -1, _Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float);
        float2 _Vector2_caa25d55d456a58982bdfc39b1b43f3f_Out_0_Vector2 = float2(_Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float, 1);
        float2 _Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4.xy), _Vector2_caa25d55d456a58982bdfc39b1b43f3f_Out_0_Vector2, _Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2);
        float4 _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2) );
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_R_4_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.r;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_G_5_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.g;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_B_6_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.b;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_A_7_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.a;
        float4 _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float.xxxx), _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4);
        float4 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4;
        float3 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3;
        float2 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2);
        float4 _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4);
        float2 _Vector2_54dfd40df2fc78809955dd272f2cf0c3_Out_0_Vector2 = float2(_Split_742547a7039de986a646d04c157ae549_R_1_Float, 1);
        float2 _Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4.xy), _Vector2_54dfd40df2fc78809955dd272f2cf0c3_Out_0_Vector2, _Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2);
        float4 _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2) );
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_R_4_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.r;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_G_5_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.g;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_B_6_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.b;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_A_7_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.a;
        float4 _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float.xxxx), _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4);
        float4 _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4;
        Unity_Add_float4(_Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4, _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4);
        float4 _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4;
        Unity_Add_float4(_Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4, _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4);
        float _Add_e59af300bba2498db32eac1412123447_Out_2_Float;
        Unity_Add_float(_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float, _Add_e59af300bba2498db32eac1412123447_Out_2_Float);
        float _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float;
        Unity_Add_float(_Add_e59af300bba2498db32eac1412123447_Out_2_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float, _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float);
        float4 _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4;
        Unity_Divide_float4(_Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4, (_Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float.xxxx), _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4);
        XYZ_1 = _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4;
        XZ_2 = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4;
        YZ_3 = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4;
        XY_4 = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4;
        }
        
        void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
        {
            Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
        }
        
        // Custom interpolators pre vertex
        /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
        
        // Graph Vertex
        struct VertexDescription
        {
            float3 Position;
            float3 Normal;
            float3 Tangent;
        };
        
        VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
        {
            VertexDescription description = (VertexDescription)0;
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301;
            float3 _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3;
            SG_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float(IN.ObjectSpacePosition, _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301, _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3);
            #endif
            description.Position = _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3;
            description.Normal = IN.ObjectSpaceNormal;
            description.Tangent = IN.ObjectSpaceTangent;
            return description;
        }
        
        // Custom interpolators, pre surface
        #ifdef FEATURES_GRAPH_VERTEX
        Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
        {
        return output;
        }
        #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
        #endif
        
        // Graph Pixel
        struct SurfaceDescription
        {
            float3 NormalTS;
            float Alpha;
            float AlphaClipThreshold;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_8c38efbdc687808784e64df5f7851a74_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_DetailMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4 = _DetailTilingOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_6b7d8752798f268c8b3cb4ab5a46f73e_R_1_Float = _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4[0];
            float _Split_6b7d8752798f268c8b3cb4ab5a46f73e_G_2_Float = _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4[1];
            float _Split_6b7d8752798f268c8b3cb4ab5a46f73e_B_3_Float = _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4[2];
            float _Split_6b7d8752798f268c8b3cb4ab5a46f73e_A_4_Float = _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_6d91e5afee3d4e88ba756da4c0cbfcb2_Out_0_Vector2 = float2(_Split_6b7d8752798f268c8b3cb4ab5a46f73e_R_1_Float, _Split_6b7d8752798f268c8b3cb4ab5a46f73e_G_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_692caa48e2186d8b83435fe066df038c_Out_0_Vector2 = float2(_Split_6b7d8752798f268c8b3cb4ab5a46f73e_B_3_Float, _Split_6b7d8752798f268c8b3cb4ab5a46f73e_A_4_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _TilingAndOffset_6c4e5074c066068fbf7f993634c1cb8d_Out_3_Vector2;
            Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_6d91e5afee3d4e88ba756da4c0cbfcb2_Out_0_Vector2, _Vector2_692caa48e2186d8b83435fe066df038c_Out_0_Vector2, _TilingAndOffset_6c4e5074c066068fbf7f993634c1cb8d_Out_3_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_8c38efbdc687808784e64df5f7851a74_Out_0_Texture2D.tex, _Property_8c38efbdc687808784e64df5f7851a74_Out_0_Texture2D.samplerstate, _Property_8c38efbdc687808784e64df5f7851a74_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_6c4e5074c066068fbf7f993634c1cb8d_Out_3_Vector2) );
            float _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_R_4_Float = _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4.r;
            float _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_G_5_Float = _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4.g;
            float _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_B_6_Float = _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4.b;
            float _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_A_7_Float = _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4.a;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_ff34f3d24838f9889391530c04d6424b_Out_0_Vector2 = float2(_SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_A_7_Float, _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_G_5_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Multiply_120ef27f63ba4986acb31850d2223033_Out_2_Vector2;
            Unity_Multiply_float2_float2(_Vector2_ff34f3d24838f9889391530c04d6424b_Out_0_Vector2, float2(2, 2), _Multiply_120ef27f63ba4986acb31850d2223033_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Add_039ef572252c1f8b9ab1d9732873c6fd_Out_2_Vector2;
            Unity_Add_float2(_Multiply_120ef27f63ba4986acb31850d2223033_Out_2_Vector2, float2(-1, -1), _Add_039ef572252c1f8b9ab1d9732873c6fd_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_a4bc7e1c8f487182befa14cc923c5d7e_Out_0_Float = _DetailNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2;
            Unity_Multiply_float2_float2(_Add_039ef572252c1f8b9ab1d9732873c6fd_Out_2_Vector2, (_Property_a4bc7e1c8f487182befa14cc923c5d7e_Out_0_Float.xx), _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_817710a160cfd38f84dcd2ffe4ac9433_R_1_Float = _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2[0];
            float _Split_817710a160cfd38f84dcd2ffe4ac9433_G_2_Float = _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2[1];
            float _Split_817710a160cfd38f84dcd2ffe4ac9433_B_3_Float = 0;
            float _Split_817710a160cfd38f84dcd2ffe4ac9433_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _DotProduct_3a85ce810a5835809449d39fc0d43a7c_Out_2_Float;
            Unity_DotProduct_float2(_Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2, _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2, _DotProduct_3a85ce810a5835809449d39fc0d43a7c_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_ee7cc148f5d6c28596b254c9279b2d7c_Out_1_Float;
            Unity_Saturate_float(_DotProduct_3a85ce810a5835809449d39fc0d43a7c_Out_2_Float, _Saturate_ee7cc148f5d6c28596b254c9279b2d7c_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_81925f2879ac8985a29ea1d3496d3737_Out_1_Float;
            Unity_OneMinus_float(_Saturate_ee7cc148f5d6c28596b254c9279b2d7c_Out_1_Float, _OneMinus_81925f2879ac8985a29ea1d3496d3737_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _SquareRoot_679457140ebdbc8690be9c70d79c2c1e_Out_1_Float;
            Unity_SquareRoot_float(_OneMinus_81925f2879ac8985a29ea1d3496d3737_Out_1_Float, _SquareRoot_679457140ebdbc8690be9c70d79c2c1e_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Vector3_f1f5f90ed8452788a91000853614a735_Out_0_Vector3 = float3(_Split_817710a160cfd38f84dcd2ffe4ac9433_R_1_Float, _Split_817710a160cfd38f84dcd2ffe4ac9433_G_2_Float, _SquareRoot_679457140ebdbc8690be9c70d79c2c1e_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_bdb50713d9952086bf4040254f8555ed_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseNormalMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_72f47eee6df1cd8dbc7790612f96361f_Out_0_Vector4 = _BaseTilingOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4;
            Unity_Divide_float4(float4(1, 1, 0, 0), _Property_72f47eee6df1cd8dbc7790612f96361f_Out_0_Vector4, _Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float = _BaseTriplanarThreshold;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNMn_059da9746584140498cd018db3c76047_float _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a;
            _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a.WorldSpaceTangent = IN.WorldSpaceTangent;
            _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
            _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a.WorldSpacePosition = IN.WorldSpacePosition;
            float4 _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XYZ_1_Vector4;
            float4 _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XZ_2_Vector4;
            float4 _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_YZ_3_Vector4;
            float4 _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XY_4_Vector4;
            SG_TriplanarNMn_059da9746584140498cd018db3c76047_float(_Property_bdb50713d9952086bf4040254f8555ed_Out_0_Texture2D, (_Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4).x, _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XYZ_1_Vector4, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XZ_2_Vector4, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_YZ_3_Vector4, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_eacffd623cf35d848606835e2ba45716_Out_0_Float = _BaseNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalStrength_ec69d73d79314488b62d6a9c43da4dfe_Out_2_Vector3;
            Unity_NormalStrength_float((_TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XYZ_1_Vector4.xyz), _Property_eacffd623cf35d848606835e2ba45716_Out_0_Float, _NormalStrength_ec69d73d79314488b62d6a9c43da4dfe_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_904e20298b6e8d87823dd334eda299d8_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_ShapeNormalMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_904e20298b6e8d87823dd334eda299d8_Out_0_Texture2D.tex, _Property_904e20298b6e8d87823dd334eda299d8_Out_0_Texture2D.samplerstate, _Property_904e20298b6e8d87823dd334eda299d8_Out_0_Texture2D.GetTransformedUV(IN.uv0.xy) );
            _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4);
            float _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_R_4_Float = _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.r;
            float _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_G_5_Float = _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.g;
            float _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_B_6_Float = _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.b;
            float _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_A_7_Float = _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.a;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_c1ff82ca84d4238e8cf089d81f0b36bd_Out_0_Float = _shapeNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalStrength_44610f37afea2585a26a19d4e1f5e8ae_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.xyz), _Property_c1ff82ca84d4238e8cf089d81f0b36bd_Out_0_Float, _NormalStrength_44610f37afea2585a26a19d4e1f5e8ae_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalBlend_00b50fa0bb2ee087958824288a62541d_Out_2_Vector3;
            Unity_NormalBlend_float(_NormalStrength_ec69d73d79314488b62d6a9c43da4dfe_Out_2_Vector3, _NormalStrength_44610f37afea2585a26a19d4e1f5e8ae_Out_2_Vector3, _NormalBlend_00b50fa0bb2ee087958824288a62541d_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalBlend_a694ea2f4baada8da0978a00c2ccb417_Out_2_Vector3;
            Unity_NormalBlend_float(_Vector3_f1f5f90ed8452788a91000853614a735_Out_0_Vector3, _NormalBlend_00b50fa0bb2ee087958824288a62541d_Out_2_Vector3, _NormalBlend_a694ea2f4baada8da0978a00c2ccb417_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_97f32254bc217f89994d4619c96f8442_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_CoverNormalMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_ccec42aa79dbde8c8b90b6b19097f847_Out_0_Vector4 = _CoverTilingOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4;
            Unity_Divide_float4(float4(1, 1, 0, 0), _Property_ccec42aa79dbde8c8b90b6b19097f847_Out_0_Vector4, _Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_7e0717fa374eed86a380cfe44b28edf0_Out_0_Float = _CoverTriplanarThreshold;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNMn_059da9746584140498cd018db3c76047_float _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28;
            _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28.WorldSpaceTangent = IN.WorldSpaceTangent;
            _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
            _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28.WorldSpacePosition = IN.WorldSpacePosition;
            float4 _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XYZ_1_Vector4;
            float4 _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XZ_2_Vector4;
            float4 _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_YZ_3_Vector4;
            float4 _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XY_4_Vector4;
            SG_TriplanarNMn_059da9746584140498cd018db3c76047_float(_Property_97f32254bc217f89994d4619c96f8442_Out_0_Texture2D, (_Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4).x, _Property_7e0717fa374eed86a380cfe44b28edf0_Out_0_Float, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XYZ_1_Vector4, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XZ_2_Vector4, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_YZ_3_Vector4, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_c9f2639eb2cf2c82bf8d7326dd3c4ff2_Out_0_Float = _CoverNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalStrength_11fe288d2bd3798f94888fd2b82f09b7_Out_2_Vector3;
            Unity_NormalStrength_float((_TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XYZ_1_Vector4.xyz), _Property_c9f2639eb2cf2c82bf8d7326dd3c4ff2_Out_0_Float, _NormalStrength_11fe288d2bd3798f94888fd2b82f09b7_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_51fa8dd95f84a68e9130a8ecefb8c986_Out_0_Float = _CovershapeNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalStrength_9c8b92cfc893a386b69204d34b74152b_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.xyz), _Property_51fa8dd95f84a68e9130a8ecefb8c986_Out_0_Float, _NormalStrength_9c8b92cfc893a386b69204d34b74152b_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalBlend_8bb9d57d46ba6983962d37dcf1ba249a_Out_2_Vector3;
            Unity_NormalBlend_float(_NormalStrength_11fe288d2bd3798f94888fd2b82f09b7_Out_2_Vector3, _NormalStrength_9c8b92cfc893a386b69204d34b74152b_Out_2_Vector3, _NormalBlend_8bb9d57d46ba6983962d37dcf1ba249a_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_1f2067b251a2228e97722c53a81a0d8d_Out_0_Vector2 = float2(_SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_A_7_Float, _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_G_5_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Multiply_bca5a77fdaa6aa84ae77c3f10c5bc518_Out_2_Vector2;
            Unity_Multiply_float2_float2(_Vector2_1f2067b251a2228e97722c53a81a0d8d_Out_0_Vector2, float2(2, 2), _Multiply_bca5a77fdaa6aa84ae77c3f10c5bc518_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Add_5eee5bcf3b917e8f921582f2494d7c91_Out_2_Vector2;
            Unity_Add_float2(_Multiply_bca5a77fdaa6aa84ae77c3f10c5bc518_Out_2_Vector2, float2(-1, -1), _Add_5eee5bcf3b917e8f921582f2494d7c91_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_870958da12967689b96cd248fab52878_Out_0_Float = _DetailCoverNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Multiply_29511e56d4f95d8a8bad00f2e5c325cf_Out_2_Vector2;
            Unity_Multiply_float2_float2(_Add_5eee5bcf3b917e8f921582f2494d7c91_Out_2_Vector2, (_Property_870958da12967689b96cd248fab52878_Out_0_Float.xx), _Multiply_29511e56d4f95d8a8bad00f2e5c325cf_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_cbcfcc8c5cdae088b8698f81d170d861_R_1_Float = _Multiply_29511e56d4f95d8a8bad00f2e5c325cf_Out_2_Vector2[0];
            float _Split_cbcfcc8c5cdae088b8698f81d170d861_G_2_Float = _Multiply_29511e56d4f95d8a8bad00f2e5c325cf_Out_2_Vector2[1];
            float _Split_cbcfcc8c5cdae088b8698f81d170d861_B_3_Float = 0;
            float _Split_cbcfcc8c5cdae088b8698f81d170d861_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _DotProduct_49f574a08493ae8586b8c40e956441b4_Out_2_Float;
            Unity_DotProduct_float2(_Multiply_29511e56d4f95d8a8bad00f2e5c325cf_Out_2_Vector2, _Multiply_29511e56d4f95d8a8bad00f2e5c325cf_Out_2_Vector2, _DotProduct_49f574a08493ae8586b8c40e956441b4_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_88e2f0801d3bb88392b10d2188ae9021_Out_1_Float;
            Unity_Saturate_float(_DotProduct_49f574a08493ae8586b8c40e956441b4_Out_2_Float, _Saturate_88e2f0801d3bb88392b10d2188ae9021_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_ee53d1e20d3fb68c9d4db8e2f72ef434_Out_1_Float;
            Unity_OneMinus_float(_Saturate_88e2f0801d3bb88392b10d2188ae9021_Out_1_Float, _OneMinus_ee53d1e20d3fb68c9d4db8e2f72ef434_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _SquareRoot_7550b60d50be208c8e72b59c1ca4633d_Out_1_Float;
            Unity_SquareRoot_float(_OneMinus_ee53d1e20d3fb68c9d4db8e2f72ef434_Out_1_Float, _SquareRoot_7550b60d50be208c8e72b59c1ca4633d_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Vector3_093ec16217e61384b437e05bbaf4d9a8_Out_0_Vector3 = float3(_Split_cbcfcc8c5cdae088b8698f81d170d861_R_1_Float, _Split_cbcfcc8c5cdae088b8698f81d170d861_G_2_Float, _SquareRoot_7550b60d50be208c8e72b59c1ca4633d_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalBlend_5f10f2889281d88fa53650e7c471ad87_Out_2_Vector3;
            Unity_NormalBlend_float(_NormalBlend_8bb9d57d46ba6983962d37dcf1ba249a_Out_2_Vector3, _Vector3_093ec16217e61384b437e05bbaf4d9a8_Out_0_Vector3, _NormalBlend_5f10f2889281d88fa53650e7c471ad87_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_6bf54b76e7bec584b1f7856c6442c603_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_CoverMaskA);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _UV_71e815f5c2f7188e9df5850b0bfa07ba_Out_0_Vector4 = IN.uv0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_6bf54b76e7bec584b1f7856c6442c603_Out_0_Texture2D.tex, _Property_6bf54b76e7bec584b1f7856c6442c603_Out_0_Texture2D.samplerstate, _Property_6bf54b76e7bec584b1f7856c6442c603_Out_0_Texture2D.GetTransformedUV((_UV_71e815f5c2f7188e9df5850b0bfa07ba_Out_0_Vector4.xy)) );
            float _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_R_4_Float = _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4.r;
            float _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_G_5_Float = _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4.g;
            float _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_B_6_Float = _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4.b;
            float _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_A_7_Float = _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4.a;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_53b4f3caa35448849236e404330ffd86_Out_0_Float = _CoverMaskPower;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_04bf3e7568d5f48eb573d01235d77199_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_A_7_Float, _Property_53b4f3caa35448849236e404330ffd86_Out_0_Float, _Multiply_04bf3e7568d5f48eb573d01235d77199_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_1a91f1e3aec2228bbfb2a0736004946e_Out_3_Float;
            Unity_Clamp_float(_Multiply_04bf3e7568d5f48eb573d01235d77199_Out_2_Float, 0, 1, _Clamp_1a91f1e3aec2228bbfb2a0736004946e_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_39041ef87771e683b834dd7eca6b60aa_R_1_Float = IN.VertexColor[0];
            float _Split_39041ef87771e683b834dd7eca6b60aa_G_2_Float = IN.VertexColor[1];
            float _Split_39041ef87771e683b834dd7eca6b60aa_B_3_Float = IN.VertexColor[2];
            float _Split_39041ef87771e683b834dd7eca6b60aa_A_4_Float = IN.VertexColor[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Property_7c6ba36b7f75fd828a781ef390fe81fc_Out_0_Vector3 = _CoverDirection;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_d6c69131205a1189837880dcb3f8d3d0_Out_0_Float = _CoverNormalBlendHardness;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalStrength_9dc5b89ad68a7185bbbaed44b704eec7_Out_2_Vector3;
            Unity_NormalStrength_float((_TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XYZ_1_Vector4.xyz), _Property_d6c69131205a1189837880dcb3f8d3d0_Out_0_Float, _NormalStrength_9dc5b89ad68a7185bbbaed44b704eec7_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalBlend_782afb0f64887e8380e83132b6a5810e_Out_2_Vector3;
            Unity_NormalBlend_float(_NormalStrength_9dc5b89ad68a7185bbbaed44b704eec7_Out_2_Vector3, _NormalStrength_9c8b92cfc893a386b69204d34b74152b_Out_2_Vector3, _NormalBlend_782afb0f64887e8380e83132b6a5810e_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Property_7c6ba36b7f75fd828a781ef390fe81fc_Out_0_Vector3, IN.WorldSpaceNormal, _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_96256a8185f0568abafec3a227827546_R_1_Float = _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3[0];
            float _Split_96256a8185f0568abafec3a227827546_G_2_Float = _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3[1];
            float _Split_96256a8185f0568abafec3a227827546_B_3_Float = _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3[2];
            float _Split_96256a8185f0568abafec3a227827546_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_f5913a02d21120849228d323bef35553_Out_2_Float;
            Unity_Add_float(_Split_96256a8185f0568abafec3a227827546_R_1_Float, _Split_96256a8185f0568abafec3a227827546_G_2_Float, _Add_f5913a02d21120849228d323bef35553_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_9a058a92f487128798a7f94472c0ca30_Out_2_Float;
            Unity_Add_float(_Add_f5913a02d21120849228d323bef35553_Out_2_Float, _Split_96256a8185f0568abafec3a227827546_B_3_Float, _Add_9a058a92f487128798a7f94472c0ca30_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_da7d9b77e00889889a1cf846bbb669a5_Out_0_Float = _Cover_Amount;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_9ac7e0db72fe9d8297f925d7a8d82981_Out_0_Float = _Cover_Amount_Grow_Speed;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Subtract_0f19dd2c94f6928ba6cdfc45f693284d_Out_2_Float;
            Unity_Subtract_float(4, _Property_9ac7e0db72fe9d8297f925d7a8d82981_Out_0_Float, _Subtract_0f19dd2c94f6928ba6cdfc45f693284d_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Divide_3bef9bbb9755dc8696f8ac17007a2366_Out_2_Float;
            Unity_Divide_float(_Property_da7d9b77e00889889a1cf846bbb669a5_Out_0_Float, _Subtract_0f19dd2c94f6928ba6cdfc45f693284d_Out_2_Float, _Divide_3bef9bbb9755dc8696f8ac17007a2366_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_1fc5042ab3ae9989938f02ed525d6d1b_Out_1_Float;
            Unity_Absolute_float(_Divide_3bef9bbb9755dc8696f8ac17007a2366_Out_2_Float, _Absolute_1fc5042ab3ae9989938f02ed525d6d1b_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_7f87f809e802fe8cae930b82dfe1911c_Out_2_Float;
            Unity_Power_float(_Absolute_1fc5042ab3ae9989938f02ed525d6d1b_Out_1_Float, _Subtract_0f19dd2c94f6928ba6cdfc45f693284d_Out_2_Float, _Power_7f87f809e802fe8cae930b82dfe1911c_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float;
            Unity_Clamp_float(_Power_7f87f809e802fe8cae930b82dfe1911c_Out_2_Float, 0, 2, _Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_b9d25c21d933788b84d54f7c635149e2_Out_2_Float;
            Unity_Multiply_float_float(_Add_9a058a92f487128798a7f94472c0ca30_Out_2_Float, _Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float, _Multiply_b9d25c21d933788b84d54f7c635149e2_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_fbb647649cdbf583a108c0f8cdf6aaa0_Out_1_Float;
            Unity_Saturate_float(_Multiply_b9d25c21d933788b84d54f7c635149e2_Out_2_Float, _Saturate_fbb647649cdbf583a108c0f8cdf6aaa0_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_ee2e002d790e45849c0cbd1357a0ce4a_Out_3_Float;
            Unity_Clamp_float(_Add_9a058a92f487128798a7f94472c0ca30_Out_2_Float, 0, 0.9999, _Clamp_ee2e002d790e45849c0cbd1357a0ce4a_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_d4885ba189012a86826100355a8ee1d1_Out_0_Float = _Cover_Max_Angle;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Divide_5bd014a6111174888637d9078175ccbb_Out_2_Float;
            Unity_Divide_float(_Property_d4885ba189012a86826100355a8ee1d1_Out_0_Float, 45, _Divide_5bd014a6111174888637d9078175ccbb_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_80b741ae772c4d8191d5f26898f95578_Out_1_Float;
            Unity_OneMinus_float(_Divide_5bd014a6111174888637d9078175ccbb_Out_2_Float, _OneMinus_80b741ae772c4d8191d5f26898f95578_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Subtract_f22c892d39e02b8abe6ab26a57a62249_Out_2_Float;
            Unity_Subtract_float(_Clamp_ee2e002d790e45849c0cbd1357a0ce4a_Out_3_Float, _OneMinus_80b741ae772c4d8191d5f26898f95578_Out_1_Float, _Subtract_f22c892d39e02b8abe6ab26a57a62249_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_fdfdf3d8e65f078c9f4a01f83b01f048_Out_3_Float;
            Unity_Clamp_float(_Subtract_f22c892d39e02b8abe6ab26a57a62249_Out_2_Float, 0, 2, _Clamp_fdfdf3d8e65f078c9f4a01f83b01f048_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Divide_9c6c3a806810a3809e3c224188106363_Out_2_Float;
            Unity_Divide_float(1, _Divide_5bd014a6111174888637d9078175ccbb_Out_2_Float, _Divide_9c6c3a806810a3809e3c224188106363_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_e65088594cdcd48fa0f022fc8175c8c9_Out_2_Float;
            Unity_Multiply_float_float(_Clamp_fdfdf3d8e65f078c9f4a01f83b01f048_Out_3_Float, _Divide_9c6c3a806810a3809e3c224188106363_Out_2_Float, _Multiply_e65088594cdcd48fa0f022fc8175c8c9_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_2b394cd0bed344818ffb9eed9e5c53e1_Out_1_Float;
            Unity_Absolute_float(_Multiply_e65088594cdcd48fa0f022fc8175c8c9_Out_2_Float, _Absolute_2b394cd0bed344818ffb9eed9e5c53e1_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_cb57d5e16197578e8e8ba3400aab436b_Out_0_Float = _CoverHardness;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_21df469b2db977828d49344ca1eec030_Out_2_Float;
            Unity_Power_float(_Absolute_2b394cd0bed344818ffb9eed9e5c53e1_Out_1_Float, _Property_cb57d5e16197578e8e8ba3400aab436b_Out_0_Float, _Power_21df469b2db977828d49344ca1eec030_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_d6dc82050413eb849dfc6983ad308f63_Out_0_Float = _Cover_Min_Height;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_55ba8ae17d7e908a8c116f016933a5c4_Out_1_Float;
            Unity_OneMinus_float(_Property_d6dc82050413eb849dfc6983ad308f63_Out_0_Float, _OneMinus_55ba8ae17d7e908a8c116f016933a5c4_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_9034d1eb71e07a84aaafa21620d0ebcb_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
            float _Split_9034d1eb71e07a84aaafa21620d0ebcb_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
            float _Split_9034d1eb71e07a84aaafa21620d0ebcb_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
            float _Split_9034d1eb71e07a84aaafa21620d0ebcb_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float;
            Unity_Add_float(_OneMinus_55ba8ae17d7e908a8c116f016933a5c4_Out_1_Float, _Split_9034d1eb71e07a84aaafa21620d0ebcb_G_2_Float, _Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_e4c251a4fa894882bb13119a081a7170_Out_2_Float;
            Unity_Add_float(_Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float, 1, _Add_e4c251a4fa894882bb13119a081a7170_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_eb62a527acaafa88b6e28bfaa49893f4_Out_3_Float;
            Unity_Clamp_float(_Add_e4c251a4fa894882bb13119a081a7170_Out_2_Float, 0, 1, _Clamp_eb62a527acaafa88b6e28bfaa49893f4_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_f9094ebaecca9780b46893a792429806_Out_0_Float = _Cover_Min_Height_Blending;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_18ea921b495add86a362e3706f6c9569_Out_2_Float;
            Unity_Add_float(_Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float, _Property_f9094ebaecca9780b46893a792429806_Out_0_Float, _Add_18ea921b495add86a362e3706f6c9569_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Divide_bbf053c5aa7f6a88becd534af7ba8301_Out_2_Float;
            Unity_Divide_float(_Add_18ea921b495add86a362e3706f6c9569_Out_2_Float, _Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float, _Divide_bbf053c5aa7f6a88becd534af7ba8301_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_327fa2c4164bb68a86132da6b0e7e78f_Out_1_Float;
            Unity_OneMinus_float(_Divide_bbf053c5aa7f6a88becd534af7ba8301_Out_2_Float, _OneMinus_327fa2c4164bb68a86132da6b0e7e78f_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_ecd7b6a41e7af88fa3cbef16a3bc5b02_Out_2_Float;
            Unity_Add_float(_OneMinus_327fa2c4164bb68a86132da6b0e7e78f_Out_1_Float, -0.5, _Add_ecd7b6a41e7af88fa3cbef16a3bc5b02_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_e1620f6d6ff43682b4ad7b309118f941_Out_3_Float;
            Unity_Clamp_float(_Add_ecd7b6a41e7af88fa3cbef16a3bc5b02_Out_2_Float, 0, 1, _Clamp_e1620f6d6ff43682b4ad7b309118f941_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_5c0e00010d3f368db3787628623c361a_Out_2_Float;
            Unity_Add_float(_Clamp_eb62a527acaafa88b6e28bfaa49893f4_Out_3_Float, _Clamp_e1620f6d6ff43682b4ad7b309118f941_Out_3_Float, _Add_5c0e00010d3f368db3787628623c361a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_94e731fd5526ec8281dee0a6143f09c1_Out_3_Float;
            Unity_Clamp_float(_Add_5c0e00010d3f368db3787628623c361a_Out_2_Float, 0, 1, _Clamp_94e731fd5526ec8281dee0a6143f09c1_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_18e2801a2e62658287a6f37f74c849c5_Out_2_Float;
            Unity_Multiply_float_float(_Power_21df469b2db977828d49344ca1eec030_Out_2_Float, _Clamp_94e731fd5526ec8281dee0a6143f09c1_Out_3_Float, _Multiply_18e2801a2e62658287a6f37f74c849c5_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_b364ac6af25fa58db4da48bef2655e44_Out_2_Float;
            Unity_Multiply_float_float(_Saturate_fbb647649cdbf583a108c0f8cdf6aaa0_Out_1_Float, _Multiply_18e2801a2e62658287a6f37f74c849c5_Out_2_Float, _Multiply_b364ac6af25fa58db4da48bef2655e44_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Lerp_ce0e66ae6c014a87bf6b30846c04b2f6_Out_3_Vector3;
            Unity_Lerp_float3(_NormalBlend_a694ea2f4baada8da0978a00c2ccb417_Out_2_Vector3, _NormalBlend_782afb0f64887e8380e83132b6a5810e_Out_2_Vector3, (_Multiply_b364ac6af25fa58db4da48bef2655e44_Out_2_Float.xxx), _Lerp_ce0e66ae6c014a87bf6b30846c04b2f6_Out_3_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Transform_770d1933b55d1b84a0bd6db42f3c78c9_Out_1_Vector3;
            {
                float3x3 tangentTransform = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                _Transform_770d1933b55d1b84a0bd6db42f3c78c9_Out_1_Vector3 = TransformTangentToWorldDir(_Lerp_ce0e66ae6c014a87bf6b30846c04b2f6_Out_3_Vector3.xyz, tangentTransform, true).xyz;
            }
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Property_7c6ba36b7f75fd828a781ef390fe81fc_Out_0_Vector3, _Transform_770d1933b55d1b84a0bd6db42f3c78c9_Out_1_Vector3, _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_R_1_Float = _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3[0];
            float _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_G_2_Float = _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3[1];
            float _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_B_3_Float = _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3[2];
            float _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_edda96f9db17d38cb56cd74fad991c1b_Out_2_Float;
            Unity_Add_float(_Split_0aa1fa7994fd9383afd7d2a31b8a5c58_R_1_Float, _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_G_2_Float, _Add_edda96f9db17d38cb56cd74fad991c1b_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_f4f04e53f77faf80ace8c0f8e979843c_Out_2_Float;
            Unity_Add_float(_Add_edda96f9db17d38cb56cd74fad991c1b_Out_2_Float, _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_B_3_Float, _Add_f4f04e53f77faf80ace8c0f8e979843c_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_5a81fd82c6a81e899179cd6a617a9aec_Out_2_Float;
            Unity_Multiply_float_float(_Add_f4f04e53f77faf80ace8c0f8e979843c_Out_2_Float, _Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float, _Multiply_5a81fd82c6a81e899179cd6a617a9aec_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_e06a505285f5238a853337d02932891b_Out_2_Float;
            Unity_Multiply_float_float(_Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float, _Property_cb57d5e16197578e8e8ba3400aab436b_Out_0_Float, _Multiply_e06a505285f5238a853337d02932891b_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_088b09a855d8228bb73f1fecf4e444fd_Out_2_Float;
            Unity_Multiply_float_float(_Multiply_e06a505285f5238a853337d02932891b_Out_2_Float, _Multiply_18e2801a2e62658287a6f37f74c849c5_Out_2_Float, _Multiply_088b09a855d8228bb73f1fecf4e444fd_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_5636b2845aba9a8cae86012e0ece3ad1_Out_2_Float;
            Unity_Multiply_float_float(_Multiply_5a81fd82c6a81e899179cd6a617a9aec_Out_2_Float, _Multiply_088b09a855d8228bb73f1fecf4e444fd_Out_2_Float, _Multiply_5636b2845aba9a8cae86012e0ece3ad1_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_69f7b0977ddb53899920af6323e8d0fe_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_CoverMaskMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7;
            _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
            float4 _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4;
            float4 _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XZ_2_Vector4;
            float4 _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_YZ_3_Vector4;
            float4 _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XY_4_Vector4;
            SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(_Property_69f7b0977ddb53899920af6323e8d0fe_Out_0_Texture2D, (_Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4).x, _Property_7e0717fa374eed86a380cfe44b28edf0_Out_0_Float, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XZ_2_Vector4, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_YZ_3_Vector4, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_e4be19cd1f232a808ae6fe9f9259cd4e_R_1_Float = _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4[0];
            float _Split_e4be19cd1f232a808ae6fe9f9259cd4e_G_2_Float = _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4[1];
            float _Split_e4be19cd1f232a808ae6fe9f9259cd4e_B_3_Float = _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4[2];
            float _Split_e4be19cd1f232a808ae6fe9f9259cd4e_A_4_Float = _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_48f133c0cba9a8819633d2d3b23b260c_Out_0_Float = _CoverHeightMapMin;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_739d4be9d8e77c85a5db4914565db091_Out_0_Float = _CoverHeightMapMax;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_a40393428558cd879a301cba41adb10c_Out_0_Vector2 = float2(_Property_48f133c0cba9a8819633d2d3b23b260c_Out_0_Float, _Property_739d4be9d8e77c85a5db4914565db091_Out_0_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_895edb6e4c6a818eb2e6568e3d0027ee_Out_0_Float = _CoverHeightMapOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Add_5fe0b993c875028f97cc5b6530321a12_Out_2_Vector2;
            Unity_Add_float2(_Vector2_a40393428558cd879a301cba41adb10c_Out_0_Vector2, (_Property_895edb6e4c6a818eb2e6568e3d0027ee_Out_0_Float.xx), _Add_5fe0b993c875028f97cc5b6530321a12_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Remap_6cd0f9512cc2918594d1639bafc06c6c_Out_3_Float;
            Unity_Remap_float(_Split_e4be19cd1f232a808ae6fe9f9259cd4e_B_3_Float, float2 (0, 1), _Add_5fe0b993c875028f97cc5b6530321a12_Out_2_Vector2, _Remap_6cd0f9512cc2918594d1639bafc06c6c_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_786d36b14fbdef808dd9ac0bb660bdf9_Out_2_Float;
            Unity_Multiply_float_float(_Multiply_5636b2845aba9a8cae86012e0ece3ad1_Out_2_Float, _Remap_6cd0f9512cc2918594d1639bafc06c6c_Out_3_Float, _Multiply_786d36b14fbdef808dd9ac0bb660bdf9_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_1112e16c39010a8faf99d2d7fde4e1b7_Out_2_Float;
            Unity_Multiply_float_float(_Split_39041ef87771e683b834dd7eca6b60aa_G_2_Float, _Multiply_786d36b14fbdef808dd9ac0bb660bdf9_Out_2_Float, _Multiply_1112e16c39010a8faf99d2d7fde4e1b7_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_76a165b3be307289a7e59c5b70b05c89_Out_1_Float;
            Unity_Saturate_float(_Multiply_1112e16c39010a8faf99d2d7fde4e1b7_Out_2_Float, _Saturate_76a165b3be307289a7e59c5b70b05c89_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_fa29688e7d617f8690fad410f7cb077a_Out_2_Float;
            Unity_Multiply_float_float(_Clamp_1a91f1e3aec2228bbfb2a0736004946e_Out_3_Float, _Saturate_76a165b3be307289a7e59c5b70b05c89_Out_1_Float, _Multiply_fa29688e7d617f8690fad410f7cb077a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #if defined(_USEDYNAMICCOVERTSTATICMASKF_ON)
            float _UseDynamicCoverTStaticMaskF_965d575a85d3a285888696251619b92a_Out_0_Float = _Multiply_fa29688e7d617f8690fad410f7cb077a_Out_2_Float;
            #else
            float _UseDynamicCoverTStaticMaskF_965d575a85d3a285888696251619b92a_Out_0_Float = _Clamp_1a91f1e3aec2228bbfb2a0736004946e_Out_3_Float;
            #endif
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Lerp_850434193793408fadaa26fc92231b75_Out_3_Vector3;
            Unity_Lerp_float3(_NormalBlend_a694ea2f4baada8da0978a00c2ccb417_Out_2_Vector3, _NormalBlend_5f10f2889281d88fa53650e7c471ad87_Out_2_Vector3, (_UseDynamicCoverTStaticMaskF_965d575a85d3a285888696251619b92a_Out_0_Float.xxx), _Lerp_850434193793408fadaa26fc92231b75_Out_3_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_6c17ebaaa33d938990da19e6860d987c_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e;
            _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XZ_2_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_YZ_3_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XY_4_Vector4;
            SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(_Property_6c17ebaaa33d938990da19e6860d987c_Out_0_Texture2D, (_Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4).x, _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XZ_2_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_YZ_3_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_R_1_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[0];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_G_2_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[1];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_B_3_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[2];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_A_4_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_532ef6f6b0f1be8b91821eb9e0f91998_Out_0_Float = _AlphaCutoff;
            #endif
            surface.NormalTS = _Lerp_850434193793408fadaa26fc92231b75_Out_3_Vector3;
            surface.Alpha = _Split_6a301da40f6f1d8d8b206a60cb2c2a22_A_4_Float;
            surface.AlphaClipThreshold = _Property_532ef6f6b0f1be8b91821eb9e0f91998_Out_0_Float;
            return surface;
        }
        
        // --------------------------------------------------
        // Build Graph Inputs
        #ifdef HAVE_VFX_MODIFICATION
        #define VFX_SRP_ATTRIBUTES Attributes
        #define VFX_SRP_VARYINGS Varyings
        #define VFX_SRP_SURFACE_INPUTS SurfaceDescriptionInputs
        #endif
        VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpaceNormal =                          input.normalOS;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpaceTangent =                         input.tangentOS.xyz;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpacePosition =                        input.positionOS;
        #endif
        
        
            return output;
        }
        SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
        #ifdef HAVE_VFX_MODIFICATION
        #if VFX_USE_GRAPH_VALUES
            uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
            /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
        #endif
            /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
        
        #endif
        
            
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // must use interpolated tangent, bitangent and normal before they are normalized in the pixel shader.
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        float3 unnormalizedNormalWS = input.normalWS;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        const float renormFactor = 1.0 / length(unnormalizedNormalWS);
        #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // use bitangent on the fly like in hdrp
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // IMPORTANT! If we ever support Flip on double sided materials ensure bitangent and tangent are NOT flipped.
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        float crossSign = (input.tangentWS.w > 0.0 ? 1.0 : -1.0)* GetOddNegativeScale();
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        float3 bitang = crossSign * cross(input.normalWS.xyz, input.tangentWS.xyz);
        #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpaceNormal = renormFactor * input.normalWS.xyz;      // we want a unit length Normal Vector node in shader graph
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.TangentSpaceNormal = float3(0.0f, 0.0f, 1.0f);
        #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // to pr               eserve mikktspace compliance we use same scale renormFactor as was used on the normal.
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // This                is explained in section 2.2 in "surface gradient based bump mapping framework"
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpaceTangent = renormFactor * input.tangentWS.xyz;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpaceBiTangent = renormFactor * bitang;
        #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpacePosition = input.positionWS;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.AbsoluteWorldSpacePosition = GetAbsolutePositionWS(input.positionWS);
        #endif
        
        
            #if UNITY_UV_STARTS_AT_TOP
            #else
            #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.uv0 = input.texCoord0;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.VertexColor = input.color;
        #endif
        
        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
        #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
        #else
        #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
        #endif
        #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
        
                return output;
        }
        
        // --------------------------------------------------
        // Main
        
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/DepthNormalsOnlyPass.hlsl"
        
        // --------------------------------------------------
        // Visual Effect Vertex Invocations
        #ifdef HAVE_VFX_MODIFICATION
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
        #endif
        
        ENDHLSL
        }
        Pass
        {
            Name "Meta"
            Tags
            {
                "LightMode" = "Meta"
            }
        
        // Render State
        Cull Off
        
        // Debug
        // <None>
        
        // --------------------------------------------------
        // Pass
        
        HLSLPROGRAM
        
        // Pragmas
        #pragma target 2.0
        #pragma vertex vert
        #pragma fragment frag
        
        // Keywords
        #pragma shader_feature _ EDITOR_VISUALIZATION
        #pragma shader_feature_local_fragment _ _ALPHATEST_ON
        #pragma shader_feature_local _ _USEDYNAMICCOVERTSTATICMASKF_ON
        
        #if defined(_USEDYNAMICCOVERTSTATICMASKF_ON)
            #define KEYWORD_PERMUTATION_0
        #else
            #define KEYWORD_PERMUTATION_1
        #endif
        
        
        // Defines
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define _NORMALMAP 1
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define _NORMAL_DROPOFF_TS 1
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_NORMAL
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_TANGENT
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_TEXCOORD0
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_TEXCOORD1
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_TEXCOORD2
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_COLOR
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_POSITION_WS
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_NORMAL_WS
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_TANGENT_WS
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_TEXCOORD0
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_TEXCOORD1
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_TEXCOORD2
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_COLOR
        #endif
        
        #define FEATURES_GRAPH_VERTEX
        /* WARNING: $splice Could not find named fragment 'PassInstancing' */
        #define SHADERPASS SHADERPASS_META
        #define _FOG_FRAGMENT 1
        
        
        // custom interpolator pre-include
        /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
        
        // Includes
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/MetaInput.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
        
        // --------------------------------------------------
        // Structs and Packing
        
        // custom interpolators pre packing
        /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
        
        struct Attributes
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionOS : POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalOS : NORMAL;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 tangentOS : TANGENT;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 uv0 : TEXCOORD0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 uv1 : TEXCOORD1;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 uv2 : TEXCOORD2;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 color : COLOR;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : INSTANCEID_SEMANTIC;
            #endif
            #endif
        };
        struct Varyings
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 positionCS : SV_POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionWS;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalWS;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 tangentWS;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 texCoord0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 texCoord1;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 texCoord2;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 color;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
            #endif
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
            #endif
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif
            #endif
        };
        struct SurfaceDescriptionInputs
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpaceNormal;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpaceTangent;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpaceBiTangent;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpacePosition;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 AbsoluteWorldSpacePosition;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 uv0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 VertexColor;
            #endif
        };
        struct VertexDescriptionInputs
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpaceNormal;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpaceTangent;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpacePosition;
            #endif
        };
        struct PackedVaryings
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 positionCS : SV_POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 tangentWS : INTERP0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 texCoord0 : INTERP1;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 texCoord1 : INTERP2;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 texCoord2 : INTERP3;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 color : INTERP4;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionWS : INTERP5;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalWS : INTERP6;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
            #endif
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
            #endif
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif
            #endif
        };
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        PackedVaryings PackVaryings (Varyings input)
        {
            PackedVaryings output;
            ZERO_INITIALIZE(PackedVaryings, output);
            output.positionCS = input.positionCS;
            output.tangentWS.xyzw = input.tangentWS;
            output.texCoord0.xyzw = input.texCoord0;
            output.texCoord1.xyzw = input.texCoord1;
            output.texCoord2.xyzw = input.texCoord2;
            output.color.xyzw = input.color;
            output.positionWS.xyz = input.positionWS;
            output.normalWS.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif
            return output;
        }
        
        Varyings UnpackVaryings (PackedVaryings input)
        {
            Varyings output;
            output.positionCS = input.positionCS;
            output.tangentWS = input.tangentWS.xyzw;
            output.texCoord0 = input.texCoord0.xyzw;
            output.texCoord1 = input.texCoord1.xyzw;
            output.texCoord2 = input.texCoord2.xyzw;
            output.color = input.color.xyzw;
            output.positionWS = input.positionWS.xyz;
            output.normalWS = input.normalWS.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif
            return output;
        }
        #endif
        
        // --------------------------------------------------
        // Graph
        
        // Graph Properties
        CBUFFER_START(UnityPerMaterial)
        float _AlphaCutoff;
        float4 _BaseColor;
        float4 _BaseColorMap_TexelSize;
        float4 _BaseTilingOffset;
        float _BaseTriplanarThreshold;
        float4 _BaseNormalMap_TexelSize;
        float _BaseNormalScale;
        float4 _BaseMaskMap_TexelSize;
        float _BaseMetallic;
        float _BaseAORemapMin;
        float _BaseAORemapMax;
        float _BaseSmoothnessRemapMin;
        float _BaseSmoothnessRemapMax;
        float4 _CoverMaskA_TexelSize;
        float _CoverMaskPower;
        float _Cover_Amount;
        float _Cover_Amount_Grow_Speed;
        float3 _CoverDirection;
        float _Cover_Max_Angle;
        float _Cover_Min_Height;
        float _Cover_Min_Height_Blending;
        float4 _CoverBaseColor;
        float4 _CoverBaseColorMap_TexelSize;
        float4 _CoverTilingOffset;
        float _CoverTriplanarThreshold;
        float4 _CoverNormalMap_TexelSize;
        float _CoverNormalScale;
        float _CoverNormalBlendHardness;
        float _CoverHeightMapMin;
        float _CoverHeightMapMax;
        float _CoverHeightMapOffset;
        float _CoverHardness;
        float4 _CoverMaskMap_TexelSize;
        float _CoverMetallic;
        float _CoverAORemapMin;
        float _CoverAORemapMax;
        float _CoverSmoothnessRemapMin;
        float _CoverSmoothnessRemapMax;
        float4 _ShapeNormalMap_TexelSize;
        float _shapeNormalScale;
        float _CovershapeNormalScale;
        float4 _ShapeAO_TexelSize;
        float _ShapeAORemapMin;
        float _ShapeAORemapMax;
        float _CoverShapeAORemapMin;
        float _CoverShapeAORemapMax;
        float4 _DetailMap_TexelSize;
        float4 _DetailTilingOffset;
        float _DetailAlbedoScale;
        float _DetailNormalScale;
        float _DetailSmoothnessScale;
        float _DetailCoverAlbedoScale;
        float _DetailCoverNormalScale;
        float _DetailCoverSmoothnessScale;
        float _CoverMaskRCurvature;
        float _BaseBrightnessCurvMultply;
        float _BaseBrightnessCurvPower;
        float _BaseDarknessCurvMultply;
        float _BaseDarknessCurvPower;
        float _CoverBrightnessCurvMultply;
        float _CoverBrightnessCurvPower;
        float _CoverDarknessCurvMultply;
        float _CoverDarknessCurvPower;
        float4 _WetColor;
        float _WetSmoothness;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_BaseNormalMap);
        SAMPLER(sampler_BaseNormalMap);
        TEXTURE2D(_BaseMaskMap);
        SAMPLER(sampler_BaseMaskMap);
        TEXTURE2D(_CoverMaskA);
        SAMPLER(sampler_CoverMaskA);
        TEXTURE2D(_CoverBaseColorMap);
        SAMPLER(sampler_CoverBaseColorMap);
        TEXTURE2D(_CoverNormalMap);
        SAMPLER(sampler_CoverNormalMap);
        TEXTURE2D(_CoverMaskMap);
        SAMPLER(sampler_CoverMaskMap);
        TEXTURE2D(_ShapeNormalMap);
        SAMPLER(sampler_ShapeNormalMap);
        TEXTURE2D(_ShapeAO);
        SAMPLER(sampler_ShapeAO);
        TEXTURE2D(_DetailMap);
        SAMPLER(sampler_DetailMap);
        
        // Graph Includes
        #include "./NM_Object_VSPro_Indirect.cginc"
        
        // -- Property used by ScenePickingPass
        #ifdef SCENEPICKINGPASS
        float4 _SelectionID;
        #endif
        
        // -- Properties used by SceneSelectionPass
        #ifdef SCENESELECTIONPASS
        int _ObjectId;
        int _PassValue;
        #endif
        
        // Graph Functions
        
        void AddPragma_float(float3 A, out float3 Out){
        #pragma instancing_options renderinglayer procedural:setupVSPro
        Out = A;
        }
        
        struct Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float
        {
        };
        
        void SG_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float(float3 Vector3_314C8600, Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float IN, out float3 ObjectSpacePosition_1)
        {
        float3 _Property_5ec158abd968858c9d31ab40df5e9e6f_Out_0_Vector3 = Vector3_314C8600;
        float3 _InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3;
        InjectSetup_float(_Property_5ec158abd968858c9d31ab40df5e9e6f_Out_0_Vector3, _InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3);
        float3 _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3;
        AddPragma_float(_InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3, _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3);
        ObjectSpacePosition_1 = _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3;
        }
        
        void Unity_Divide_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A / B;
        }
        
        void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
        {
            RGBA = float4(R, G, B, A);
            RGB = float3(R, G, B);
            RG = float2(R, G);
        }
        
        void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
        {
        Out = A * B;
        }
        
        void Unity_Sign_float3(float3 In, out float3 Out)
        {
            Out = sign(In);
        }
        
        void Unity_Multiply_float2_float2(float2 A, float2 B, out float2 Out)
        {
        Out = A * B;
        }
        
        void Unity_Absolute_float3(float3 In, out float3 Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float3(float3 A, float3 B, out float3 Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Multiply_float3_float3(float3 A, float3 B, out float3 Out)
        {
        Out = A * B;
        }
        
        void Unity_Multiply_float_float(float A, float B, out float Out)
        {
        Out = A * B;
        }
        
        void Unity_Add_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A + B;
        }
        
        void Unity_Add_float(float A, float B, out float Out)
        {
            Out = A + B;
        }
        
        struct Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float
        {
        float3 WorldSpaceNormal;
        float3 AbsoluteWorldSpacePosition;
        };
        
        void SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(UnityTexture2D Texture2D_80A3D28F, float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float IN, out float4 XYZ_1, out float4 XZ_2, out float4 YZ_3, out float4 XY_4)
        {
        UnityTexture2D _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D = Texture2D_80A3D28F;
        float _Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
        float _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
        float _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
        float _Split_89ed63cb625cb3878c183d0b71c03400_A_4_Float = 0;
        float4 _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4;
        float3 _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3;
        float2 _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, 0, 0, _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3, _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2);
        float _Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float = Vector1_41461AC9;
        float4 _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4);
        float3 _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3;
        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3);
        float _Split_742547a7039de986a646d04c157ae549_R_1_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[0];
        float _Split_742547a7039de986a646d04c157ae549_G_2_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[1];
        float _Split_742547a7039de986a646d04c157ae549_B_3_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[2];
        float _Split_742547a7039de986a646d04c157ae549_A_4_Float = 0;
        float2 _Vector2_40a8919e571ec18499de72022c155b38_Out_0_Vector2 = float2(_Split_742547a7039de986a646d04c157ae549_G_2_Float, 1);
        float2 _Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4.xy), _Vector2_40a8919e571ec18499de72022c155b38_Out_0_Vector2, _Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2);
        float4 _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2) );
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_R_4_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.r;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_G_5_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.g;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_B_6_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.b;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_A_7_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.a;
        float3 _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3;
        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3);
        float _Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float = Vector1_E4D1C13A;
        float3 _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3;
        Unity_Power_float3(_Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3, (_Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float.xxx), _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3);
        float3 _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3);
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[0];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[1];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[2];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_A_4_Float = 0;
        float4 _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float.xxxx), _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4);
        float4 _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4;
        float3 _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3;
        float2 _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3, _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2);
        float4 _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4);
        float _Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float;
        Unity_Multiply_float_float(_Split_742547a7039de986a646d04c157ae549_B_3_Float, -1, _Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float);
        float2 _Vector2_caa25d55d456a58982bdfc39b1b43f3f_Out_0_Vector2 = float2(_Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float, 1);
        float2 _Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4.xy), _Vector2_caa25d55d456a58982bdfc39b1b43f3f_Out_0_Vector2, _Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2);
        float4 _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2) );
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_R_4_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.r;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_G_5_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.g;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_B_6_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.b;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_A_7_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.a;
        float4 _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float.xxxx), _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4);
        float4 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4;
        float3 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3;
        float2 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2);
        float4 _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4);
        float2 _Vector2_54dfd40df2fc78809955dd272f2cf0c3_Out_0_Vector2 = float2(_Split_742547a7039de986a646d04c157ae549_R_1_Float, 1);
        float2 _Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4.xy), _Vector2_54dfd40df2fc78809955dd272f2cf0c3_Out_0_Vector2, _Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2);
        float4 _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2) );
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_R_4_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.r;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_G_5_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.g;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_B_6_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.b;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_A_7_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.a;
        float4 _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float.xxxx), _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4);
        float4 _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4;
        Unity_Add_float4(_Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4, _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4);
        float4 _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4;
        Unity_Add_float4(_Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4, _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4);
        float _Add_e59af300bba2498db32eac1412123447_Out_2_Float;
        Unity_Add_float(_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float, _Add_e59af300bba2498db32eac1412123447_Out_2_Float);
        float _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float;
        Unity_Add_float(_Add_e59af300bba2498db32eac1412123447_Out_2_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float, _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float);
        float4 _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4;
        Unity_Divide_float4(_Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4, (_Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float.xxxx), _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4);
        XYZ_1 = _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4;
        XZ_2 = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4;
        YZ_3 = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4;
        XY_4 = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4;
        }
        
        void Unity_Clamp_float(float In, float Min, float Max, out float Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Absolute_float(float In, out float Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float(float A, float B, out float Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Clamp_float4(float4 In, float4 Min, float4 Max, out float4 Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Branch_float4(float Predicate, float4 True, float4 False, out float4 Out)
        {
            Out = Predicate ? True : False;
        }
        
        void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
        {
            Out = UV * Tiling + Offset;
        }
        
        void Unity_Saturate_float(float In, out float Out)
        {
            Out = saturate(In);
        }
        
        void Unity_SquareRoot_float4(float4 In, out float4 Out)
        {
            Out = sqrt(In);
        }
        
        void Unity_Sign_float(float In, out float Out)
        {
            Out = sign(In);
        }
        
        void Unity_Ceiling_float(float In, out float Out)
        {
            Out = ceil(In);
        }
        
        void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
        {
            Out = lerp(A, B, T);
        }
        
        struct Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float
        {
        };
        
        void SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float(float4 Color_9AA111D3, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float IN, out float3 OutVector4_1)
        {
        float4 _Property_012510d774fb7f8b860f5270dca4500f_Out_0_Vector4 = Color_9AA111D3;
        float4 _SquareRoot_c2c57d0223a9538aa9240890c3cacb0c_Out_1_Vector4;
        Unity_SquareRoot_float4(_Property_012510d774fb7f8b860f5270dca4500f_Out_0_Vector4, _SquareRoot_c2c57d0223a9538aa9240890c3cacb0c_Out_1_Vector4);
        float _Property_a00e29241d12f983b30177515b367ec9_Out_0_Float = Vector1_FBE622A2;
        float _Sign_343a45ede7349283a681c6bd9998fd8e_Out_1_Float;
        Unity_Sign_float(_Property_a00e29241d12f983b30177515b367ec9_Out_0_Float, _Sign_343a45ede7349283a681c6bd9998fd8e_Out_1_Float);
        float _Add_681019b8f5d3d68bb482d419c9fc61a9_Out_2_Float;
        Unity_Add_float(_Sign_343a45ede7349283a681c6bd9998fd8e_Out_1_Float, 1, _Add_681019b8f5d3d68bb482d419c9fc61a9_Out_2_Float);
        float _Multiply_e8f4cb722712a880ac0db6c7461427f7_Out_2_Float;
        Unity_Multiply_float_float(_Add_681019b8f5d3d68bb482d419c9fc61a9_Out_2_Float, 0.5, _Multiply_e8f4cb722712a880ac0db6c7461427f7_Out_2_Float);
        float _Ceiling_95ad15988aa9b98184875fa754feae01_Out_1_Float;
        Unity_Ceiling_float(_Multiply_e8f4cb722712a880ac0db6c7461427f7_Out_2_Float, _Ceiling_95ad15988aa9b98184875fa754feae01_Out_1_Float);
        float _Property_2db1c747a05ee284a8b00076062f91a4_Out_0_Float = Vector1_8C15C351;
        float _Multiply_9564ecda5193bc8286d9ff771c9226cd_Out_2_Float;
        Unity_Multiply_float_float(_Property_2db1c747a05ee284a8b00076062f91a4_Out_0_Float, _Property_2db1c747a05ee284a8b00076062f91a4_Out_0_Float, _Multiply_9564ecda5193bc8286d9ff771c9226cd_Out_2_Float);
        float4 _Lerp_b3cdb01fc3c5b988ac9b184943bf7c01_Out_3_Vector4;
        Unity_Lerp_float4(_SquareRoot_c2c57d0223a9538aa9240890c3cacb0c_Out_1_Vector4, (_Ceiling_95ad15988aa9b98184875fa754feae01_Out_1_Float.xxxx), (_Multiply_9564ecda5193bc8286d9ff771c9226cd_Out_2_Float.xxxx), _Lerp_b3cdb01fc3c5b988ac9b184943bf7c01_Out_3_Vector4);
        float4 _Multiply_39d1daff98488f8ea2cd794ad4f20926_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Lerp_b3cdb01fc3c5b988ac9b184943bf7c01_Out_3_Vector4, _Lerp_b3cdb01fc3c5b988ac9b184943bf7c01_Out_3_Vector4, _Multiply_39d1daff98488f8ea2cd794ad4f20926_Out_2_Vector4);
        OutVector4_1 = (_Multiply_39d1daff98488f8ea2cd794ad4f20926_Out_2_Vector4.xyz);
        }
        
        void Unity_Add_float2(float2 A, float2 B, out float2 Out)
        {
            Out = A + B;
        }
        
        void Unity_DotProduct_float2(float2 A, float2 B, out float Out)
        {
            Out = dot(A, B);
        }
        
        void Unity_OneMinus_float(float In, out float Out)
        {
            Out = 1 - In;
        }
        
        void Unity_SquareRoot_float(float In, out float Out)
        {
            Out = sqrt(In);
        }
        
        void Unity_Add_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A + B;
        }
        
        void Unity_Divide_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A / B;
        }
        
        void Unity_Normalize_float3(float3 In, out float3 Out)
        {
            Out = normalize(In);
        }
        
        struct Bindings_TriplanarNMn_059da9746584140498cd018db3c76047_float
        {
        float3 WorldSpaceNormal;
        float3 WorldSpaceTangent;
        float3 WorldSpaceBiTangent;
        float3 WorldSpacePosition;
        };
        
        void SG_TriplanarNMn_059da9746584140498cd018db3c76047_float(UnityTexture2D Texture2D_80A3D28F, float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNMn_059da9746584140498cd018db3c76047_float IN, out float4 XYZ_1, out float4 XZ_2, out float4 YZ_3, out float4 XY_4)
        {
        UnityTexture2D _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D = Texture2D_80A3D28F;
        float _Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float = IN.WorldSpacePosition[0];
        float _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float = IN.WorldSpacePosition[1];
        float _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float = IN.WorldSpacePosition[2];
        float _Split_89ed63cb625cb3878c183d0b71c03400_A_4_Float = 0;
        float4 _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4;
        float3 _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3;
        float2 _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, 0, 0, _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3, _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2);
        float _Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float = Vector1_41461AC9;
        float4 _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4);
        float3 _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3;
        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3);
        float _Split_6299d4ddcc4c74828aea40a46fdb896e_R_1_Float = _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3[0];
        float _Split_6299d4ddcc4c74828aea40a46fdb896e_G_2_Float = _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3[1];
        float _Split_6299d4ddcc4c74828aea40a46fdb896e_B_3_Float = _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3[2];
        float _Split_6299d4ddcc4c74828aea40a46fdb896e_A_4_Float = 0;
        float2 _Vector2_b76cb1842101e58b9e636d49b075c612_Out_0_Vector2 = float2(_Split_6299d4ddcc4c74828aea40a46fdb896e_G_2_Float, 1);
        float2 _Multiply_a87753ad90594382bf3a3a95abbadbc8_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4.xy), _Vector2_b76cb1842101e58b9e636d49b075c612_Out_0_Vector2, _Multiply_a87753ad90594382bf3a3a95abbadbc8_Out_2_Vector2);
        float4 _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_a87753ad90594382bf3a3a95abbadbc8_Out_2_Vector2) );
        _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4);
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_R_4_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.r;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_G_5_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.g;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_B_6_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.b;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_A_7_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.a;
        float2 _Vector2_ad6bd100e273d78fa409a30a77bfa2cc_Out_0_Vector2 = float2(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_R_4_Float, _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_G_5_Float);
        float2 _Multiply_31e8db88ee20c985a9850d1a58f3282b_Out_2_Vector2;
        Unity_Multiply_float2_float2(_Vector2_ad6bd100e273d78fa409a30a77bfa2cc_Out_0_Vector2, _Vector2_b76cb1842101e58b9e636d49b075c612_Out_0_Vector2, _Multiply_31e8db88ee20c985a9850d1a58f3282b_Out_2_Vector2);
        float _Split_5ed44bf2eca0868f81eb18100f49d1fa_R_1_Float = IN.WorldSpaceNormal[0];
        float _Split_5ed44bf2eca0868f81eb18100f49d1fa_G_2_Float = IN.WorldSpaceNormal[1];
        float _Split_5ed44bf2eca0868f81eb18100f49d1fa_B_3_Float = IN.WorldSpaceNormal[2];
        float _Split_5ed44bf2eca0868f81eb18100f49d1fa_A_4_Float = 0;
        float2 _Vector2_70e5837843f28b8b9d64cada3697bd5a_Out_0_Vector2 = float2(_Split_5ed44bf2eca0868f81eb18100f49d1fa_R_1_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_B_3_Float);
        float2 _Add_1145b2f896593d80aa864a34e6702562_Out_2_Vector2;
        Unity_Add_float2(_Multiply_31e8db88ee20c985a9850d1a58f3282b_Out_2_Vector2, _Vector2_70e5837843f28b8b9d64cada3697bd5a_Out_0_Vector2, _Add_1145b2f896593d80aa864a34e6702562_Out_2_Vector2);
        float _Split_2bc77ca2d17bd78cb2383770ce50b179_R_1_Float = _Add_1145b2f896593d80aa864a34e6702562_Out_2_Vector2[0];
        float _Split_2bc77ca2d17bd78cb2383770ce50b179_G_2_Float = _Add_1145b2f896593d80aa864a34e6702562_Out_2_Vector2[1];
        float _Split_2bc77ca2d17bd78cb2383770ce50b179_B_3_Float = 0;
        float _Split_2bc77ca2d17bd78cb2383770ce50b179_A_4_Float = 0;
        float _Multiply_e4fe778b81456d819c52bb414cd95968_Out_2_Float;
        Unity_Multiply_float_float(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_B_6_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_G_2_Float, _Multiply_e4fe778b81456d819c52bb414cd95968_Out_2_Float);
        float3 _Vector3_08f62c5c01619e849f1a7d85a44531ac_Out_0_Vector3 = float3(_Split_2bc77ca2d17bd78cb2383770ce50b179_R_1_Float, _Multiply_e4fe778b81456d819c52bb414cd95968_Out_2_Float, _Split_2bc77ca2d17bd78cb2383770ce50b179_G_2_Float);
        float3 _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3;
        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3);
        float _Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float = Vector1_E4D1C13A;
        float3 _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3;
        Unity_Power_float3(_Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3, (_Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float.xxx), _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3);
        float3 _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3);
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[0];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[1];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[2];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_A_4_Float = 0;
        float3 _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Vector3_08f62c5c01619e849f1a7d85a44531ac_Out_0_Vector3, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float.xxx), _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector3);
        float4 _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4;
        float3 _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3;
        float2 _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3, _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2);
        float4 _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4);
        float _Multiply_de711f4a4614bd89a463b53374cf4036_Out_2_Float;
        Unity_Multiply_float_float(_Split_6299d4ddcc4c74828aea40a46fdb896e_B_3_Float, -1, _Multiply_de711f4a4614bd89a463b53374cf4036_Out_2_Float);
        float2 _Vector2_4ed33f0c73b2698fa6f3c1b77fe76808_Out_0_Vector2 = float2(_Multiply_de711f4a4614bd89a463b53374cf4036_Out_2_Float, 1);
        float2 _Multiply_2af6058cc6ccb88caefd2799bb5941e8_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4.xy), _Vector2_4ed33f0c73b2698fa6f3c1b77fe76808_Out_0_Vector2, _Multiply_2af6058cc6ccb88caefd2799bb5941e8_Out_2_Vector2);
        float4 _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_2af6058cc6ccb88caefd2799bb5941e8_Out_2_Vector2) );
        _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4);
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_R_4_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.r;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_G_5_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.g;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_B_6_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.b;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_A_7_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.a;
        float2 _Vector2_fe9aedd4528c7486ada4abdca0b0944e_Out_0_Vector2 = float2(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_R_4_Float, _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_G_5_Float);
        float2 _Multiply_02b9b4665ad9918d8721bcaddc82f06f_Out_2_Vector2;
        Unity_Multiply_float2_float2(_Vector2_fe9aedd4528c7486ada4abdca0b0944e_Out_0_Vector2, _Vector2_4ed33f0c73b2698fa6f3c1b77fe76808_Out_0_Vector2, _Multiply_02b9b4665ad9918d8721bcaddc82f06f_Out_2_Vector2);
        float2 _Vector2_a74a85274da15181abb63cc5e8df0de1_Out_0_Vector2 = float2(_Split_5ed44bf2eca0868f81eb18100f49d1fa_R_1_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_G_2_Float);
        float2 _Add_b227c84042055e8faa1a9fdc69529707_Out_2_Vector2;
        Unity_Add_float2(_Multiply_02b9b4665ad9918d8721bcaddc82f06f_Out_2_Vector2, _Vector2_a74a85274da15181abb63cc5e8df0de1_Out_0_Vector2, _Add_b227c84042055e8faa1a9fdc69529707_Out_2_Vector2);
        float _Split_2cfb9eacd8762483941459cdf28bda97_R_1_Float = _Add_b227c84042055e8faa1a9fdc69529707_Out_2_Vector2[0];
        float _Split_2cfb9eacd8762483941459cdf28bda97_G_2_Float = _Add_b227c84042055e8faa1a9fdc69529707_Out_2_Vector2[1];
        float _Split_2cfb9eacd8762483941459cdf28bda97_B_3_Float = 0;
        float _Split_2cfb9eacd8762483941459cdf28bda97_A_4_Float = 0;
        float _Multiply_1d65ce08ce672087879125f2e13c4004_Out_2_Float;
        Unity_Multiply_float_float(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_B_6_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_B_3_Float, _Multiply_1d65ce08ce672087879125f2e13c4004_Out_2_Float);
        float3 _Vector3_ba6cfb4671e8c58f9b41ea1dc23102ca_Out_0_Vector3 = float3(_Split_2cfb9eacd8762483941459cdf28bda97_R_1_Float, _Split_2cfb9eacd8762483941459cdf28bda97_G_2_Float, _Multiply_1d65ce08ce672087879125f2e13c4004_Out_2_Float);
        float3 _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Vector3_ba6cfb4671e8c58f9b41ea1dc23102ca_Out_0_Vector3, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float.xxx), _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector3);
        float4 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4;
        float3 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3;
        float2 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2);
        float4 _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4);
        float2 _Vector2_a1e23e0f921b6484818f009a2b12a5ba_Out_0_Vector2 = float2(_Split_6299d4ddcc4c74828aea40a46fdb896e_R_1_Float, 1);
        float2 _Multiply_862402885a49f18cb87278ab53bc6744_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4.xy), _Vector2_a1e23e0f921b6484818f009a2b12a5ba_Out_0_Vector2, _Multiply_862402885a49f18cb87278ab53bc6744_Out_2_Vector2);
        float4 _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_862402885a49f18cb87278ab53bc6744_Out_2_Vector2) );
        _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4);
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_R_4_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.r;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_G_5_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.g;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_B_6_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.b;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_A_7_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.a;
        float _Multiply_4649b768be76d784a3284bacde795359_Out_2_Float;
        Unity_Multiply_float_float(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_B_6_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_R_1_Float, _Multiply_4649b768be76d784a3284bacde795359_Out_2_Float);
        float2 _Vector2_819fcd5eb484438eacad1987576d7d67_Out_0_Vector2 = float2(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_R_4_Float, _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_G_5_Float);
        float2 _Multiply_58530ebb3c6d798b93686a76247bf505_Out_2_Vector2;
        Unity_Multiply_float2_float2(_Vector2_819fcd5eb484438eacad1987576d7d67_Out_0_Vector2, _Vector2_a1e23e0f921b6484818f009a2b12a5ba_Out_0_Vector2, _Multiply_58530ebb3c6d798b93686a76247bf505_Out_2_Vector2);
        float2 _Vector2_e293c112b2f49e88a5fe46dfb1fbeb40_Out_0_Vector2 = float2(_Split_5ed44bf2eca0868f81eb18100f49d1fa_B_3_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_G_2_Float);
        float2 _Add_cf00fb232c6e2b8e973ab2f84453f55e_Out_2_Vector2;
        Unity_Add_float2(_Multiply_58530ebb3c6d798b93686a76247bf505_Out_2_Vector2, _Vector2_e293c112b2f49e88a5fe46dfb1fbeb40_Out_0_Vector2, _Add_cf00fb232c6e2b8e973ab2f84453f55e_Out_2_Vector2);
        float _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_R_1_Float = _Add_cf00fb232c6e2b8e973ab2f84453f55e_Out_2_Vector2[0];
        float _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_G_2_Float = _Add_cf00fb232c6e2b8e973ab2f84453f55e_Out_2_Vector2[1];
        float _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_B_3_Float = 0;
        float _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_A_4_Float = 0;
        float3 _Vector3_13a08d5940172a84a78ee3d9b8766833_Out_0_Vector3 = float3(_Multiply_4649b768be76d784a3284bacde795359_Out_2_Float, _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_G_2_Float, _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_R_1_Float);
        float3 _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Vector3_13a08d5940172a84a78ee3d9b8766833_Out_0_Vector3, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float.xxx), _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector3);
        float3 _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector3;
        Unity_Add_float3(_Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector3, _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector3, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector3);
        float3 _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector3;
        Unity_Add_float3(_Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector3, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector3, _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector3);
        float _Add_e59af300bba2498db32eac1412123447_Out_2_Float;
        Unity_Add_float(_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float, _Add_e59af300bba2498db32eac1412123447_Out_2_Float);
        float _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float;
        Unity_Add_float(_Add_e59af300bba2498db32eac1412123447_Out_2_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float, _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float);
        float3 _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector3;
        Unity_Divide_float3(_Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector3, (_Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float.xxx), _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector3);
        float3 _Transform_73eecc0c3689d184a34c8d0f28a58adf_Out_1_Vector3;
        {
        float3x3 tangentTransform = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
        _Transform_73eecc0c3689d184a34c8d0f28a58adf_Out_1_Vector3 = TransformWorldToTangentDir(_Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector3.xyz, tangentTransform, true);
        }
        float3 _Normalize_15ef346824db0a8797631ed8b998e673_Out_1_Vector3;
        Unity_Normalize_float3(_Transform_73eecc0c3689d184a34c8d0f28a58adf_Out_1_Vector3, _Normalize_15ef346824db0a8797631ed8b998e673_Out_1_Vector3);
        XYZ_1 = (float4(_Normalize_15ef346824db0a8797631ed8b998e673_Out_1_Vector3, 1.0));
        XZ_2 = (float4(_Vector3_08f62c5c01619e849f1a7d85a44531ac_Out_0_Vector3, 1.0));
        YZ_3 = (float4(_Vector3_ba6cfb4671e8c58f9b41ea1dc23102ca_Out_0_Vector3, 1.0));
        XY_4 = (float4(_Vector3_13a08d5940172a84a78ee3d9b8766833_Out_0_Vector3, 1.0));
        }
        
        void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
        {
            Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
        }
        
        void Unity_NormalBlend_float(float3 A, float3 B, out float3 Out)
        {
            Out = SafeNormalize(float3(A.rg + B.rg, A.b * B.b));
        }
        
        void Unity_Subtract_float(float A, float B, out float Out)
        {
            Out = A - B;
        }
        
        void Unity_Divide_float(float A, float B, out float Out)
        {
            Out = A / B;
        }
        
        void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
        {
            Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
        }
        
        // Custom interpolators pre vertex
        /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
        
        // Graph Vertex
        struct VertexDescription
        {
            float3 Position;
            float3 Normal;
            float3 Tangent;
        };
        
        VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
        {
            VertexDescription description = (VertexDescription)0;
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301;
            float3 _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3;
            SG_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float(IN.ObjectSpacePosition, _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301, _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3);
            #endif
            description.Position = _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3;
            description.Normal = IN.ObjectSpaceNormal;
            description.Tangent = IN.ObjectSpaceTangent;
            return description;
        }
        
        // Custom interpolators, pre surface
        #ifdef FEATURES_GRAPH_VERTEX
        Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
        {
        return output;
        }
        #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
        #endif
        
        // Graph Pixel
        struct SurfaceDescription
        {
            float3 BaseColor;
            float3 Emission;
            float Alpha;
            float AlphaClipThreshold;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_b4deafa94a27e588ab2e901ce05fd5c2_Out_0_Boolean = _CoverMaskRCurvature;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_6c17ebaaa33d938990da19e6860d987c_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_72f47eee6df1cd8dbc7790612f96361f_Out_0_Vector4 = _BaseTilingOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4;
            Unity_Divide_float4(float4(1, 1, 0, 0), _Property_72f47eee6df1cd8dbc7790612f96361f_Out_0_Vector4, _Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float = _BaseTriplanarThreshold;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e;
            _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XZ_2_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_YZ_3_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XY_4_Vector4;
            SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(_Property_6c17ebaaa33d938990da19e6860d987c_Out_0_Texture2D, (_Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4).x, _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XZ_2_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_YZ_3_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_9465a0f7ac851b8daf29a27b34e035be_Out_0_Vector4 = _BaseColor;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Multiply_4cbb8fe598df6b8995e151b170112293_Out_2_Vector4;
            Unity_Multiply_float4_float4(_TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4, _Property_9465a0f7ac851b8daf29a27b34e035be_Out_0_Vector4, _Multiply_4cbb8fe598df6b8995e151b170112293_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_6bf54b76e7bec584b1f7856c6442c603_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_CoverMaskA);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _UV_71e815f5c2f7188e9df5850b0bfa07ba_Out_0_Vector4 = IN.uv0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_6bf54b76e7bec584b1f7856c6442c603_Out_0_Texture2D.tex, _Property_6bf54b76e7bec584b1f7856c6442c603_Out_0_Texture2D.samplerstate, _Property_6bf54b76e7bec584b1f7856c6442c603_Out_0_Texture2D.GetTransformedUV((_UV_71e815f5c2f7188e9df5850b0bfa07ba_Out_0_Vector4.xy)) );
            float _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_R_4_Float = _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4.r;
            float _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_G_5_Float = _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4.g;
            float _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_B_6_Float = _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4.b;
            float _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_A_7_Float = _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4.a;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_61d87310f8d25683b3e258b2a7c32687_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_R_4_Float, 2, _Multiply_61d87310f8d25683b3e258b2a7c32687_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_2a04a0bb2acbb08cbe9bed32574a79f2_Out_0_Float = _BaseDarknessCurvMultply;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_22ddb374af8b978e8e07fbefa70c9485_Out_2_Float;
            Unity_Multiply_float_float(_Multiply_61d87310f8d25683b3e258b2a7c32687_Out_2_Float, _Property_2a04a0bb2acbb08cbe9bed32574a79f2_Out_0_Float, _Multiply_22ddb374af8b978e8e07fbefa70c9485_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_8ba74b557a6292888d4ba32c8da72989_Out_3_Float;
            Unity_Clamp_float(_Multiply_22ddb374af8b978e8e07fbefa70c9485_Out_2_Float, 0, 1, _Clamp_8ba74b557a6292888d4ba32c8da72989_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_80289d7a8316d28bb4411239017120b6_Out_1_Float;
            Unity_Absolute_float(_Clamp_8ba74b557a6292888d4ba32c8da72989_Out_3_Float, _Absolute_80289d7a8316d28bb4411239017120b6_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_ed4690b030015f83b3b06ac15e9d0ac7_Out_0_Float = _BaseDarknessCurvPower;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_5ba92bd090fe278aa7287667dd405d23_Out_2_Float;
            Unity_Power_float(_Absolute_80289d7a8316d28bb4411239017120b6_Out_1_Float, _Property_ed4690b030015f83b3b06ac15e9d0ac7_Out_0_Float, _Power_5ba92bd090fe278aa7287667dd405d23_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_22c4e36fffdf1887adb074e78bbc7b44_Out_3_Float;
            Unity_Clamp_float(_Power_5ba92bd090fe278aa7287667dd405d23_Out_2_Float, 0, 1, _Clamp_22c4e36fffdf1887adb074e78bbc7b44_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Multiply_f0be8921ed844a8aac9de0d40006f34b_Out_2_Vector4;
            Unity_Multiply_float4_float4(_Multiply_4cbb8fe598df6b8995e151b170112293_Out_2_Vector4, (_Clamp_22c4e36fffdf1887adb074e78bbc7b44_Out_3_Float.xxxx), _Multiply_f0be8921ed844a8aac9de0d40006f34b_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Clamp_864c8f6cb2a43a89b921dce01e0ef53b_Out_3_Vector4;
            Unity_Clamp_float4(_Multiply_f0be8921ed844a8aac9de0d40006f34b_Out_2_Vector4, float4(0, 0, 0, 0), float4(1, 1, 1, 1), _Clamp_864c8f6cb2a43a89b921dce01e0ef53b_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_a49c8f8c03fef888a861c2d7c17af6f8_Out_2_Float;
            Unity_Add_float(_Multiply_61d87310f8d25683b3e258b2a7c32687_Out_2_Float, -1, _Add_a49c8f8c03fef888a861c2d7c17af6f8_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_9323cd642f42ed8cbac9c6df151c47fa_Out_3_Float;
            Unity_Clamp_float(_Add_a49c8f8c03fef888a861c2d7c17af6f8_Out_2_Float, 0, 1, _Clamp_9323cd642f42ed8cbac9c6df151c47fa_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_33f339ef1ed862819656675eee2fb944_Out_0_Float = _BaseBrightnessCurvMultply;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_b0785816d24af2898f76ec8a2429185e_Out_2_Float;
            Unity_Multiply_float_float(_Clamp_9323cd642f42ed8cbac9c6df151c47fa_Out_3_Float, _Property_33f339ef1ed862819656675eee2fb944_Out_0_Float, _Multiply_b0785816d24af2898f76ec8a2429185e_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_b973335853a46c8a81e03c3bd287d046_Out_3_Float;
            Unity_Clamp_float(_Multiply_b0785816d24af2898f76ec8a2429185e_Out_2_Float, 0, 1, _Clamp_b973335853a46c8a81e03c3bd287d046_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_cc9743a0986aaa84a27e8f69f9752f76_Out_1_Float;
            Unity_Absolute_float(_Clamp_b973335853a46c8a81e03c3bd287d046_Out_3_Float, _Absolute_cc9743a0986aaa84a27e8f69f9752f76_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_3c0b9cbbfa7d0d828d63c00b91d92336_Out_0_Float = _BaseBrightnessCurvPower;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_1ed803ec6c9f7c848be6ac4c00192882_Out_2_Float;
            Unity_Power_float(_Absolute_cc9743a0986aaa84a27e8f69f9752f76_Out_1_Float, _Property_3c0b9cbbfa7d0d828d63c00b91d92336_Out_0_Float, _Power_1ed803ec6c9f7c848be6ac4c00192882_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_1e8c74117b5d6c8fa33005b50ce04bb8_Out_3_Float;
            Unity_Clamp_float(_Power_1ed803ec6c9f7c848be6ac4c00192882_Out_2_Float, 0, 1, _Clamp_1e8c74117b5d6c8fa33005b50ce04bb8_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Add_e8ceba55bdbffe8eb19f02736be349aa_Out_2_Vector4;
            Unity_Add_float4(_Clamp_864c8f6cb2a43a89b921dce01e0ef53b_Out_3_Vector4, (_Clamp_1e8c74117b5d6c8fa33005b50ce04bb8_Out_3_Float.xxxx), _Add_e8ceba55bdbffe8eb19f02736be349aa_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Clamp_96d8dcc832f8cc8ba79cc5afd2f1c865_Out_3_Vector4;
            Unity_Clamp_float4(_Add_e8ceba55bdbffe8eb19f02736be349aa_Out_2_Vector4, float4(0, 0, 0, 0), float4(1, 1, 1, 1), _Clamp_96d8dcc832f8cc8ba79cc5afd2f1c865_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Branch_2498532d512ec68fa0efb263834949f7_Out_3_Vector4;
            Unity_Branch_float4(_Property_b4deafa94a27e588ab2e901ce05fd5c2_Out_0_Boolean, _Clamp_96d8dcc832f8cc8ba79cc5afd2f1c865_Out_3_Vector4, _Multiply_4cbb8fe598df6b8995e151b170112293_Out_2_Vector4, _Branch_2498532d512ec68fa0efb263834949f7_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_8c38efbdc687808784e64df5f7851a74_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_DetailMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4 = _DetailTilingOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_6b7d8752798f268c8b3cb4ab5a46f73e_R_1_Float = _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4[0];
            float _Split_6b7d8752798f268c8b3cb4ab5a46f73e_G_2_Float = _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4[1];
            float _Split_6b7d8752798f268c8b3cb4ab5a46f73e_B_3_Float = _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4[2];
            float _Split_6b7d8752798f268c8b3cb4ab5a46f73e_A_4_Float = _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_6d91e5afee3d4e88ba756da4c0cbfcb2_Out_0_Vector2 = float2(_Split_6b7d8752798f268c8b3cb4ab5a46f73e_R_1_Float, _Split_6b7d8752798f268c8b3cb4ab5a46f73e_G_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_692caa48e2186d8b83435fe066df038c_Out_0_Vector2 = float2(_Split_6b7d8752798f268c8b3cb4ab5a46f73e_B_3_Float, _Split_6b7d8752798f268c8b3cb4ab5a46f73e_A_4_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _TilingAndOffset_6c4e5074c066068fbf7f993634c1cb8d_Out_3_Vector2;
            Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_6d91e5afee3d4e88ba756da4c0cbfcb2_Out_0_Vector2, _Vector2_692caa48e2186d8b83435fe066df038c_Out_0_Vector2, _TilingAndOffset_6c4e5074c066068fbf7f993634c1cb8d_Out_3_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_8c38efbdc687808784e64df5f7851a74_Out_0_Texture2D.tex, _Property_8c38efbdc687808784e64df5f7851a74_Out_0_Texture2D.samplerstate, _Property_8c38efbdc687808784e64df5f7851a74_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_6c4e5074c066068fbf7f993634c1cb8d_Out_3_Vector2) );
            float _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_R_4_Float = _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4.r;
            float _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_G_5_Float = _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4.g;
            float _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_B_6_Float = _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4.b;
            float _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_A_7_Float = _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4.a;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_a9cd845f93693a80b6111fb063544a74_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_R_4_Float, 2, _Multiply_a9cd845f93693a80b6111fb063544a74_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_cef5411ef4065b849dab8ae41142e9e9_Out_2_Float;
            Unity_Add_float(_Multiply_a9cd845f93693a80b6111fb063544a74_Out_2_Float, -1, _Add_cef5411ef4065b849dab8ae41142e9e9_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_86c816f0fd959684a1e6e728b9519627_Out_0_Float = _DetailAlbedoScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_1ee7e827f3048f858e7b5c2c28318efe_Out_2_Float;
            Unity_Multiply_float_float(_Add_cef5411ef4065b849dab8ae41142e9e9_Out_2_Float, _Property_86c816f0fd959684a1e6e728b9519627_Out_0_Float, _Multiply_1ee7e827f3048f858e7b5c2c28318efe_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_b4653e33464aa08c993df6c9b8355a51_Out_1_Float;
            Unity_Saturate_float(_Multiply_1ee7e827f3048f858e7b5c2c28318efe_Out_2_Float, _Saturate_b4653e33464aa08c993df6c9b8355a51_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_1b7c4e8f9d7c0f86adab6f50c6958c56_Out_1_Float;
            Unity_Absolute_float(_Saturate_b4653e33464aa08c993df6c9b8355a51_Out_1_Float, _Absolute_1b7c4e8f9d7c0f86adab6f50c6958c56_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float _BlendOverlayBaseColor_9ffabe2fc453cb81a840278206c992a9;
            float3 _BlendOverlayBaseColor_9ffabe2fc453cb81a840278206c992a9_OutVector4_1_Vector3;
            SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float(_Branch_2498532d512ec68fa0efb263834949f7_Out_3_Vector4, _Add_cef5411ef4065b849dab8ae41142e9e9_Out_2_Float, _Absolute_1b7c4e8f9d7c0f86adab6f50c6958c56_Out_1_Float, _BlendOverlayBaseColor_9ffabe2fc453cb81a840278206c992a9, _BlendOverlayBaseColor_9ffabe2fc453cb81a840278206c992a9_OutVector4_1_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_cb1daa31a8aa778e83e89aea442a2d54_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_CoverBaseColorMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_ccec42aa79dbde8c8b90b6b19097f847_Out_0_Vector4 = _CoverTilingOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4;
            Unity_Divide_float4(float4(1, 1, 0, 0), _Property_ccec42aa79dbde8c8b90b6b19097f847_Out_0_Vector4, _Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_7e0717fa374eed86a380cfe44b28edf0_Out_0_Float = _CoverTriplanarThreshold;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float _TriplanarNM_629ab1e956a2e889871d22b762bf4375;
            _TriplanarNM_629ab1e956a2e889871d22b762bf4375.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNM_629ab1e956a2e889871d22b762bf4375.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
            float4 _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XYZ_1_Vector4;
            float4 _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XZ_2_Vector4;
            float4 _TriplanarNM_629ab1e956a2e889871d22b762bf4375_YZ_3_Vector4;
            float4 _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XY_4_Vector4;
            SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(_Property_cb1daa31a8aa778e83e89aea442a2d54_Out_0_Texture2D, (_Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4).x, _Property_7e0717fa374eed86a380cfe44b28edf0_Out_0_Float, _TriplanarNM_629ab1e956a2e889871d22b762bf4375, _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XYZ_1_Vector4, _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XZ_2_Vector4, _TriplanarNM_629ab1e956a2e889871d22b762bf4375_YZ_3_Vector4, _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_def3e41ed70425849fd44f5047e437fe_Out_0_Vector4 = _CoverBaseColor;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Multiply_66ad5344cffca188ba4604c5629ca8c5_Out_2_Vector4;
            Unity_Multiply_float4_float4(_TriplanarNM_629ab1e956a2e889871d22b762bf4375_XYZ_1_Vector4, _Property_def3e41ed70425849fd44f5047e437fe_Out_0_Vector4, _Multiply_66ad5344cffca188ba4604c5629ca8c5_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_bfbeca46f6256b8ba5a9c7eecc1952fa_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_R_4_Float, 2, _Multiply_bfbeca46f6256b8ba5a9c7eecc1952fa_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_559a8a631f049c80a0540b05cb8f37a2_Out_0_Float = _CoverDarknessCurvMultply;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_1c2f0f7f36765c8c89e3326d3be9d903_Out_2_Float;
            Unity_Multiply_float_float(_Multiply_bfbeca46f6256b8ba5a9c7eecc1952fa_Out_2_Float, _Property_559a8a631f049c80a0540b05cb8f37a2_Out_0_Float, _Multiply_1c2f0f7f36765c8c89e3326d3be9d903_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_ad38cc41210e8f868ed1b357dc4e7b74_Out_3_Float;
            Unity_Clamp_float(_Multiply_1c2f0f7f36765c8c89e3326d3be9d903_Out_2_Float, 0, 1, _Clamp_ad38cc41210e8f868ed1b357dc4e7b74_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_ae69e110d4c49280b35c4e7b54b5a7f1_Out_1_Float;
            Unity_Absolute_float(_Clamp_ad38cc41210e8f868ed1b357dc4e7b74_Out_3_Float, _Absolute_ae69e110d4c49280b35c4e7b54b5a7f1_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_46a6a9ede4568980b45a07904918a504_Out_0_Float = _CoverDarknessCurvPower;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_4b2b68959f57c88ea44a62ea10ca1fe9_Out_2_Float;
            Unity_Power_float(_Absolute_ae69e110d4c49280b35c4e7b54b5a7f1_Out_1_Float, _Property_46a6a9ede4568980b45a07904918a504_Out_0_Float, _Power_4b2b68959f57c88ea44a62ea10ca1fe9_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_103f46053cfbe588a9814688e733efcf_Out_3_Float;
            Unity_Clamp_float(_Power_4b2b68959f57c88ea44a62ea10ca1fe9_Out_2_Float, 0, 1, _Clamp_103f46053cfbe588a9814688e733efcf_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Multiply_c7ad9f79dda0b489afa94b67d63fa000_Out_2_Vector4;
            Unity_Multiply_float4_float4(_Multiply_66ad5344cffca188ba4604c5629ca8c5_Out_2_Vector4, (_Clamp_103f46053cfbe588a9814688e733efcf_Out_3_Float.xxxx), _Multiply_c7ad9f79dda0b489afa94b67d63fa000_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Clamp_d7af96dc6cc5f988a0591b241ed78acc_Out_3_Vector4;
            Unity_Clamp_float4(_Multiply_c7ad9f79dda0b489afa94b67d63fa000_Out_2_Vector4, float4(0, 0, 0, 0), float4(1, 1, 1, 1), _Clamp_d7af96dc6cc5f988a0591b241ed78acc_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_8fd457fe97f9638cafa0323faa2a8dfc_Out_2_Float;
            Unity_Add_float(_Multiply_bfbeca46f6256b8ba5a9c7eecc1952fa_Out_2_Float, -1, _Add_8fd457fe97f9638cafa0323faa2a8dfc_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_978695ad7d0e828ba992b5cb3ca26eae_Out_3_Float;
            Unity_Clamp_float(_Add_8fd457fe97f9638cafa0323faa2a8dfc_Out_2_Float, 0, 1, _Clamp_978695ad7d0e828ba992b5cb3ca26eae_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_67c192d19b444a81849a1176f3a697f6_Out_0_Float = _CoverBrightnessCurvMultply;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_3d670a97734e8c878835f7360055572a_Out_2_Float;
            Unity_Multiply_float_float(_Clamp_978695ad7d0e828ba992b5cb3ca26eae_Out_3_Float, _Property_67c192d19b444a81849a1176f3a697f6_Out_0_Float, _Multiply_3d670a97734e8c878835f7360055572a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_db58547294da9e8785ee7b6c3a976698_Out_3_Float;
            Unity_Clamp_float(_Multiply_3d670a97734e8c878835f7360055572a_Out_2_Float, 0, 1, _Clamp_db58547294da9e8785ee7b6c3a976698_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_8b40786bf852328aaa652dc116916196_Out_1_Float;
            Unity_Absolute_float(_Clamp_db58547294da9e8785ee7b6c3a976698_Out_3_Float, _Absolute_8b40786bf852328aaa652dc116916196_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_a09af913dea5a68c9a7bab01c65be2c8_Out_0_Float = _CoverBrightnessCurvPower;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_c0b759d680738485abb57d1a2b3b80b9_Out_2_Float;
            Unity_Power_float(_Absolute_8b40786bf852328aaa652dc116916196_Out_1_Float, _Property_a09af913dea5a68c9a7bab01c65be2c8_Out_0_Float, _Power_c0b759d680738485abb57d1a2b3b80b9_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_1305e9cad6dd178cb5bfe84a93942985_Out_3_Float;
            Unity_Clamp_float(_Power_c0b759d680738485abb57d1a2b3b80b9_Out_2_Float, 0, 1, _Clamp_1305e9cad6dd178cb5bfe84a93942985_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Add_7db003c440510b8aabb72b85c537eb52_Out_2_Vector4;
            Unity_Add_float4(_Clamp_d7af96dc6cc5f988a0591b241ed78acc_Out_3_Vector4, (_Clamp_1305e9cad6dd178cb5bfe84a93942985_Out_3_Float.xxxx), _Add_7db003c440510b8aabb72b85c537eb52_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Clamp_72f41eca0c04cf8996f777072fe268a5_Out_3_Vector4;
            Unity_Clamp_float4(_Add_7db003c440510b8aabb72b85c537eb52_Out_2_Vector4, float4(0, 0, 0, 0), float4(1, 1, 1, 1), _Clamp_72f41eca0c04cf8996f777072fe268a5_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Branch_6d2c90f4f3988386a2faf0998e6ed26b_Out_3_Vector4;
            Unity_Branch_float4(_Property_b4deafa94a27e588ab2e901ce05fd5c2_Out_0_Boolean, _Clamp_72f41eca0c04cf8996f777072fe268a5_Out_3_Vector4, _Multiply_66ad5344cffca188ba4604c5629ca8c5_Out_2_Vector4, _Branch_6d2c90f4f3988386a2faf0998e6ed26b_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_857e1bdb72dc5d84a584fe6e3ff2329a_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_R_4_Float, 2, _Multiply_857e1bdb72dc5d84a584fe6e3ff2329a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_370337bea3e6fd8caacf4da48d0aa1b4_Out_2_Float;
            Unity_Add_float(_Multiply_857e1bdb72dc5d84a584fe6e3ff2329a_Out_2_Float, -1, _Add_370337bea3e6fd8caacf4da48d0aa1b4_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_62ca1795c20eb18985f6e7f9939ddf03_Out_0_Float = _DetailCoverAlbedoScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_3fd659a76cb9ae8ea60a8742620bd73c_Out_2_Float;
            Unity_Multiply_float_float(_Add_370337bea3e6fd8caacf4da48d0aa1b4_Out_2_Float, _Property_62ca1795c20eb18985f6e7f9939ddf03_Out_0_Float, _Multiply_3fd659a76cb9ae8ea60a8742620bd73c_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_8adac7fd6fcfdf8580ba2b7f00df5a41_Out_1_Float;
            Unity_Saturate_float(_Multiply_3fd659a76cb9ae8ea60a8742620bd73c_Out_2_Float, _Saturate_8adac7fd6fcfdf8580ba2b7f00df5a41_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_65f0556758f3f08483bdc59c1861e254_Out_1_Float;
            Unity_Absolute_float(_Saturate_8adac7fd6fcfdf8580ba2b7f00df5a41_Out_1_Float, _Absolute_65f0556758f3f08483bdc59c1861e254_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float _BlendOverlayBaseColor_e008078375b0f98abd6bae3cdc0a3816;
            float3 _BlendOverlayBaseColor_e008078375b0f98abd6bae3cdc0a3816_OutVector4_1_Vector3;
            SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float(_Branch_6d2c90f4f3988386a2faf0998e6ed26b_Out_3_Vector4, _Add_370337bea3e6fd8caacf4da48d0aa1b4_Out_2_Float, _Absolute_65f0556758f3f08483bdc59c1861e254_Out_1_Float, _BlendOverlayBaseColor_e008078375b0f98abd6bae3cdc0a3816, _BlendOverlayBaseColor_e008078375b0f98abd6bae3cdc0a3816_OutVector4_1_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_53b4f3caa35448849236e404330ffd86_Out_0_Float = _CoverMaskPower;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_04bf3e7568d5f48eb573d01235d77199_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_A_7_Float, _Property_53b4f3caa35448849236e404330ffd86_Out_0_Float, _Multiply_04bf3e7568d5f48eb573d01235d77199_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_1a91f1e3aec2228bbfb2a0736004946e_Out_3_Float;
            Unity_Clamp_float(_Multiply_04bf3e7568d5f48eb573d01235d77199_Out_2_Float, 0, 1, _Clamp_1a91f1e3aec2228bbfb2a0736004946e_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_39041ef87771e683b834dd7eca6b60aa_R_1_Float = IN.VertexColor[0];
            float _Split_39041ef87771e683b834dd7eca6b60aa_G_2_Float = IN.VertexColor[1];
            float _Split_39041ef87771e683b834dd7eca6b60aa_B_3_Float = IN.VertexColor[2];
            float _Split_39041ef87771e683b834dd7eca6b60aa_A_4_Float = IN.VertexColor[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Property_7c6ba36b7f75fd828a781ef390fe81fc_Out_0_Vector3 = _CoverDirection;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_ff34f3d24838f9889391530c04d6424b_Out_0_Vector2 = float2(_SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_A_7_Float, _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_G_5_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Multiply_120ef27f63ba4986acb31850d2223033_Out_2_Vector2;
            Unity_Multiply_float2_float2(_Vector2_ff34f3d24838f9889391530c04d6424b_Out_0_Vector2, float2(2, 2), _Multiply_120ef27f63ba4986acb31850d2223033_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Add_039ef572252c1f8b9ab1d9732873c6fd_Out_2_Vector2;
            Unity_Add_float2(_Multiply_120ef27f63ba4986acb31850d2223033_Out_2_Vector2, float2(-1, -1), _Add_039ef572252c1f8b9ab1d9732873c6fd_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_a4bc7e1c8f487182befa14cc923c5d7e_Out_0_Float = _DetailNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2;
            Unity_Multiply_float2_float2(_Add_039ef572252c1f8b9ab1d9732873c6fd_Out_2_Vector2, (_Property_a4bc7e1c8f487182befa14cc923c5d7e_Out_0_Float.xx), _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_817710a160cfd38f84dcd2ffe4ac9433_R_1_Float = _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2[0];
            float _Split_817710a160cfd38f84dcd2ffe4ac9433_G_2_Float = _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2[1];
            float _Split_817710a160cfd38f84dcd2ffe4ac9433_B_3_Float = 0;
            float _Split_817710a160cfd38f84dcd2ffe4ac9433_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _DotProduct_3a85ce810a5835809449d39fc0d43a7c_Out_2_Float;
            Unity_DotProduct_float2(_Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2, _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2, _DotProduct_3a85ce810a5835809449d39fc0d43a7c_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_ee7cc148f5d6c28596b254c9279b2d7c_Out_1_Float;
            Unity_Saturate_float(_DotProduct_3a85ce810a5835809449d39fc0d43a7c_Out_2_Float, _Saturate_ee7cc148f5d6c28596b254c9279b2d7c_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_81925f2879ac8985a29ea1d3496d3737_Out_1_Float;
            Unity_OneMinus_float(_Saturate_ee7cc148f5d6c28596b254c9279b2d7c_Out_1_Float, _OneMinus_81925f2879ac8985a29ea1d3496d3737_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _SquareRoot_679457140ebdbc8690be9c70d79c2c1e_Out_1_Float;
            Unity_SquareRoot_float(_OneMinus_81925f2879ac8985a29ea1d3496d3737_Out_1_Float, _SquareRoot_679457140ebdbc8690be9c70d79c2c1e_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Vector3_f1f5f90ed8452788a91000853614a735_Out_0_Vector3 = float3(_Split_817710a160cfd38f84dcd2ffe4ac9433_R_1_Float, _Split_817710a160cfd38f84dcd2ffe4ac9433_G_2_Float, _SquareRoot_679457140ebdbc8690be9c70d79c2c1e_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_bdb50713d9952086bf4040254f8555ed_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseNormalMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNMn_059da9746584140498cd018db3c76047_float _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a;
            _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a.WorldSpaceTangent = IN.WorldSpaceTangent;
            _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
            _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a.WorldSpacePosition = IN.WorldSpacePosition;
            float4 _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XYZ_1_Vector4;
            float4 _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XZ_2_Vector4;
            float4 _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_YZ_3_Vector4;
            float4 _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XY_4_Vector4;
            SG_TriplanarNMn_059da9746584140498cd018db3c76047_float(_Property_bdb50713d9952086bf4040254f8555ed_Out_0_Texture2D, (_Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4).x, _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XYZ_1_Vector4, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XZ_2_Vector4, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_YZ_3_Vector4, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_eacffd623cf35d848606835e2ba45716_Out_0_Float = _BaseNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalStrength_ec69d73d79314488b62d6a9c43da4dfe_Out_2_Vector3;
            Unity_NormalStrength_float((_TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XYZ_1_Vector4.xyz), _Property_eacffd623cf35d848606835e2ba45716_Out_0_Float, _NormalStrength_ec69d73d79314488b62d6a9c43da4dfe_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_904e20298b6e8d87823dd334eda299d8_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_ShapeNormalMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_904e20298b6e8d87823dd334eda299d8_Out_0_Texture2D.tex, _Property_904e20298b6e8d87823dd334eda299d8_Out_0_Texture2D.samplerstate, _Property_904e20298b6e8d87823dd334eda299d8_Out_0_Texture2D.GetTransformedUV(IN.uv0.xy) );
            _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4);
            float _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_R_4_Float = _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.r;
            float _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_G_5_Float = _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.g;
            float _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_B_6_Float = _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.b;
            float _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_A_7_Float = _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.a;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_c1ff82ca84d4238e8cf089d81f0b36bd_Out_0_Float = _shapeNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalStrength_44610f37afea2585a26a19d4e1f5e8ae_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.xyz), _Property_c1ff82ca84d4238e8cf089d81f0b36bd_Out_0_Float, _NormalStrength_44610f37afea2585a26a19d4e1f5e8ae_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalBlend_00b50fa0bb2ee087958824288a62541d_Out_2_Vector3;
            Unity_NormalBlend_float(_NormalStrength_ec69d73d79314488b62d6a9c43da4dfe_Out_2_Vector3, _NormalStrength_44610f37afea2585a26a19d4e1f5e8ae_Out_2_Vector3, _NormalBlend_00b50fa0bb2ee087958824288a62541d_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalBlend_a694ea2f4baada8da0978a00c2ccb417_Out_2_Vector3;
            Unity_NormalBlend_float(_Vector3_f1f5f90ed8452788a91000853614a735_Out_0_Vector3, _NormalBlend_00b50fa0bb2ee087958824288a62541d_Out_2_Vector3, _NormalBlend_a694ea2f4baada8da0978a00c2ccb417_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_97f32254bc217f89994d4619c96f8442_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_CoverNormalMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNMn_059da9746584140498cd018db3c76047_float _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28;
            _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28.WorldSpaceTangent = IN.WorldSpaceTangent;
            _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
            _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28.WorldSpacePosition = IN.WorldSpacePosition;
            float4 _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XYZ_1_Vector4;
            float4 _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XZ_2_Vector4;
            float4 _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_YZ_3_Vector4;
            float4 _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XY_4_Vector4;
            SG_TriplanarNMn_059da9746584140498cd018db3c76047_float(_Property_97f32254bc217f89994d4619c96f8442_Out_0_Texture2D, (_Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4).x, _Property_7e0717fa374eed86a380cfe44b28edf0_Out_0_Float, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XYZ_1_Vector4, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XZ_2_Vector4, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_YZ_3_Vector4, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_d6c69131205a1189837880dcb3f8d3d0_Out_0_Float = _CoverNormalBlendHardness;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalStrength_9dc5b89ad68a7185bbbaed44b704eec7_Out_2_Vector3;
            Unity_NormalStrength_float((_TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XYZ_1_Vector4.xyz), _Property_d6c69131205a1189837880dcb3f8d3d0_Out_0_Float, _NormalStrength_9dc5b89ad68a7185bbbaed44b704eec7_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_51fa8dd95f84a68e9130a8ecefb8c986_Out_0_Float = _CovershapeNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalStrength_9c8b92cfc893a386b69204d34b74152b_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.xyz), _Property_51fa8dd95f84a68e9130a8ecefb8c986_Out_0_Float, _NormalStrength_9c8b92cfc893a386b69204d34b74152b_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalBlend_782afb0f64887e8380e83132b6a5810e_Out_2_Vector3;
            Unity_NormalBlend_float(_NormalStrength_9dc5b89ad68a7185bbbaed44b704eec7_Out_2_Vector3, _NormalStrength_9c8b92cfc893a386b69204d34b74152b_Out_2_Vector3, _NormalBlend_782afb0f64887e8380e83132b6a5810e_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Property_7c6ba36b7f75fd828a781ef390fe81fc_Out_0_Vector3, IN.WorldSpaceNormal, _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_96256a8185f0568abafec3a227827546_R_1_Float = _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3[0];
            float _Split_96256a8185f0568abafec3a227827546_G_2_Float = _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3[1];
            float _Split_96256a8185f0568abafec3a227827546_B_3_Float = _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3[2];
            float _Split_96256a8185f0568abafec3a227827546_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_f5913a02d21120849228d323bef35553_Out_2_Float;
            Unity_Add_float(_Split_96256a8185f0568abafec3a227827546_R_1_Float, _Split_96256a8185f0568abafec3a227827546_G_2_Float, _Add_f5913a02d21120849228d323bef35553_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_9a058a92f487128798a7f94472c0ca30_Out_2_Float;
            Unity_Add_float(_Add_f5913a02d21120849228d323bef35553_Out_2_Float, _Split_96256a8185f0568abafec3a227827546_B_3_Float, _Add_9a058a92f487128798a7f94472c0ca30_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_da7d9b77e00889889a1cf846bbb669a5_Out_0_Float = _Cover_Amount;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_9ac7e0db72fe9d8297f925d7a8d82981_Out_0_Float = _Cover_Amount_Grow_Speed;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Subtract_0f19dd2c94f6928ba6cdfc45f693284d_Out_2_Float;
            Unity_Subtract_float(4, _Property_9ac7e0db72fe9d8297f925d7a8d82981_Out_0_Float, _Subtract_0f19dd2c94f6928ba6cdfc45f693284d_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Divide_3bef9bbb9755dc8696f8ac17007a2366_Out_2_Float;
            Unity_Divide_float(_Property_da7d9b77e00889889a1cf846bbb669a5_Out_0_Float, _Subtract_0f19dd2c94f6928ba6cdfc45f693284d_Out_2_Float, _Divide_3bef9bbb9755dc8696f8ac17007a2366_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_1fc5042ab3ae9989938f02ed525d6d1b_Out_1_Float;
            Unity_Absolute_float(_Divide_3bef9bbb9755dc8696f8ac17007a2366_Out_2_Float, _Absolute_1fc5042ab3ae9989938f02ed525d6d1b_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_7f87f809e802fe8cae930b82dfe1911c_Out_2_Float;
            Unity_Power_float(_Absolute_1fc5042ab3ae9989938f02ed525d6d1b_Out_1_Float, _Subtract_0f19dd2c94f6928ba6cdfc45f693284d_Out_2_Float, _Power_7f87f809e802fe8cae930b82dfe1911c_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float;
            Unity_Clamp_float(_Power_7f87f809e802fe8cae930b82dfe1911c_Out_2_Float, 0, 2, _Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_b9d25c21d933788b84d54f7c635149e2_Out_2_Float;
            Unity_Multiply_float_float(_Add_9a058a92f487128798a7f94472c0ca30_Out_2_Float, _Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float, _Multiply_b9d25c21d933788b84d54f7c635149e2_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_fbb647649cdbf583a108c0f8cdf6aaa0_Out_1_Float;
            Unity_Saturate_float(_Multiply_b9d25c21d933788b84d54f7c635149e2_Out_2_Float, _Saturate_fbb647649cdbf583a108c0f8cdf6aaa0_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_ee2e002d790e45849c0cbd1357a0ce4a_Out_3_Float;
            Unity_Clamp_float(_Add_9a058a92f487128798a7f94472c0ca30_Out_2_Float, 0, 0.9999, _Clamp_ee2e002d790e45849c0cbd1357a0ce4a_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_d4885ba189012a86826100355a8ee1d1_Out_0_Float = _Cover_Max_Angle;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Divide_5bd014a6111174888637d9078175ccbb_Out_2_Float;
            Unity_Divide_float(_Property_d4885ba189012a86826100355a8ee1d1_Out_0_Float, 45, _Divide_5bd014a6111174888637d9078175ccbb_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_80b741ae772c4d8191d5f26898f95578_Out_1_Float;
            Unity_OneMinus_float(_Divide_5bd014a6111174888637d9078175ccbb_Out_2_Float, _OneMinus_80b741ae772c4d8191d5f26898f95578_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Subtract_f22c892d39e02b8abe6ab26a57a62249_Out_2_Float;
            Unity_Subtract_float(_Clamp_ee2e002d790e45849c0cbd1357a0ce4a_Out_3_Float, _OneMinus_80b741ae772c4d8191d5f26898f95578_Out_1_Float, _Subtract_f22c892d39e02b8abe6ab26a57a62249_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_fdfdf3d8e65f078c9f4a01f83b01f048_Out_3_Float;
            Unity_Clamp_float(_Subtract_f22c892d39e02b8abe6ab26a57a62249_Out_2_Float, 0, 2, _Clamp_fdfdf3d8e65f078c9f4a01f83b01f048_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Divide_9c6c3a806810a3809e3c224188106363_Out_2_Float;
            Unity_Divide_float(1, _Divide_5bd014a6111174888637d9078175ccbb_Out_2_Float, _Divide_9c6c3a806810a3809e3c224188106363_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_e65088594cdcd48fa0f022fc8175c8c9_Out_2_Float;
            Unity_Multiply_float_float(_Clamp_fdfdf3d8e65f078c9f4a01f83b01f048_Out_3_Float, _Divide_9c6c3a806810a3809e3c224188106363_Out_2_Float, _Multiply_e65088594cdcd48fa0f022fc8175c8c9_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_2b394cd0bed344818ffb9eed9e5c53e1_Out_1_Float;
            Unity_Absolute_float(_Multiply_e65088594cdcd48fa0f022fc8175c8c9_Out_2_Float, _Absolute_2b394cd0bed344818ffb9eed9e5c53e1_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_cb57d5e16197578e8e8ba3400aab436b_Out_0_Float = _CoverHardness;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_21df469b2db977828d49344ca1eec030_Out_2_Float;
            Unity_Power_float(_Absolute_2b394cd0bed344818ffb9eed9e5c53e1_Out_1_Float, _Property_cb57d5e16197578e8e8ba3400aab436b_Out_0_Float, _Power_21df469b2db977828d49344ca1eec030_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_d6dc82050413eb849dfc6983ad308f63_Out_0_Float = _Cover_Min_Height;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_55ba8ae17d7e908a8c116f016933a5c4_Out_1_Float;
            Unity_OneMinus_float(_Property_d6dc82050413eb849dfc6983ad308f63_Out_0_Float, _OneMinus_55ba8ae17d7e908a8c116f016933a5c4_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_9034d1eb71e07a84aaafa21620d0ebcb_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
            float _Split_9034d1eb71e07a84aaafa21620d0ebcb_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
            float _Split_9034d1eb71e07a84aaafa21620d0ebcb_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
            float _Split_9034d1eb71e07a84aaafa21620d0ebcb_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float;
            Unity_Add_float(_OneMinus_55ba8ae17d7e908a8c116f016933a5c4_Out_1_Float, _Split_9034d1eb71e07a84aaafa21620d0ebcb_G_2_Float, _Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_e4c251a4fa894882bb13119a081a7170_Out_2_Float;
            Unity_Add_float(_Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float, 1, _Add_e4c251a4fa894882bb13119a081a7170_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_eb62a527acaafa88b6e28bfaa49893f4_Out_3_Float;
            Unity_Clamp_float(_Add_e4c251a4fa894882bb13119a081a7170_Out_2_Float, 0, 1, _Clamp_eb62a527acaafa88b6e28bfaa49893f4_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_f9094ebaecca9780b46893a792429806_Out_0_Float = _Cover_Min_Height_Blending;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_18ea921b495add86a362e3706f6c9569_Out_2_Float;
            Unity_Add_float(_Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float, _Property_f9094ebaecca9780b46893a792429806_Out_0_Float, _Add_18ea921b495add86a362e3706f6c9569_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Divide_bbf053c5aa7f6a88becd534af7ba8301_Out_2_Float;
            Unity_Divide_float(_Add_18ea921b495add86a362e3706f6c9569_Out_2_Float, _Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float, _Divide_bbf053c5aa7f6a88becd534af7ba8301_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_327fa2c4164bb68a86132da6b0e7e78f_Out_1_Float;
            Unity_OneMinus_float(_Divide_bbf053c5aa7f6a88becd534af7ba8301_Out_2_Float, _OneMinus_327fa2c4164bb68a86132da6b0e7e78f_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_ecd7b6a41e7af88fa3cbef16a3bc5b02_Out_2_Float;
            Unity_Add_float(_OneMinus_327fa2c4164bb68a86132da6b0e7e78f_Out_1_Float, -0.5, _Add_ecd7b6a41e7af88fa3cbef16a3bc5b02_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_e1620f6d6ff43682b4ad7b309118f941_Out_3_Float;
            Unity_Clamp_float(_Add_ecd7b6a41e7af88fa3cbef16a3bc5b02_Out_2_Float, 0, 1, _Clamp_e1620f6d6ff43682b4ad7b309118f941_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_5c0e00010d3f368db3787628623c361a_Out_2_Float;
            Unity_Add_float(_Clamp_eb62a527acaafa88b6e28bfaa49893f4_Out_3_Float, _Clamp_e1620f6d6ff43682b4ad7b309118f941_Out_3_Float, _Add_5c0e00010d3f368db3787628623c361a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_94e731fd5526ec8281dee0a6143f09c1_Out_3_Float;
            Unity_Clamp_float(_Add_5c0e00010d3f368db3787628623c361a_Out_2_Float, 0, 1, _Clamp_94e731fd5526ec8281dee0a6143f09c1_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_18e2801a2e62658287a6f37f74c849c5_Out_2_Float;
            Unity_Multiply_float_float(_Power_21df469b2db977828d49344ca1eec030_Out_2_Float, _Clamp_94e731fd5526ec8281dee0a6143f09c1_Out_3_Float, _Multiply_18e2801a2e62658287a6f37f74c849c5_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_b364ac6af25fa58db4da48bef2655e44_Out_2_Float;
            Unity_Multiply_float_float(_Saturate_fbb647649cdbf583a108c0f8cdf6aaa0_Out_1_Float, _Multiply_18e2801a2e62658287a6f37f74c849c5_Out_2_Float, _Multiply_b364ac6af25fa58db4da48bef2655e44_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Lerp_ce0e66ae6c014a87bf6b30846c04b2f6_Out_3_Vector3;
            Unity_Lerp_float3(_NormalBlend_a694ea2f4baada8da0978a00c2ccb417_Out_2_Vector3, _NormalBlend_782afb0f64887e8380e83132b6a5810e_Out_2_Vector3, (_Multiply_b364ac6af25fa58db4da48bef2655e44_Out_2_Float.xxx), _Lerp_ce0e66ae6c014a87bf6b30846c04b2f6_Out_3_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Transform_770d1933b55d1b84a0bd6db42f3c78c9_Out_1_Vector3;
            {
                float3x3 tangentTransform = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                _Transform_770d1933b55d1b84a0bd6db42f3c78c9_Out_1_Vector3 = TransformTangentToWorldDir(_Lerp_ce0e66ae6c014a87bf6b30846c04b2f6_Out_3_Vector3.xyz, tangentTransform, true).xyz;
            }
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Property_7c6ba36b7f75fd828a781ef390fe81fc_Out_0_Vector3, _Transform_770d1933b55d1b84a0bd6db42f3c78c9_Out_1_Vector3, _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_R_1_Float = _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3[0];
            float _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_G_2_Float = _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3[1];
            float _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_B_3_Float = _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3[2];
            float _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_edda96f9db17d38cb56cd74fad991c1b_Out_2_Float;
            Unity_Add_float(_Split_0aa1fa7994fd9383afd7d2a31b8a5c58_R_1_Float, _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_G_2_Float, _Add_edda96f9db17d38cb56cd74fad991c1b_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_f4f04e53f77faf80ace8c0f8e979843c_Out_2_Float;
            Unity_Add_float(_Add_edda96f9db17d38cb56cd74fad991c1b_Out_2_Float, _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_B_3_Float, _Add_f4f04e53f77faf80ace8c0f8e979843c_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_5a81fd82c6a81e899179cd6a617a9aec_Out_2_Float;
            Unity_Multiply_float_float(_Add_f4f04e53f77faf80ace8c0f8e979843c_Out_2_Float, _Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float, _Multiply_5a81fd82c6a81e899179cd6a617a9aec_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_e06a505285f5238a853337d02932891b_Out_2_Float;
            Unity_Multiply_float_float(_Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float, _Property_cb57d5e16197578e8e8ba3400aab436b_Out_0_Float, _Multiply_e06a505285f5238a853337d02932891b_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_088b09a855d8228bb73f1fecf4e444fd_Out_2_Float;
            Unity_Multiply_float_float(_Multiply_e06a505285f5238a853337d02932891b_Out_2_Float, _Multiply_18e2801a2e62658287a6f37f74c849c5_Out_2_Float, _Multiply_088b09a855d8228bb73f1fecf4e444fd_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_5636b2845aba9a8cae86012e0ece3ad1_Out_2_Float;
            Unity_Multiply_float_float(_Multiply_5a81fd82c6a81e899179cd6a617a9aec_Out_2_Float, _Multiply_088b09a855d8228bb73f1fecf4e444fd_Out_2_Float, _Multiply_5636b2845aba9a8cae86012e0ece3ad1_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_69f7b0977ddb53899920af6323e8d0fe_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_CoverMaskMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7;
            _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
            float4 _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4;
            float4 _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XZ_2_Vector4;
            float4 _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_YZ_3_Vector4;
            float4 _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XY_4_Vector4;
            SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(_Property_69f7b0977ddb53899920af6323e8d0fe_Out_0_Texture2D, (_Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4).x, _Property_7e0717fa374eed86a380cfe44b28edf0_Out_0_Float, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XZ_2_Vector4, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_YZ_3_Vector4, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_e4be19cd1f232a808ae6fe9f9259cd4e_R_1_Float = _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4[0];
            float _Split_e4be19cd1f232a808ae6fe9f9259cd4e_G_2_Float = _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4[1];
            float _Split_e4be19cd1f232a808ae6fe9f9259cd4e_B_3_Float = _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4[2];
            float _Split_e4be19cd1f232a808ae6fe9f9259cd4e_A_4_Float = _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_48f133c0cba9a8819633d2d3b23b260c_Out_0_Float = _CoverHeightMapMin;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_739d4be9d8e77c85a5db4914565db091_Out_0_Float = _CoverHeightMapMax;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_a40393428558cd879a301cba41adb10c_Out_0_Vector2 = float2(_Property_48f133c0cba9a8819633d2d3b23b260c_Out_0_Float, _Property_739d4be9d8e77c85a5db4914565db091_Out_0_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_895edb6e4c6a818eb2e6568e3d0027ee_Out_0_Float = _CoverHeightMapOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Add_5fe0b993c875028f97cc5b6530321a12_Out_2_Vector2;
            Unity_Add_float2(_Vector2_a40393428558cd879a301cba41adb10c_Out_0_Vector2, (_Property_895edb6e4c6a818eb2e6568e3d0027ee_Out_0_Float.xx), _Add_5fe0b993c875028f97cc5b6530321a12_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Remap_6cd0f9512cc2918594d1639bafc06c6c_Out_3_Float;
            Unity_Remap_float(_Split_e4be19cd1f232a808ae6fe9f9259cd4e_B_3_Float, float2 (0, 1), _Add_5fe0b993c875028f97cc5b6530321a12_Out_2_Vector2, _Remap_6cd0f9512cc2918594d1639bafc06c6c_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_786d36b14fbdef808dd9ac0bb660bdf9_Out_2_Float;
            Unity_Multiply_float_float(_Multiply_5636b2845aba9a8cae86012e0ece3ad1_Out_2_Float, _Remap_6cd0f9512cc2918594d1639bafc06c6c_Out_3_Float, _Multiply_786d36b14fbdef808dd9ac0bb660bdf9_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_1112e16c39010a8faf99d2d7fde4e1b7_Out_2_Float;
            Unity_Multiply_float_float(_Split_39041ef87771e683b834dd7eca6b60aa_G_2_Float, _Multiply_786d36b14fbdef808dd9ac0bb660bdf9_Out_2_Float, _Multiply_1112e16c39010a8faf99d2d7fde4e1b7_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_76a165b3be307289a7e59c5b70b05c89_Out_1_Float;
            Unity_Saturate_float(_Multiply_1112e16c39010a8faf99d2d7fde4e1b7_Out_2_Float, _Saturate_76a165b3be307289a7e59c5b70b05c89_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_fa29688e7d617f8690fad410f7cb077a_Out_2_Float;
            Unity_Multiply_float_float(_Clamp_1a91f1e3aec2228bbfb2a0736004946e_Out_3_Float, _Saturate_76a165b3be307289a7e59c5b70b05c89_Out_1_Float, _Multiply_fa29688e7d617f8690fad410f7cb077a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #if defined(_USEDYNAMICCOVERTSTATICMASKF_ON)
            float _UseDynamicCoverTStaticMaskF_965d575a85d3a285888696251619b92a_Out_0_Float = _Multiply_fa29688e7d617f8690fad410f7cb077a_Out_2_Float;
            #else
            float _UseDynamicCoverTStaticMaskF_965d575a85d3a285888696251619b92a_Out_0_Float = _Clamp_1a91f1e3aec2228bbfb2a0736004946e_Out_3_Float;
            #endif
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Lerp_c59b54e4e94ab88e92b146539960ac48_Out_3_Vector3;
            Unity_Lerp_float3(_BlendOverlayBaseColor_9ffabe2fc453cb81a840278206c992a9_OutVector4_1_Vector3, _BlendOverlayBaseColor_e008078375b0f98abd6bae3cdc0a3816_OutVector4_1_Vector3, (_UseDynamicCoverTStaticMaskF_965d575a85d3a285888696251619b92a_Out_0_Float.xxx), _Lerp_c59b54e4e94ab88e92b146539960ac48_Out_3_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_b04bab91d39976849400b89ad7b519ea_Out_0_Vector4 = _WetColor;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Multiply_d49d385c7400348896380ca150a49179_Out_2_Vector3;
            Unity_Multiply_float3_float3((_Property_b04bab91d39976849400b89ad7b519ea_Out_0_Vector4.xyz), _Lerp_c59b54e4e94ab88e92b146539960ac48_Out_3_Vector3, _Multiply_d49d385c7400348896380ca150a49179_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_6a89d72ac6ee8288843130b19eac4072_Out_1_Float;
            Unity_OneMinus_float(_Split_39041ef87771e683b834dd7eca6b60aa_R_1_Float, _OneMinus_6a89d72ac6ee8288843130b19eac4072_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Lerp_ab54871dfce4b381bee887d0813c791a_Out_3_Vector3;
            Unity_Lerp_float3(_Lerp_c59b54e4e94ab88e92b146539960ac48_Out_3_Vector3, _Multiply_d49d385c7400348896380ca150a49179_Out_2_Vector3, (_OneMinus_6a89d72ac6ee8288843130b19eac4072_Out_1_Float.xxx), _Lerp_ab54871dfce4b381bee887d0813c791a_Out_3_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_R_1_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[0];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_G_2_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[1];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_B_3_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[2];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_A_4_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_532ef6f6b0f1be8b91821eb9e0f91998_Out_0_Float = _AlphaCutoff;
            #endif
            surface.BaseColor = _Lerp_ab54871dfce4b381bee887d0813c791a_Out_3_Vector3;
            surface.Emission = float3(0, 0, 0);
            surface.Alpha = _Split_6a301da40f6f1d8d8b206a60cb2c2a22_A_4_Float;
            surface.AlphaClipThreshold = _Property_532ef6f6b0f1be8b91821eb9e0f91998_Out_0_Float;
            return surface;
        }
        
        // --------------------------------------------------
        // Build Graph Inputs
        #ifdef HAVE_VFX_MODIFICATION
        #define VFX_SRP_ATTRIBUTES Attributes
        #define VFX_SRP_VARYINGS Varyings
        #define VFX_SRP_SURFACE_INPUTS SurfaceDescriptionInputs
        #endif
        VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpaceNormal =                          input.normalOS;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpaceTangent =                         input.tangentOS.xyz;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpacePosition =                        input.positionOS;
        #endif
        
        
            return output;
        }
        SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
        #ifdef HAVE_VFX_MODIFICATION
        #if VFX_USE_GRAPH_VALUES
            uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
            /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
        #endif
            /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
        
        #endif
        
            
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // must use interpolated tangent, bitangent and normal before they are normalized in the pixel shader.
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        float3 unnormalizedNormalWS = input.normalWS;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        const float renormFactor = 1.0 / length(unnormalizedNormalWS);
        #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // use bitangent on the fly like in hdrp
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // IMPORTANT! If we ever support Flip on double sided materials ensure bitangent and tangent are NOT flipped.
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        float crossSign = (input.tangentWS.w > 0.0 ? 1.0 : -1.0)* GetOddNegativeScale();
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        float3 bitang = crossSign * cross(input.normalWS.xyz, input.tangentWS.xyz);
        #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpaceNormal = renormFactor * input.normalWS.xyz;      // we want a unit length Normal Vector node in shader graph
        #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // to pr               eserve mikktspace compliance we use same scale renormFactor as was used on the normal.
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // This                is explained in section 2.2 in "surface gradient based bump mapping framework"
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpaceTangent = renormFactor * input.tangentWS.xyz;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpaceBiTangent = renormFactor * bitang;
        #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpacePosition = input.positionWS;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.AbsoluteWorldSpacePosition = GetAbsolutePositionWS(input.positionWS);
        #endif
        
        
            #if UNITY_UV_STARTS_AT_TOP
            #else
            #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.uv0 = input.texCoord0;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.VertexColor = input.color;
        #endif
        
        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
        #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
        #else
        #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
        #endif
        #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
        
                return output;
        }
        
        // --------------------------------------------------
        // Main
        
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/LightingMetaPass.hlsl"
        
        // --------------------------------------------------
        // Visual Effect Vertex Invocations
        #ifdef HAVE_VFX_MODIFICATION
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
        #endif
        
        ENDHLSL
        }
        Pass
        {
            Name "SceneSelectionPass"
            Tags
            {
                "LightMode" = "SceneSelectionPass"
            }
        
        // Render State
        Cull Off
        
        // Debug
        // <None>
        
        // --------------------------------------------------
        // Pass
        
        HLSLPROGRAM
        
        // Pragmas
        #pragma target 2.0
        #pragma vertex vert
        #pragma fragment frag
        
        // Keywords
        #pragma shader_feature_local_fragment _ _ALPHATEST_ON
        #pragma shader_feature_local _ _USEDYNAMICCOVERTSTATICMASKF_ON
        
        #if defined(_USEDYNAMICCOVERTSTATICMASKF_ON)
            #define KEYWORD_PERMUTATION_0
        #else
            #define KEYWORD_PERMUTATION_1
        #endif
        
        
        // Defines
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define _NORMALMAP 1
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define _NORMAL_DROPOFF_TS 1
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_NORMAL
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_TANGENT
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_POSITION_WS
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_NORMAL_WS
        #endif
        
        #define FEATURES_GRAPH_VERTEX
        /* WARNING: $splice Could not find named fragment 'PassInstancing' */
        #define SHADERPASS SHADERPASS_DEPTHONLY
        #define SCENESELECTIONPASS 1
        #define ALPHA_CLIP_THRESHOLD 1
        
        
        // custom interpolator pre-include
        /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
        
        // Includes
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
        
        // --------------------------------------------------
        // Structs and Packing
        
        // custom interpolators pre packing
        /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
        
        struct Attributes
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionOS : POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalOS : NORMAL;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 tangentOS : TANGENT;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : INSTANCEID_SEMANTIC;
            #endif
            #endif
        };
        struct Varyings
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 positionCS : SV_POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionWS;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalWS;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
            #endif
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
            #endif
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif
            #endif
        };
        struct SurfaceDescriptionInputs
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpaceNormal;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 AbsoluteWorldSpacePosition;
            #endif
        };
        struct VertexDescriptionInputs
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpaceNormal;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpaceTangent;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpacePosition;
            #endif
        };
        struct PackedVaryings
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 positionCS : SV_POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionWS : INTERP0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalWS : INTERP1;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
            #endif
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
            #endif
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif
            #endif
        };
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        PackedVaryings PackVaryings (Varyings input)
        {
            PackedVaryings output;
            ZERO_INITIALIZE(PackedVaryings, output);
            output.positionCS = input.positionCS;
            output.positionWS.xyz = input.positionWS;
            output.normalWS.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif
            return output;
        }
        
        Varyings UnpackVaryings (PackedVaryings input)
        {
            Varyings output;
            output.positionCS = input.positionCS;
            output.positionWS = input.positionWS.xyz;
            output.normalWS = input.normalWS.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif
            return output;
        }
        #endif
        
        // --------------------------------------------------
        // Graph
        
        // Graph Properties
        CBUFFER_START(UnityPerMaterial)
        float _AlphaCutoff;
        float4 _BaseColor;
        float4 _BaseColorMap_TexelSize;
        float4 _BaseTilingOffset;
        float _BaseTriplanarThreshold;
        float4 _BaseNormalMap_TexelSize;
        float _BaseNormalScale;
        float4 _BaseMaskMap_TexelSize;
        float _BaseMetallic;
        float _BaseAORemapMin;
        float _BaseAORemapMax;
        float _BaseSmoothnessRemapMin;
        float _BaseSmoothnessRemapMax;
        float4 _CoverMaskA_TexelSize;
        float _CoverMaskPower;
        float _Cover_Amount;
        float _Cover_Amount_Grow_Speed;
        float3 _CoverDirection;
        float _Cover_Max_Angle;
        float _Cover_Min_Height;
        float _Cover_Min_Height_Blending;
        float4 _CoverBaseColor;
        float4 _CoverBaseColorMap_TexelSize;
        float4 _CoverTilingOffset;
        float _CoverTriplanarThreshold;
        float4 _CoverNormalMap_TexelSize;
        float _CoverNormalScale;
        float _CoverNormalBlendHardness;
        float _CoverHeightMapMin;
        float _CoverHeightMapMax;
        float _CoverHeightMapOffset;
        float _CoverHardness;
        float4 _CoverMaskMap_TexelSize;
        float _CoverMetallic;
        float _CoverAORemapMin;
        float _CoverAORemapMax;
        float _CoverSmoothnessRemapMin;
        float _CoverSmoothnessRemapMax;
        float4 _ShapeNormalMap_TexelSize;
        float _shapeNormalScale;
        float _CovershapeNormalScale;
        float4 _ShapeAO_TexelSize;
        float _ShapeAORemapMin;
        float _ShapeAORemapMax;
        float _CoverShapeAORemapMin;
        float _CoverShapeAORemapMax;
        float4 _DetailMap_TexelSize;
        float4 _DetailTilingOffset;
        float _DetailAlbedoScale;
        float _DetailNormalScale;
        float _DetailSmoothnessScale;
        float _DetailCoverAlbedoScale;
        float _DetailCoverNormalScale;
        float _DetailCoverSmoothnessScale;
        float _CoverMaskRCurvature;
        float _BaseBrightnessCurvMultply;
        float _BaseBrightnessCurvPower;
        float _BaseDarknessCurvMultply;
        float _BaseDarknessCurvPower;
        float _CoverBrightnessCurvMultply;
        float _CoverBrightnessCurvPower;
        float _CoverDarknessCurvMultply;
        float _CoverDarknessCurvPower;
        float4 _WetColor;
        float _WetSmoothness;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_BaseNormalMap);
        SAMPLER(sampler_BaseNormalMap);
        TEXTURE2D(_BaseMaskMap);
        SAMPLER(sampler_BaseMaskMap);
        TEXTURE2D(_CoverMaskA);
        SAMPLER(sampler_CoverMaskA);
        TEXTURE2D(_CoverBaseColorMap);
        SAMPLER(sampler_CoverBaseColorMap);
        TEXTURE2D(_CoverNormalMap);
        SAMPLER(sampler_CoverNormalMap);
        TEXTURE2D(_CoverMaskMap);
        SAMPLER(sampler_CoverMaskMap);
        TEXTURE2D(_ShapeNormalMap);
        SAMPLER(sampler_ShapeNormalMap);
        TEXTURE2D(_ShapeAO);
        SAMPLER(sampler_ShapeAO);
        TEXTURE2D(_DetailMap);
        SAMPLER(sampler_DetailMap);
        
        // Graph Includes
        #include "./NM_Object_VSPro_Indirect.cginc"
        
        // -- Property used by ScenePickingPass
        #ifdef SCENEPICKINGPASS
        float4 _SelectionID;
        #endif
        
        // -- Properties used by SceneSelectionPass
        #ifdef SCENESELECTIONPASS
        int _ObjectId;
        int _PassValue;
        #endif
        
        // Graph Functions
        
        void AddPragma_float(float3 A, out float3 Out){
        #pragma instancing_options renderinglayer procedural:setupVSPro
        Out = A;
        }
        
        struct Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float
        {
        };
        
        void SG_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float(float3 Vector3_314C8600, Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float IN, out float3 ObjectSpacePosition_1)
        {
        float3 _Property_5ec158abd968858c9d31ab40df5e9e6f_Out_0_Vector3 = Vector3_314C8600;
        float3 _InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3;
        InjectSetup_float(_Property_5ec158abd968858c9d31ab40df5e9e6f_Out_0_Vector3, _InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3);
        float3 _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3;
        AddPragma_float(_InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3, _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3);
        ObjectSpacePosition_1 = _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3;
        }
        
        void Unity_Divide_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A / B;
        }
        
        void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
        {
            RGBA = float4(R, G, B, A);
            RGB = float3(R, G, B);
            RG = float2(R, G);
        }
        
        void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
        {
        Out = A * B;
        }
        
        void Unity_Sign_float3(float3 In, out float3 Out)
        {
            Out = sign(In);
        }
        
        void Unity_Multiply_float2_float2(float2 A, float2 B, out float2 Out)
        {
        Out = A * B;
        }
        
        void Unity_Absolute_float3(float3 In, out float3 Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float3(float3 A, float3 B, out float3 Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Multiply_float3_float3(float3 A, float3 B, out float3 Out)
        {
        Out = A * B;
        }
        
        void Unity_Multiply_float_float(float A, float B, out float Out)
        {
        Out = A * B;
        }
        
        void Unity_Add_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A + B;
        }
        
        void Unity_Add_float(float A, float B, out float Out)
        {
            Out = A + B;
        }
        
        struct Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float
        {
        float3 WorldSpaceNormal;
        float3 AbsoluteWorldSpacePosition;
        };
        
        void SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(UnityTexture2D Texture2D_80A3D28F, float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float IN, out float4 XYZ_1, out float4 XZ_2, out float4 YZ_3, out float4 XY_4)
        {
        UnityTexture2D _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D = Texture2D_80A3D28F;
        float _Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
        float _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
        float _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
        float _Split_89ed63cb625cb3878c183d0b71c03400_A_4_Float = 0;
        float4 _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4;
        float3 _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3;
        float2 _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, 0, 0, _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3, _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2);
        float _Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float = Vector1_41461AC9;
        float4 _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4);
        float3 _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3;
        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3);
        float _Split_742547a7039de986a646d04c157ae549_R_1_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[0];
        float _Split_742547a7039de986a646d04c157ae549_G_2_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[1];
        float _Split_742547a7039de986a646d04c157ae549_B_3_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[2];
        float _Split_742547a7039de986a646d04c157ae549_A_4_Float = 0;
        float2 _Vector2_40a8919e571ec18499de72022c155b38_Out_0_Vector2 = float2(_Split_742547a7039de986a646d04c157ae549_G_2_Float, 1);
        float2 _Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4.xy), _Vector2_40a8919e571ec18499de72022c155b38_Out_0_Vector2, _Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2);
        float4 _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2) );
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_R_4_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.r;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_G_5_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.g;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_B_6_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.b;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_A_7_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.a;
        float3 _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3;
        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3);
        float _Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float = Vector1_E4D1C13A;
        float3 _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3;
        Unity_Power_float3(_Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3, (_Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float.xxx), _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3);
        float3 _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3);
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[0];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[1];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[2];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_A_4_Float = 0;
        float4 _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float.xxxx), _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4);
        float4 _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4;
        float3 _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3;
        float2 _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3, _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2);
        float4 _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4);
        float _Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float;
        Unity_Multiply_float_float(_Split_742547a7039de986a646d04c157ae549_B_3_Float, -1, _Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float);
        float2 _Vector2_caa25d55d456a58982bdfc39b1b43f3f_Out_0_Vector2 = float2(_Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float, 1);
        float2 _Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4.xy), _Vector2_caa25d55d456a58982bdfc39b1b43f3f_Out_0_Vector2, _Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2);
        float4 _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2) );
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_R_4_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.r;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_G_5_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.g;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_B_6_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.b;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_A_7_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.a;
        float4 _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float.xxxx), _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4);
        float4 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4;
        float3 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3;
        float2 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2);
        float4 _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4);
        float2 _Vector2_54dfd40df2fc78809955dd272f2cf0c3_Out_0_Vector2 = float2(_Split_742547a7039de986a646d04c157ae549_R_1_Float, 1);
        float2 _Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4.xy), _Vector2_54dfd40df2fc78809955dd272f2cf0c3_Out_0_Vector2, _Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2);
        float4 _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2) );
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_R_4_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.r;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_G_5_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.g;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_B_6_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.b;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_A_7_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.a;
        float4 _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float.xxxx), _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4);
        float4 _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4;
        Unity_Add_float4(_Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4, _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4);
        float4 _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4;
        Unity_Add_float4(_Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4, _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4);
        float _Add_e59af300bba2498db32eac1412123447_Out_2_Float;
        Unity_Add_float(_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float, _Add_e59af300bba2498db32eac1412123447_Out_2_Float);
        float _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float;
        Unity_Add_float(_Add_e59af300bba2498db32eac1412123447_Out_2_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float, _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float);
        float4 _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4;
        Unity_Divide_float4(_Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4, (_Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float.xxxx), _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4);
        XYZ_1 = _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4;
        XZ_2 = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4;
        YZ_3 = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4;
        XY_4 = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4;
        }
        
        // Custom interpolators pre vertex
        /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
        
        // Graph Vertex
        struct VertexDescription
        {
            float3 Position;
            float3 Normal;
            float3 Tangent;
        };
        
        VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
        {
            VertexDescription description = (VertexDescription)0;
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301;
            float3 _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3;
            SG_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float(IN.ObjectSpacePosition, _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301, _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3);
            #endif
            description.Position = _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3;
            description.Normal = IN.ObjectSpaceNormal;
            description.Tangent = IN.ObjectSpaceTangent;
            return description;
        }
        
        // Custom interpolators, pre surface
        #ifdef FEATURES_GRAPH_VERTEX
        Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
        {
        return output;
        }
        #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
        #endif
        
        // Graph Pixel
        struct SurfaceDescription
        {
            float Alpha;
            float AlphaClipThreshold;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_6c17ebaaa33d938990da19e6860d987c_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_72f47eee6df1cd8dbc7790612f96361f_Out_0_Vector4 = _BaseTilingOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4;
            Unity_Divide_float4(float4(1, 1, 0, 0), _Property_72f47eee6df1cd8dbc7790612f96361f_Out_0_Vector4, _Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float = _BaseTriplanarThreshold;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e;
            _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XZ_2_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_YZ_3_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XY_4_Vector4;
            SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(_Property_6c17ebaaa33d938990da19e6860d987c_Out_0_Texture2D, (_Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4).x, _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XZ_2_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_YZ_3_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_R_1_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[0];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_G_2_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[1];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_B_3_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[2];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_A_4_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_532ef6f6b0f1be8b91821eb9e0f91998_Out_0_Float = _AlphaCutoff;
            #endif
            surface.Alpha = _Split_6a301da40f6f1d8d8b206a60cb2c2a22_A_4_Float;
            surface.AlphaClipThreshold = _Property_532ef6f6b0f1be8b91821eb9e0f91998_Out_0_Float;
            return surface;
        }
        
        // --------------------------------------------------
        // Build Graph Inputs
        #ifdef HAVE_VFX_MODIFICATION
        #define VFX_SRP_ATTRIBUTES Attributes
        #define VFX_SRP_VARYINGS Varyings
        #define VFX_SRP_SURFACE_INPUTS SurfaceDescriptionInputs
        #endif
        VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpaceNormal =                          input.normalOS;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpaceTangent =                         input.tangentOS.xyz;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpacePosition =                        input.positionOS;
        #endif
        
        
            return output;
        }
        SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
        #ifdef HAVE_VFX_MODIFICATION
        #if VFX_USE_GRAPH_VALUES
            uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
            /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
        #endif
            /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
        
        #endif
        
            
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // must use interpolated tangent, bitangent and normal before they are normalized in the pixel shader.
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        float3 unnormalizedNormalWS = input.normalWS;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        const float renormFactor = 1.0 / length(unnormalizedNormalWS);
        #endif
        
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpaceNormal = renormFactor * input.normalWS.xyz;      // we want a unit length Normal Vector node in shader graph
        #endif
        
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.AbsoluteWorldSpacePosition = GetAbsolutePositionWS(input.positionWS);
        #endif
        
        
            #if UNITY_UV_STARTS_AT_TOP
            #else
            #endif
        
        
        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
        #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
        #else
        #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
        #endif
        #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
        
                return output;
        }
        
        // --------------------------------------------------
        // Main
        
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/SelectionPickingPass.hlsl"
        
        // --------------------------------------------------
        // Visual Effect Vertex Invocations
        #ifdef HAVE_VFX_MODIFICATION
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
        #endif
        
        ENDHLSL
        }
        Pass
        {
            Name "ScenePickingPass"
            Tags
            {
                "LightMode" = "Picking"
            }
        
        // Render State
        Cull [_Cull]
        
        // Debug
        // <None>
        
        // --------------------------------------------------
        // Pass
        
        HLSLPROGRAM
        
        // Pragmas
        #pragma target 2.0
        #pragma vertex vert
        #pragma fragment frag
        
        // Keywords
        #pragma shader_feature_local_fragment _ _ALPHATEST_ON
        #pragma shader_feature_local _ _USEDYNAMICCOVERTSTATICMASKF_ON
        
        #if defined(_USEDYNAMICCOVERTSTATICMASKF_ON)
            #define KEYWORD_PERMUTATION_0
        #else
            #define KEYWORD_PERMUTATION_1
        #endif
        
        
        // Defines
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define _NORMALMAP 1
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define _NORMAL_DROPOFF_TS 1
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_NORMAL
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_TANGENT
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_POSITION_WS
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_NORMAL_WS
        #endif
        
        #define FEATURES_GRAPH_VERTEX
        /* WARNING: $splice Could not find named fragment 'PassInstancing' */
        #define SHADERPASS SHADERPASS_DEPTHONLY
        #define SCENEPICKINGPASS 1
        #define ALPHA_CLIP_THRESHOLD 1
        
        
        // custom interpolator pre-include
        /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
        
        // Includes
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
        
        // --------------------------------------------------
        // Structs and Packing
        
        // custom interpolators pre packing
        /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
        
        struct Attributes
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionOS : POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalOS : NORMAL;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 tangentOS : TANGENT;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : INSTANCEID_SEMANTIC;
            #endif
            #endif
        };
        struct Varyings
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 positionCS : SV_POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionWS;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalWS;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
            #endif
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
            #endif
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif
            #endif
        };
        struct SurfaceDescriptionInputs
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpaceNormal;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 AbsoluteWorldSpacePosition;
            #endif
        };
        struct VertexDescriptionInputs
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpaceNormal;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpaceTangent;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpacePosition;
            #endif
        };
        struct PackedVaryings
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 positionCS : SV_POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionWS : INTERP0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalWS : INTERP1;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
            #endif
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
            #endif
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif
            #endif
        };
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        PackedVaryings PackVaryings (Varyings input)
        {
            PackedVaryings output;
            ZERO_INITIALIZE(PackedVaryings, output);
            output.positionCS = input.positionCS;
            output.positionWS.xyz = input.positionWS;
            output.normalWS.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif
            return output;
        }
        
        Varyings UnpackVaryings (PackedVaryings input)
        {
            Varyings output;
            output.positionCS = input.positionCS;
            output.positionWS = input.positionWS.xyz;
            output.normalWS = input.normalWS.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif
            return output;
        }
        #endif
        
        // --------------------------------------------------
        // Graph
        
        // Graph Properties
        CBUFFER_START(UnityPerMaterial)
        float _AlphaCutoff;
        float4 _BaseColor;
        float4 _BaseColorMap_TexelSize;
        float4 _BaseTilingOffset;
        float _BaseTriplanarThreshold;
        float4 _BaseNormalMap_TexelSize;
        float _BaseNormalScale;
        float4 _BaseMaskMap_TexelSize;
        float _BaseMetallic;
        float _BaseAORemapMin;
        float _BaseAORemapMax;
        float _BaseSmoothnessRemapMin;
        float _BaseSmoothnessRemapMax;
        float4 _CoverMaskA_TexelSize;
        float _CoverMaskPower;
        float _Cover_Amount;
        float _Cover_Amount_Grow_Speed;
        float3 _CoverDirection;
        float _Cover_Max_Angle;
        float _Cover_Min_Height;
        float _Cover_Min_Height_Blending;
        float4 _CoverBaseColor;
        float4 _CoverBaseColorMap_TexelSize;
        float4 _CoverTilingOffset;
        float _CoverTriplanarThreshold;
        float4 _CoverNormalMap_TexelSize;
        float _CoverNormalScale;
        float _CoverNormalBlendHardness;
        float _CoverHeightMapMin;
        float _CoverHeightMapMax;
        float _CoverHeightMapOffset;
        float _CoverHardness;
        float4 _CoverMaskMap_TexelSize;
        float _CoverMetallic;
        float _CoverAORemapMin;
        float _CoverAORemapMax;
        float _CoverSmoothnessRemapMin;
        float _CoverSmoothnessRemapMax;
        float4 _ShapeNormalMap_TexelSize;
        float _shapeNormalScale;
        float _CovershapeNormalScale;
        float4 _ShapeAO_TexelSize;
        float _ShapeAORemapMin;
        float _ShapeAORemapMax;
        float _CoverShapeAORemapMin;
        float _CoverShapeAORemapMax;
        float4 _DetailMap_TexelSize;
        float4 _DetailTilingOffset;
        float _DetailAlbedoScale;
        float _DetailNormalScale;
        float _DetailSmoothnessScale;
        float _DetailCoverAlbedoScale;
        float _DetailCoverNormalScale;
        float _DetailCoverSmoothnessScale;
        float _CoverMaskRCurvature;
        float _BaseBrightnessCurvMultply;
        float _BaseBrightnessCurvPower;
        float _BaseDarknessCurvMultply;
        float _BaseDarknessCurvPower;
        float _CoverBrightnessCurvMultply;
        float _CoverBrightnessCurvPower;
        float _CoverDarknessCurvMultply;
        float _CoverDarknessCurvPower;
        float4 _WetColor;
        float _WetSmoothness;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_BaseNormalMap);
        SAMPLER(sampler_BaseNormalMap);
        TEXTURE2D(_BaseMaskMap);
        SAMPLER(sampler_BaseMaskMap);
        TEXTURE2D(_CoverMaskA);
        SAMPLER(sampler_CoverMaskA);
        TEXTURE2D(_CoverBaseColorMap);
        SAMPLER(sampler_CoverBaseColorMap);
        TEXTURE2D(_CoverNormalMap);
        SAMPLER(sampler_CoverNormalMap);
        TEXTURE2D(_CoverMaskMap);
        SAMPLER(sampler_CoverMaskMap);
        TEXTURE2D(_ShapeNormalMap);
        SAMPLER(sampler_ShapeNormalMap);
        TEXTURE2D(_ShapeAO);
        SAMPLER(sampler_ShapeAO);
        TEXTURE2D(_DetailMap);
        SAMPLER(sampler_DetailMap);
        
        // Graph Includes
        #include "./NM_Object_VSPro_Indirect.cginc"
        
        // -- Property used by ScenePickingPass
        #ifdef SCENEPICKINGPASS
        float4 _SelectionID;
        #endif
        
        // -- Properties used by SceneSelectionPass
        #ifdef SCENESELECTIONPASS
        int _ObjectId;
        int _PassValue;
        #endif
        
        // Graph Functions
        
        void AddPragma_float(float3 A, out float3 Out){
        #pragma instancing_options renderinglayer procedural:setupVSPro
        Out = A;
        }
        
        struct Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float
        {
        };
        
        void SG_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float(float3 Vector3_314C8600, Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float IN, out float3 ObjectSpacePosition_1)
        {
        float3 _Property_5ec158abd968858c9d31ab40df5e9e6f_Out_0_Vector3 = Vector3_314C8600;
        float3 _InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3;
        InjectSetup_float(_Property_5ec158abd968858c9d31ab40df5e9e6f_Out_0_Vector3, _InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3);
        float3 _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3;
        AddPragma_float(_InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3, _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3);
        ObjectSpacePosition_1 = _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3;
        }
        
        void Unity_Divide_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A / B;
        }
        
        void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
        {
            RGBA = float4(R, G, B, A);
            RGB = float3(R, G, B);
            RG = float2(R, G);
        }
        
        void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
        {
        Out = A * B;
        }
        
        void Unity_Sign_float3(float3 In, out float3 Out)
        {
            Out = sign(In);
        }
        
        void Unity_Multiply_float2_float2(float2 A, float2 B, out float2 Out)
        {
        Out = A * B;
        }
        
        void Unity_Absolute_float3(float3 In, out float3 Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float3(float3 A, float3 B, out float3 Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Multiply_float3_float3(float3 A, float3 B, out float3 Out)
        {
        Out = A * B;
        }
        
        void Unity_Multiply_float_float(float A, float B, out float Out)
        {
        Out = A * B;
        }
        
        void Unity_Add_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A + B;
        }
        
        void Unity_Add_float(float A, float B, out float Out)
        {
            Out = A + B;
        }
        
        struct Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float
        {
        float3 WorldSpaceNormal;
        float3 AbsoluteWorldSpacePosition;
        };
        
        void SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(UnityTexture2D Texture2D_80A3D28F, float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float IN, out float4 XYZ_1, out float4 XZ_2, out float4 YZ_3, out float4 XY_4)
        {
        UnityTexture2D _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D = Texture2D_80A3D28F;
        float _Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
        float _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
        float _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
        float _Split_89ed63cb625cb3878c183d0b71c03400_A_4_Float = 0;
        float4 _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4;
        float3 _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3;
        float2 _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, 0, 0, _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3, _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2);
        float _Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float = Vector1_41461AC9;
        float4 _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4);
        float3 _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3;
        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3);
        float _Split_742547a7039de986a646d04c157ae549_R_1_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[0];
        float _Split_742547a7039de986a646d04c157ae549_G_2_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[1];
        float _Split_742547a7039de986a646d04c157ae549_B_3_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[2];
        float _Split_742547a7039de986a646d04c157ae549_A_4_Float = 0;
        float2 _Vector2_40a8919e571ec18499de72022c155b38_Out_0_Vector2 = float2(_Split_742547a7039de986a646d04c157ae549_G_2_Float, 1);
        float2 _Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4.xy), _Vector2_40a8919e571ec18499de72022c155b38_Out_0_Vector2, _Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2);
        float4 _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2) );
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_R_4_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.r;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_G_5_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.g;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_B_6_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.b;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_A_7_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.a;
        float3 _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3;
        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3);
        float _Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float = Vector1_E4D1C13A;
        float3 _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3;
        Unity_Power_float3(_Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3, (_Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float.xxx), _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3);
        float3 _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3);
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[0];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[1];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[2];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_A_4_Float = 0;
        float4 _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float.xxxx), _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4);
        float4 _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4;
        float3 _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3;
        float2 _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3, _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2);
        float4 _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4);
        float _Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float;
        Unity_Multiply_float_float(_Split_742547a7039de986a646d04c157ae549_B_3_Float, -1, _Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float);
        float2 _Vector2_caa25d55d456a58982bdfc39b1b43f3f_Out_0_Vector2 = float2(_Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float, 1);
        float2 _Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4.xy), _Vector2_caa25d55d456a58982bdfc39b1b43f3f_Out_0_Vector2, _Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2);
        float4 _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2) );
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_R_4_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.r;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_G_5_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.g;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_B_6_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.b;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_A_7_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.a;
        float4 _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float.xxxx), _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4);
        float4 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4;
        float3 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3;
        float2 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2);
        float4 _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4);
        float2 _Vector2_54dfd40df2fc78809955dd272f2cf0c3_Out_0_Vector2 = float2(_Split_742547a7039de986a646d04c157ae549_R_1_Float, 1);
        float2 _Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4.xy), _Vector2_54dfd40df2fc78809955dd272f2cf0c3_Out_0_Vector2, _Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2);
        float4 _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2) );
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_R_4_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.r;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_G_5_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.g;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_B_6_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.b;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_A_7_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.a;
        float4 _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float.xxxx), _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4);
        float4 _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4;
        Unity_Add_float4(_Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4, _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4);
        float4 _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4;
        Unity_Add_float4(_Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4, _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4);
        float _Add_e59af300bba2498db32eac1412123447_Out_2_Float;
        Unity_Add_float(_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float, _Add_e59af300bba2498db32eac1412123447_Out_2_Float);
        float _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float;
        Unity_Add_float(_Add_e59af300bba2498db32eac1412123447_Out_2_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float, _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float);
        float4 _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4;
        Unity_Divide_float4(_Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4, (_Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float.xxxx), _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4);
        XYZ_1 = _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4;
        XZ_2 = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4;
        YZ_3 = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4;
        XY_4 = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4;
        }
        
        // Custom interpolators pre vertex
        /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
        
        // Graph Vertex
        struct VertexDescription
        {
            float3 Position;
            float3 Normal;
            float3 Tangent;
        };
        
        VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
        {
            VertexDescription description = (VertexDescription)0;
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301;
            float3 _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3;
            SG_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float(IN.ObjectSpacePosition, _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301, _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3);
            #endif
            description.Position = _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3;
            description.Normal = IN.ObjectSpaceNormal;
            description.Tangent = IN.ObjectSpaceTangent;
            return description;
        }
        
        // Custom interpolators, pre surface
        #ifdef FEATURES_GRAPH_VERTEX
        Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
        {
        return output;
        }
        #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
        #endif
        
        // Graph Pixel
        struct SurfaceDescription
        {
            float Alpha;
            float AlphaClipThreshold;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_6c17ebaaa33d938990da19e6860d987c_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_72f47eee6df1cd8dbc7790612f96361f_Out_0_Vector4 = _BaseTilingOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4;
            Unity_Divide_float4(float4(1, 1, 0, 0), _Property_72f47eee6df1cd8dbc7790612f96361f_Out_0_Vector4, _Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float = _BaseTriplanarThreshold;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e;
            _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XZ_2_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_YZ_3_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XY_4_Vector4;
            SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(_Property_6c17ebaaa33d938990da19e6860d987c_Out_0_Texture2D, (_Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4).x, _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XZ_2_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_YZ_3_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_R_1_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[0];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_G_2_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[1];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_B_3_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[2];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_A_4_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_532ef6f6b0f1be8b91821eb9e0f91998_Out_0_Float = _AlphaCutoff;
            #endif
            surface.Alpha = _Split_6a301da40f6f1d8d8b206a60cb2c2a22_A_4_Float;
            surface.AlphaClipThreshold = _Property_532ef6f6b0f1be8b91821eb9e0f91998_Out_0_Float;
            return surface;
        }
        
        // --------------------------------------------------
        // Build Graph Inputs
        #ifdef HAVE_VFX_MODIFICATION
        #define VFX_SRP_ATTRIBUTES Attributes
        #define VFX_SRP_VARYINGS Varyings
        #define VFX_SRP_SURFACE_INPUTS SurfaceDescriptionInputs
        #endif
        VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpaceNormal =                          input.normalOS;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpaceTangent =                         input.tangentOS.xyz;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpacePosition =                        input.positionOS;
        #endif
        
        
            return output;
        }
        SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
        #ifdef HAVE_VFX_MODIFICATION
        #if VFX_USE_GRAPH_VALUES
            uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
            /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
        #endif
            /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
        
        #endif
        
            
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // must use interpolated tangent, bitangent and normal before they are normalized in the pixel shader.
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        float3 unnormalizedNormalWS = input.normalWS;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        const float renormFactor = 1.0 / length(unnormalizedNormalWS);
        #endif
        
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpaceNormal = renormFactor * input.normalWS.xyz;      // we want a unit length Normal Vector node in shader graph
        #endif
        
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.AbsoluteWorldSpacePosition = GetAbsolutePositionWS(input.positionWS);
        #endif
        
        
            #if UNITY_UV_STARTS_AT_TOP
            #else
            #endif
        
        
        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
        #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
        #else
        #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
        #endif
        #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
        
                return output;
        }
        
        // --------------------------------------------------
        // Main
        
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/SelectionPickingPass.hlsl"
        
        // --------------------------------------------------
        // Visual Effect Vertex Invocations
        #ifdef HAVE_VFX_MODIFICATION
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
        #endif
        
        ENDHLSL
        }
        Pass
        {
            // Name: <None>
            Tags
            {
                "LightMode" = "Universal2D"
            }
        
        // Render State
        Cull [_Cull]
        Blend [_SrcBlend] [_DstBlend]
        ZTest [_ZTest]
        ZWrite [_ZWrite]
        
        // Debug
        // <None>
        
        // --------------------------------------------------
        // Pass
        
        HLSLPROGRAM
        
        // Pragmas
        #pragma target 2.0
        #pragma vertex vert
        #pragma fragment frag
        
        // Keywords
        #pragma shader_feature_local_fragment _ _ALPHATEST_ON
        #pragma shader_feature_local _ _USEDYNAMICCOVERTSTATICMASKF_ON
        
        #if defined(_USEDYNAMICCOVERTSTATICMASKF_ON)
            #define KEYWORD_PERMUTATION_0
        #else
            #define KEYWORD_PERMUTATION_1
        #endif
        
        
        // Defines
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define _NORMALMAP 1
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define _NORMAL_DROPOFF_TS 1
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_NORMAL
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_TANGENT
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_TEXCOORD0
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define ATTRIBUTES_NEED_COLOR
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_POSITION_WS
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_NORMAL_WS
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_TANGENT_WS
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_TEXCOORD0
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        #define VARYINGS_NEED_COLOR
        #endif
        
        #define FEATURES_GRAPH_VERTEX
        /* WARNING: $splice Could not find named fragment 'PassInstancing' */
        #define SHADERPASS SHADERPASS_2D
        
        
        // custom interpolator pre-include
        /* WARNING: $splice Could not find named fragment 'sgci_CustomInterpolatorPreInclude' */
        
        // Includes
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
        #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
        
        // --------------------------------------------------
        // Structs and Packing
        
        // custom interpolators pre packing
        /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPrePacking' */
        
        struct Attributes
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionOS : POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalOS : NORMAL;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 tangentOS : TANGENT;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 uv0 : TEXCOORD0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 color : COLOR;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : INSTANCEID_SEMANTIC;
            #endif
            #endif
        };
        struct Varyings
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 positionCS : SV_POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionWS;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalWS;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 tangentWS;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 texCoord0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 color;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
            #endif
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
            #endif
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif
            #endif
        };
        struct SurfaceDescriptionInputs
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpaceNormal;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpaceTangent;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpaceBiTangent;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 WorldSpacePosition;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 AbsoluteWorldSpacePosition;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 uv0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 VertexColor;
            #endif
        };
        struct VertexDescriptionInputs
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpaceNormal;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpaceTangent;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 ObjectSpacePosition;
            #endif
        };
        struct PackedVaryings
        {
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 positionCS : SV_POSITION;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 tangentWS : INTERP0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 texCoord0 : INTERP1;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float4 color : INTERP2;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 positionWS : INTERP3;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             float3 normalWS : INTERP4;
            #endif
            #if UNITY_ANY_INSTANCING_ENABLED
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint instanceID : CUSTOM_INSTANCE_ID;
            #endif
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsBlendIdx0 : BLENDINDICES0;
            #endif
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             uint stereoTargetEyeIndexAsRTArrayIdx : SV_RenderTargetArrayIndex;
            #endif
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
             FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif
            #endif
        };
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        PackedVaryings PackVaryings (Varyings input)
        {
            PackedVaryings output;
            ZERO_INITIALIZE(PackedVaryings, output);
            output.positionCS = input.positionCS;
            output.tangentWS.xyzw = input.tangentWS;
            output.texCoord0.xyzw = input.texCoord0;
            output.color.xyzw = input.color;
            output.positionWS.xyz = input.positionWS;
            output.normalWS.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif
            return output;
        }
        
        Varyings UnpackVaryings (PackedVaryings input)
        {
            Varyings output;
            output.positionCS = input.positionCS;
            output.tangentWS = input.tangentWS.xyzw;
            output.texCoord0 = input.texCoord0.xyzw;
            output.color = input.color.xyzw;
            output.positionWS = input.positionWS.xyz;
            output.normalWS = input.normalWS.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif
            #if (defined(UNITY_STEREO_MULTIVIEW_ENABLED)) || (defined(UNITY_STEREO_INSTANCING_ENABLED) && (defined(SHADER_API_GLES3) || defined(SHADER_API_GLCORE)))
            output.stereoTargetEyeIndexAsBlendIdx0 = input.stereoTargetEyeIndexAsBlendIdx0;
            #endif
            #if (defined(UNITY_STEREO_INSTANCING_ENABLED))
            output.stereoTargetEyeIndexAsRTArrayIdx = input.stereoTargetEyeIndexAsRTArrayIdx;
            #endif
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif
            return output;
        }
        #endif
        
        // --------------------------------------------------
        // Graph
        
        // Graph Properties
        CBUFFER_START(UnityPerMaterial)
        float _AlphaCutoff;
        float4 _BaseColor;
        float4 _BaseColorMap_TexelSize;
        float4 _BaseTilingOffset;
        float _BaseTriplanarThreshold;
        float4 _BaseNormalMap_TexelSize;
        float _BaseNormalScale;
        float4 _BaseMaskMap_TexelSize;
        float _BaseMetallic;
        float _BaseAORemapMin;
        float _BaseAORemapMax;
        float _BaseSmoothnessRemapMin;
        float _BaseSmoothnessRemapMax;
        float4 _CoverMaskA_TexelSize;
        float _CoverMaskPower;
        float _Cover_Amount;
        float _Cover_Amount_Grow_Speed;
        float3 _CoverDirection;
        float _Cover_Max_Angle;
        float _Cover_Min_Height;
        float _Cover_Min_Height_Blending;
        float4 _CoverBaseColor;
        float4 _CoverBaseColorMap_TexelSize;
        float4 _CoverTilingOffset;
        float _CoverTriplanarThreshold;
        float4 _CoverNormalMap_TexelSize;
        float _CoverNormalScale;
        float _CoverNormalBlendHardness;
        float _CoverHeightMapMin;
        float _CoverHeightMapMax;
        float _CoverHeightMapOffset;
        float _CoverHardness;
        float4 _CoverMaskMap_TexelSize;
        float _CoverMetallic;
        float _CoverAORemapMin;
        float _CoverAORemapMax;
        float _CoverSmoothnessRemapMin;
        float _CoverSmoothnessRemapMax;
        float4 _ShapeNormalMap_TexelSize;
        float _shapeNormalScale;
        float _CovershapeNormalScale;
        float4 _ShapeAO_TexelSize;
        float _ShapeAORemapMin;
        float _ShapeAORemapMax;
        float _CoverShapeAORemapMin;
        float _CoverShapeAORemapMax;
        float4 _DetailMap_TexelSize;
        float4 _DetailTilingOffset;
        float _DetailAlbedoScale;
        float _DetailNormalScale;
        float _DetailSmoothnessScale;
        float _DetailCoverAlbedoScale;
        float _DetailCoverNormalScale;
        float _DetailCoverSmoothnessScale;
        float _CoverMaskRCurvature;
        float _BaseBrightnessCurvMultply;
        float _BaseBrightnessCurvPower;
        float _BaseDarknessCurvMultply;
        float _BaseDarknessCurvPower;
        float _CoverBrightnessCurvMultply;
        float _CoverBrightnessCurvPower;
        float _CoverDarknessCurvMultply;
        float _CoverDarknessCurvPower;
        float4 _WetColor;
        float _WetSmoothness;
        CBUFFER_END
        
        
        // Object and Global properties
        SAMPLER(SamplerState_Linear_Repeat);
        SAMPLER(SamplerState_Linear_Repeat_Aniso8);
        TEXTURE2D(_BaseColorMap);
        SAMPLER(sampler_BaseColorMap);
        TEXTURE2D(_BaseNormalMap);
        SAMPLER(sampler_BaseNormalMap);
        TEXTURE2D(_BaseMaskMap);
        SAMPLER(sampler_BaseMaskMap);
        TEXTURE2D(_CoverMaskA);
        SAMPLER(sampler_CoverMaskA);
        TEXTURE2D(_CoverBaseColorMap);
        SAMPLER(sampler_CoverBaseColorMap);
        TEXTURE2D(_CoverNormalMap);
        SAMPLER(sampler_CoverNormalMap);
        TEXTURE2D(_CoverMaskMap);
        SAMPLER(sampler_CoverMaskMap);
        TEXTURE2D(_ShapeNormalMap);
        SAMPLER(sampler_ShapeNormalMap);
        TEXTURE2D(_ShapeAO);
        SAMPLER(sampler_ShapeAO);
        TEXTURE2D(_DetailMap);
        SAMPLER(sampler_DetailMap);
        
        // Graph Includes
        #include "./NM_Object_VSPro_Indirect.cginc"
        
        // -- Property used by ScenePickingPass
        #ifdef SCENEPICKINGPASS
        float4 _SelectionID;
        #endif
        
        // -- Properties used by SceneSelectionPass
        #ifdef SCENESELECTIONPASS
        int _ObjectId;
        int _PassValue;
        #endif
        
        // Graph Functions
        
        void AddPragma_float(float3 A, out float3 Out){
        #pragma instancing_options renderinglayer procedural:setupVSPro
        Out = A;
        }
        
        struct Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float
        {
        };
        
        void SG_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float(float3 Vector3_314C8600, Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float IN, out float3 ObjectSpacePosition_1)
        {
        float3 _Property_5ec158abd968858c9d31ab40df5e9e6f_Out_0_Vector3 = Vector3_314C8600;
        float3 _InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3;
        InjectSetup_float(_Property_5ec158abd968858c9d31ab40df5e9e6f_Out_0_Vector3, _InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3);
        float3 _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3;
        AddPragma_float(_InjectSetupCustomFunction_dec9b26544b4a788b8ecb4117dc3d24a_Out_1_Vector3, _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3);
        ObjectSpacePosition_1 = _AddPragmaCustomFunction_b2a053178906d0848480a1f463521a1b_Out_1_Vector3;
        }
        
        void Unity_Divide_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A / B;
        }
        
        void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
        {
            RGBA = float4(R, G, B, A);
            RGB = float3(R, G, B);
            RG = float2(R, G);
        }
        
        void Unity_Multiply_float4_float4(float4 A, float4 B, out float4 Out)
        {
        Out = A * B;
        }
        
        void Unity_Sign_float3(float3 In, out float3 Out)
        {
            Out = sign(In);
        }
        
        void Unity_Multiply_float2_float2(float2 A, float2 B, out float2 Out)
        {
        Out = A * B;
        }
        
        void Unity_Absolute_float3(float3 In, out float3 Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float3(float3 A, float3 B, out float3 Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Multiply_float3_float3(float3 A, float3 B, out float3 Out)
        {
        Out = A * B;
        }
        
        void Unity_Multiply_float_float(float A, float B, out float Out)
        {
        Out = A * B;
        }
        
        void Unity_Add_float4(float4 A, float4 B, out float4 Out)
        {
            Out = A + B;
        }
        
        void Unity_Add_float(float A, float B, out float Out)
        {
            Out = A + B;
        }
        
        struct Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float
        {
        float3 WorldSpaceNormal;
        float3 AbsoluteWorldSpacePosition;
        };
        
        void SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(UnityTexture2D Texture2D_80A3D28F, float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float IN, out float4 XYZ_1, out float4 XZ_2, out float4 YZ_3, out float4 XY_4)
        {
        UnityTexture2D _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D = Texture2D_80A3D28F;
        float _Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
        float _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
        float _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
        float _Split_89ed63cb625cb3878c183d0b71c03400_A_4_Float = 0;
        float4 _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4;
        float3 _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3;
        float2 _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, 0, 0, _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3, _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2);
        float _Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float = Vector1_41461AC9;
        float4 _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4);
        float3 _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3;
        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3);
        float _Split_742547a7039de986a646d04c157ae549_R_1_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[0];
        float _Split_742547a7039de986a646d04c157ae549_G_2_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[1];
        float _Split_742547a7039de986a646d04c157ae549_B_3_Float = _Sign_b826e0ff2d95ec8cb2b2cbbd7ea2eab6_Out_1_Vector3[2];
        float _Split_742547a7039de986a646d04c157ae549_A_4_Float = 0;
        float2 _Vector2_40a8919e571ec18499de72022c155b38_Out_0_Vector2 = float2(_Split_742547a7039de986a646d04c157ae549_G_2_Float, 1);
        float2 _Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4.xy), _Vector2_40a8919e571ec18499de72022c155b38_Out_0_Vector2, _Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2);
        float4 _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_5fa32af59cdca88389832336b2268bd5_Out_2_Vector2) );
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_R_4_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.r;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_G_5_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.g;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_B_6_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.b;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_A_7_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.a;
        float3 _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3;
        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3);
        float _Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float = Vector1_E4D1C13A;
        float3 _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3;
        Unity_Power_float3(_Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3, (_Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float.xxx), _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3);
        float3 _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3);
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[0];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[1];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[2];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_A_4_Float = 0;
        float4 _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float.xxxx), _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4);
        float4 _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4;
        float3 _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3;
        float2 _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3, _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2);
        float4 _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4);
        float _Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float;
        Unity_Multiply_float_float(_Split_742547a7039de986a646d04c157ae549_B_3_Float, -1, _Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float);
        float2 _Vector2_caa25d55d456a58982bdfc39b1b43f3f_Out_0_Vector2 = float2(_Multiply_014402ded5a3988a8c18ba07636ea5a7_Out_2_Float, 1);
        float2 _Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4.xy), _Vector2_caa25d55d456a58982bdfc39b1b43f3f_Out_0_Vector2, _Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2);
        float4 _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_a67201b6e1a0a28c98cd9d06e8b09543_Out_2_Vector2) );
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_R_4_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.r;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_G_5_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.g;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_B_6_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.b;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_A_7_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.a;
        float4 _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float.xxxx), _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4);
        float4 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4;
        float3 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3;
        float2 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2);
        float4 _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4);
        float2 _Vector2_54dfd40df2fc78809955dd272f2cf0c3_Out_0_Vector2 = float2(_Split_742547a7039de986a646d04c157ae549_R_1_Float, 1);
        float2 _Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4.xy), _Vector2_54dfd40df2fc78809955dd272f2cf0c3_Out_0_Vector2, _Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2);
        float4 _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_addbd5fcede95f80bbb806c94e49ef63_Out_2_Vector2) );
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_R_4_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.r;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_G_5_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.g;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_B_6_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.b;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_A_7_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.a;
        float4 _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4;
        Unity_Multiply_float4_float4(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float.xxxx), _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4);
        float4 _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4;
        Unity_Add_float4(_Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector4, _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector4, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4);
        float4 _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4;
        Unity_Add_float4(_Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector4, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector4, _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4);
        float _Add_e59af300bba2498db32eac1412123447_Out_2_Float;
        Unity_Add_float(_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float, _Add_e59af300bba2498db32eac1412123447_Out_2_Float);
        float _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float;
        Unity_Add_float(_Add_e59af300bba2498db32eac1412123447_Out_2_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float, _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float);
        float4 _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4;
        Unity_Divide_float4(_Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector4, (_Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float.xxxx), _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4);
        XYZ_1 = _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector4;
        XZ_2 = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4;
        YZ_3 = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4;
        XY_4 = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4;
        }
        
        void Unity_Clamp_float(float In, float Min, float Max, out float Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Absolute_float(float In, out float Out)
        {
            Out = abs(In);
        }
        
        void Unity_Power_float(float A, float B, out float Out)
        {
            Out = pow(A, B);
        }
        
        void Unity_Clamp_float4(float4 In, float4 Min, float4 Max, out float4 Out)
        {
            Out = clamp(In, Min, Max);
        }
        
        void Unity_Branch_float4(float Predicate, float4 True, float4 False, out float4 Out)
        {
            Out = Predicate ? True : False;
        }
        
        void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
        {
            Out = UV * Tiling + Offset;
        }
        
        void Unity_Saturate_float(float In, out float Out)
        {
            Out = saturate(In);
        }
        
        void Unity_SquareRoot_float4(float4 In, out float4 Out)
        {
            Out = sqrt(In);
        }
        
        void Unity_Sign_float(float In, out float Out)
        {
            Out = sign(In);
        }
        
        void Unity_Ceiling_float(float In, out float Out)
        {
            Out = ceil(In);
        }
        
        void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
        {
            Out = lerp(A, B, T);
        }
        
        struct Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float
        {
        };
        
        void SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float(float4 Color_9AA111D3, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float IN, out float3 OutVector4_1)
        {
        float4 _Property_012510d774fb7f8b860f5270dca4500f_Out_0_Vector4 = Color_9AA111D3;
        float4 _SquareRoot_c2c57d0223a9538aa9240890c3cacb0c_Out_1_Vector4;
        Unity_SquareRoot_float4(_Property_012510d774fb7f8b860f5270dca4500f_Out_0_Vector4, _SquareRoot_c2c57d0223a9538aa9240890c3cacb0c_Out_1_Vector4);
        float _Property_a00e29241d12f983b30177515b367ec9_Out_0_Float = Vector1_FBE622A2;
        float _Sign_343a45ede7349283a681c6bd9998fd8e_Out_1_Float;
        Unity_Sign_float(_Property_a00e29241d12f983b30177515b367ec9_Out_0_Float, _Sign_343a45ede7349283a681c6bd9998fd8e_Out_1_Float);
        float _Add_681019b8f5d3d68bb482d419c9fc61a9_Out_2_Float;
        Unity_Add_float(_Sign_343a45ede7349283a681c6bd9998fd8e_Out_1_Float, 1, _Add_681019b8f5d3d68bb482d419c9fc61a9_Out_2_Float);
        float _Multiply_e8f4cb722712a880ac0db6c7461427f7_Out_2_Float;
        Unity_Multiply_float_float(_Add_681019b8f5d3d68bb482d419c9fc61a9_Out_2_Float, 0.5, _Multiply_e8f4cb722712a880ac0db6c7461427f7_Out_2_Float);
        float _Ceiling_95ad15988aa9b98184875fa754feae01_Out_1_Float;
        Unity_Ceiling_float(_Multiply_e8f4cb722712a880ac0db6c7461427f7_Out_2_Float, _Ceiling_95ad15988aa9b98184875fa754feae01_Out_1_Float);
        float _Property_2db1c747a05ee284a8b00076062f91a4_Out_0_Float = Vector1_8C15C351;
        float _Multiply_9564ecda5193bc8286d9ff771c9226cd_Out_2_Float;
        Unity_Multiply_float_float(_Property_2db1c747a05ee284a8b00076062f91a4_Out_0_Float, _Property_2db1c747a05ee284a8b00076062f91a4_Out_0_Float, _Multiply_9564ecda5193bc8286d9ff771c9226cd_Out_2_Float);
        float4 _Lerp_b3cdb01fc3c5b988ac9b184943bf7c01_Out_3_Vector4;
        Unity_Lerp_float4(_SquareRoot_c2c57d0223a9538aa9240890c3cacb0c_Out_1_Vector4, (_Ceiling_95ad15988aa9b98184875fa754feae01_Out_1_Float.xxxx), (_Multiply_9564ecda5193bc8286d9ff771c9226cd_Out_2_Float.xxxx), _Lerp_b3cdb01fc3c5b988ac9b184943bf7c01_Out_3_Vector4);
        float4 _Multiply_39d1daff98488f8ea2cd794ad4f20926_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Lerp_b3cdb01fc3c5b988ac9b184943bf7c01_Out_3_Vector4, _Lerp_b3cdb01fc3c5b988ac9b184943bf7c01_Out_3_Vector4, _Multiply_39d1daff98488f8ea2cd794ad4f20926_Out_2_Vector4);
        OutVector4_1 = (_Multiply_39d1daff98488f8ea2cd794ad4f20926_Out_2_Vector4.xyz);
        }
        
        void Unity_Add_float2(float2 A, float2 B, out float2 Out)
        {
            Out = A + B;
        }
        
        void Unity_DotProduct_float2(float2 A, float2 B, out float Out)
        {
            Out = dot(A, B);
        }
        
        void Unity_OneMinus_float(float In, out float Out)
        {
            Out = 1 - In;
        }
        
        void Unity_SquareRoot_float(float In, out float Out)
        {
            Out = sqrt(In);
        }
        
        void Unity_Add_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A + B;
        }
        
        void Unity_Divide_float3(float3 A, float3 B, out float3 Out)
        {
            Out = A / B;
        }
        
        void Unity_Normalize_float3(float3 In, out float3 Out)
        {
            Out = normalize(In);
        }
        
        struct Bindings_TriplanarNMn_059da9746584140498cd018db3c76047_float
        {
        float3 WorldSpaceNormal;
        float3 WorldSpaceTangent;
        float3 WorldSpaceBiTangent;
        float3 WorldSpacePosition;
        };
        
        void SG_TriplanarNMn_059da9746584140498cd018db3c76047_float(UnityTexture2D Texture2D_80A3D28F, float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNMn_059da9746584140498cd018db3c76047_float IN, out float4 XYZ_1, out float4 XZ_2, out float4 YZ_3, out float4 XY_4)
        {
        UnityTexture2D _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D = Texture2D_80A3D28F;
        float _Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float = IN.WorldSpacePosition[0];
        float _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float = IN.WorldSpacePosition[1];
        float _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float = IN.WorldSpacePosition[2];
        float _Split_89ed63cb625cb3878c183d0b71c03400_A_4_Float = 0;
        float4 _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4;
        float3 _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3;
        float2 _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, 0, 0, _Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, _Combine_cf2d04ff119ad88493f6460431765cbb_RGB_5_Vector3, _Combine_cf2d04ff119ad88493f6460431765cbb_RG_6_Vector2);
        float _Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float = Vector1_41461AC9;
        float4 _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_cf2d04ff119ad88493f6460431765cbb_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4);
        float3 _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3;
        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3);
        float _Split_6299d4ddcc4c74828aea40a46fdb896e_R_1_Float = _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3[0];
        float _Split_6299d4ddcc4c74828aea40a46fdb896e_G_2_Float = _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3[1];
        float _Split_6299d4ddcc4c74828aea40a46fdb896e_B_3_Float = _Sign_3a6ebf59931cf08cb0482e0144ddac24_Out_1_Vector3[2];
        float _Split_6299d4ddcc4c74828aea40a46fdb896e_A_4_Float = 0;
        float2 _Vector2_b76cb1842101e58b9e636d49b075c612_Out_0_Vector2 = float2(_Split_6299d4ddcc4c74828aea40a46fdb896e_G_2_Float, 1);
        float2 _Multiply_a87753ad90594382bf3a3a95abbadbc8_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_14cec4902d0a00829e4555071a1b8ad1_Out_2_Vector4.xy), _Vector2_b76cb1842101e58b9e636d49b075c612_Out_0_Vector2, _Multiply_a87753ad90594382bf3a3a95abbadbc8_Out_2_Vector2);
        float4 _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_a87753ad90594382bf3a3a95abbadbc8_Out_2_Vector2) );
        _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4);
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_R_4_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.r;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_G_5_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.g;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_B_6_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.b;
        float _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_A_7_Float = _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_RGBA_0_Vector4.a;
        float2 _Vector2_ad6bd100e273d78fa409a30a77bfa2cc_Out_0_Vector2 = float2(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_R_4_Float, _SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_G_5_Float);
        float2 _Multiply_31e8db88ee20c985a9850d1a58f3282b_Out_2_Vector2;
        Unity_Multiply_float2_float2(_Vector2_ad6bd100e273d78fa409a30a77bfa2cc_Out_0_Vector2, _Vector2_b76cb1842101e58b9e636d49b075c612_Out_0_Vector2, _Multiply_31e8db88ee20c985a9850d1a58f3282b_Out_2_Vector2);
        float _Split_5ed44bf2eca0868f81eb18100f49d1fa_R_1_Float = IN.WorldSpaceNormal[0];
        float _Split_5ed44bf2eca0868f81eb18100f49d1fa_G_2_Float = IN.WorldSpaceNormal[1];
        float _Split_5ed44bf2eca0868f81eb18100f49d1fa_B_3_Float = IN.WorldSpaceNormal[2];
        float _Split_5ed44bf2eca0868f81eb18100f49d1fa_A_4_Float = 0;
        float2 _Vector2_70e5837843f28b8b9d64cada3697bd5a_Out_0_Vector2 = float2(_Split_5ed44bf2eca0868f81eb18100f49d1fa_R_1_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_B_3_Float);
        float2 _Add_1145b2f896593d80aa864a34e6702562_Out_2_Vector2;
        Unity_Add_float2(_Multiply_31e8db88ee20c985a9850d1a58f3282b_Out_2_Vector2, _Vector2_70e5837843f28b8b9d64cada3697bd5a_Out_0_Vector2, _Add_1145b2f896593d80aa864a34e6702562_Out_2_Vector2);
        float _Split_2bc77ca2d17bd78cb2383770ce50b179_R_1_Float = _Add_1145b2f896593d80aa864a34e6702562_Out_2_Vector2[0];
        float _Split_2bc77ca2d17bd78cb2383770ce50b179_G_2_Float = _Add_1145b2f896593d80aa864a34e6702562_Out_2_Vector2[1];
        float _Split_2bc77ca2d17bd78cb2383770ce50b179_B_3_Float = 0;
        float _Split_2bc77ca2d17bd78cb2383770ce50b179_A_4_Float = 0;
        float _Multiply_e4fe778b81456d819c52bb414cd95968_Out_2_Float;
        Unity_Multiply_float_float(_SampleTexture2D_35ddc0da4b30e48b83ca2d39af2aba2c_B_6_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_G_2_Float, _Multiply_e4fe778b81456d819c52bb414cd95968_Out_2_Float);
        float3 _Vector3_08f62c5c01619e849f1a7d85a44531ac_Out_0_Vector3 = float3(_Split_2bc77ca2d17bd78cb2383770ce50b179_R_1_Float, _Multiply_e4fe778b81456d819c52bb414cd95968_Out_2_Float, _Split_2bc77ca2d17bd78cb2383770ce50b179_G_2_Float);
        float3 _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3;
        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3);
        float _Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float = Vector1_E4D1C13A;
        float3 _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3;
        Unity_Power_float3(_Absolute_644b798714827680b39bf5d34f70385f_Out_1_Vector3, (_Property_adc4c59482221c8aad681c6558728ac9_Out_0_Float.xxx), _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3);
        float3 _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Power_ee478822a04529849ae8df1636c29fe2_Out_2_Vector3, _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3);
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[0];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[1];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float = _Multiply_b386a937554d73828e437d126d69608b_Out_2_Vector3[2];
        float _Split_ae83014fcbd9f7879a0b91fa66dc9718_A_4_Float = 0;
        float3 _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Vector3_08f62c5c01619e849f1a7d85a44531ac_Out_0_Vector3, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float.xxx), _Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector3);
        float4 _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4;
        float3 _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3;
        float2 _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_R_1_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, _Combine_192c2c4a69be588b90ca005a32e22552_RGB_5_Vector3, _Combine_192c2c4a69be588b90ca005a32e22552_RG_6_Vector2);
        float4 _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_192c2c4a69be588b90ca005a32e22552_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4);
        float _Multiply_de711f4a4614bd89a463b53374cf4036_Out_2_Float;
        Unity_Multiply_float_float(_Split_6299d4ddcc4c74828aea40a46fdb896e_B_3_Float, -1, _Multiply_de711f4a4614bd89a463b53374cf4036_Out_2_Float);
        float2 _Vector2_4ed33f0c73b2698fa6f3c1b77fe76808_Out_0_Vector2 = float2(_Multiply_de711f4a4614bd89a463b53374cf4036_Out_2_Float, 1);
        float2 _Multiply_2af6058cc6ccb88caefd2799bb5941e8_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_138240d0d4846e87b0febabec0d6891b_Out_2_Vector4.xy), _Vector2_4ed33f0c73b2698fa6f3c1b77fe76808_Out_0_Vector2, _Multiply_2af6058cc6ccb88caefd2799bb5941e8_Out_2_Vector2);
        float4 _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_2af6058cc6ccb88caefd2799bb5941e8_Out_2_Vector2) );
        _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4);
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_R_4_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.r;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_G_5_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.g;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_B_6_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.b;
        float _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_A_7_Float = _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_RGBA_0_Vector4.a;
        float2 _Vector2_fe9aedd4528c7486ada4abdca0b0944e_Out_0_Vector2 = float2(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_R_4_Float, _SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_G_5_Float);
        float2 _Multiply_02b9b4665ad9918d8721bcaddc82f06f_Out_2_Vector2;
        Unity_Multiply_float2_float2(_Vector2_fe9aedd4528c7486ada4abdca0b0944e_Out_0_Vector2, _Vector2_4ed33f0c73b2698fa6f3c1b77fe76808_Out_0_Vector2, _Multiply_02b9b4665ad9918d8721bcaddc82f06f_Out_2_Vector2);
        float2 _Vector2_a74a85274da15181abb63cc5e8df0de1_Out_0_Vector2 = float2(_Split_5ed44bf2eca0868f81eb18100f49d1fa_R_1_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_G_2_Float);
        float2 _Add_b227c84042055e8faa1a9fdc69529707_Out_2_Vector2;
        Unity_Add_float2(_Multiply_02b9b4665ad9918d8721bcaddc82f06f_Out_2_Vector2, _Vector2_a74a85274da15181abb63cc5e8df0de1_Out_0_Vector2, _Add_b227c84042055e8faa1a9fdc69529707_Out_2_Vector2);
        float _Split_2cfb9eacd8762483941459cdf28bda97_R_1_Float = _Add_b227c84042055e8faa1a9fdc69529707_Out_2_Vector2[0];
        float _Split_2cfb9eacd8762483941459cdf28bda97_G_2_Float = _Add_b227c84042055e8faa1a9fdc69529707_Out_2_Vector2[1];
        float _Split_2cfb9eacd8762483941459cdf28bda97_B_3_Float = 0;
        float _Split_2cfb9eacd8762483941459cdf28bda97_A_4_Float = 0;
        float _Multiply_1d65ce08ce672087879125f2e13c4004_Out_2_Float;
        Unity_Multiply_float_float(_SampleTexture2D_ba083a478bc22280af2e2cc93ffd5027_B_6_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_B_3_Float, _Multiply_1d65ce08ce672087879125f2e13c4004_Out_2_Float);
        float3 _Vector3_ba6cfb4671e8c58f9b41ea1dc23102ca_Out_0_Vector3 = float3(_Split_2cfb9eacd8762483941459cdf28bda97_R_1_Float, _Split_2cfb9eacd8762483941459cdf28bda97_G_2_Float, _Multiply_1d65ce08ce672087879125f2e13c4004_Out_2_Float);
        float3 _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Vector3_ba6cfb4671e8c58f9b41ea1dc23102ca_Out_0_Vector3, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float.xxx), _Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector3);
        float4 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4;
        float3 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3;
        float2 _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2;
        Unity_Combine_float(_Split_89ed63cb625cb3878c183d0b71c03400_B_3_Float, _Split_89ed63cb625cb3878c183d0b71c03400_G_2_Float, 0, 0, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGB_5_Vector3, _Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RG_6_Vector2);
        float4 _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4;
        Unity_Multiply_float4_float4(_Combine_1e9ffdba42d6918fb7a4b185f1585d2a_RGBA_4_Vector4, (_Property_47988ec10c0c18879d461e00bed806e7_Out_0_Float.xxxx), _Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4);
        float2 _Vector2_a1e23e0f921b6484818f009a2b12a5ba_Out_0_Vector2 = float2(_Split_6299d4ddcc4c74828aea40a46fdb896e_R_1_Float, 1);
        float2 _Multiply_862402885a49f18cb87278ab53bc6744_Out_2_Vector2;
        Unity_Multiply_float2_float2((_Multiply_2c0864423b014f8b8af8523f68cbb63c_Out_2_Vector4.xy), _Vector2_a1e23e0f921b6484818f009a2b12a5ba_Out_0_Vector2, _Multiply_862402885a49f18cb87278ab53bc6744_Out_2_Vector2);
        float4 _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.tex, UnityBuildSamplerStateStruct(SamplerState_Linear_Repeat_Aniso8).samplerstate, _Property_3e01b4d2fc68d48ba3acbba9d5881e59_Out_0_Texture2D.GetTransformedUV(_Multiply_862402885a49f18cb87278ab53bc6744_Out_2_Vector2) );
        _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4);
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_R_4_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.r;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_G_5_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.g;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_B_6_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.b;
        float _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_A_7_Float = _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_RGBA_0_Vector4.a;
        float _Multiply_4649b768be76d784a3284bacde795359_Out_2_Float;
        Unity_Multiply_float_float(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_B_6_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_R_1_Float, _Multiply_4649b768be76d784a3284bacde795359_Out_2_Float);
        float2 _Vector2_819fcd5eb484438eacad1987576d7d67_Out_0_Vector2 = float2(_SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_R_4_Float, _SampleTexture2D_30c5fd692044ae87b9c4029fa46973fa_G_5_Float);
        float2 _Multiply_58530ebb3c6d798b93686a76247bf505_Out_2_Vector2;
        Unity_Multiply_float2_float2(_Vector2_819fcd5eb484438eacad1987576d7d67_Out_0_Vector2, _Vector2_a1e23e0f921b6484818f009a2b12a5ba_Out_0_Vector2, _Multiply_58530ebb3c6d798b93686a76247bf505_Out_2_Vector2);
        float2 _Vector2_e293c112b2f49e88a5fe46dfb1fbeb40_Out_0_Vector2 = float2(_Split_5ed44bf2eca0868f81eb18100f49d1fa_B_3_Float, _Split_5ed44bf2eca0868f81eb18100f49d1fa_G_2_Float);
        float2 _Add_cf00fb232c6e2b8e973ab2f84453f55e_Out_2_Vector2;
        Unity_Add_float2(_Multiply_58530ebb3c6d798b93686a76247bf505_Out_2_Vector2, _Vector2_e293c112b2f49e88a5fe46dfb1fbeb40_Out_0_Vector2, _Add_cf00fb232c6e2b8e973ab2f84453f55e_Out_2_Vector2);
        float _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_R_1_Float = _Add_cf00fb232c6e2b8e973ab2f84453f55e_Out_2_Vector2[0];
        float _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_G_2_Float = _Add_cf00fb232c6e2b8e973ab2f84453f55e_Out_2_Vector2[1];
        float _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_B_3_Float = 0;
        float _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_A_4_Float = 0;
        float3 _Vector3_13a08d5940172a84a78ee3d9b8766833_Out_0_Vector3 = float3(_Multiply_4649b768be76d784a3284bacde795359_Out_2_Float, _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_G_2_Float, _Split_3ea3e61d32bdd78f82c686b75ff3fd9b_R_1_Float);
        float3 _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector3;
        Unity_Multiply_float3_float3(_Vector3_13a08d5940172a84a78ee3d9b8766833_Out_0_Vector3, (_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float.xxx), _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector3);
        float3 _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector3;
        Unity_Add_float3(_Multiply_7bb4009c92b108849ac6ca92bc1442f2_Out_2_Vector3, _Multiply_77818c22e359fc8cbb7dd20216a8db72_Out_2_Vector3, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector3);
        float3 _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector3;
        Unity_Add_float3(_Multiply_2e1040ca9c98d085ace76ee93f094039_Out_2_Vector3, _Add_769d9ee909c9238dbbf72d2800a2f268_Out_2_Vector3, _Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector3);
        float _Add_e59af300bba2498db32eac1412123447_Out_2_Float;
        Unity_Add_float(_Split_ae83014fcbd9f7879a0b91fa66dc9718_R_1_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_G_2_Float, _Add_e59af300bba2498db32eac1412123447_Out_2_Float);
        float _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float;
        Unity_Add_float(_Add_e59af300bba2498db32eac1412123447_Out_2_Float, _Split_ae83014fcbd9f7879a0b91fa66dc9718_B_3_Float, _Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float);
        float3 _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector3;
        Unity_Divide_float3(_Add_14295f72880e4b87a1baf1ced943ac40_Out_2_Vector3, (_Add_e855069f047fae8ea9027d56acb61e56_Out_2_Float.xxx), _Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector3);
        float3 _Transform_73eecc0c3689d184a34c8d0f28a58adf_Out_1_Vector3;
        {
        float3x3 tangentTransform = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
        _Transform_73eecc0c3689d184a34c8d0f28a58adf_Out_1_Vector3 = TransformWorldToTangentDir(_Divide_91ae4b94f1d9b78e99d0472293b8098c_Out_2_Vector3.xyz, tangentTransform, true);
        }
        float3 _Normalize_15ef346824db0a8797631ed8b998e673_Out_1_Vector3;
        Unity_Normalize_float3(_Transform_73eecc0c3689d184a34c8d0f28a58adf_Out_1_Vector3, _Normalize_15ef346824db0a8797631ed8b998e673_Out_1_Vector3);
        XYZ_1 = (float4(_Normalize_15ef346824db0a8797631ed8b998e673_Out_1_Vector3, 1.0));
        XZ_2 = (float4(_Vector3_08f62c5c01619e849f1a7d85a44531ac_Out_0_Vector3, 1.0));
        YZ_3 = (float4(_Vector3_ba6cfb4671e8c58f9b41ea1dc23102ca_Out_0_Vector3, 1.0));
        XY_4 = (float4(_Vector3_13a08d5940172a84a78ee3d9b8766833_Out_0_Vector3, 1.0));
        }
        
        void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
        {
            Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
        }
        
        void Unity_NormalBlend_float(float3 A, float3 B, out float3 Out)
        {
            Out = SafeNormalize(float3(A.rg + B.rg, A.b * B.b));
        }
        
        void Unity_Subtract_float(float A, float B, out float Out)
        {
            Out = A - B;
        }
        
        void Unity_Divide_float(float A, float B, out float Out)
        {
            Out = A / B;
        }
        
        void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
        {
            Out = lerp(A, B, T);
        }
        
        void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
        {
            Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
        }
        
        // Custom interpolators pre vertex
        /* WARNING: $splice Could not find named fragment 'CustomInterpolatorPreVertex' */
        
        // Graph Vertex
        struct VertexDescription
        {
            float3 Position;
            float3 Normal;
            float3 Tangent;
        };
        
        VertexDescription VertexDescriptionFunction(VertexDescriptionInputs IN)
        {
            VertexDescription description = (VertexDescription)0;
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301;
            float3 _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3;
            SG_NMObjectVSProIndirect_0cfe1e4f145944241ab304331e53c93b_float(IN.ObjectSpacePosition, _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301, _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3);
            #endif
            description.Position = _NMObjectVSProIndirect_115d78c580a04f8dbaeeee34e4004301_ObjectSpacePosition_1_Vector3;
            description.Normal = IN.ObjectSpaceNormal;
            description.Tangent = IN.ObjectSpaceTangent;
            return description;
        }
        
        // Custom interpolators, pre surface
        #ifdef FEATURES_GRAPH_VERTEX
        Varyings CustomInterpolatorPassThroughFunc(inout Varyings output, VertexDescription input)
        {
        return output;
        }
        #define CUSTOMINTERPOLATOR_VARYPASSTHROUGH_FUNC
        #endif
        
        // Graph Pixel
        struct SurfaceDescription
        {
            float3 BaseColor;
            float Alpha;
            float AlphaClipThreshold;
        };
        
        SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
        {
            SurfaceDescription surface = (SurfaceDescription)0;
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_b4deafa94a27e588ab2e901ce05fd5c2_Out_0_Boolean = _CoverMaskRCurvature;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_6c17ebaaa33d938990da19e6860d987c_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseColorMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_72f47eee6df1cd8dbc7790612f96361f_Out_0_Vector4 = _BaseTilingOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4;
            Unity_Divide_float4(float4(1, 1, 0, 0), _Property_72f47eee6df1cd8dbc7790612f96361f_Out_0_Vector4, _Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float = _BaseTriplanarThreshold;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e;
            _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XZ_2_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_YZ_3_Vector4;
            float4 _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XY_4_Vector4;
            SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(_Property_6c17ebaaa33d938990da19e6860d987c_Out_0_Texture2D, (_Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4).x, _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XZ_2_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_YZ_3_Vector4, _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_9465a0f7ac851b8daf29a27b34e035be_Out_0_Vector4 = _BaseColor;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Multiply_4cbb8fe598df6b8995e151b170112293_Out_2_Vector4;
            Unity_Multiply_float4_float4(_TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4, _Property_9465a0f7ac851b8daf29a27b34e035be_Out_0_Vector4, _Multiply_4cbb8fe598df6b8995e151b170112293_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_6bf54b76e7bec584b1f7856c6442c603_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_CoverMaskA);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _UV_71e815f5c2f7188e9df5850b0bfa07ba_Out_0_Vector4 = IN.uv0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_6bf54b76e7bec584b1f7856c6442c603_Out_0_Texture2D.tex, _Property_6bf54b76e7bec584b1f7856c6442c603_Out_0_Texture2D.samplerstate, _Property_6bf54b76e7bec584b1f7856c6442c603_Out_0_Texture2D.GetTransformedUV((_UV_71e815f5c2f7188e9df5850b0bfa07ba_Out_0_Vector4.xy)) );
            float _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_R_4_Float = _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4.r;
            float _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_G_5_Float = _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4.g;
            float _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_B_6_Float = _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4.b;
            float _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_A_7_Float = _SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_RGBA_0_Vector4.a;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_61d87310f8d25683b3e258b2a7c32687_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_R_4_Float, 2, _Multiply_61d87310f8d25683b3e258b2a7c32687_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_2a04a0bb2acbb08cbe9bed32574a79f2_Out_0_Float = _BaseDarknessCurvMultply;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_22ddb374af8b978e8e07fbefa70c9485_Out_2_Float;
            Unity_Multiply_float_float(_Multiply_61d87310f8d25683b3e258b2a7c32687_Out_2_Float, _Property_2a04a0bb2acbb08cbe9bed32574a79f2_Out_0_Float, _Multiply_22ddb374af8b978e8e07fbefa70c9485_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_8ba74b557a6292888d4ba32c8da72989_Out_3_Float;
            Unity_Clamp_float(_Multiply_22ddb374af8b978e8e07fbefa70c9485_Out_2_Float, 0, 1, _Clamp_8ba74b557a6292888d4ba32c8da72989_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_80289d7a8316d28bb4411239017120b6_Out_1_Float;
            Unity_Absolute_float(_Clamp_8ba74b557a6292888d4ba32c8da72989_Out_3_Float, _Absolute_80289d7a8316d28bb4411239017120b6_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_ed4690b030015f83b3b06ac15e9d0ac7_Out_0_Float = _BaseDarknessCurvPower;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_5ba92bd090fe278aa7287667dd405d23_Out_2_Float;
            Unity_Power_float(_Absolute_80289d7a8316d28bb4411239017120b6_Out_1_Float, _Property_ed4690b030015f83b3b06ac15e9d0ac7_Out_0_Float, _Power_5ba92bd090fe278aa7287667dd405d23_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_22c4e36fffdf1887adb074e78bbc7b44_Out_3_Float;
            Unity_Clamp_float(_Power_5ba92bd090fe278aa7287667dd405d23_Out_2_Float, 0, 1, _Clamp_22c4e36fffdf1887adb074e78bbc7b44_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Multiply_f0be8921ed844a8aac9de0d40006f34b_Out_2_Vector4;
            Unity_Multiply_float4_float4(_Multiply_4cbb8fe598df6b8995e151b170112293_Out_2_Vector4, (_Clamp_22c4e36fffdf1887adb074e78bbc7b44_Out_3_Float.xxxx), _Multiply_f0be8921ed844a8aac9de0d40006f34b_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Clamp_864c8f6cb2a43a89b921dce01e0ef53b_Out_3_Vector4;
            Unity_Clamp_float4(_Multiply_f0be8921ed844a8aac9de0d40006f34b_Out_2_Vector4, float4(0, 0, 0, 0), float4(1, 1, 1, 1), _Clamp_864c8f6cb2a43a89b921dce01e0ef53b_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_a49c8f8c03fef888a861c2d7c17af6f8_Out_2_Float;
            Unity_Add_float(_Multiply_61d87310f8d25683b3e258b2a7c32687_Out_2_Float, -1, _Add_a49c8f8c03fef888a861c2d7c17af6f8_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_9323cd642f42ed8cbac9c6df151c47fa_Out_3_Float;
            Unity_Clamp_float(_Add_a49c8f8c03fef888a861c2d7c17af6f8_Out_2_Float, 0, 1, _Clamp_9323cd642f42ed8cbac9c6df151c47fa_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_33f339ef1ed862819656675eee2fb944_Out_0_Float = _BaseBrightnessCurvMultply;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_b0785816d24af2898f76ec8a2429185e_Out_2_Float;
            Unity_Multiply_float_float(_Clamp_9323cd642f42ed8cbac9c6df151c47fa_Out_3_Float, _Property_33f339ef1ed862819656675eee2fb944_Out_0_Float, _Multiply_b0785816d24af2898f76ec8a2429185e_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_b973335853a46c8a81e03c3bd287d046_Out_3_Float;
            Unity_Clamp_float(_Multiply_b0785816d24af2898f76ec8a2429185e_Out_2_Float, 0, 1, _Clamp_b973335853a46c8a81e03c3bd287d046_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_cc9743a0986aaa84a27e8f69f9752f76_Out_1_Float;
            Unity_Absolute_float(_Clamp_b973335853a46c8a81e03c3bd287d046_Out_3_Float, _Absolute_cc9743a0986aaa84a27e8f69f9752f76_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_3c0b9cbbfa7d0d828d63c00b91d92336_Out_0_Float = _BaseBrightnessCurvPower;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_1ed803ec6c9f7c848be6ac4c00192882_Out_2_Float;
            Unity_Power_float(_Absolute_cc9743a0986aaa84a27e8f69f9752f76_Out_1_Float, _Property_3c0b9cbbfa7d0d828d63c00b91d92336_Out_0_Float, _Power_1ed803ec6c9f7c848be6ac4c00192882_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_1e8c74117b5d6c8fa33005b50ce04bb8_Out_3_Float;
            Unity_Clamp_float(_Power_1ed803ec6c9f7c848be6ac4c00192882_Out_2_Float, 0, 1, _Clamp_1e8c74117b5d6c8fa33005b50ce04bb8_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Add_e8ceba55bdbffe8eb19f02736be349aa_Out_2_Vector4;
            Unity_Add_float4(_Clamp_864c8f6cb2a43a89b921dce01e0ef53b_Out_3_Vector4, (_Clamp_1e8c74117b5d6c8fa33005b50ce04bb8_Out_3_Float.xxxx), _Add_e8ceba55bdbffe8eb19f02736be349aa_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Clamp_96d8dcc832f8cc8ba79cc5afd2f1c865_Out_3_Vector4;
            Unity_Clamp_float4(_Add_e8ceba55bdbffe8eb19f02736be349aa_Out_2_Vector4, float4(0, 0, 0, 0), float4(1, 1, 1, 1), _Clamp_96d8dcc832f8cc8ba79cc5afd2f1c865_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Branch_2498532d512ec68fa0efb263834949f7_Out_3_Vector4;
            Unity_Branch_float4(_Property_b4deafa94a27e588ab2e901ce05fd5c2_Out_0_Boolean, _Clamp_96d8dcc832f8cc8ba79cc5afd2f1c865_Out_3_Vector4, _Multiply_4cbb8fe598df6b8995e151b170112293_Out_2_Vector4, _Branch_2498532d512ec68fa0efb263834949f7_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_8c38efbdc687808784e64df5f7851a74_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_DetailMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4 = _DetailTilingOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_6b7d8752798f268c8b3cb4ab5a46f73e_R_1_Float = _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4[0];
            float _Split_6b7d8752798f268c8b3cb4ab5a46f73e_G_2_Float = _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4[1];
            float _Split_6b7d8752798f268c8b3cb4ab5a46f73e_B_3_Float = _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4[2];
            float _Split_6b7d8752798f268c8b3cb4ab5a46f73e_A_4_Float = _Property_d9c53ae9920831898998e0f9c9e2a371_Out_0_Vector4[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_6d91e5afee3d4e88ba756da4c0cbfcb2_Out_0_Vector2 = float2(_Split_6b7d8752798f268c8b3cb4ab5a46f73e_R_1_Float, _Split_6b7d8752798f268c8b3cb4ab5a46f73e_G_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_692caa48e2186d8b83435fe066df038c_Out_0_Vector2 = float2(_Split_6b7d8752798f268c8b3cb4ab5a46f73e_B_3_Float, _Split_6b7d8752798f268c8b3cb4ab5a46f73e_A_4_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _TilingAndOffset_6c4e5074c066068fbf7f993634c1cb8d_Out_3_Vector2;
            Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_6d91e5afee3d4e88ba756da4c0cbfcb2_Out_0_Vector2, _Vector2_692caa48e2186d8b83435fe066df038c_Out_0_Vector2, _TilingAndOffset_6c4e5074c066068fbf7f993634c1cb8d_Out_3_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_8c38efbdc687808784e64df5f7851a74_Out_0_Texture2D.tex, _Property_8c38efbdc687808784e64df5f7851a74_Out_0_Texture2D.samplerstate, _Property_8c38efbdc687808784e64df5f7851a74_Out_0_Texture2D.GetTransformedUV(_TilingAndOffset_6c4e5074c066068fbf7f993634c1cb8d_Out_3_Vector2) );
            float _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_R_4_Float = _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4.r;
            float _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_G_5_Float = _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4.g;
            float _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_B_6_Float = _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4.b;
            float _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_A_7_Float = _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_RGBA_0_Vector4.a;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_a9cd845f93693a80b6111fb063544a74_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_R_4_Float, 2, _Multiply_a9cd845f93693a80b6111fb063544a74_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_cef5411ef4065b849dab8ae41142e9e9_Out_2_Float;
            Unity_Add_float(_Multiply_a9cd845f93693a80b6111fb063544a74_Out_2_Float, -1, _Add_cef5411ef4065b849dab8ae41142e9e9_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_86c816f0fd959684a1e6e728b9519627_Out_0_Float = _DetailAlbedoScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_1ee7e827f3048f858e7b5c2c28318efe_Out_2_Float;
            Unity_Multiply_float_float(_Add_cef5411ef4065b849dab8ae41142e9e9_Out_2_Float, _Property_86c816f0fd959684a1e6e728b9519627_Out_0_Float, _Multiply_1ee7e827f3048f858e7b5c2c28318efe_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_b4653e33464aa08c993df6c9b8355a51_Out_1_Float;
            Unity_Saturate_float(_Multiply_1ee7e827f3048f858e7b5c2c28318efe_Out_2_Float, _Saturate_b4653e33464aa08c993df6c9b8355a51_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_1b7c4e8f9d7c0f86adab6f50c6958c56_Out_1_Float;
            Unity_Absolute_float(_Saturate_b4653e33464aa08c993df6c9b8355a51_Out_1_Float, _Absolute_1b7c4e8f9d7c0f86adab6f50c6958c56_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float _BlendOverlayBaseColor_9ffabe2fc453cb81a840278206c992a9;
            float3 _BlendOverlayBaseColor_9ffabe2fc453cb81a840278206c992a9_OutVector4_1_Vector3;
            SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float(_Branch_2498532d512ec68fa0efb263834949f7_Out_3_Vector4, _Add_cef5411ef4065b849dab8ae41142e9e9_Out_2_Float, _Absolute_1b7c4e8f9d7c0f86adab6f50c6958c56_Out_1_Float, _BlendOverlayBaseColor_9ffabe2fc453cb81a840278206c992a9, _BlendOverlayBaseColor_9ffabe2fc453cb81a840278206c992a9_OutVector4_1_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_cb1daa31a8aa778e83e89aea442a2d54_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_CoverBaseColorMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_ccec42aa79dbde8c8b90b6b19097f847_Out_0_Vector4 = _CoverTilingOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4;
            Unity_Divide_float4(float4(1, 1, 0, 0), _Property_ccec42aa79dbde8c8b90b6b19097f847_Out_0_Vector4, _Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_7e0717fa374eed86a380cfe44b28edf0_Out_0_Float = _CoverTriplanarThreshold;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float _TriplanarNM_629ab1e956a2e889871d22b762bf4375;
            _TriplanarNM_629ab1e956a2e889871d22b762bf4375.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNM_629ab1e956a2e889871d22b762bf4375.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
            float4 _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XYZ_1_Vector4;
            float4 _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XZ_2_Vector4;
            float4 _TriplanarNM_629ab1e956a2e889871d22b762bf4375_YZ_3_Vector4;
            float4 _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XY_4_Vector4;
            SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(_Property_cb1daa31a8aa778e83e89aea442a2d54_Out_0_Texture2D, (_Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4).x, _Property_7e0717fa374eed86a380cfe44b28edf0_Out_0_Float, _TriplanarNM_629ab1e956a2e889871d22b762bf4375, _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XYZ_1_Vector4, _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XZ_2_Vector4, _TriplanarNM_629ab1e956a2e889871d22b762bf4375_YZ_3_Vector4, _TriplanarNM_629ab1e956a2e889871d22b762bf4375_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_def3e41ed70425849fd44f5047e437fe_Out_0_Vector4 = _CoverBaseColor;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Multiply_66ad5344cffca188ba4604c5629ca8c5_Out_2_Vector4;
            Unity_Multiply_float4_float4(_TriplanarNM_629ab1e956a2e889871d22b762bf4375_XYZ_1_Vector4, _Property_def3e41ed70425849fd44f5047e437fe_Out_0_Vector4, _Multiply_66ad5344cffca188ba4604c5629ca8c5_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_bfbeca46f6256b8ba5a9c7eecc1952fa_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_R_4_Float, 2, _Multiply_bfbeca46f6256b8ba5a9c7eecc1952fa_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_559a8a631f049c80a0540b05cb8f37a2_Out_0_Float = _CoverDarknessCurvMultply;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_1c2f0f7f36765c8c89e3326d3be9d903_Out_2_Float;
            Unity_Multiply_float_float(_Multiply_bfbeca46f6256b8ba5a9c7eecc1952fa_Out_2_Float, _Property_559a8a631f049c80a0540b05cb8f37a2_Out_0_Float, _Multiply_1c2f0f7f36765c8c89e3326d3be9d903_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_ad38cc41210e8f868ed1b357dc4e7b74_Out_3_Float;
            Unity_Clamp_float(_Multiply_1c2f0f7f36765c8c89e3326d3be9d903_Out_2_Float, 0, 1, _Clamp_ad38cc41210e8f868ed1b357dc4e7b74_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_ae69e110d4c49280b35c4e7b54b5a7f1_Out_1_Float;
            Unity_Absolute_float(_Clamp_ad38cc41210e8f868ed1b357dc4e7b74_Out_3_Float, _Absolute_ae69e110d4c49280b35c4e7b54b5a7f1_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_46a6a9ede4568980b45a07904918a504_Out_0_Float = _CoverDarknessCurvPower;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_4b2b68959f57c88ea44a62ea10ca1fe9_Out_2_Float;
            Unity_Power_float(_Absolute_ae69e110d4c49280b35c4e7b54b5a7f1_Out_1_Float, _Property_46a6a9ede4568980b45a07904918a504_Out_0_Float, _Power_4b2b68959f57c88ea44a62ea10ca1fe9_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_103f46053cfbe588a9814688e733efcf_Out_3_Float;
            Unity_Clamp_float(_Power_4b2b68959f57c88ea44a62ea10ca1fe9_Out_2_Float, 0, 1, _Clamp_103f46053cfbe588a9814688e733efcf_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Multiply_c7ad9f79dda0b489afa94b67d63fa000_Out_2_Vector4;
            Unity_Multiply_float4_float4(_Multiply_66ad5344cffca188ba4604c5629ca8c5_Out_2_Vector4, (_Clamp_103f46053cfbe588a9814688e733efcf_Out_3_Float.xxxx), _Multiply_c7ad9f79dda0b489afa94b67d63fa000_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Clamp_d7af96dc6cc5f988a0591b241ed78acc_Out_3_Vector4;
            Unity_Clamp_float4(_Multiply_c7ad9f79dda0b489afa94b67d63fa000_Out_2_Vector4, float4(0, 0, 0, 0), float4(1, 1, 1, 1), _Clamp_d7af96dc6cc5f988a0591b241ed78acc_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_8fd457fe97f9638cafa0323faa2a8dfc_Out_2_Float;
            Unity_Add_float(_Multiply_bfbeca46f6256b8ba5a9c7eecc1952fa_Out_2_Float, -1, _Add_8fd457fe97f9638cafa0323faa2a8dfc_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_978695ad7d0e828ba992b5cb3ca26eae_Out_3_Float;
            Unity_Clamp_float(_Add_8fd457fe97f9638cafa0323faa2a8dfc_Out_2_Float, 0, 1, _Clamp_978695ad7d0e828ba992b5cb3ca26eae_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_67c192d19b444a81849a1176f3a697f6_Out_0_Float = _CoverBrightnessCurvMultply;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_3d670a97734e8c878835f7360055572a_Out_2_Float;
            Unity_Multiply_float_float(_Clamp_978695ad7d0e828ba992b5cb3ca26eae_Out_3_Float, _Property_67c192d19b444a81849a1176f3a697f6_Out_0_Float, _Multiply_3d670a97734e8c878835f7360055572a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_db58547294da9e8785ee7b6c3a976698_Out_3_Float;
            Unity_Clamp_float(_Multiply_3d670a97734e8c878835f7360055572a_Out_2_Float, 0, 1, _Clamp_db58547294da9e8785ee7b6c3a976698_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_8b40786bf852328aaa652dc116916196_Out_1_Float;
            Unity_Absolute_float(_Clamp_db58547294da9e8785ee7b6c3a976698_Out_3_Float, _Absolute_8b40786bf852328aaa652dc116916196_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_a09af913dea5a68c9a7bab01c65be2c8_Out_0_Float = _CoverBrightnessCurvPower;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_c0b759d680738485abb57d1a2b3b80b9_Out_2_Float;
            Unity_Power_float(_Absolute_8b40786bf852328aaa652dc116916196_Out_1_Float, _Property_a09af913dea5a68c9a7bab01c65be2c8_Out_0_Float, _Power_c0b759d680738485abb57d1a2b3b80b9_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_1305e9cad6dd178cb5bfe84a93942985_Out_3_Float;
            Unity_Clamp_float(_Power_c0b759d680738485abb57d1a2b3b80b9_Out_2_Float, 0, 1, _Clamp_1305e9cad6dd178cb5bfe84a93942985_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Add_7db003c440510b8aabb72b85c537eb52_Out_2_Vector4;
            Unity_Add_float4(_Clamp_d7af96dc6cc5f988a0591b241ed78acc_Out_3_Vector4, (_Clamp_1305e9cad6dd178cb5bfe84a93942985_Out_3_Float.xxxx), _Add_7db003c440510b8aabb72b85c537eb52_Out_2_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Clamp_72f41eca0c04cf8996f777072fe268a5_Out_3_Vector4;
            Unity_Clamp_float4(_Add_7db003c440510b8aabb72b85c537eb52_Out_2_Vector4, float4(0, 0, 0, 0), float4(1, 1, 1, 1), _Clamp_72f41eca0c04cf8996f777072fe268a5_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Branch_6d2c90f4f3988386a2faf0998e6ed26b_Out_3_Vector4;
            Unity_Branch_float4(_Property_b4deafa94a27e588ab2e901ce05fd5c2_Out_0_Boolean, _Clamp_72f41eca0c04cf8996f777072fe268a5_Out_3_Vector4, _Multiply_66ad5344cffca188ba4604c5629ca8c5_Out_2_Vector4, _Branch_6d2c90f4f3988386a2faf0998e6ed26b_Out_3_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_857e1bdb72dc5d84a584fe6e3ff2329a_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_R_4_Float, 2, _Multiply_857e1bdb72dc5d84a584fe6e3ff2329a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_370337bea3e6fd8caacf4da48d0aa1b4_Out_2_Float;
            Unity_Add_float(_Multiply_857e1bdb72dc5d84a584fe6e3ff2329a_Out_2_Float, -1, _Add_370337bea3e6fd8caacf4da48d0aa1b4_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_62ca1795c20eb18985f6e7f9939ddf03_Out_0_Float = _DetailCoverAlbedoScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_3fd659a76cb9ae8ea60a8742620bd73c_Out_2_Float;
            Unity_Multiply_float_float(_Add_370337bea3e6fd8caacf4da48d0aa1b4_Out_2_Float, _Property_62ca1795c20eb18985f6e7f9939ddf03_Out_0_Float, _Multiply_3fd659a76cb9ae8ea60a8742620bd73c_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_8adac7fd6fcfdf8580ba2b7f00df5a41_Out_1_Float;
            Unity_Saturate_float(_Multiply_3fd659a76cb9ae8ea60a8742620bd73c_Out_2_Float, _Saturate_8adac7fd6fcfdf8580ba2b7f00df5a41_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_65f0556758f3f08483bdc59c1861e254_Out_1_Float;
            Unity_Absolute_float(_Saturate_8adac7fd6fcfdf8580ba2b7f00df5a41_Out_1_Float, _Absolute_65f0556758f3f08483bdc59c1861e254_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float _BlendOverlayBaseColor_e008078375b0f98abd6bae3cdc0a3816;
            float3 _BlendOverlayBaseColor_e008078375b0f98abd6bae3cdc0a3816_OutVector4_1_Vector3;
            SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2_float(_Branch_6d2c90f4f3988386a2faf0998e6ed26b_Out_3_Vector4, _Add_370337bea3e6fd8caacf4da48d0aa1b4_Out_2_Float, _Absolute_65f0556758f3f08483bdc59c1861e254_Out_1_Float, _BlendOverlayBaseColor_e008078375b0f98abd6bae3cdc0a3816, _BlendOverlayBaseColor_e008078375b0f98abd6bae3cdc0a3816_OutVector4_1_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_53b4f3caa35448849236e404330ffd86_Out_0_Float = _CoverMaskPower;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_04bf3e7568d5f48eb573d01235d77199_Out_2_Float;
            Unity_Multiply_float_float(_SampleTexture2D_55e64df6e0b7478c9d701de928a1b25b_A_7_Float, _Property_53b4f3caa35448849236e404330ffd86_Out_0_Float, _Multiply_04bf3e7568d5f48eb573d01235d77199_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_1a91f1e3aec2228bbfb2a0736004946e_Out_3_Float;
            Unity_Clamp_float(_Multiply_04bf3e7568d5f48eb573d01235d77199_Out_2_Float, 0, 1, _Clamp_1a91f1e3aec2228bbfb2a0736004946e_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_39041ef87771e683b834dd7eca6b60aa_R_1_Float = IN.VertexColor[0];
            float _Split_39041ef87771e683b834dd7eca6b60aa_G_2_Float = IN.VertexColor[1];
            float _Split_39041ef87771e683b834dd7eca6b60aa_B_3_Float = IN.VertexColor[2];
            float _Split_39041ef87771e683b834dd7eca6b60aa_A_4_Float = IN.VertexColor[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Property_7c6ba36b7f75fd828a781ef390fe81fc_Out_0_Vector3 = _CoverDirection;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_ff34f3d24838f9889391530c04d6424b_Out_0_Vector2 = float2(_SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_A_7_Float, _SampleTexture2D_8fcaa49248af6b81a139ec4b666ce66c_G_5_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Multiply_120ef27f63ba4986acb31850d2223033_Out_2_Vector2;
            Unity_Multiply_float2_float2(_Vector2_ff34f3d24838f9889391530c04d6424b_Out_0_Vector2, float2(2, 2), _Multiply_120ef27f63ba4986acb31850d2223033_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Add_039ef572252c1f8b9ab1d9732873c6fd_Out_2_Vector2;
            Unity_Add_float2(_Multiply_120ef27f63ba4986acb31850d2223033_Out_2_Vector2, float2(-1, -1), _Add_039ef572252c1f8b9ab1d9732873c6fd_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_a4bc7e1c8f487182befa14cc923c5d7e_Out_0_Float = _DetailNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2;
            Unity_Multiply_float2_float2(_Add_039ef572252c1f8b9ab1d9732873c6fd_Out_2_Vector2, (_Property_a4bc7e1c8f487182befa14cc923c5d7e_Out_0_Float.xx), _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_817710a160cfd38f84dcd2ffe4ac9433_R_1_Float = _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2[0];
            float _Split_817710a160cfd38f84dcd2ffe4ac9433_G_2_Float = _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2[1];
            float _Split_817710a160cfd38f84dcd2ffe4ac9433_B_3_Float = 0;
            float _Split_817710a160cfd38f84dcd2ffe4ac9433_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _DotProduct_3a85ce810a5835809449d39fc0d43a7c_Out_2_Float;
            Unity_DotProduct_float2(_Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2, _Multiply_656f409ea5684988bf2de5e3ff5ec5e9_Out_2_Vector2, _DotProduct_3a85ce810a5835809449d39fc0d43a7c_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_ee7cc148f5d6c28596b254c9279b2d7c_Out_1_Float;
            Unity_Saturate_float(_DotProduct_3a85ce810a5835809449d39fc0d43a7c_Out_2_Float, _Saturate_ee7cc148f5d6c28596b254c9279b2d7c_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_81925f2879ac8985a29ea1d3496d3737_Out_1_Float;
            Unity_OneMinus_float(_Saturate_ee7cc148f5d6c28596b254c9279b2d7c_Out_1_Float, _OneMinus_81925f2879ac8985a29ea1d3496d3737_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _SquareRoot_679457140ebdbc8690be9c70d79c2c1e_Out_1_Float;
            Unity_SquareRoot_float(_OneMinus_81925f2879ac8985a29ea1d3496d3737_Out_1_Float, _SquareRoot_679457140ebdbc8690be9c70d79c2c1e_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Vector3_f1f5f90ed8452788a91000853614a735_Out_0_Vector3 = float3(_Split_817710a160cfd38f84dcd2ffe4ac9433_R_1_Float, _Split_817710a160cfd38f84dcd2ffe4ac9433_G_2_Float, _SquareRoot_679457140ebdbc8690be9c70d79c2c1e_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_bdb50713d9952086bf4040254f8555ed_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_BaseNormalMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNMn_059da9746584140498cd018db3c76047_float _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a;
            _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a.WorldSpaceTangent = IN.WorldSpaceTangent;
            _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
            _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a.WorldSpacePosition = IN.WorldSpacePosition;
            float4 _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XYZ_1_Vector4;
            float4 _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XZ_2_Vector4;
            float4 _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_YZ_3_Vector4;
            float4 _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XY_4_Vector4;
            SG_TriplanarNMn_059da9746584140498cd018db3c76047_float(_Property_bdb50713d9952086bf4040254f8555ed_Out_0_Texture2D, (_Divide_619a710a3015858fae7c4a8abe600a52_Out_2_Vector4).x, _Property_b04bf6f0d65e1f8ba37f2627de882af5_Out_0_Float, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XYZ_1_Vector4, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XZ_2_Vector4, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_YZ_3_Vector4, _TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_eacffd623cf35d848606835e2ba45716_Out_0_Float = _BaseNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalStrength_ec69d73d79314488b62d6a9c43da4dfe_Out_2_Vector3;
            Unity_NormalStrength_float((_TriplanarNMn_c9dff3410ee2f6879b9609687fa9427a_XYZ_1_Vector4.xyz), _Property_eacffd623cf35d848606835e2ba45716_Out_0_Float, _NormalStrength_ec69d73d79314488b62d6a9c43da4dfe_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_904e20298b6e8d87823dd334eda299d8_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_ShapeNormalMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4 = SAMPLE_TEXTURE2D(_Property_904e20298b6e8d87823dd334eda299d8_Out_0_Texture2D.tex, _Property_904e20298b6e8d87823dd334eda299d8_Out_0_Texture2D.samplerstate, _Property_904e20298b6e8d87823dd334eda299d8_Out_0_Texture2D.GetTransformedUV(IN.uv0.xy) );
            _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.rgb = UnpackNormal(_SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4);
            float _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_R_4_Float = _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.r;
            float _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_G_5_Float = _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.g;
            float _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_B_6_Float = _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.b;
            float _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_A_7_Float = _SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.a;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_c1ff82ca84d4238e8cf089d81f0b36bd_Out_0_Float = _shapeNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalStrength_44610f37afea2585a26a19d4e1f5e8ae_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.xyz), _Property_c1ff82ca84d4238e8cf089d81f0b36bd_Out_0_Float, _NormalStrength_44610f37afea2585a26a19d4e1f5e8ae_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalBlend_00b50fa0bb2ee087958824288a62541d_Out_2_Vector3;
            Unity_NormalBlend_float(_NormalStrength_ec69d73d79314488b62d6a9c43da4dfe_Out_2_Vector3, _NormalStrength_44610f37afea2585a26a19d4e1f5e8ae_Out_2_Vector3, _NormalBlend_00b50fa0bb2ee087958824288a62541d_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalBlend_a694ea2f4baada8da0978a00c2ccb417_Out_2_Vector3;
            Unity_NormalBlend_float(_Vector3_f1f5f90ed8452788a91000853614a735_Out_0_Vector3, _NormalBlend_00b50fa0bb2ee087958824288a62541d_Out_2_Vector3, _NormalBlend_a694ea2f4baada8da0978a00c2ccb417_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_97f32254bc217f89994d4619c96f8442_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_CoverNormalMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNMn_059da9746584140498cd018db3c76047_float _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28;
            _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28.WorldSpaceTangent = IN.WorldSpaceTangent;
            _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
            _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28.WorldSpacePosition = IN.WorldSpacePosition;
            float4 _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XYZ_1_Vector4;
            float4 _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XZ_2_Vector4;
            float4 _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_YZ_3_Vector4;
            float4 _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XY_4_Vector4;
            SG_TriplanarNMn_059da9746584140498cd018db3c76047_float(_Property_97f32254bc217f89994d4619c96f8442_Out_0_Texture2D, (_Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4).x, _Property_7e0717fa374eed86a380cfe44b28edf0_Out_0_Float, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XYZ_1_Vector4, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XZ_2_Vector4, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_YZ_3_Vector4, _TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_d6c69131205a1189837880dcb3f8d3d0_Out_0_Float = _CoverNormalBlendHardness;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalStrength_9dc5b89ad68a7185bbbaed44b704eec7_Out_2_Vector3;
            Unity_NormalStrength_float((_TriplanarNMn_9bf92fcc77e8d986b3ff802d6b8b2e28_XYZ_1_Vector4.xyz), _Property_d6c69131205a1189837880dcb3f8d3d0_Out_0_Float, _NormalStrength_9dc5b89ad68a7185bbbaed44b704eec7_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_51fa8dd95f84a68e9130a8ecefb8c986_Out_0_Float = _CovershapeNormalScale;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalStrength_9c8b92cfc893a386b69204d34b74152b_Out_2_Vector3;
            Unity_NormalStrength_float((_SampleTexture2D_e5ffad219c059e8b9dec4247ffbe7607_RGBA_0_Vector4.xyz), _Property_51fa8dd95f84a68e9130a8ecefb8c986_Out_0_Float, _NormalStrength_9c8b92cfc893a386b69204d34b74152b_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _NormalBlend_782afb0f64887e8380e83132b6a5810e_Out_2_Vector3;
            Unity_NormalBlend_float(_NormalStrength_9dc5b89ad68a7185bbbaed44b704eec7_Out_2_Vector3, _NormalStrength_9c8b92cfc893a386b69204d34b74152b_Out_2_Vector3, _NormalBlend_782afb0f64887e8380e83132b6a5810e_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Property_7c6ba36b7f75fd828a781ef390fe81fc_Out_0_Vector3, IN.WorldSpaceNormal, _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_96256a8185f0568abafec3a227827546_R_1_Float = _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3[0];
            float _Split_96256a8185f0568abafec3a227827546_G_2_Float = _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3[1];
            float _Split_96256a8185f0568abafec3a227827546_B_3_Float = _Multiply_f60867f3c3e9868283694a57f044a019_Out_2_Vector3[2];
            float _Split_96256a8185f0568abafec3a227827546_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_f5913a02d21120849228d323bef35553_Out_2_Float;
            Unity_Add_float(_Split_96256a8185f0568abafec3a227827546_R_1_Float, _Split_96256a8185f0568abafec3a227827546_G_2_Float, _Add_f5913a02d21120849228d323bef35553_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_9a058a92f487128798a7f94472c0ca30_Out_2_Float;
            Unity_Add_float(_Add_f5913a02d21120849228d323bef35553_Out_2_Float, _Split_96256a8185f0568abafec3a227827546_B_3_Float, _Add_9a058a92f487128798a7f94472c0ca30_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_da7d9b77e00889889a1cf846bbb669a5_Out_0_Float = _Cover_Amount;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_9ac7e0db72fe9d8297f925d7a8d82981_Out_0_Float = _Cover_Amount_Grow_Speed;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Subtract_0f19dd2c94f6928ba6cdfc45f693284d_Out_2_Float;
            Unity_Subtract_float(4, _Property_9ac7e0db72fe9d8297f925d7a8d82981_Out_0_Float, _Subtract_0f19dd2c94f6928ba6cdfc45f693284d_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Divide_3bef9bbb9755dc8696f8ac17007a2366_Out_2_Float;
            Unity_Divide_float(_Property_da7d9b77e00889889a1cf846bbb669a5_Out_0_Float, _Subtract_0f19dd2c94f6928ba6cdfc45f693284d_Out_2_Float, _Divide_3bef9bbb9755dc8696f8ac17007a2366_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_1fc5042ab3ae9989938f02ed525d6d1b_Out_1_Float;
            Unity_Absolute_float(_Divide_3bef9bbb9755dc8696f8ac17007a2366_Out_2_Float, _Absolute_1fc5042ab3ae9989938f02ed525d6d1b_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_7f87f809e802fe8cae930b82dfe1911c_Out_2_Float;
            Unity_Power_float(_Absolute_1fc5042ab3ae9989938f02ed525d6d1b_Out_1_Float, _Subtract_0f19dd2c94f6928ba6cdfc45f693284d_Out_2_Float, _Power_7f87f809e802fe8cae930b82dfe1911c_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float;
            Unity_Clamp_float(_Power_7f87f809e802fe8cae930b82dfe1911c_Out_2_Float, 0, 2, _Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_b9d25c21d933788b84d54f7c635149e2_Out_2_Float;
            Unity_Multiply_float_float(_Add_9a058a92f487128798a7f94472c0ca30_Out_2_Float, _Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float, _Multiply_b9d25c21d933788b84d54f7c635149e2_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_fbb647649cdbf583a108c0f8cdf6aaa0_Out_1_Float;
            Unity_Saturate_float(_Multiply_b9d25c21d933788b84d54f7c635149e2_Out_2_Float, _Saturate_fbb647649cdbf583a108c0f8cdf6aaa0_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_ee2e002d790e45849c0cbd1357a0ce4a_Out_3_Float;
            Unity_Clamp_float(_Add_9a058a92f487128798a7f94472c0ca30_Out_2_Float, 0, 0.9999, _Clamp_ee2e002d790e45849c0cbd1357a0ce4a_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_d4885ba189012a86826100355a8ee1d1_Out_0_Float = _Cover_Max_Angle;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Divide_5bd014a6111174888637d9078175ccbb_Out_2_Float;
            Unity_Divide_float(_Property_d4885ba189012a86826100355a8ee1d1_Out_0_Float, 45, _Divide_5bd014a6111174888637d9078175ccbb_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_80b741ae772c4d8191d5f26898f95578_Out_1_Float;
            Unity_OneMinus_float(_Divide_5bd014a6111174888637d9078175ccbb_Out_2_Float, _OneMinus_80b741ae772c4d8191d5f26898f95578_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Subtract_f22c892d39e02b8abe6ab26a57a62249_Out_2_Float;
            Unity_Subtract_float(_Clamp_ee2e002d790e45849c0cbd1357a0ce4a_Out_3_Float, _OneMinus_80b741ae772c4d8191d5f26898f95578_Out_1_Float, _Subtract_f22c892d39e02b8abe6ab26a57a62249_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_fdfdf3d8e65f078c9f4a01f83b01f048_Out_3_Float;
            Unity_Clamp_float(_Subtract_f22c892d39e02b8abe6ab26a57a62249_Out_2_Float, 0, 2, _Clamp_fdfdf3d8e65f078c9f4a01f83b01f048_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Divide_9c6c3a806810a3809e3c224188106363_Out_2_Float;
            Unity_Divide_float(1, _Divide_5bd014a6111174888637d9078175ccbb_Out_2_Float, _Divide_9c6c3a806810a3809e3c224188106363_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_e65088594cdcd48fa0f022fc8175c8c9_Out_2_Float;
            Unity_Multiply_float_float(_Clamp_fdfdf3d8e65f078c9f4a01f83b01f048_Out_3_Float, _Divide_9c6c3a806810a3809e3c224188106363_Out_2_Float, _Multiply_e65088594cdcd48fa0f022fc8175c8c9_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Absolute_2b394cd0bed344818ffb9eed9e5c53e1_Out_1_Float;
            Unity_Absolute_float(_Multiply_e65088594cdcd48fa0f022fc8175c8c9_Out_2_Float, _Absolute_2b394cd0bed344818ffb9eed9e5c53e1_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_cb57d5e16197578e8e8ba3400aab436b_Out_0_Float = _CoverHardness;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Power_21df469b2db977828d49344ca1eec030_Out_2_Float;
            Unity_Power_float(_Absolute_2b394cd0bed344818ffb9eed9e5c53e1_Out_1_Float, _Property_cb57d5e16197578e8e8ba3400aab436b_Out_0_Float, _Power_21df469b2db977828d49344ca1eec030_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_d6dc82050413eb849dfc6983ad308f63_Out_0_Float = _Cover_Min_Height;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_55ba8ae17d7e908a8c116f016933a5c4_Out_1_Float;
            Unity_OneMinus_float(_Property_d6dc82050413eb849dfc6983ad308f63_Out_0_Float, _OneMinus_55ba8ae17d7e908a8c116f016933a5c4_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_9034d1eb71e07a84aaafa21620d0ebcb_R_1_Float = IN.AbsoluteWorldSpacePosition[0];
            float _Split_9034d1eb71e07a84aaafa21620d0ebcb_G_2_Float = IN.AbsoluteWorldSpacePosition[1];
            float _Split_9034d1eb71e07a84aaafa21620d0ebcb_B_3_Float = IN.AbsoluteWorldSpacePosition[2];
            float _Split_9034d1eb71e07a84aaafa21620d0ebcb_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float;
            Unity_Add_float(_OneMinus_55ba8ae17d7e908a8c116f016933a5c4_Out_1_Float, _Split_9034d1eb71e07a84aaafa21620d0ebcb_G_2_Float, _Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_e4c251a4fa894882bb13119a081a7170_Out_2_Float;
            Unity_Add_float(_Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float, 1, _Add_e4c251a4fa894882bb13119a081a7170_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_eb62a527acaafa88b6e28bfaa49893f4_Out_3_Float;
            Unity_Clamp_float(_Add_e4c251a4fa894882bb13119a081a7170_Out_2_Float, 0, 1, _Clamp_eb62a527acaafa88b6e28bfaa49893f4_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_f9094ebaecca9780b46893a792429806_Out_0_Float = _Cover_Min_Height_Blending;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_18ea921b495add86a362e3706f6c9569_Out_2_Float;
            Unity_Add_float(_Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float, _Property_f9094ebaecca9780b46893a792429806_Out_0_Float, _Add_18ea921b495add86a362e3706f6c9569_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Divide_bbf053c5aa7f6a88becd534af7ba8301_Out_2_Float;
            Unity_Divide_float(_Add_18ea921b495add86a362e3706f6c9569_Out_2_Float, _Add_e580f93bbd94dd8e824bf29a2a963e5a_Out_2_Float, _Divide_bbf053c5aa7f6a88becd534af7ba8301_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_327fa2c4164bb68a86132da6b0e7e78f_Out_1_Float;
            Unity_OneMinus_float(_Divide_bbf053c5aa7f6a88becd534af7ba8301_Out_2_Float, _OneMinus_327fa2c4164bb68a86132da6b0e7e78f_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_ecd7b6a41e7af88fa3cbef16a3bc5b02_Out_2_Float;
            Unity_Add_float(_OneMinus_327fa2c4164bb68a86132da6b0e7e78f_Out_1_Float, -0.5, _Add_ecd7b6a41e7af88fa3cbef16a3bc5b02_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_e1620f6d6ff43682b4ad7b309118f941_Out_3_Float;
            Unity_Clamp_float(_Add_ecd7b6a41e7af88fa3cbef16a3bc5b02_Out_2_Float, 0, 1, _Clamp_e1620f6d6ff43682b4ad7b309118f941_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_5c0e00010d3f368db3787628623c361a_Out_2_Float;
            Unity_Add_float(_Clamp_eb62a527acaafa88b6e28bfaa49893f4_Out_3_Float, _Clamp_e1620f6d6ff43682b4ad7b309118f941_Out_3_Float, _Add_5c0e00010d3f368db3787628623c361a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Clamp_94e731fd5526ec8281dee0a6143f09c1_Out_3_Float;
            Unity_Clamp_float(_Add_5c0e00010d3f368db3787628623c361a_Out_2_Float, 0, 1, _Clamp_94e731fd5526ec8281dee0a6143f09c1_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_18e2801a2e62658287a6f37f74c849c5_Out_2_Float;
            Unity_Multiply_float_float(_Power_21df469b2db977828d49344ca1eec030_Out_2_Float, _Clamp_94e731fd5526ec8281dee0a6143f09c1_Out_3_Float, _Multiply_18e2801a2e62658287a6f37f74c849c5_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_b364ac6af25fa58db4da48bef2655e44_Out_2_Float;
            Unity_Multiply_float_float(_Saturate_fbb647649cdbf583a108c0f8cdf6aaa0_Out_1_Float, _Multiply_18e2801a2e62658287a6f37f74c849c5_Out_2_Float, _Multiply_b364ac6af25fa58db4da48bef2655e44_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Lerp_ce0e66ae6c014a87bf6b30846c04b2f6_Out_3_Vector3;
            Unity_Lerp_float3(_NormalBlend_a694ea2f4baada8da0978a00c2ccb417_Out_2_Vector3, _NormalBlend_782afb0f64887e8380e83132b6a5810e_Out_2_Vector3, (_Multiply_b364ac6af25fa58db4da48bef2655e44_Out_2_Float.xxx), _Lerp_ce0e66ae6c014a87bf6b30846c04b2f6_Out_3_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Transform_770d1933b55d1b84a0bd6db42f3c78c9_Out_1_Vector3;
            {
                float3x3 tangentTransform = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                _Transform_770d1933b55d1b84a0bd6db42f3c78c9_Out_1_Vector3 = TransformTangentToWorldDir(_Lerp_ce0e66ae6c014a87bf6b30846c04b2f6_Out_3_Vector3.xyz, tangentTransform, true).xyz;
            }
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3;
            Unity_Multiply_float3_float3(_Property_7c6ba36b7f75fd828a781ef390fe81fc_Out_0_Vector3, _Transform_770d1933b55d1b84a0bd6db42f3c78c9_Out_1_Vector3, _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_R_1_Float = _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3[0];
            float _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_G_2_Float = _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3[1];
            float _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_B_3_Float = _Multiply_91c2c88810551482bbd8ed0094045725_Out_2_Vector3[2];
            float _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_A_4_Float = 0;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_edda96f9db17d38cb56cd74fad991c1b_Out_2_Float;
            Unity_Add_float(_Split_0aa1fa7994fd9383afd7d2a31b8a5c58_R_1_Float, _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_G_2_Float, _Add_edda96f9db17d38cb56cd74fad991c1b_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Add_f4f04e53f77faf80ace8c0f8e979843c_Out_2_Float;
            Unity_Add_float(_Add_edda96f9db17d38cb56cd74fad991c1b_Out_2_Float, _Split_0aa1fa7994fd9383afd7d2a31b8a5c58_B_3_Float, _Add_f4f04e53f77faf80ace8c0f8e979843c_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_5a81fd82c6a81e899179cd6a617a9aec_Out_2_Float;
            Unity_Multiply_float_float(_Add_f4f04e53f77faf80ace8c0f8e979843c_Out_2_Float, _Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float, _Multiply_5a81fd82c6a81e899179cd6a617a9aec_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_e06a505285f5238a853337d02932891b_Out_2_Float;
            Unity_Multiply_float_float(_Clamp_589c3296b0470885a139139cebbd3bd3_Out_3_Float, _Property_cb57d5e16197578e8e8ba3400aab436b_Out_0_Float, _Multiply_e06a505285f5238a853337d02932891b_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_088b09a855d8228bb73f1fecf4e444fd_Out_2_Float;
            Unity_Multiply_float_float(_Multiply_e06a505285f5238a853337d02932891b_Out_2_Float, _Multiply_18e2801a2e62658287a6f37f74c849c5_Out_2_Float, _Multiply_088b09a855d8228bb73f1fecf4e444fd_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_5636b2845aba9a8cae86012e0ece3ad1_Out_2_Float;
            Unity_Multiply_float_float(_Multiply_5a81fd82c6a81e899179cd6a617a9aec_Out_2_Float, _Multiply_088b09a855d8228bb73f1fecf4e444fd_Out_2_Float, _Multiply_5636b2845aba9a8cae86012e0ece3ad1_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            UnityTexture2D _Property_69f7b0977ddb53899920af6323e8d0fe_Out_0_Texture2D = UnityBuildTexture2DStructNoScale(_CoverMaskMap);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7;
            _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7.WorldSpaceNormal = IN.WorldSpaceNormal;
            _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7.AbsoluteWorldSpacePosition = IN.AbsoluteWorldSpacePosition;
            float4 _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4;
            float4 _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XZ_2_Vector4;
            float4 _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_YZ_3_Vector4;
            float4 _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XY_4_Vector4;
            SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea_float(_Property_69f7b0977ddb53899920af6323e8d0fe_Out_0_Texture2D, (_Divide_4d75bf3a78e24e8384e44fedc7e7fcf9_Out_2_Vector4).x, _Property_7e0717fa374eed86a380cfe44b28edf0_Out_0_Float, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XZ_2_Vector4, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_YZ_3_Vector4, _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XY_4_Vector4);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_e4be19cd1f232a808ae6fe9f9259cd4e_R_1_Float = _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4[0];
            float _Split_e4be19cd1f232a808ae6fe9f9259cd4e_G_2_Float = _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4[1];
            float _Split_e4be19cd1f232a808ae6fe9f9259cd4e_B_3_Float = _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4[2];
            float _Split_e4be19cd1f232a808ae6fe9f9259cd4e_A_4_Float = _TriplanarNM_639a1edfb516838ba5be47ffe025a9b7_XYZ_1_Vector4[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_48f133c0cba9a8819633d2d3b23b260c_Out_0_Float = _CoverHeightMapMin;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_739d4be9d8e77c85a5db4914565db091_Out_0_Float = _CoverHeightMapMax;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Vector2_a40393428558cd879a301cba41adb10c_Out_0_Vector2 = float2(_Property_48f133c0cba9a8819633d2d3b23b260c_Out_0_Float, _Property_739d4be9d8e77c85a5db4914565db091_Out_0_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_895edb6e4c6a818eb2e6568e3d0027ee_Out_0_Float = _CoverHeightMapOffset;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float2 _Add_5fe0b993c875028f97cc5b6530321a12_Out_2_Vector2;
            Unity_Add_float2(_Vector2_a40393428558cd879a301cba41adb10c_Out_0_Vector2, (_Property_895edb6e4c6a818eb2e6568e3d0027ee_Out_0_Float.xx), _Add_5fe0b993c875028f97cc5b6530321a12_Out_2_Vector2);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Remap_6cd0f9512cc2918594d1639bafc06c6c_Out_3_Float;
            Unity_Remap_float(_Split_e4be19cd1f232a808ae6fe9f9259cd4e_B_3_Float, float2 (0, 1), _Add_5fe0b993c875028f97cc5b6530321a12_Out_2_Vector2, _Remap_6cd0f9512cc2918594d1639bafc06c6c_Out_3_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_786d36b14fbdef808dd9ac0bb660bdf9_Out_2_Float;
            Unity_Multiply_float_float(_Multiply_5636b2845aba9a8cae86012e0ece3ad1_Out_2_Float, _Remap_6cd0f9512cc2918594d1639bafc06c6c_Out_3_Float, _Multiply_786d36b14fbdef808dd9ac0bb660bdf9_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_1112e16c39010a8faf99d2d7fde4e1b7_Out_2_Float;
            Unity_Multiply_float_float(_Split_39041ef87771e683b834dd7eca6b60aa_G_2_Float, _Multiply_786d36b14fbdef808dd9ac0bb660bdf9_Out_2_Float, _Multiply_1112e16c39010a8faf99d2d7fde4e1b7_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Saturate_76a165b3be307289a7e59c5b70b05c89_Out_1_Float;
            Unity_Saturate_float(_Multiply_1112e16c39010a8faf99d2d7fde4e1b7_Out_2_Float, _Saturate_76a165b3be307289a7e59c5b70b05c89_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Multiply_fa29688e7d617f8690fad410f7cb077a_Out_2_Float;
            Unity_Multiply_float_float(_Clamp_1a91f1e3aec2228bbfb2a0736004946e_Out_3_Float, _Saturate_76a165b3be307289a7e59c5b70b05c89_Out_1_Float, _Multiply_fa29688e7d617f8690fad410f7cb077a_Out_2_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            #if defined(_USEDYNAMICCOVERTSTATICMASKF_ON)
            float _UseDynamicCoverTStaticMaskF_965d575a85d3a285888696251619b92a_Out_0_Float = _Multiply_fa29688e7d617f8690fad410f7cb077a_Out_2_Float;
            #else
            float _UseDynamicCoverTStaticMaskF_965d575a85d3a285888696251619b92a_Out_0_Float = _Clamp_1a91f1e3aec2228bbfb2a0736004946e_Out_3_Float;
            #endif
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Lerp_c59b54e4e94ab88e92b146539960ac48_Out_3_Vector3;
            Unity_Lerp_float3(_BlendOverlayBaseColor_9ffabe2fc453cb81a840278206c992a9_OutVector4_1_Vector3, _BlendOverlayBaseColor_e008078375b0f98abd6bae3cdc0a3816_OutVector4_1_Vector3, (_UseDynamicCoverTStaticMaskF_965d575a85d3a285888696251619b92a_Out_0_Float.xxx), _Lerp_c59b54e4e94ab88e92b146539960ac48_Out_3_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float4 _Property_b04bab91d39976849400b89ad7b519ea_Out_0_Vector4 = _WetColor;
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Multiply_d49d385c7400348896380ca150a49179_Out_2_Vector3;
            Unity_Multiply_float3_float3((_Property_b04bab91d39976849400b89ad7b519ea_Out_0_Vector4.xyz), _Lerp_c59b54e4e94ab88e92b146539960ac48_Out_3_Vector3, _Multiply_d49d385c7400348896380ca150a49179_Out_2_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _OneMinus_6a89d72ac6ee8288843130b19eac4072_Out_1_Float;
            Unity_OneMinus_float(_Split_39041ef87771e683b834dd7eca6b60aa_R_1_Float, _OneMinus_6a89d72ac6ee8288843130b19eac4072_Out_1_Float);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float3 _Lerp_ab54871dfce4b381bee887d0813c791a_Out_3_Vector3;
            Unity_Lerp_float3(_Lerp_c59b54e4e94ab88e92b146539960ac48_Out_3_Vector3, _Multiply_d49d385c7400348896380ca150a49179_Out_2_Vector3, (_OneMinus_6a89d72ac6ee8288843130b19eac4072_Out_1_Float.xxx), _Lerp_ab54871dfce4b381bee887d0813c791a_Out_3_Vector3);
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_R_1_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[0];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_G_2_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[1];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_B_3_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[2];
            float _Split_6a301da40f6f1d8d8b206a60cb2c2a22_A_4_Float = _TriplanarNM_dc0cb260f9ba748a90f4311f416efd5e_XYZ_1_Vector4[3];
            #endif
            #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
            float _Property_532ef6f6b0f1be8b91821eb9e0f91998_Out_0_Float = _AlphaCutoff;
            #endif
            surface.BaseColor = _Lerp_ab54871dfce4b381bee887d0813c791a_Out_3_Vector3;
            surface.Alpha = _Split_6a301da40f6f1d8d8b206a60cb2c2a22_A_4_Float;
            surface.AlphaClipThreshold = _Property_532ef6f6b0f1be8b91821eb9e0f91998_Out_0_Float;
            return surface;
        }
        
        // --------------------------------------------------
        // Build Graph Inputs
        #ifdef HAVE_VFX_MODIFICATION
        #define VFX_SRP_ATTRIBUTES Attributes
        #define VFX_SRP_VARYINGS Varyings
        #define VFX_SRP_SURFACE_INPUTS SurfaceDescriptionInputs
        #endif
        VertexDescriptionInputs BuildVertexDescriptionInputs(Attributes input)
        {
            VertexDescriptionInputs output;
            ZERO_INITIALIZE(VertexDescriptionInputs, output);
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpaceNormal =                          input.normalOS;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpaceTangent =                         input.tangentOS.xyz;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.ObjectSpacePosition =                        input.positionOS;
        #endif
        
        
            return output;
        }
        SurfaceDescriptionInputs BuildSurfaceDescriptionInputs(Varyings input)
        {
            SurfaceDescriptionInputs output;
            ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
        #ifdef HAVE_VFX_MODIFICATION
        #if VFX_USE_GRAPH_VALUES
            uint instanceActiveIndex = asuint(UNITY_ACCESS_INSTANCED_PROP(PerInstance, _InstanceActiveIndex));
            /* WARNING: $splice Could not find named fragment 'VFXLoadGraphValues' */
        #endif
            /* WARNING: $splice Could not find named fragment 'VFXSetFragInputs' */
        
        #endif
        
            
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // must use interpolated tangent, bitangent and normal before they are normalized in the pixel shader.
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        float3 unnormalizedNormalWS = input.normalWS;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        const float renormFactor = 1.0 / length(unnormalizedNormalWS);
        #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // use bitangent on the fly like in hdrp
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // IMPORTANT! If we ever support Flip on double sided materials ensure bitangent and tangent are NOT flipped.
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        float crossSign = (input.tangentWS.w > 0.0 ? 1.0 : -1.0)* GetOddNegativeScale();
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        float3 bitang = crossSign * cross(input.normalWS.xyz, input.tangentWS.xyz);
        #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpaceNormal = renormFactor * input.normalWS.xyz;      // we want a unit length Normal Vector node in shader graph
        #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // to pr               eserve mikktspace compliance we use same scale renormFactor as was used on the normal.
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        // This                is explained in section 2.2 in "surface gradient based bump mapping framework"
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpaceTangent = renormFactor * input.tangentWS.xyz;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpaceBiTangent = renormFactor * bitang;
        #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.WorldSpacePosition = input.positionWS;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.AbsoluteWorldSpacePosition = GetAbsolutePositionWS(input.positionWS);
        #endif
        
        
            #if UNITY_UV_STARTS_AT_TOP
            #else
            #endif
        
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.uv0 = input.texCoord0;
        #endif
        
        #if defined(KEYWORD_PERMUTATION_0) || defined(KEYWORD_PERMUTATION_1)
        output.VertexColor = input.color;
        #endif
        
        #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
        #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN output.FaceSign =                    IS_FRONT_VFACE(input.cullFace, true, false);
        #else
        #define BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
        #endif
        #undef BUILD_SURFACE_DESCRIPTION_INPUTS_OUTPUT_FACESIGN
        
                return output;
        }
        
        // --------------------------------------------------
        // Main
        
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/Varyings.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/PBR2DPass.hlsl"
        
        // --------------------------------------------------
        // Visual Effect Vertex Invocations
        #ifdef HAVE_VFX_MODIFICATION
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/VisualEffectVertex.hlsl"
        #endif
        
        ENDHLSL
        }
    }
    CustomEditor "UnityEditor.ShaderGraph.GenericShaderGraphMaterialGUI"
    CustomEditorForRenderPipeline "UnityEditor.ShaderGraphLitGUI" "UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset"
    FallBack "Hidden/Shader Graph/FallbackError"
}