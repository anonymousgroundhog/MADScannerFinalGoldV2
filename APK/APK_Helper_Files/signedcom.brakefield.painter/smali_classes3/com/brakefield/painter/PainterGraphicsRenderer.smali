.class public Lcom/brakefield/painter/PainterGraphicsRenderer;
.super Ljava/lang/Object;
.source "PainterGraphicsRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;,
        Lcom/brakefield/painter/PainterGraphicsRenderer$SavePlaybackTask;,
        Lcom/brakefield/painter/PainterGraphicsRenderer$SavePreviewTask;
    }
.end annotation


# static fields
.field public static final START_COUNTDOWN:I = 0x3c

.field private static applyingImage:Ljava/lang/Object;

.field public static autosaveListener:Ljava/lang/Runnable;

.field public static createPaletteFromImage:Z

.field public static createProject:Z

.field public static createProjectDirectory:Ljava/lang/String;

.field public static endRenderListener:Ljava/lang/Runnable;

.field public static exporter:Lcom/brakefield/painter/Exporter;

.field public static handleNewConfig:Z

.field public static importImage:Landroid/net/Uri;

.field public static importReference:Ljava/lang/String;

.field public static importType:I

.field public static loadPattern:Z

.field public static loadProject:Ljava/lang/String;

.field public static loadProjectListener:Ljava/lang/Runnable;

.field public static needsSaveProject:Z

.field public static newConfigHeight:I

.field public static newConfigWidth:I

.field public static newProjectListener:Ljava/lang/Runnable;

.field public static paletteListener:Ljava/lang/Runnable;

.field public static paperTextureImage:Landroid/graphics/Bitmap;

.field public static patternCustomName:Ljava/lang/String;

.field public static patternResourceName:Ljava/lang/String;

.field public static resizeProject:Z

.field public static saveBrushPreview:Z

.field public static saveListener:Ljava/lang/Runnable;

.field public static saveProject:Z

.field public static saveTilePattern:Z

.field public static selectionClip:Z

.field public static selectionClipBrush:Z

.field public static shareActivity:Landroid/app/Activity;

.field public static shareBrush:Lcom/brakefield/painter/brushes/brushfolders/Brush;

.field public static updateBrushPreview:Landroid/widget/ImageView;

.field public static updateBrushPreviewFixed:Landroid/widget/ImageView;


# instance fields
.field private final SAFE_TO_SWITCH:I

.field private autosaveCount:I

.field private autosaveRate:I

.field private context:Landroid/content/Context;

.field private countdown:I

.field private doubleFrames:I

.field private handler:Lcom/brakefield/painter/SharedMessageHandler;

.field private mainView:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

.field public needsUpdate:Z

.field private playbackTask:Landroid/os/AsyncTask;

.field private prevCamera:Landroid/graphics/Matrix;

.field private final referenceManager:Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;

.field private final res:Landroid/content/res/Resources;

.field private singleBufferMode:Z

.field private singleFrames:I

.field private startRenderListener:Ljava/lang/Runnable;

.field private transformSurfaceMatrix:Landroid/graphics/Matrix;

.field uiScale:F

.field private vectorPath:Lcom/infinite/geom/PathNative;

.field private view2GL:Lcom/brakefield/painter/View2GL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getUserProjectsDirectory()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->createProjectDirectory:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;)V
    .locals 2

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/infinite/geom/PathNative;

    invoke-direct {v0}, Lcom/infinite/geom/PathNative;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->vectorPath:Lcom/infinite/geom/PathNative;

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->prevCamera:Landroid/graphics/Matrix;

    const/4 v1, 0x1

    .line 100
    iput-boolean v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsUpdate:Z

    const/16 v1, 0x3c

    .line 101
    iput v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->countdown:I

    const/4 v1, 0x2

    .line 132
    iput v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->autosaveRate:I

    const/4 v1, 0x4

    .line 162
    iput v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->SAFE_TO_SWITCH:I

    const/4 v1, 0x0

    .line 163
    iput v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->singleFrames:I

    .line 164
    iput v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->doubleFrames:I

    .line 172
    iput-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->transformSurfaceMatrix:Landroid/graphics/Matrix;

    .line 178
    invoke-interface {p1}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->context:Landroid/content/Context;

    .line 179
    iput-object p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->mainView:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    .line 180
    invoke-interface {p1}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->res:Landroid/content/res/Resources;

    const/high16 p1, 0x3f000000    # 0.5f

    .line 181
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    iput p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->uiScale:F

    .line 183
    sput-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->updateBrushPreviewFixed:Landroid/widget/ImageView;

    .line 184
    sput-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->updateBrushPreview:Landroid/widget/ImageView;

    .line 185
    sput-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->applyingImage:Ljava/lang/Object;

    .line 187
    new-instance p1, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getReferenceManager()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;-><init>(J)V

    iput-object p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->referenceManager:Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;

    return-void
.end method

.method static synthetic access$100(Lcom/brakefield/painter/PainterGraphicsRenderer;)Lcom/brakefield/painter/SharedMessageHandler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/brakefield/painter/PainterGraphicsRenderer;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$302(Lcom/brakefield/painter/PainterGraphicsRenderer;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->playbackTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method public static convertToColumnMajor4x4Matrix([F[F)[F
    .locals 7

    const/4 v0, 0x0

    .line 1137
    aget v1, p1, v0

    aput v1, p0, v0

    const/4 v0, 0x1

    .line 1138
    aget v1, p1, v0

    const/4 v2, 0x4

    aput v1, p0, v2

    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 1139
    aput v3, p0, v1

    const/4 v4, 0x2

    .line 1140
    aget v5, p1, v4

    const/16 v6, 0xc

    aput v5, p0, v6

    const/4 v5, 0x3

    .line 1143
    aget v6, p1, v5

    aput v6, p0, v0

    .line 1144
    aget v0, p1, v2

    const/4 v2, 0x5

    aput v0, p0, v2

    const/16 v0, 0x9

    .line 1145
    aput v3, p0, v0

    const/16 v0, 0xd

    .line 1146
    aget v2, p1, v2

    aput v2, p0, v0

    .line 1149
    aput v3, p0, v4

    const/4 v0, 0x6

    .line 1150
    aput v3, p0, v0

    const/16 v2, 0xa

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1151
    aput v4, p0, v2

    const/16 v2, 0xe

    .line 1152
    aput v3, p0, v2

    .line 1155
    aget v0, p1, v0

    aput v0, p0, v5

    const/4 v0, 0x7

    .line 1156
    aget v2, p1, v0

    aput v2, p0, v0

    const/16 v0, 0xb

    .line 1157
    aput v3, p0, v0

    const/16 v0, 0xf

    .line 1158
    aget p1, p1, v1

    aput p1, p0, v0

    return-object p0
.end method

.method private disableSingleBuffer()V
    .locals 5

    .line 1114
    iget v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->singleFrames:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    return-void

    .line 1115
    :cond_0
    sget-boolean v0, Lcom/brakefield/painter/PainterZeroLatency;->sharedBufferModeAvailable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1116
    iput v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->singleFrames:I

    .line 1117
    iput v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->doubleFrames:I

    .line 1118
    iput-boolean v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->singleBufferMode:Z

    .line 1119
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v1

    const/16 v2, 0x3059

    .line 1120
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v2

    const/16 v3, 0x3086

    const/16 v4, 0x3084

    .line 1121
    invoke-static {v1, v2, v3, v4}, Landroid/opengl/EGL14;->eglSurfaceAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;II)Z

    const/16 v3, 0x314c

    .line 1122
    invoke-static {v1, v2, v3, v0}, Landroid/opengl/EGL14;->eglSurfaceAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;II)Z

    :cond_1
    return-void
.end method

.method private enableSingleBuffer()V
    .locals 5

    .line 1101
    iget v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->doubleFrames:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    return-void

    .line 1102
    :cond_0
    sget-boolean v0, Lcom/brakefield/painter/PainterZeroLatency;->sharedBufferModeAvailable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1103
    iput v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->singleFrames:I

    .line 1104
    iput v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->doubleFrames:I

    const/4 v0, 0x1

    .line 1105
    iput-boolean v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->singleBufferMode:Z

    .line 1106
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v1

    const/16 v2, 0x3059

    .line 1107
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v2

    const/16 v3, 0x3086

    const/16 v4, 0x3085

    .line 1108
    invoke-static {v1, v2, v3, v4}, Landroid/opengl/EGL14;->eglSurfaceAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;II)Z

    const/16 v3, 0x314c

    .line 1109
    invoke-static {v1, v2, v3, v0}, Landroid/opengl/EGL14;->eglSurfaceAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;II)Z

    :cond_1
    return-void
