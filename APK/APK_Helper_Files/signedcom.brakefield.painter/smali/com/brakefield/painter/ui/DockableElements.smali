.class public Lcom/brakefield/painter/ui/DockableElements;
.super Ljava/lang/Object;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/DockableElements$TransformElement;,
        Lcom/brakefield/painter/ui/DockableElements$FillSolidElement;,
        Lcom/brakefield/painter/ui/DockableElements$FillGradientElement;,
        Lcom/brakefield/painter/ui/DockableElements$FillPatternElement;,
        Lcom/brakefield/painter/ui/DockableElements$ScissorsElement;,
        Lcom/brakefield/painter/ui/DockableElements$SelectRectElement;,
        Lcom/brakefield/painter/ui/DockableElements$SelectLassoElement;,
        Lcom/brakefield/painter/ui/DockableElements$SelectWandElement;,
        Lcom/brakefield/painter/ui/DockableElements$SelectBrushElement;,
        Lcom/brakefield/painter/ui/DockableElements$SelectCircleElement;,
        Lcom/brakefield/painter/ui/DockableElements$SelectPolyElement;,
        Lcom/brakefield/painter/ui/DockableElements$SelectPathElement;,
        Lcom/brakefield/painter/ui/DockableElements$SymXElement;,
        Lcom/brakefield/painter/ui/DockableElements$SymYElement;,
        Lcom/brakefield/painter/ui/DockableElements$SymRadialElement;,
        Lcom/brakefield/painter/ui/DockableElements$SymKaleidoElement;,
        Lcom/brakefield/painter/ui/DockableElements$SymmetryMasterElement;,
        Lcom/brakefield/painter/ui/DockableElements$GuideLinesElement;,
        Lcom/brakefield/painter/ui/DockableElements$GuideEllipseElement;,
        Lcom/brakefield/painter/ui/DockableElements$GuideProtractorElement;,
        Lcom/brakefield/painter/ui/DockableElements$GuideCurveElement;,
        Lcom/brakefield/painter/ui/DockableElements$GuideLazyElement;,
        Lcom/brakefield/painter/ui/DockableElements$GuideHatchingElement;,
        Lcom/brakefield/painter/ui/DockableElements$ShapeLineElement;,
        Lcom/brakefield/painter/ui/DockableElements$ShapeCircleElement;,
        Lcom/brakefield/painter/ui/DockableElements$ShapeRectElement;,
        Lcom/brakefield/painter/ui/DockableElements$ShapePolygonElement;,
        Lcom/brakefield/painter/ui/DockableElements$ShapePathElement;,
        Lcom/brakefield/painter/ui/DockableElements$ShapeArcElement;,
        Lcom/brakefield/painter/ui/DockableElements$ShapeStampElement;,
        Lcom/brakefield/painter/ui/DockableElements$Perpective1Element;,
        Lcom/brakefield/painter/ui/DockableElements$Perpective2Element;,
        Lcom/brakefield/painter/ui/DockableElements$Perpective3Element;,
        Lcom/brakefield/painter/ui/DockableElements$Perpective5Element;,
        Lcom/brakefield/painter/ui/DockableElements$PerpectiveIsoElement;,
        Lcom/brakefield/painter/ui/DockableElements$PerpectiveGridElement;,
        Lcom/brakefield/painter/ui/DockableElements$PerpectivesElement;,
        Lcom/brakefield/painter/ui/DockableElements$CameraResetElement;,
        Lcom/brakefield/painter/ui/DockableElements$CameraFlipElement;,
        Lcom/brakefield/painter/ui/DockableElements$CameraLockElement;,
        Lcom/brakefield/painter/ui/DockableElements$CanvasPreviewElement;,
        Lcom/brakefield/painter/ui/DockableElements$TransformBasicElement;,
        Lcom/brakefield/painter/ui/DockableElements$TransformAnchorElement;,
        Lcom/brakefield/painter/ui/DockableElements$TransformDistortElement;,
        Lcom/brakefield/painter/ui/DockableElements$TransformWarpElement;,
        Lcom/brakefield/painter/ui/DockableElements$EyedropperElement;,
        Lcom/brakefield/painter/ui/DockableElements$OptionsNewElement;,
        Lcom/brakefield/painter/ui/DockableElements$OptionsOpenElement;,
        Lcom/brakefield/painter/ui/DockableElements$OptionsSaveElement;,
        Lcom/brakefield/painter/ui/DockableElements$OptionsImportElement;,
        Lcom/brakefield/painter/ui/DockableElements$OptionsShareElement;,
        Lcom/brakefield/painter/ui/DockableElements$OptionsExportElement;,
        Lcom/brakefield/painter/ui/DockableElements$OptionsPlaybackElement;,
        Lcom/brakefield/painter/ui/DockableElements$LayerLockElement;,
        Lcom/brakefield/painter/ui/DockableElements$LayerClearElement;,
        Lcom/brakefield/painter/ui/DockableElements$LayerVisibilityElement;,
        Lcom/brakefield/painter/ui/DockableElements$LayerDuplicateElement;,
        Lcom/brakefield/painter/ui/DockableElements$LayerMergeElement;,
        Lcom/brakefield/painter/ui/DockableElements$LayerDeleteElement;,
        Lcom/brakefield/painter/ui/DockableElements$LayerClippingMaskElement;,
        Lcom/brakefield/painter/ui/DockableElements$LayerSelectElement;,
        Lcom/brakefield/painter/ui/DockableElements$LayerVisibilitySoloModeElement;,
        Lcom/brakefield/painter/ui/DockableElements$LayerVisibilityTraceModeElement;,
        Lcom/brakefield/painter/ui/DockableElements$SelectAllElement;,
        Lcom/brakefield/painter/ui/DockableElements$SelectInvertElement;,
        Lcom/brakefield/painter/ui/DockableElements$SelectClearElement;,
        Lcom/brakefield/painter/ui/DockableElements$SelectExpandElement;,
        Lcom/brakefield/painter/ui/DockableElements$SelectContractElement;,
        Lcom/brakefield/painter/ui/DockableElements$SelectFeatherElement;,
        Lcom/brakefield/painter/ui/DockableElements$SelectColorElement;,
        Lcom/brakefield/painter/ui/DockableElements$StraightenElement;,
        Lcom/brakefield/painter/ui/DockableElements$EditFiltersElement;,
        Lcom/brakefield/painter/ui/DockableElements$EditCropElement;,
        Lcom/brakefield/painter/ui/DockableElements$EditLiquifyElement;,
        Lcom/brakefield/painter/ui/DockableElements$EditPatternSymElement;,
        Lcom/brakefield/painter/ui/DockableElements$EditPatternPathElement;,
        Lcom/brakefield/painter/ui/DockableElements$EditPatternQuiltElement;,
        Lcom/brakefield/painter/ui/DockableElements$EditPatternTileElement;,
        Lcom/brakefield/painter/ui/DockableElements$EditColorElement;,
        Lcom/brakefield/painter/ui/DockableElements$EditCurvesElement;,
        Lcom/brakefield/painter/ui/DockableElements$EditResizeElement;,
        Lcom/brakefield/painter/ui/DockableElements$EditPanelsElement;,
        Lcom/brakefield/painter/ui/DockableElements$CloneElement;,
        Lcom/brakefield/painter/ui/DockableElements$NonExistentElement;,
        Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;,
        Lcom/brakefield/painter/ui/DockableElements$PerspectiveElement;,
        Lcom/brakefield/painter/ui/DockableElements$ShapeElement;,
        Lcom/brakefield/painter/ui/DockableElements$GuideElement;,
        Lcom/brakefield/painter/ui/DockableElements$SymmetryElement;,
        Lcom/brakefield/painter/ui/DockableElements$FillElement;,
        Lcom/brakefield/painter/ui/DockableElements$DockableElement;,
        Lcom/brakefield/painter/ui/DockableElements$ToolListener;
    }
