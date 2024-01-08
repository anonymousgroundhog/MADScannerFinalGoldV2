.class public Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;
.super Lcom/infinite/core/NativeObject;
.source "ToolManagerNative.java"


# static fields
.field public static final CROP:I = 0x4

.field public static final EDIT_COLOR:I = 0x7

.field public static final EDIT_CURVES:I = 0x6

.field public static final FILL:I = 0x2

.field public static final FILL_STRICT:I = 0x3

.field public static final FILTER:I = 0x8

.field public static final LIQUIFY:I = 0x5

.field public static final PAINT:I = 0x0

.field public static final PANELS:I = 0x1e

.field public static final PATTERN_PATH:I = 0x11

.field public static final PATTERN_QUILT:I = 0x12

.field public static final PATTERN_SYM:I = 0x10

.field public static final PATTERN_TILE:I = 0x13

.field public static final RESIZE:I = 0x14

.field public static final SELECT_CIRCLE:I = 0x15

.field public static final SELECT_COLOR:I = 0xa

.field public static final SELECT_LASSO:I = 0xb

.field public static final SELECT_PATH:I = 0x17

.field public static final SELECT_POLY:I = 0x16

.field public static final SELECT_RECT:I = 0xc

.field public static final SELECT_WAND:I = 0xd

.field public static final STRAIGHTEN:I = 0x9

.field public static final TRANSFORM:I = 0x1

.field public static final TRANSFORM_MASK:I = 0xf


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native filterHasTypes(J)Z
.end method

.method private native getColorAdjustmentTool(J)J
.end method

.method private native getColorCurvesTool(J)J
.end method

.method private native getCropTool(J)J
.end method

.method private native getFillTool(J)J
.end method

.method private native getFilterTool(J)J
.end method

.method private native getLiquifyTool(J)J
.end method

.method private native getPanelTool(J)J
.end method

.method private native getPatternFill(J)J
.end method

.method private native getPatternPathTool(J)J
.end method

.method private native getPatternQuiltTool(J)J
.end method

.method private native getPatternSymmetryTool(J)J
.end method

.method private native getPatternTileTool(J)J
.end method

.method private native getResizeTool(J)J
.end method

.method private native getSelectColorRangeTool(J)J
.end method

.method private native getShapeType(J)I
.end method

.method private native getStraightenTool(J)J
.end method

.method private native getTransformTool(J)J
.end method


# virtual methods
.method public filterHasTypes()Z
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->filterHasTypes(J)Z

    move-result v0

    return v0
.end method

.method public getColorAdjustmentTool()Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;
    .locals 3

    .line 46
    new-instance v0, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;

    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->nativePointer:J

    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getColorAdjustmentTool(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;-><init>(J)V

    return-object v0
.end method

.method public getColorCurvesTool()Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;
    .locals 3

    .line 49
    new-instance v0, Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;

    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->nativePointer:J

    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getColorCurvesTool(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;-><init>(J)V

    return-object v0
.end method

.method public getCropTool()Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;
    .locals 3

    .line 52
    new-instance v0, Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;

    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->nativePointer:J

    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getCropTool(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/CropToolNative;-><init>(J)V

    return-object v0
.end method

.method public getFillTool()Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;
    .locals 3

    .line 37
    new-instance v0, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;

    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->nativePointer:J

    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getFillTool(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;-><init>(J)V

    return-object v0
.end method

.method public getFilterTool()Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;
    .locals 3

    .line 79
    new-instance v0, Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;

    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->nativePointer:J

    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getFilterTool(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;-><init>(J)V

    return-object v0
.end method

.method public getLiquifyTool()Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;
    .locals 3

    .line 64
    new-instance v0, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->nativePointer:J

    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getLiquifyTool(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;-><init>(J)V

    return-object v0
.end method

.method public getPanelTool()Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;
    .locals 3

    .line 61
    new-instance v0, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;

    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->nativePointer:J

    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getPanelTool(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;-><init>(J)V

    return-object v0
.end method

.method public getPatternFill()Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;
    .locals 3

    .line 40
    new-instance v0, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;

    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->nativePointer:J

    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getPatternFill(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;-><init>(J)V

    return-object v0
.end method

.method public getPatternPathTool()Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;
    .locals 3

    .line 70
    new-instance v0, Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;

    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->nativePointer:J

    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getPatternPathTool(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;-><init>(J)V

    return-object v0
.end method

.method public getPatternQuiltTool()Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;
    .locals 3

    .line 73
    new-instance v0, Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;

    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->nativePointer:J

    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getPatternQuiltTool(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;-><init>(J)V

    return-object v0
.end method

.method public getPatternSymTool()Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;
    .locals 3

    .line 67
    new-instance v0, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;

    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->nativePointer:J

    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getPatternSymmetryTool(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;-><init>(J)V

    return-object v0
.end method

.method public getPatternTileTool()Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;
    .locals 3

    .line 76
    new-instance v0, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;

    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->nativePointer:J

    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getPatternTileTool(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;-><init>(J)V

    return-object v0
.end method

.method public getResizeTool()Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;
    .locals 3

    .line 55
    new-instance v0, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;

    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->nativePointer:J

    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getResizeTool(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;-><init>(J)V

    return-object v0
.end method

.method public getSelectColorRangeTool()Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;
    .locals 3

    .line 85
    new-instance v0, Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;

    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->nativePointer:J

    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getSelectColorRangeTool(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;-><init>(J)V

    return-object v0
.end method

.method public getShapeType()I
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getShapeType(J)I

    move-result v0

    return v0
.end method

.method public getStraightenTool()Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;
    .locals 3

    .line 58
    new-instance v0, Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;

    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->nativePointer:J

    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getStraightenTool(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;-><init>(J)V

    return-object v0
.end method

.method public getTransformTool()Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;
    .locals 3

    .line 43
    new-instance v0, Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;

    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->nativePointer:J

    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getTransformTool(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;-><init>(J)V

    return-object v0
.end method