.end method

.method public static getGLMatrix(Landroid/graphics/Matrix;)[F
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1131
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 p0, 0x10

    new-array p0, p0, [F

    .line 1132
    invoke-static {p0, v0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->convertToColumnMajor4x4Matrix([F[F)[F

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$renderUpdateBrushPreview$7(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 950
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p0, 0x0

    .line 951
    sput-object p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->applyingImage:Ljava/lang/Object;

    .line 952
    sput-object p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->updateBrushPreview:Landroid/widget/ImageView;

    .line 953
    sput-object p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->updateBrushPreviewFixed:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public bitmapToOpenGL(Landroid/graphics/Bitmap;IIZ)I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 1171
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    const/16 v1, 0xde1

    .line 1174
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0x2802

    .line 1175
    invoke-static {v1, v3, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2803

    .line 1176
    invoke-static {v1, v3, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p3, 0x2800

    .line 1177
    invoke-static {v1, p3, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p3, 0x2801

    if-eqz p4, :cond_0

    const/16 p2, 0x2703

    .line 1180
    invoke-static {v1, p3, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    goto :goto_0

    .line 1182
    :cond_0
    invoke-static {v1, p3, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1185
    :goto_0
    invoke-static {v1, v2, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    if-eqz p4, :cond_1

    .line 1188
    invoke-static {v1}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    :cond_1
    return v0
.end method

.method public draw(Z)V
    .locals 7

    .line 243
    sget-boolean v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handleNewConfig:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 244
    sput-boolean v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->handleNewConfig:Z

    .line 245
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->handleSurfaceChanged()V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->startRenderListener:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 249
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 250
    iput-object v2, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->startRenderListener:Ljava/lang/Runnable;

    .line 253
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->needsResize()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 254
    sput-boolean v3, Lcom/brakefield/painter/PainterGraphicsRenderer;->resizeProject:Z

    .line 257
    :cond_2
    sget-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveProject:Z

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->exporter:Lcom/brakefield/painter/Exporter;

    if-nez v0, :cond_4

    sget-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->importImage:Landroid/net/Uri;

    if-nez v0, :cond_4

    sget-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->importReference:Ljava/lang/String;

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->resizeProject:Z

    if-eqz v0, :cond_5

    .line 258
    :cond_4
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->showProgress()V

    .line 261
    :cond_5
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPreviewSegmentsStyle()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_6

    .line 262
    invoke-static {}, Lcom/brakefield/painter/PainterZeroLatency;->getPredictor()Lcom/brakefield/painter/zeroLatency/InkPredictor;

    move-result-object v0

    invoke-interface {v0}, Lcom/brakefield/painter/zeroLatency/InkPredictor;->calculatePrediction()Ljava/util/List;

    move-result-object v0

    .line 263
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/painter/zeroLatency/InkPoint;

    .line 264
    iget v5, v4, Lcom/brakefield/painter/zeroLatency/InkPoint;->mX:F

    iget v6, v4, Lcom/brakefield/painter/zeroLatency/InkPoint;->mY:F

    iget v4, v4, Lcom/brakefield/painter/zeroLatency/InkPoint;->mPressure:F

    invoke-static {v5, v6, v4}, Lcom/brakefield/painter/PainterLib;->predict(FFF)V

    goto :goto_0

    .line 268
    :cond_6
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderLoadIcons()V

    .line 269
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderUpdateCamera()V

    .line 271
    iget-boolean v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsUpdate:Z

    if-nez v0, :cond_7

    .line 272
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->needsUpdate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsUpdate:Z

    .line 275
    :cond_7
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderAutoSave()V

    .line 276
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderCreateProject()V

    .line 277
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderResizeProject()V

    .line 278
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderLoadProject()V

    .line 279
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderUpdateBrush()V

    .line 280
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderLoadColorProfile()V

    .line 281
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderLoadPattern()V

    .line 282
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderLoadPaperTexture()V

    .line 283
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderImportImage()V

    .line 284
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderApplyVector()V

    .line 285
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderSaveBrush()V

    .line 286
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderHandleSelectionActions()V

    .line 287
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderSaveTilePattern()V

    .line 288
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderSaveImage()V

    .line 290
    iget-boolean v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsUpdate:Z

    if-nez v0, :cond_8

    .line 291
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->needsUpdate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsUpdate:Z

    .line 294
    :cond_8
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->updateScene(Z)V

    .line 295
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->renderScene(Z)V

    .line 297
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderUpdateBrushPreview()V

    .line 298
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderCreatePaletteFromProject()V

    .line 300
    iget p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->countdown:I

    if-lez p1, :cond_e

    sub-int/2addr p1, v3

    .line 301
    iput p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->countdown:I

    if-nez p1, :cond_e

    .line 303
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->numberOfSaveTiles()I

    move-result p1

    .line 304
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isAutosaving()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->autosaveListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    :cond_9
    add-int/lit8 p1, p1, 0x1

    :cond_a
    if-lez p1, :cond_b

    .line 308
    iget v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->countdown:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->countdown:I

    goto :goto_2

    .line 309
    :cond_b
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->userIsInteracting()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_1

    .line 312
    :cond_c
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->safeToSaveProject()Z

    move-result p1

    sput-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveProject:Z

    .line 313
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->stopAnimation()V

    goto :goto_2

    .line 310
    :cond_d
    :goto_1
    iget p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->countdown:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->countdown:I

    .line 318
    :cond_e
    :goto_2
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderSavePlayback()V

    .line 319
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderSaveProject()V

    .line 321
    iget-boolean p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsUpdate:Z

    if-eqz p1, :cond_f

    .line 322
    iput-boolean v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsUpdate:Z

    .line 323
    iget-object p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    .line 324
    iget-object p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->updateLayers()V

    .line 327
    :cond_f
    sget-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsSaveProject:Z

    if-eqz p1, :cond_10

    .line 334
    sput-boolean v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsSaveProject:Z

    .line 335
    sput-boolean v3, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveProject:Z

    .line 338
    :cond_10
    sget-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->endRenderListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_11

    .line 339
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 340
    sput-object v2, Lcom/brakefield/painter/PainterGraphicsRenderer;->endRenderListener:Ljava/lang/Runnable;

    .line 343
    :cond_11
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToastMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 344
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_13

    .line 345
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->getStringId(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    .line 347
    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    .line 349
    :cond_12
    iget-object v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v1, p1}, Lcom/brakefield/painter/SharedMessageHandler;->showMessage(Ljava/lang/String;)V

    .line 352
    :cond_13
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToastChangingValueTitle()Ljava/lang/String;

    move-result-object p1

    .line 353
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    .line 354
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->getStringId(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 356
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    .line 358
    :cond_14
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToastChangingValueMessage()Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->getStringId(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_15

    .line 361
    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 363
    :cond_15
    iget-object v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v2, 0x0

    sget-object v2, Lcom/google/android/exoplayer2/metadata/icy/OZ/XlYsLoHtRjl;->iZdzKMlktgWjoM:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/brakefield/painter/SharedMessageHandler;->showMessage(Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method getBrushPreview(Z)Landroid/graphics/Bitmap;
    .locals 9

    .line 1023
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushPreviewWidth()I

    move-result v0

    .line 1024
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushPreviewHeight()I

    move-result v1

    .line 1026
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isVectorBrush()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1028
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushSize()F

    move-result v2

    if-eqz p1, :cond_0

    int-to-float v3, v1

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    .line 1030
    invoke-static {v3}, Lcom/brakefield/painter/PainterLib;->setBrushSize(F)V

    .line 1033
    :cond_0
    new-instance v3, Lcom/infinite/geom/PathNative;

    invoke-static {v0, v1, p1}, Lcom/brakefield/painter/PainterLib;->getPreviewPath(IIZ)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/infinite/geom/PathNative;-><init>(J)V

    .line 1035
    invoke-virtual {v3}, Lcom/infinite/geom/PathNative;->isNull()Z

    move-result p1

    const/4 v4, 0x0

    if-nez p1, :cond_3

    invoke-virtual {v3}, Lcom/infinite/geom/PathNative;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1037
    new-instance p1, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {p1, v5}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v5, -0x1000000

    .line 1038
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1039
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushStrokeSize()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1

    .line 1041
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1042
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1043
    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_1
    const/high16 v5, 0x437f0000    # 255.0f

    .line 1045
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushOpacity()F

    move-result v6

    mul-float/2addr v6, v5

    float-to-int v5, v6

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1047
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1048
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1050
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 1051
    iget-object v7, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->transformSurfaceMatrix:Landroid/graphics/Matrix;

    if-nez v7, :cond_2

    int-to-float v0, v0

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v0, v7

    int-to-float v1, v1

    mul-float/2addr v1, v7

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, -0x40800000    # -1.0f

    .line 1052
    invoke-virtual {v6, v7, v8, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1054
    :cond_2
    invoke-virtual {v3, v6, p1, v4}, Lcom/infinite/geom/PathNative;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    .line 1055
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 1057
    invoke-virtual {v3}, Lcom/infinite/geom/PathNative;->delete()V

    move-object v4, v5

    .line 1060
    :cond_3
    invoke-static {v2}, Lcom/brakefield/painter/PainterLib;->setBrushSize(F)V

    goto :goto_0

    .line 1063
    :cond_4
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->getBrushPreview(Z)[I

    move-result-object p1

    .line 1064
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_0
    return-object v4
.end method

.method handleSurfaceChanged()V
    .locals 10

    const/4 v0, 0x4

    .line 370
    iput v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->singleFrames:I

    .line 371
    invoke-direct {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->disableSingleBuffer()V

    .line 373
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->mainView:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    invoke-interface {v0}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->getWidth()I

    move-result v0

    .line 374
    iget-object v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->mainView:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    invoke-interface {v1}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->getHeight()I

    move-result v1

    .line 376
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCanvasWidth()I

    move-result v2

    .line 377
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCanvasHeight()I

    move-result v3

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    move v2, v0

    move v3, v1

    .line 384
    :cond_1
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 386
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    sget v7, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 387
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Point;

    int-to-float v7, v0

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    int-to-float v9, v1

    mul-float/2addr v9, v8

    invoke-direct {v6, v7, v9}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 388
    sget v7, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    sub-int v7, v0, v7

    int-to-float v7, v7

    .line 389
    sget v8, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    sub-int v8, v1, v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    div-float/2addr v8, v9

    .line 392
    invoke-virtual {v4, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 393
    iget v7, v6, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, v6, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v4, v5, v5, v7, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 395
    invoke-static {v4}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->setMatrix(Landroid/graphics/Matrix;)V

    .line 398
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    .line 399
    sput v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    .line 401
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->mainView:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    invoke-interface {v0}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->getSurfaceWidth()I

    move-result v0

    .line 402
    iget-object v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->mainView:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    invoke-interface {v1}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->getSurfaceHeight()I

    move-result v1

    .line 404
    iget v4, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->uiScale:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/brakefield/painter/PainterLib;->init(IIIIF)V

    const/4 v0, 0x0

    .line 406
    iput-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->prevCamera:Landroid/graphics/Matrix;

    .line 407
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderUpdateCamera()V

    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .line 1205
    iget v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->countdown:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$renderCreateProject$0$com-brakefield-painter-PainterGraphicsRenderer(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 512
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->startAnimation()V

    return-void
.end method

.method synthetic lambda$renderCreateProject$1$com-brakefield-painter-PainterGraphicsRenderer()V
    .locals 7

    .line 511
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropTop()I

    move-result v0

    int-to-float v2, v0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropRight()I

    move-result v0

    int-to-float v3, v0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropBottom()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    new-instance v6, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0}, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/PainterGraphicsRenderer;)V

    invoke-static/range {v1 .. v6}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->reset(FFFFZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method synthetic lambda$renderLoadProject$4$com-brakefield-painter-PainterGraphicsRenderer(F)F
    .locals 8

    .line 0
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    .line 554
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getImageWidth()I

    move-result v0

    int-to-float v0, v0

    .line 555
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getImageHeight()I

    move-result v1

    int-to-float v1, v1

    .line 556
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 557
    iget-object v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->res:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 558
    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-double v6, v1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    mul-float/2addr v1, p1

    return v1
.end method

.method synthetic lambda$renderResizeProject$2$com-brakefield-painter-PainterGraphicsRenderer(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 537
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->startAnimation()V

    return-void
.end method

.method synthetic lambda$renderResizeProject$3$com-brakefield-painter-PainterGraphicsRenderer()V
    .locals 7

    .line 536
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropTop()I

    move-result v0

    int-to-float v2, v0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropRight()I

    move-result v0

    int-to-float v3, v0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropBottom()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    new-instance v6, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/PainterGraphicsRenderer;)V

    invoke-static/range {v1 .. v6}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->reset(FFFFZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method synthetic lambda$renderSaveBrush$5$com-brakefield-painter-PainterGraphicsRenderer(Landroid/net/Uri;Landroid/view/View;)V
    .locals 0

    .line 893
    iget-object p2, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->context:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/brakefield/painter/ShareManager;->sendToOther(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method synthetic lambda$renderSaveBrush$6$com-brakefield-painter-PainterGraphicsRenderer(Landroid/net/Uri;)V
    .locals 3

    .line 891
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->mainView:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    invoke-interface {v0}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f120a68

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    const v1, 0x7f120a8b

    .line 892
    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/PainterGraphicsRenderer;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 895
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->themeSnackbar(Lcom/google/android/material/snackbar/Snackbar;)V

    .line 896
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    .line 193
    sget p1, Lcom/brakefield/painter/PainterZeroLatency;->mode:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 195
    :goto_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->useSingleBufferMode()Z

    move-result v0

    if-nez v0, :cond_1

    move p1, v2

    :cond_1
    if-eqz p1, :cond_2

    .line 200
    iget-boolean p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->singleBufferMode:Z

    if-nez p1, :cond_3

    .line 201
    invoke-direct {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->enableSingleBuffer()V

    goto :goto_1

    .line 204
    :cond_2
    iget-boolean p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->singleBufferMode:Z

    if-eqz p1, :cond_3

    .line 205
    invoke-direct {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->disableSingleBuffer()V

    .line 206
    iget-boolean p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->singleBufferMode:Z

    xor-int/2addr p1, v1

    goto :goto_2

    :cond_3
    :goto_1
    move p1, v2

    :goto_2
    if-eqz p1, :cond_4

    return-void

    .line 218
    :cond_4
    iget-boolean p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->singleBufferMode:Z

    const/4 v0, 0x4

    if-eqz p1, :cond_5

    .line 219
    iget p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->singleFrames:I

    add-int/2addr p1, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->singleFrames:I

    .line 220
    invoke-virtual {p0, v1}, Lcom/brakefield/painter/PainterGraphicsRenderer;->draw(Z)V

    .line 221
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 222
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->swapBuffers()V

    goto :goto_3

    .line 224
    :cond_5
    iget p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->doubleFrames:I

    add-int/2addr p1, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->doubleFrames:I

    .line 225
    invoke-virtual {p0, v2}, Lcom/brakefield/painter/PainterGraphicsRenderer;->draw(Z)V

    :goto_3
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    const/4 p1, 0x0

    .line 1070
    sput-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->handleNewConfig:Z

    .line 1071
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->handleSurfaceChanged()V

    .line 1072
    iget-object p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->mainView:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    invoke-interface {p1}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->requestRender()V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1078
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    .line 1079
    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    const/16 v3, 0x3033

    invoke-static {v1, v2, p2, v3}, Lcom/brakefield/painter/zeroLatency/gpu/InkEGL;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result p2

    and-int/lit16 p2, p2, 0x1000

    if-eqz p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 1080
    :goto_0
    sput-boolean p2, Lcom/brakefield/painter/PainterZeroLatency;->sharedBufferModeAvailable:Z

    .line 1083
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->recycleEngine()V

    .line 1085
    iget-object p2, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->res:Landroid/content/res/Resources;

    const v1, 0x7f0802f2

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    const/16 v1, 0x2601

    const/16 v2, 0x2901

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->bitmapToOpenGL(Landroid/graphics/Bitmap;IIZ)I

    move-result p2

    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setNoiseTexture(I)V

    .line 1086
    iget-object p2, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->res:Landroid/content/res/Resources;

    const v3, 0x7f0801f7

    invoke-static {p2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->bitmapToOpenGL(Landroid/graphics/Bitmap;IIZ)I

    move-result p2

    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setHatchingTexture(I)V

    const-string p2, "pattern_clouds"

    .line 1088
    sput-object p2, Lcom/brakefield/painter/PainterGraphicsRenderer;->patternResourceName:Ljava/lang/String;

    .line 1089
    sput-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->loadPattern:Z

    const-string/jumbo p1, "texture_13"

    .line 1091
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setPaperResourceName(Ljava/lang/String;)V

    .line 1093
    iget-object p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->hideSplashScreen()V

    .line 1095
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->hasCurrentProject()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1096
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCurrentProjectLocation()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->loadProject:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method renderApplyVector()V
    .locals 5

    .line 818
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isVectorBrush()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 820
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->vectorPath:Lcom/infinite/geom/PathNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushPath()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/infinite/geom/PathNative;->set(J)V

    .line 822
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->vectorPath:Lcom/infinite/geom/PathNative;

    invoke-virtual {v0}, Lcom/infinite/geom/PathNative;->isNull()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->vectorPath:Lcom/infinite/geom/PathNative;

    invoke-virtual {v0}, Lcom/infinite/geom/PathNative;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 823
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCanvasWidth()I

    move-result v0

    .line 824
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCanvasHeight()I

    move-result v1

    .line 825
    iget-object v2, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->view2GL:Lcom/brakefield/painter/View2GL;

    if-nez v2, :cond_0

    new-instance v2, Lcom/brakefield/painter/View2GL;

    invoke-direct {v2, v0, v1}, Lcom/brakefield/painter/View2GL;-><init>(II)V

    iput-object v2, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->view2GL:Lcom/brakefield/painter/View2GL;

    .line 826
    :cond_0
    iget-object v2, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->view2GL:Lcom/brakefield/painter/View2GL;

    invoke-virtual {v2}, Lcom/brakefield/painter/View2GL;->getTextureWidth()I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->view2GL:Lcom/brakefield/painter/View2GL;

    invoke-virtual {v2}, Lcom/brakefield/painter/View2GL;->getTextureHeight()I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 827
    :cond_1
    iget-object v2, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->view2GL:Lcom/brakefield/painter/View2GL;

    invoke-virtual {v2}, Lcom/brakefield/painter/View2GL;->releaseSurface()V

    .line 828
    new-instance v2, Lcom/brakefield/painter/View2GL;

    invoke-direct {v2, v0, v1}, Lcom/brakefield/painter/View2GL;-><init>(II)V

    iput-object v2, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->view2GL:Lcom/brakefield/painter/View2GL;

    .line 831
    :cond_2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 832
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 833
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushStrokeSize()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_3

    .line 836
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 837
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 838
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 839
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 840
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 843
    :cond_3
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 844
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 846
    iget-object v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->view2GL:Lcom/brakefield/painter/View2GL;

    invoke-virtual {v1}, Lcom/brakefield/painter/View2GL;->onDrawViewBegin()Landroid/graphics/Canvas;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 848
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 850
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 851
    iget-object v2, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->vectorPath:Lcom/infinite/geom/PathNative;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcom/infinite/geom/PathNative;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    .line 852
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 854
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->view2GL:Lcom/brakefield/painter/View2GL;

    invoke-virtual {v0}, Lcom/brakefield/painter/View2GL;->onDrawViewEnd()V

    .line 855
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->view2GL:Lcom/brakefield/painter/View2GL;

    invoke-virtual {v0}, Lcom/brakefield/painter/View2GL;->onDrawFrame()V

    .line 857
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->view2GL:Lcom/brakefield/painter/View2GL;

    invoke-virtual {v0}, Lcom/brakefield/painter/View2GL;->getGLSurfaceTexture()I

    move-result v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->applyVectorBrushOES(I)V

    :cond_4
    return-void
.end method

.method renderAutoSave()V
    .locals 4

    .line 460
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->numberOfSaveTiles()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 463
    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->setPlaybackNeedsFrame(Z)V

    .line 466
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isAutosaving()Z

    move-result v2

    if-nez v2, :cond_1

    if-gtz v0, :cond_1

    sget-object v2, Lcom/brakefield/painter/PainterGraphicsRenderer;->autosaveListener:Ljava/lang/Runnable;

    if-eqz v2, :cond_6

    .line 467
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isAutosaving()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    if-lez v0, :cond_2

    goto :goto_0

    .line 488
    :cond_2
    sget-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->autosaveListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 489
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->dismissProgress()V

    .line 490
    sget-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->autosaveListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 491
    sput-object v3, Lcom/brakefield/painter/PainterGraphicsRenderer;->autosaveListener:Ljava/lang/Runnable;

    goto :goto_1

    .line 469
    :cond_3
    :goto_0
    iget v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->autosaveCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->autosaveCount:I

    .line 470
    iget v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->autosaveRate:I

    if-ge v0, v1, :cond_4

    sget-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->autosaveListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    :cond_4
    const/4 v0, 0x0

    .line 471
    iput v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->autosaveCount:I

    .line 473
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getAutosave()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 476
    sget-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->autosaveListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 477
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->numberOfSaveTiles()I

    move-result v0

    if-lez v0, :cond_5

    .line 478
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->startAnimation()V

    goto :goto_1

    .line 480
    :cond_5
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->dismissProgress()V

    .line 481
    sget-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->autosaveListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 482
    sput-object v3, Lcom/brakefield/painter/PainterGraphicsRenderer;->autosaveListener:Ljava/lang/Runnable;

    :cond_6
    :goto_1
    return-void
.end method

.method renderCreatePaletteFromProject()V
    .locals 1

    .line 960
    sget-boolean v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->createPaletteFromImage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 961
    sput-boolean v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->createPaletteFromImage:Z

    .line 963
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->createPaletteFromImage()V

    .line 965
    sget-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->paletteListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 966
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 967
    sput-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->paletteListener:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method renderCreateProject()V
    .locals 6

    .line 497
    sget-boolean v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->createProject:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 498
    sput-boolean v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->createProject:Z

    .line 500
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 501
    sget-object v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->createProjectDirectory:Ljava/lang/String;

    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->createProject(Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->mainView:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    invoke-interface {v1}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->getSurfaceWidth()I

    move-result v1

    .line 504
    iget-object v2, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->mainView:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    invoke-interface {v2}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->getSurfaceHeight()I

    move-result v2

    .line 506
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCanvasWidth()I

    move-result v3

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCanvasHeight()I

    move-result v4

    iget v5, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->uiScale:F

    invoke-static {v1, v2, v3, v4, v5}, Lcom/brakefield/painter/PainterLib;->init(IIIIF)V

    const/4 v1, 0x0

    .line 508
    iput-object v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->prevCamera:Landroid/graphics/Matrix;

    .line 509
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderUpdateCamera()V

    .line 511
    iget-object v2, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    new-instance v3, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/PainterGraphicsRenderer;)V

    invoke-interface {v2, v3}, Lcom/brakefield/painter/SharedMessageHandler;->post(Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    .line 513
    iput-boolean v2, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsUpdate:Z

    .line 514
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setLoading(Z)V

    .line 515
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->dismissProgress()V

    .line 516
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->cleanCachedLayers()V

    .line 518
    sget-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->newProjectListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 519
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 520
    sput-object v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->newProjectListener:Ljava/lang/Runnable;

    .line 523
    :cond_0
    sput-object v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveListener:Ljava/lang/Runnable;

    .line 524
    sput-object v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->autosaveListener:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method renderHandleSelectionActions()V
    .locals 3

    .line 912
    sget-boolean v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->selectionClip:Z

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 913
    sput-boolean v2, Lcom/brakefield/painter/PainterGraphicsRenderer;->selectionClip:Z

    .line 914
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getClipboardPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->saveSelectionToClipboard(Ljava/lang/String;)V

    .line 915
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->cancelTool()V

    .line 917
    :cond_0
    sget-boolean v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->selectionClipBrush:Z

    if-eqz v0, :cond_1

    .line 918
    sput-boolean v2, Lcom/brakefield/painter/PainterGraphicsRenderer;->selectionClipBrush:Z

    .line 919
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getBrushHeadsPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->saveSelectionToBrushHeads(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 920
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 921
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->cancelTool()V

    .line 922
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getBrushHeadsPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 923
    iget-object v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v1, v0}, Lcom/brakefield/painter/SharedMessageHandler;->launchBrushCreator(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method renderImportImage()V
    .locals 12

    .line 721
    sget-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->importImage:Landroid/net/Uri;

    const v1, 0x812f

    const/16 v2, 0x2601

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 723
    sput-object v5, Lcom/brakefield/painter/PainterGraphicsRenderer;->importImage:Landroid/net/Uri;

    .line 725
    iget-object v6, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->context:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/brakefield/painter/BitmapOrientator;->orientFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_1

    .line 727
    :try_start_0
    iget-object v7, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->context:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/brakefield/infinitestudio/FileManager;->resolveInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :try_start_1
    invoke-static {v0, v5, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 729
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v7

    if-eqz v0, :cond_0

    .line 727
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 730
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 735
    invoke-virtual {p0, v6, v2, v1, v4}, Lcom/brakefield/painter/PainterGraphicsRenderer;->bitmapToOpenGL(Landroid/graphics/Bitmap;IIZ)I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget v8, Lcom/brakefield/painter/PainterGraphicsRenderer;->importType:I

    invoke-static {v0, v7, v6, v8}, Lcom/brakefield/painter/PainterLib;->importImage(IIII)V

    .line 736
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->startAnimation()V

    .line 737
    iput-boolean v3, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsUpdate:Z

    .line 739
    :cond_2
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->dismissProgress()V

    .line 742
    :cond_3
    sget-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->importReference:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 743
    iget-object v6, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->referenceManager:Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;

    invoke-virtual {v6, v0}, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->addReferenceImage(Ljava/lang/String;)V

    .line 744
    sput-object v5, Lcom/brakefield/painter/PainterGraphicsRenderer;->importReference:Ljava/lang/String;

    .line 745
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->dismissProgress()V

    .line 748
    :cond_4
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->referenceManager:Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->referenceNeedsLoading()I

    move-result v0

    :goto_2
    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x44800000    # 1024.0f

    if-le v0, v6, :cond_a

    .line 751
    iget-object v6, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->referenceManager:Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;

    invoke-virtual {v6, v0}, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->referenceLocation(I)Ljava/lang/String;

    move-result-object v6

    .line 752
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 753
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCurrentProjectLocation()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/brakefield/infinitestudio/FileManager;->removeStorageDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Resources"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 755
    invoke-static {v10, v9}, Lcom/brakefield/infinitestudio/FileManager;->fileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_3

    .line 756
    :cond_5
    invoke-static {v10, v9}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 758
    :goto_3
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 759
    iget-object v9, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->context:Landroid/content/Context;

    invoke-static {v9, v6}, Lcom/brakefield/painter/BitmapOrientator;->orientFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-nez v9, :cond_7

    .line 761
    :try_start_5
    iget-object v10, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->context:Landroid/content/Context;

    invoke-static {v10, v6}, Lcom/brakefield/infinitestudio/FileManager;->resolveInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 762
    :try_start_6
    invoke-static {v6, v5, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v6, :cond_7

    .line 763
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    :catchall_2
    move-exception v10

    if-eqz v6, :cond_6

    .line 761
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v6

    :try_start_9
    invoke-virtual {v10, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw v10
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception v6

    .line 764
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_5
    if-eqz v9, :cond_9

    .line 768
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v8, v6

    cmpg-float v6, v8, v7

    if-gez v6, :cond_8

    .line 769
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v9, v6, v7, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 770
    :cond_8
    invoke-virtual {p0, v9, v2, v1, v4}, Lcom/brakefield/painter/PainterGraphicsRenderer;->bitmapToOpenGL(Landroid/graphics/Bitmap;IIZ)I

    move-result v6

    .line 771
    iget-object v7, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->referenceManager:Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v7, v6, v8, v9, v0}, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->loadReference(IIII)V

    .line 772
    iput-boolean v3, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsUpdate:Z

    goto :goto_6

    .line 773
    :cond_9
    iget-object v6, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->referenceManager:Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;

    invoke-virtual {v6, v4, v4, v4, v0}, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->loadReference(IIII)V

    .line 775
    :goto_6
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->referenceManager:Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->referenceNeedsLoading()I

    move-result v0

    goto/16 :goto_2

    .line 778
    :cond_a
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->challengeImageNeedsLoading()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 780
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->challengeImageLocation()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 781
    iget-object v6, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->context:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/brakefield/painter/BitmapOrientator;->orientFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_c

    .line 783
    :try_start_a
    iget-object v9, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->context:Landroid/content/Context;

    invoke-static {v9, v0}, Lcom/brakefield/infinitestudio/FileManager;->resolveInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 784
    :try_start_b
    invoke-static {v0, v5, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v0, :cond_c

    .line 785
    :try_start_c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_8

    :catchall_4
    move-exception v9

    if-eqz v0, :cond_b

    .line 783
    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    :try_start_e
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_7
    throw v9
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    :catch_2
    move-exception v0

    .line 786
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_8
    if-eqz v6, :cond_d

    .line 790
    invoke-virtual {p0, v6, v2, v1, v4}, Lcom/brakefield/painter/PainterGraphicsRenderer;->bitmapToOpenGL(Landroid/graphics/Bitmap;IIZ)I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v0, v9, v6}, Lcom/brakefield/painter/PainterLib;->loadChallengeImage(III)V

    .line 791
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->startAnimation()V

    .line 792
    iput-boolean v3, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsUpdate:Z

    .line 794
    :cond_d
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->dismissProgress()V

    .line 797
    :cond_e
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->challengeReferenceNeedsLoading()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 798
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->challengeReferenceLocation()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 799
    iget-object v6, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->context:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/brakefield/painter/BitmapOrientator;->orientFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_10

    .line 801
    :try_start_f
    iget-object v9, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->context:Landroid/content/Context;

    invoke-static {v9, v0}, Lcom/brakefield/infinitestudio/FileManager;->resolveInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 802
    :try_start_10
    invoke-static {v0, v5, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    if-eqz v0, :cond_10

    .line 803
    :try_start_11
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    goto :goto_a

    :catchall_6
    move-exception v5

    if-eqz v0, :cond_f

    .line 801
    :try_start_12
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception v0

    :try_start_13
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_9
    throw v5
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    :catch_3
    move-exception v0

    .line 804
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_a
    if-eqz v6, :cond_12

    .line 808
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v8, v0

    cmpg-float v0, v8, v7

    if-gez v0, :cond_11

    .line 809
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v0, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-static {v6, v0, v5, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 810
    :cond_11
    invoke-virtual {p0, v6, v2, v1, v4}, Lcom/brakefield/painter/PainterGraphicsRenderer;->bitmapToOpenGL(Landroid/graphics/Bitmap;IIZ)I

    move-result v0

    .line 811
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/brakefield/painter/PainterLib;->loadChallengeReference(III)V

    .line 812
    iput-boolean v3, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsUpdate:Z

    :cond_12
    return-void
.end method

.method renderLoadColorProfile()V
    .locals 4

    .line 641
    invoke-static {}, Lcom/brakefield/painter/ColorProfiles;->refreshColorProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    invoke-static {}, Lcom/brakefield/painter/ColorProfiles;->getCurrentColorProfileResourceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 643
    iget-object v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->res:Landroid/content/res/Resources;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x2601

    const v3, 0x812f

    .line 645
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/brakefield/painter/PainterGraphicsRenderer;->bitmapToOpenGL(Landroid/graphics/Bitmap;IIZ)I

    move-result v1

    .line 646
    :cond_0
    invoke-static {v1}, Lcom/brakefield/painter/ColorProfiles;->setColorProfileTexture(I)V

    :cond_1
    return-void
.end method

.method renderLoadIcons()V
    .locals 7

    .line 412
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->loadupIcons()V

    .line 415
    :cond_0
    :goto_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->iconNeedsLoad()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 416
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->getDrawableId(Ljava/lang/String;)I

    move-result v1

    .line 417
    iget-object v2, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->res:Landroid/content/res/Resources;

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 420
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const v4, 0x812f

    const/4 v5, 0x1

    const/16 v6, 0x2601

    .line 421
    invoke-virtual {p0, v1, v6, v4, v5}, Lcom/brakefield/painter/PainterGraphicsRenderer;->bitmapToOpenGL(Landroid/graphics/Bitmap;IIZ)I

    move-result v1

    .line 422
    invoke-static {v1, v2, v3, v0}, Lcom/brakefield/painter/PainterLib;->loadIcon(IIILjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method renderLoadPaperTexture()V
    .locals 9

    .line 682
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->loadPaperTexture()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 684
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaperCustomName()Ljava/lang/String;

    move-result-object v0

    .line 685
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaperResourceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 689
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getBrushTexturesPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 690
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 691
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 692
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 693
    iget-object v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->res:Landroid/content/res/Resources;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 697
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 698
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 700
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ne v1, v3, :cond_2

    if-eq v2, v3, :cond_3

    .line 706
    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 707
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 708
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v7, v7, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v7, 0x2

    invoke-direct {v3, v7}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v5, v0, v6, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object v0, v4

    .line 712
    :cond_3
    sput-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->paperTextureImage:Landroid/graphics/Bitmap;

    const/16 v3, 0x2901

    const/4 v4, 0x1

    const/16 v5, 0x2601

    .line 714
    invoke-virtual {p0, v0, v5, v3, v4}, Lcom/brakefield/painter/PainterGraphicsRenderer;->bitmapToOpenGL(Landroid/graphics/Bitmap;IIZ)I

    move-result v0

    .line 715
    invoke-static {v0, v1, v2}, Lcom/brakefield/painter/PainterLib;->setPaperTexture(III)V

    :cond_4
    return-void
.end method

.method renderLoadPattern()V
    .locals 10

    .line 651
    sget-boolean v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->loadPattern:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 652
    sput-boolean v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->loadPattern:Z

    .line 655
    sget-object v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->patternCustomName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 656
    sget-object v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->patternCustomName:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 657
    :cond_0
    sget-object v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->patternResourceName:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 658
    sget-object v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->patternResourceName:Ljava/lang/String;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->getDrawableId(Ljava/lang/String;)I

    move-result v1

    .line 659
    iget-object v2, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->res:Landroid/content/res/Resources;

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 662
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 663
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 664
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ne v2, v4, :cond_2

    if-eq v3, v4, :cond_3

    .line 670
    :cond_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 671
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 672
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v0, v0, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v9, 0x2

    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v6, v1, v7, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object v1, v5

    :cond_3
    const/16 v0, 0x2901

    const/4 v5, 0x1

    const/16 v6, 0x2601

    .line 676
    invoke-virtual {p0, v1, v6, v0, v5}, Lcom/brakefield/painter/PainterGraphicsRenderer;->bitmapToOpenGL(Landroid/graphics/Bitmap;IIZ)I

    move-result v0

    .line 677
    invoke-static {v0, v2, v3, v4, v4}, Lcom/brakefield/painter/PainterLib;->setPatternTexture(IIIII)V

    :cond_4
    return-void
.end method

.method renderLoadProject()V
    .locals 9

    .line 544
    sget-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->loadProject:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 546
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 548
    sget-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->loadProject:Ljava/lang/String;

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->loadProject(Ljava/lang/String;)V

    .line 550
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getMaxZoomInInches()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 552
    new-instance v1, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/PainterGraphicsRenderer;F)V

    sput-object v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->zoomConstraint:Lcom/brakefield/infinitestudio/sketchbook/Camera$ZoomConstraint;

    goto :goto_0

    .line 564
    :cond_0
    sput-object v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->zoomConstraint:Lcom/brakefield/infinitestudio/sketchbook/Camera$ZoomConstraint;

    .line 567
    :goto_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getResetCamera()[F

    move-result-object v0

    if-eqz v0, :cond_1

    .line 568
    array-length v1, v0

    const/16 v3, 0x9

    if-ne v1, v3, :cond_1

    .line 569
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 572
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropLeft()I

    move-result v0

    int-to-float v3, v0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropTop()I

    move-result v0

    int-to-float v4, v0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropRight()I

    move-result v0

    int-to-float v5, v0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropBottom()I

    move-result v0

    int-to-float v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->reset(FFFFZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 574
    iput-object v2, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->prevCamera:Landroid/graphics/Matrix;

    .line 575
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderUpdateCamera()V

    .line 577
    sput-object v2, Lcom/brakefield/painter/PainterGraphicsRenderer;->loadProject:Ljava/lang/String;

    const/4 v0, 0x1

    .line 578
    iput-boolean v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsUpdate:Z

    .line 579
    sget-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->loadProjectListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 580
    iput-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->startRenderListener:Ljava/lang/Runnable;

    .line 581
    sput-object v2, Lcom/brakefield/painter/PainterGraphicsRenderer;->loadProjectListener:Ljava/lang/Runnable;

    .line 583
    :cond_2
    sput-object v2, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveListener:Ljava/lang/Runnable;

    .line 584
    sput-object v2, Lcom/brakefield/painter/PainterGraphicsRenderer;->autosaveListener:Ljava/lang/Runnable;

    .line 586
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->dismissProgress()V

    .line 587
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->cleanCachedLayers()V

    .line 588
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    .line 589
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->hideLoadScreen()V

    :cond_3
    return-void
.end method

.method renderResizeProject()V
    .locals 3

    .line 529
    sget-boolean v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->resizeProject:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 530
    sput-boolean v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->resizeProject:Z

    .line 532
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getResizeActionWidth()I

    move-result v1

    .line 533
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getResizeActionHeight()I

    move-result v2

    .line 535
    invoke-static {v1, v2, v0}, Lcom/brakefield/painter/PainterLib;->resize(IIZ)V

    .line 536
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    new-instance v1, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/PainterGraphicsRenderer;)V

    invoke-interface {v0, v1}, Lcom/brakefield/painter/SharedMessageHandler;->post(Ljava/lang/Runnable;)V

    .line 538
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->dismissProgress()V

    :cond_0
    return-void
.end method

.method renderSaveBrush()V
    .locals 9

    const-string v0, "preview_"

    .line 864
    sget-boolean v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveBrushPreview:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->shareBrush:Lcom/brakefield/painter/brushes/brushfolders/Brush;

    if-eqz v1, :cond_3

    :cond_0
    const/4 v1, 0x0

    .line 865
    sput-boolean v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveBrushPreview:Z

    const/4 v1, 0x1

    .line 867
    invoke-virtual {p0, v1}, Lcom/brakefield/painter/PainterGraphicsRenderer;->getBrushPreview(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 869
    :try_start_0
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getCustomBrushesPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushCustomName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/brakefield/infinitestudio/FileManager;->getFileOutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 871
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 869
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 872
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 876
    :cond_2
    :goto_1
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->saveBrush()V

    .line 879
    :cond_3
    sget-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->shareBrush:Lcom/brakefield/painter/brushes/brushfolders/Brush;

    if-eqz v0, :cond_5

    .line 880
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getExtraPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 881
    sget-object v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->shareBrush:Lcom/brakefield/painter/brushes/brushfolders/Brush;

    invoke-virtual {v1}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getId()I

    move-result v1

    sget-object v2, Lcom/brakefield/painter/PainterGraphicsRenderer;->shareBrush:Lcom/brakefield/painter/brushes/brushfolders/Brush;

    invoke-virtual {v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/brakefield/painter/PainterLib;->shareBrush(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 882
    sput-object v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->shareBrush:Lcom/brakefield/painter/brushes/brushfolders/Brush;

    .line 884
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 886
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_4

    .line 887
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "application/com.brakefield.painter.prbr"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getSharedDocumentsDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Brushes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object v2, v8

    invoke-static/range {v2 .. v7}, Lcom/brakefield/infinitestudio/FileManager;->copyFileToMediaStore(Ljava/io/File;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 888
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    if-eqz v0, :cond_5

    .line 890
    iget-object v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    new-instance v2, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/PainterGraphicsRenderer;Landroid/net/Uri;)V

    invoke-interface {v1, v2}, Lcom/brakefield/painter/SharedMessageHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 900
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "file/*"

    .line 901
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 902
    sget-object v2, Lcom/brakefield/painter/PainterGraphicsRenderer;->shareActivity:Landroid/app/Activity;

    const-string v3, "com.brakefield.painter.provider"

    invoke-static {v2, v3, v8}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.extra.STREAM"

    .line 903
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    const-string v3, "#infinitepainter"

    .line 904
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 905
    sget-object v2, Lcom/brakefield/painter/PainterGraphicsRenderer;->shareActivity:Landroid/app/Activity;

    const v3, 0x7f120a8b

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 906
    sput-object v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->shareActivity:Landroid/app/Activity;

    :cond_5
    :goto_2
    return-void
.end method

.method renderSaveImage()V
    .locals 4

    .line 936
    sget-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->exporter:Lcom/brakefield/painter/Exporter;

    if-eqz v0, :cond_0

    .line 937
    iget-object v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->mainView:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    invoke-interface {v2}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/brakefield/painter/Exporter;->run(Landroid/content/Context;Landroid/view/View;Lcom/brakefield/painter/SharedMessageHandler;)V

    const/4 v0, 0x0

    .line 938
    sput-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->exporter:Lcom/brakefield/painter/Exporter;

    :cond_0
    return-void
.end method

.method renderSavePlayback()V
    .locals 5

    .line 973
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isRecordingPlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->needsPlaybackFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->playbackTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    sget-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->autosaveListener:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    sget-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveListener:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 975
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->updatePlaybackScan()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->updatePlaybackImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPlaybackImage()[I

    move-result-object v0

    .line 978
    new-instance v1, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePlaybackTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePlaybackTask;-><init>(Lcom/brakefield/painter/PainterGraphicsRenderer;Lcom/brakefield/painter/PainterGraphicsRenderer$1;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [[I

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePlaybackTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->playbackTask:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method renderSaveProject()V
    .locals 6

    .line 986
    sget-boolean v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveProject:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 987
    sput-boolean v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveProject:Z

    .line 988
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->hasCurrentProject()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 990
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 991
    invoke-static {v1}, Lcom/brakefield/painter/PainterGraphicsRenderer;->getGLMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v1

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v2

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getRotation()F

    move-result v3

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isFlipped()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/brakefield/painter/PainterLib;->setCamera([FFFZ)V

    .line 993
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->saveProject()V

    const/4 v1, 0x0

    .line 995
    iput-object v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->prevCamera:Landroid/graphics/Matrix;

    .line 996
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->renderUpdateCamera()V

    .line 998
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getImageWidth()I

    move-result v1

    .line 999
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getImageHeight()I

    move-result v2

    if-gtz v1, :cond_0

    if-lez v2, :cond_2

    .line 1004
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x44800000    # 1024.0f

    cmpl-float v5, v3, v4

    if-lez v5, :cond_1

    div-float/2addr v4, v3

    goto :goto_0

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    const/4 v3, 0x1

    .line 1012
    invoke-static {v4, v3}, Lcom/brakefield/painter/PainterLib;->getImage(FZ)[I

    move-result-object v4

    .line 1013
    new-instance v5, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePreviewTask;

    invoke-direct {v5, p0, v1, v2}, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePreviewTask;-><init>(Lcom/brakefield/painter/PainterGraphicsRenderer;II)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [[I

    aput-object v4, v2, v0

    invoke-virtual {v5, v1, v2}, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePreviewTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    return-void
.end method

.method renderSaveTilePattern()V
    .locals 2

    .line 929
    sget-boolean v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveTilePattern:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 930
    sput-boolean v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveTilePattern:Z

    .line 931
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getPatternsPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->saveTileToPatterns(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method renderUpdateBrush()V
    .locals 7

    .line 594
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->loadBrushHeadTexture()Z

    move-result v0

    const v1, 0x812f

    const/16 v2, 0x2601

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 596
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushHeadCustomName()Ljava/lang/String;

    move-result-object v0

    .line 597
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushHeadResourceName()Ljava/lang/String;

    move-result-object v5

    .line 600
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 601
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getBrushHeadsPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 603
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 604
    invoke-static {v5}, Lcom/brakefield/infinitestudio/ResourceHelper;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 605
    iget-object v5, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->res:Landroid/content/res/Resources;

    invoke-static {v5, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_2

    .line 609
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 610
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 611
    invoke-virtual {p0, v0, v2, v1, v4}, Lcom/brakefield/painter/PainterGraphicsRenderer;->bitmapToOpenGL(Landroid/graphics/Bitmap;IIZ)I

    move-result v0

    .line 612
    invoke-static {v0, v5, v6}, Lcom/brakefield/painter/PainterLib;->setBrushTexture(III)V

    .line 616
    :cond_2
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->loadBrushStrokeTexture()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 618
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushStrokeTextureCustomName()Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushStrokeTextureResourceName()Ljava/lang/String;

    move-result-object v5

    .line 622
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 623
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getBrushTexturesPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 624
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    .line 625
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 626
    invoke-static {v5}, Lcom/brakefield/infinitestudio/ResourceHelper;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 627
    iget-object v3, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->res:Landroid/content/res/Resources;

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_4
    :goto_1
    const/4 v0, 0x0

    if-eqz v3, :cond_5

    .line 631
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 632
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 633
    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->bitmapToOpenGL(Landroid/graphics/Bitmap;IIZ)I

    move-result v0

    .line 634
    invoke-static {v0, v4, v5}, Lcom/brakefield/painter/PainterLib;->setStrokeTexture(III)V

    goto :goto_2

    .line 636
    :cond_5
    invoke-static {v0, v4, v4}, Lcom/brakefield/painter/PainterLib;->setStrokeTexture(III)V

    :cond_6
    :goto_2
    return-void
.end method

.method renderUpdateBrushPreview()V
    .locals 4

    .line 944
    sget-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->updateBrushPreview:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->updateBrushPreviewFixed:Landroid/widget/ImageView;

    :goto_0
    if-eqz v0, :cond_2

    .line 945
    sget-object v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->applyingImage:Ljava/lang/Object;

    if-eq v1, v0, :cond_2

    .line 946
    sget-object v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->updateBrushPreviewFixed:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/brakefield/painter/PainterGraphicsRenderer;->getBrushPreview(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 948
    sput-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->applyingImage:Ljava/lang/Object;

    .line 949
    iget-object v2, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    new-instance v3, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0, v1}, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda6;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-interface {v2, v3}, Lcom/brakefield/painter/SharedMessageHandler;->post(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method renderUpdateCamera()V
    .locals 9

    .line 430
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->prevCamera:Landroid/graphics/Matrix;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/16 v1, 0x9

    new-array v3, v1, [F

    .line 434
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->getValues([F)V

    new-array v4, v1, [F

    .line 436
    iget-object v5, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->prevCamera:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v1, :cond_1

    .line 438
    aget v7, v3, v6

    aget v8, v4, v6

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move v2, v5

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    .line 447
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->prevCamera:Landroid/graphics/Matrix;

    .line 448
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 449
    iget-object v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->transformSurfaceMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_3

    .line 450
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    goto :goto_2

    .line 452
    :cond_3
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 454
    :goto_2
    invoke-static {v0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->getGLMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v0

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getZoom()F

    move-result v1

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getRotation()F

    move-result v2

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isFlipped()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/brakefield/painter/PainterLib;->setCamera([FFFZ)V

    :cond_4
    return-void
.end method

.method public setSharedMessageHandler(Lcom/brakefield/painter/SharedMessageHandler;)V
    .locals 0

    .line 1210
    iput-object p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    return-void
.end method

.method public setTransformSurfaceMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    .line 1164
    iput-object p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->transformSurfaceMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public startAnimation()V
    .locals 1

    const/16 v0, 0x3c

    .line 1195
    iput v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->countdown:I

    .line 1196
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->mainView:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    invoke-interface {v0}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->startAnimation()V

    return-void
.end method

.method public stopAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 1200
    iput v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->countdown:I

    .line 1201
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer;->mainView:Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    invoke-interface {v0}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->stopAnimation()V

    return-void
.end method

.method public swapBuffers()V
    .locals 3

    .line 230
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 231
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x3059

    .line 234
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v1

    .line 235
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v1, v2, :cond_1

    return-void

    .line 238
    :cond_1
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    return-void
.end method
