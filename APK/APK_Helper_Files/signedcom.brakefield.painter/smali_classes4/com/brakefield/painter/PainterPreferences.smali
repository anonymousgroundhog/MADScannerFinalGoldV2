.class public Lcom/brakefield/painter/PainterPreferences;
.super Ljava/lang/Object;
.source "PainterPreferences.java"


# static fields
.field public static final PREF_BLEND_SAMPLE_LOWER_LAYERS:Ljava/lang/String; = "PREF_BLEND_SAMPLE_LOWER_LAYERS"

.field public static final PREF_BRUSH_DRAW_CURSOR:Ljava/lang/String; = "PREF_BRUSH_DRAW_CURSOR"

.field public static final PREF_BRUSH_SHAPE_DETECTION:Ljava/lang/String; = "PREF_BRUSH_SHAPE_DETECTION"

.field public static final PREF_CLONE_MODE:Ljava/lang/String; = "PREF_CLONE_MODE"

.field public static final PREF_COLOR_DEPTH_64:Ljava/lang/String; = "PREF_COLOR_DEPTH_64"

.field public static final PREF_COMMUNITY_ACCEPTED_TERMS:Ljava/lang/String; = "PREF_COMMUNITY_ACCEPTED_TERMS"

.field public static final PREF_CORRUPTED_PROJECT:Ljava/lang/String; = "PREF_CORRUPTED_PROJECT"

.field public static final PREF_EYEDROPPER_SAMPLE_SIZE:Ljava/lang/String; = "PREF_EYEDROPPER_SAMPLE_SIZE"

.field public static final PREF_FILLS_DRAW_PREVIEW:Ljava/lang/String; = "PREF_FILLS_DRAW_PREVIEW"

.field public static final PREF_GAMMA_CORRECTION:Ljava/lang/String; = "PREF_GAMMA_CORRECTION"

.field public static final PREF_MASK_COLOR:Ljava/lang/String; = "PREF_MASK_COLOR"

.field public static final PREF_MASK_OPACITY:Ljava/lang/String; = "PREF_MASK_OPACITY"

.field public static final PREF_MASK_STYLE:Ljava/lang/String; = "PREF_MASK_STYLE"

.field public static final PREF_OPACITY_CONTROL:Ljava/lang/String; = "PREF_OPACITY_CONTROL"

.field public static final PREF_PROMPT_SAVE_CHANGES:Ljava/lang/String; = "PREF_PROMPT_SAVE_CHANGES"

.field public static final PREF_SAVE_MAXIUMUM_HISTORY:Ljava/lang/String; = "PREF_SAVE_MAXIUMUM_HISTORY"

.field public static final PREF_SETUP_VOLUME:Ljava/lang/String; = "PREF_SETUP_VOLUME"

.field public static final PREF_SHOW_LAYER_CHANGES:Ljava/lang/String; = "PREF_SHOW_LAYER_CHANGES"

.field public static final PREF_SPLIT_TOOLS_MEMU:Ljava/lang/String; = "PREF_SPLIT_TOOLS_MEMU"

.field public static final PREF_STARTUP_HELP:Ljava/lang/String; = "PREF_STARTUP_HELP"

.field public static final PREF_TOOLBAR_FLOAT_X_LAND:Ljava/lang/String; = "PREF_TOOLBAR_FLOAT_X_LAND"

.field public static final PREF_TOOLBAR_FLOAT_X_PORT:Ljava/lang/String; = "PREF_TOOLBAR_FLOAT_X_PORT"

.field public static final PREF_TOOLBAR_FLOAT_Y_LAND:Ljava/lang/String; = "PREF_TOOLBAR_FLOAT_Y_LAND"

.field public static final PREF_TOOLBAR_FLOAT_Y_PORT:Ljava/lang/String; = "PREF_TOOLBAR_FLOAT_Y_PORT"

.field public static final PREF_TOOLBAR_POSITION_LAND:Ljava/lang/String; = "PREF_TOOLBAR_POSITION_LAND"

.field public static final PREF_TOOLBAR_POSITION_PORT:Ljava/lang/String; = "PREF_TOOLBAR_POSITION_PORT"

.field public static final PREF_TOOLBAR_VERTICAL_LAND:Ljava/lang/String; = "PREF_TOOLBAR_VERTICAL_LAND"

.field public static final PREF_TOOLBAR_VERTICAL_PORT:Ljava/lang/String; = "PREF_TOOLBAR_VERTICAL_PORT"

.field public static final PREF_USE_COLOR_HISTORY_STRIP:Ljava/lang/String; = "PREF_USE_COLOR_HISTORY_STRIP"

.field public static instance:Lcom/brakefield/painter/PainterPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/brakefield/painter/PainterPreferences;
    .locals 1

    .line 46
    sget-object v0, Lcom/brakefield/painter/PainterPreferences;->instance:Lcom/brakefield/painter/PainterPreferences;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/brakefield/painter/PainterPreferences;

    invoke-direct {v0}, Lcom/brakefield/painter/PainterPreferences;-><init>()V

    sput-object v0, Lcom/brakefield/painter/PainterPreferences;->instance:Lcom/brakefield/painter/PainterPreferences;

    .line 49
    :cond_0
    sget-object v0, Lcom/brakefield/painter/PainterPreferences;->instance:Lcom/brakefield/painter/PainterPreferences;

    return-object v0
.end method


# virtual methods
.method public load(Landroid/content/SharedPreferences;)V
    .locals 6

    const-string v0, "PREF_BLEND_SAMPLE_LOWER_LAYERS"

    const/4 v1, 0x1

    .line 53
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setBlendSampleBottomLayers(Z)V

    const-string v0, "PREF_FILLS_DRAW_PREVIEW"

    .line 54
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setDrawFillPreview(Z)V

    const-string v0, "PREF_GAMMA_CORRECTION"

    const/4 v2, 0x0

    .line 55
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setGammaCorrection(Z)V

    const-string v0, "PREF_SHOW_LAYER_CHANGES"

    .line 56
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setShowLayerChanges(Z)V

    const-string v0, "PREF_MASK_STYLE"

    .line 57
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setMaskStyle(I)V

    const-string v0, "PREF_MASK_COLOR"

    const v3, -0x777778

    .line 58
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 59
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {v3, v5, v0}, Lcom/brakefield/painter/PainterLib;->setMaskColor(FFF)V

    const-string v0, "PREF_MASK_OPACITY"

    const/high16 v3, 0x3f000000    # 0.5f

    .line 60
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setMaskOpacity(F)V

    const-string v0, "PREF_BRUSH_DRAW_CURSOR"

    .line 61
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setBrushDrawCursor(Z)V

    const-string v0, "PREF_BRUSH_SHAPE_DETECTION"

    .line 62
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setBrushShapeDetection(Z)V

    const-string v0, "PREF_EYEDROPPER_SAMPLE_SIZE"

    .line 63
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setEyedropperSampleSize(I)V

    const-string v0, "PREF_SAVE_MAXIUMUM_HISTORY"

    const/4 v2, 0x5

    .line 64
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setMaxProjectHistory(I)V

    const-string v0, "PREF_COLOR_DEPTH_64"

    .line 65
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setUseColorDepth64(Z)V

    return-void
.end method