.end annotation


# static fields
.field public static final ELEMENT_ADJUSTMENT_LAYER:I = 0x3e8

.field public static final ELEMENT_CAMERA_FLIP:I = 0xa1

.field public static final ELEMENT_CAMERA_LOCK:I = 0xa2

.field public static final ELEMENT_CAMERA_PREVIEW:I = 0xa3

.field public static final ELEMENT_CAMERA_RESET:I = 0xa0

.field public static final ELEMENT_CLONE:I = 0x1f4

.field public static final ELEMENT_EDIT_COLOR:I = 0x190

.field public static final ELEMENT_EDIT_CROP:I = 0x192

.field public static final ELEMENT_EDIT_CURVES:I = 0x19a

.field public static final ELEMENT_EDIT_FILTERS:I = 0x191

.field public static final ELEMENT_EDIT_LIQUIFY:I = 0x194

.field public static final ELEMENT_EDIT_PANELS:I = 0x19c

.field public static final ELEMENT_EDIT_PATTERN_PATH:I = 0x196

.field public static final ELEMENT_EDIT_PATTERN_QUILT:I = 0x197

.field public static final ELEMENT_EDIT_PATTERN_SYM:I = 0x195

.field public static final ELEMENT_EDIT_PATTERN_TILE:I = 0x198

.field public static final ELEMENT_EDIT_RESIZE:I = 0x19b

.field public static final ELEMENT_EDIT_STRAIGHTEN:I = 0x199

.field public static final ELEMENT_EYEDROPPER:I = 0xb4

.field public static final ELEMENT_FILL_GRADIENT:I = 0x66

.field public static final ELEMENT_FILL_PATTERN:I = 0x67

.field public static final ELEMENT_FILL_SOLID:I = 0x65

.field public static final ELEMENT_GUIDES_ELLIPSE:I = 0x83

.field public static final ELEMENT_GUIDES_FOCAL:I = 0x84

.field public static final ELEMENT_GUIDES_HATCHING:I = 0x88

.field public static final ELEMENT_GUIDES_LAZY:I = 0x87

.field public static final ELEMENT_GUIDES_LINEAR:I = 0x82

.field public static final ELEMENT_GUIDES_PATH:I = 0x86

.field public static final ELEMENT_GUIDES_PROTRACTOR:I = 0x85

.field public static final ELEMENT_LAYER_CLEAR:I = 0xfb

.field public static final ELEMENT_LAYER_CLIPPING_MASK:I = 0xfd

.field public static final ELEMENT_LAYER_DELETE:I = 0x100

.field public static final ELEMENT_LAYER_DUPLICATE:I = 0xfe

.field public static final ELEMENT_LAYER_LOCK:I = 0xfa

.field public static final ELEMENT_LAYER_MERGE:I = 0xff

.field public static final ELEMENT_LAYER_SELECT:I = 0x101

.field public static final ELEMENT_LAYER_VISIBILITY:I = 0xfc

.field public static final ELEMENT_LAYER_VISIBILITY_MODE_ONIONSKIN:I = 0x107

.field public static final ELEMENT_LAYER_VISIBILITY_MODE_SOLO:I = 0x105

.field public static final ELEMENT_LAYER_VISIBILITY_MODE_TRACE:I = 0x106

.field public static final ELEMENT_OPTIONS_COMMUNITY:I = 0xd0

.field public static final ELEMENT_OPTIONS_EDIT:I = 0xce

.field public static final ELEMENT_OPTIONS_EXPORT:I = 0xcd

.field public static final ELEMENT_OPTIONS_HELP:I = 0xd1

.field public static final ELEMENT_OPTIONS_IMPORT:I = 0xcb

.field public static final ELEMENT_OPTIONS_NEW:I = 0xc8

.field public static final ELEMENT_OPTIONS_OPEN:I = 0xc9

.field public static final ELEMENT_OPTIONS_PROPERTIES:I = 0xcf

.field public static final ELEMENT_OPTIONS_SAVE:I = 0xca

.field public static final ELEMENT_OPTIONS_SETTINGS:I = 0xd2

.field public static final ELEMENT_OPTIONS_SHARE:I = 0xcc

.field public static final ELEMENT_PERSPECTIVE:I = 0x9c

.field public static final ELEMENT_PERSPECTIVE_1:I = 0x96

.field public static final ELEMENT_PERSPECTIVE_2:I = 0x97

.field public static final ELEMENT_PERSPECTIVE_3:I = 0x98

.field public static final ELEMENT_PERSPECTIVE_5:I = 0x99

.field public static final ELEMENT_PERSPECTIVE_GRID:I = 0x9b

.field public static final ELEMENT_PERSPECTIVE_ISO:I = 0x9a

.field public static final ELEMENT_SCISSORS:I = 0x68

.field public static final ELEMENT_SELECT_ALL:I = 0x12c

.field public static final ELEMENT_SELECT_BRUSH:I = 0x71

.field public static final ELEMENT_SELECT_CIRCLE:I = 0x72

.field public static final ELEMENT_SELECT_CLEAR:I = 0x12e

.field public static final ELEMENT_SELECT_COLOR:I = 0x131

.field public static final ELEMENT_SELECT_CONTRACT:I = 0x130

.field public static final ELEMENT_SELECT_EXPAND:I = 0x12f

.field public static final ELEMENT_SELECT_FEATHER:I = 0x132

.field public static final ELEMENT_SELECT_INVERT:I = 0x12d

.field public static final ELEMENT_SELECT_LASSO:I = 0x6f

.field public static final ELEMENT_SELECT_PATH:I = 0x74

.field public static final ELEMENT_SELECT_POLY:I = 0x73

.field public static final ELEMENT_SELECT_RECT:I = 0x6e

.field public static final ELEMENT_SELECT_TRANSFORM:I = 0x133

.field public static final ELEMENT_SELECT_WAND:I = 0x70

.field public static final ELEMENT_SHAPE_ARC:I = 0x91

.field public static final ELEMENT_SHAPE_CIRCLE:I = 0x8d

.field public static final ELEMENT_SHAPE_LINE:I = 0x8c

.field public static final ELEMENT_SHAPE_PATH:I = 0x90

.field public static final ELEMENT_SHAPE_POLYGON:I = 0x8f

.field public static final ELEMENT_SHAPE_RECT:I = 0x8e

.field public static final ELEMENT_SHAPE_STAMP:I = 0x95

.field public static final ELEMENT_SYMMETRY:I = 0x7c

.field public static final ELEMENT_SYM_KALEIDO:I = 0x7b

.field public static final ELEMENT_SYM_RADIAL:I = 0x7a

.field public static final ELEMENT_SYM_X:I = 0x78

.field public static final ELEMENT_SYM_Y:I = 0x79

.field public static final ELEMENT_TEXT:I = 0x69

.field public static final ELEMENT_TRANSFORM:I = 0x64

.field public static final ELEMENT_TRANSFORM_ANCHOR:I = 0xab

.field public static final ELEMENT_TRANSFORM_BASIC:I = 0xaa

.field public static final ELEMENT_TRANSFORM_DISTORT:I = 0xac

.field public static final ELEMENT_TRANSFORM_WARP:I = 0xad


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;
    .locals 1

    const/16 v0, 0x82

    if-eq p0, v0, :cond_1

    const/16 v0, 0x83

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    packed-switch p0, :pswitch_data_7

    .line 241
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$NonExistentElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$NonExistentElement;-><init>()V

    return-object p0

    .line 208
    :pswitch_0
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$OptionsPlaybackElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$OptionsPlaybackElement;-><init>()V

    return-object p0

    .line 207
    :pswitch_1
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$OptionsExportElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$OptionsExportElement;-><init>()V

    return-object p0

    .line 206
    :pswitch_2
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$OptionsShareElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$OptionsShareElement;-><init>()V

    return-object p0

    .line 205
    :pswitch_3
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$OptionsImportElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$OptionsImportElement;-><init>()V

    return-object p0

    .line 204
    :pswitch_4
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$OptionsSaveElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$OptionsSaveElement;-><init>()V

    return-object p0

    .line 203
    :pswitch_5
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$OptionsOpenElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$OptionsOpenElement;-><init>()V

    return-object p0

    .line 202
    :pswitch_6
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$OptionsNewElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$OptionsNewElement;-><init>()V

    return-object p0

    .line 200
    :pswitch_7
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$TransformWarpElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$TransformWarpElement;-><init>()V

    return-object p0

    .line 199
    :pswitch_8
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$TransformDistortElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$TransformDistortElement;-><init>()V

    return-object p0

    .line 198
    :pswitch_9
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$TransformAnchorElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$TransformAnchorElement;-><init>()V

    return-object p0

    .line 197
    :pswitch_a
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$TransformBasicElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$TransformBasicElement;-><init>()V

    return-object p0

    .line 196
    :pswitch_b
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$CanvasPreviewElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$CanvasPreviewElement;-><init>()V

    return-object p0

    .line 195
    :pswitch_c
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$CameraLockElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$CameraLockElement;-><init>()V

    return-object p0

    .line 194
    :pswitch_d
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$CameraFlipElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$CameraFlipElement;-><init>()V

    return-object p0

    .line 193
    :pswitch_e
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$CameraResetElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$CameraResetElement;-><init>()V

    return-object p0

    .line 238
    :sswitch_0
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$CloneElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$CloneElement;-><init>()V

    return-object p0

    .line 237
    :sswitch_1
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$EditPanelsElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$EditPanelsElement;-><init>()V

    return-object p0

    .line 236
    :sswitch_2
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$EditResizeElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$EditResizeElement;-><init>()V

    return-object p0

    .line 235
    :sswitch_3
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$EditCurvesElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$EditCurvesElement;-><init>()V

    return-object p0

    .line 226
    :sswitch_4
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$StraightenElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$StraightenElement;-><init>()V

    return-object p0

    .line 233
    :sswitch_5
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$EditPatternTileElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$EditPatternTileElement;-><init>()V

    return-object p0

    .line 232
    :sswitch_6
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$EditPatternQuiltElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$EditPatternQuiltElement;-><init>()V

    return-object p0

    .line 231
    :sswitch_7
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$EditPatternPathElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$EditPatternPathElement;-><init>()V

    return-object p0

    .line 230
    :sswitch_8
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$EditPatternSymElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$EditPatternSymElement;-><init>()V

    return-object p0

    .line 229
    :sswitch_9
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$EditLiquifyElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$EditLiquifyElement;-><init>()V

    return-object p0

    .line 228
    :sswitch_a
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$EditCropElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$EditCropElement;-><init>()V

    return-object p0

    .line 227
    :sswitch_b
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$EditFiltersElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$EditFiltersElement;-><init>()V

    return-object p0

    .line 234
    :sswitch_c
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$EditColorElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$EditColorElement;-><init>()V

    return-object p0

    .line 224
    :sswitch_d
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$SelectFeatherElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$SelectFeatherElement;-><init>()V

    return-object p0

    .line 225
    :sswitch_e
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$SelectColorElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$SelectColorElement;-><init>()V

    return-object p0

    .line 223
    :sswitch_f
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$SelectContractElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$SelectContractElement;-><init>()V

    return-object p0

    .line 222
    :sswitch_10
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$SelectExpandElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$SelectExpandElement;-><init>()V

    return-object p0

    .line 221
    :sswitch_11
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$SelectClearElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$SelectClearElement;-><init>()V

    return-object p0

    .line 220
    :sswitch_12
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$SelectInvertElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$SelectInvertElement;-><init>()V

    return-object p0

    .line 219
    :sswitch_13
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$SelectAllElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$SelectAllElement;-><init>()V

    return-object p0

    .line 218
    :sswitch_14
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$LayerVisibilityTraceModeElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$LayerVisibilityTraceModeElement;-><init>()V

    return-object p0

    .line 217
    :sswitch_15
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$LayerVisibilitySoloModeElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$LayerVisibilitySoloModeElement;-><init>()V

    return-object p0

    .line 216
    :sswitch_16
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$LayerSelectElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$LayerSelectElement;-><init>()V

    return-object p0

    .line 214
    :sswitch_17
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$LayerDeleteElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$LayerDeleteElement;-><init>()V

    return-object p0

    .line 213
    :sswitch_18
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$LayerMergeElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$LayerMergeElement;-><init>()V

    return-object p0

    .line 212
    :sswitch_19
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$LayerDuplicateElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$LayerDuplicateElement;-><init>()V

    return-object p0

    .line 215
    :sswitch_1a
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$LayerClippingMaskElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$LayerClippingMaskElement;-><init>()V

    return-object p0

    .line 211
    :sswitch_1b
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$LayerVisibilityElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$LayerVisibilityElement;-><init>()V

    return-object p0

    .line 210
    :sswitch_1c
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$LayerClearElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$LayerClearElement;-><init>()V

    return-object p0

    .line 209
    :sswitch_1d
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$LayerLockElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$LayerLockElement;-><init>()V

    return-object p0

    .line 201
    :sswitch_1e
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$EyedropperElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$EyedropperElement;-><init>()V

    return-object p0

    .line 192
    :sswitch_1f
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$PerpectivesElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$PerpectivesElement;-><init>()V

    return-object p0

    .line 191
    :sswitch_20
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$PerpectiveGridElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$PerpectiveGridElement;-><init>()V

    return-object p0

    .line 190
    :sswitch_21
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$PerpectiveIsoElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$PerpectiveIsoElement;-><init>()V

    return-object p0

    .line 189
    :sswitch_22
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$Perpective5Element;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$Perpective5Element;-><init>()V

    return-object p0

    .line 188
    :sswitch_23
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$Perpective3Element;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$Perpective3Element;-><init>()V

    return-object p0

    .line 187
    :sswitch_24
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$Perpective2Element;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$Perpective2Element;-><init>()V

    return-object p0

    .line 186
    :sswitch_25
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$Perpective1Element;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$Perpective1Element;-><init>()V

    return-object p0

    .line 185
    :sswitch_26
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$ShapeStampElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$ShapeStampElement;-><init>()V

    return-object p0

    .line 184
    :pswitch_f
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$ShapeArcElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$ShapeArcElement;-><init>()V

    return-object p0

    .line 183
    :pswitch_10
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$ShapePathElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$ShapePathElement;-><init>()V

    return-object p0

    .line 182
    :pswitch_11
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$ShapePolygonElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$ShapePolygonElement;-><init>()V

    return-object p0

    .line 181
    :pswitch_12
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$ShapeRectElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$ShapeRectElement;-><init>()V

    return-object p0

    .line 180
    :pswitch_13
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$ShapeCircleElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$ShapeCircleElement;-><init>()V

    return-object p0

    .line 179
    :pswitch_14
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$ShapeLineElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$ShapeLineElement;-><init>()V

    return-object p0

    .line 178
    :pswitch_15
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$GuideHatchingElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$GuideHatchingElement;-><init>()V

    return-object p0

    .line 177
    :pswitch_16
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$GuideLazyElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$GuideLazyElement;-><init>()V

    return-object p0

    .line 176
    :pswitch_17
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$GuideCurveElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$GuideCurveElement;-><init>()V

    return-object p0

    .line 175
    :pswitch_18
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$GuideProtractorElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$GuideProtractorElement;-><init>()V

    return-object p0

    .line 172
    :pswitch_19
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$SymmetryMasterElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$SymmetryMasterElement;-><init>()V

    return-object p0

    .line 171
    :pswitch_1a
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$SymKaleidoElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$SymKaleidoElement;-><init>()V

    return-object p0

    .line 170
    :pswitch_1b
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$SymRadialElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$SymRadialElement;-><init>()V

    return-object p0

    .line 169
    :pswitch_1c
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$SymYElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$SymYElement;-><init>()V

    return-object p0

    .line 168
    :pswitch_1d
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$SymXElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$SymXElement;-><init>()V

    return-object p0

    .line 167
    :pswitch_1e
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$SelectPathElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$SelectPathElement;-><init>()V

    return-object p0

    .line 166
    :pswitch_1f
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$SelectPolyElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$SelectPolyElement;-><init>()V

    return-object p0

    .line 165
    :pswitch_20
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$SelectCircleElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$SelectCircleElement;-><init>()V

    return-object p0

    .line 164
    :pswitch_21
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$SelectBrushElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$SelectBrushElement;-><init>()V

    return-object p0

    .line 163
    :pswitch_22
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$SelectWandElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$SelectWandElement;-><init>()V

    return-object p0

    .line 162
    :pswitch_23
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$SelectLassoElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$SelectLassoElement;-><init>()V

    return-object p0

    .line 161
    :pswitch_24
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$SelectRectElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$SelectRectElement;-><init>()V

    return-object p0

    .line 160
    :pswitch_25
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$ScissorsElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$ScissorsElement;-><init>()V

    return-object p0

    .line 159
    :pswitch_26
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$FillPatternElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$FillPatternElement;-><init>()V

    return-object p0

    .line 158
    :pswitch_27
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$FillGradientElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$FillGradientElement;-><init>()V

    return-object p0

    .line 157
    :pswitch_28
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$FillSolidElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$FillSolidElement;-><init>()V

    return-object p0

    .line 156
    :pswitch_29
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$TransformElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$TransformElement;-><init>()V

    return-object p0

    .line 174
    :cond_0
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$GuideEllipseElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$GuideEllipseElement;-><init>()V

    return-object p0

    .line 173
    :cond_1
    new-instance p0, Lcom/brakefield/painter/ui/DockableElements$GuideLinesElement;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$GuideLinesElement;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6e
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x78
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x85
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x8c
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x95 -> :sswitch_26
        0x96 -> :sswitch_25
        0x97 -> :sswitch_24
        0x98 -> :sswitch_23
        0x99 -> :sswitch_22
        0x9a -> :sswitch_21
        0x9b -> :sswitch_20
        0x9c -> :sswitch_1f
        0xb4 -> :sswitch_1e
        0xfa -> :sswitch_1d
        0xfb -> :sswitch_1c
        0xfc -> :sswitch_1b
        0xfd -> :sswitch_1a
        0xfe -> :sswitch_19
        0xff -> :sswitch_18
        0x100 -> :sswitch_17
        0x101 -> :sswitch_16
        0x105 -> :sswitch_15
        0x106 -> :sswitch_14
        0x12c -> :sswitch_13
        0x12d -> :sswitch_12
        0x12e -> :sswitch_11
        0x12f -> :sswitch_10
        0x130 -> :sswitch_f
        0x131 -> :sswitch_e
        0x132 -> :sswitch_d
        0x190 -> :sswitch_c
        0x191 -> :sswitch_b
        0x192 -> :sswitch_a
        0x194 -> :sswitch_9
        0x195 -> :sswitch_8
        0x196 -> :sswitch_7
        0x197 -> :sswitch_6
        0x198 -> :sswitch_5
        0x199 -> :sswitch_4
        0x19a -> :sswitch_3
        0x19b -> :sswitch_2
        0x19c -> :sswitch_1
        0x1f4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0xa0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xaa
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xc8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
