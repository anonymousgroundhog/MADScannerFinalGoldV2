.class public final Landroidx/graphics/opengl/QuadTextureRenderer;
.super Ljava/lang/Object;
.source "QuadTextureRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/opengl/QuadTextureRenderer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0001\u0018\u0000  2\u00020\u0001:\u0001 B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\u001e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017J\u0006\u0010\u001c\u001a\u00020\u001aJ\u0015\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u000eH\u0000\u00a2\u0006\u0002\u0008\u001fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Landroidx/graphics/opengl/QuadTextureRenderer;",
        "",
        "()V",
        "mFragmentShader",
        "",
        "mIsReleased",
        "",
        "mProgram",
        "mQuadCoords",
        "",
        "mQuadPositionHandle",
        "mQuadrantCoordinatesBuffer",
        "Ljava/nio/FloatBuffer;",
        "mSurfaceTexture",
        "Landroid/graphics/SurfaceTexture;",
        "mTexPositionHandle",
        "mTextureTransform",
        "mTextureTransformHandle",
        "mTextureUniformHandle",
        "mVertexShader",
        "mViewProjectionMatrixHandle",
        "configureQuad",
        "width",
        "",
        "height",
        "draw",
        "",
        "mvpMatrix",
        "release",
        "setSurfaceTexture",
        "surfaceTexture",
        "setSurfaceTexture$graphics_core_release",
        "Companion",
        "graphics-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/graphics/opengl/QuadTextureRenderer$Companion;

.field public static final CoordsPerVertex:I = 0x2

.field private static final DrawOrder:[S

.field private static final DrawOrderBuffer:Ljava/nio/ShortBuffer;

.field public static final FragmentShader:Ljava/lang/String; = "\n            #extension GL_OES_EGL_image_external : require\n            precision highp float;\n\n            uniform samplerExternalOES uTexture;\n\n            varying vec2 vTexCoord;\n\n            void main(void){\n                gl_FragColor = texture2D(uTexture, vTexCoord);\n            }\n            "

.field private static final TAG:Ljava/lang/String;

.field private static final TextureCoordinates:[F

.field private static final TextureCoordinatesBuffer:Ljava/nio/FloatBuffer;

.field public static final VertexShader:Ljava/lang/String; = "\n            uniform mat4 uVPMatrix;\n            uniform mat4 tVPMatrix;\n            attribute vec4 aPosition;\n            attribute vec2 aTexCoord;\n            varying vec2 vTexCoord;\n\n            void main(void)\n            {\n                gl_Position = uVPMatrix * aPosition;\n                vTexCoord = vec2(tVPMatrix * vec4(aTexCoord.x, 1.0 - aTexCoord.y, 1.0, 1.0));\n            }\n            "

.field public static final VertexStride:I = 0x8

.field public static final aPosition:Ljava/lang/String; = "aPosition"

.field public static final aTexCoord:Ljava/lang/String; = "aTexCoord"

.field public static final tVPMatrix:Ljava/lang/String; = "tVPMatrix"

.field public static final uTexture:Ljava/lang/String; = "uTexture"

.field public static final uVPMatrix:Ljava/lang/String; = "uVPMatrix"

.field private static final vTexCoord:Ljava/lang/String; = "vTexCoord"


# instance fields
.field private mFragmentShader:I

.field private mIsReleased:Z

.field private mProgram:I

.field private final mQuadCoords:[F

.field private mQuadPositionHandle:I

.field private final mQuadrantCoordinatesBuffer:Ljava/nio/FloatBuffer;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTexPositionHandle:I

.field private final mTextureTransform:[F

.field private mTextureTransformHandle:I

.field private mTextureUniformHandle:I

.field private mVertexShader:I

.field private mViewProjectionMatrixHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/graphics/opengl/QuadTextureRenderer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/opengl/QuadTextureRenderer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/opengl/QuadTextureRenderer;->Companion:Landroidx/graphics/opengl/QuadTextureRenderer$Companion;

    const-string v0, "TextureRenderer"

    .line 242
    sput-object v0, Landroidx/graphics/opengl/QuadTextureRenderer;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 286
    fill-array-data v0, :array_0

    .line 284
    sput-object v0, Landroidx/graphics/opengl/QuadTextureRenderer;->TextureCoordinates:[F

    .line 296
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 297
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 298
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 299
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    .line 300
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const-string v2, "allocateDirect(TextureCo\u2026          }\n            }"

    .line 296
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Landroidx/graphics/opengl/QuadTextureRenderer;->TextureCoordinatesBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x6

    new-array v1, v1, [S

    .line 304
    fill-array-data v1, :array_1

    sput-object v1, Landroidx/graphics/opengl/QuadTextureRenderer;->DrawOrder:[S

    .line 310
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 311
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 312
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    .line 313
    invoke-virtual {v2, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 314
    invoke-virtual {v2, v0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    const-string v0, "allocateDirect(DrawOrder\u2026          }\n            }"

    .line 310
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Landroidx/graphics/opengl/QuadTextureRenderer;->DrawOrderBuffer:Ljava/nio/ShortBuffer;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 38
    iput-object v0, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mQuadCoords:[F

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 43
    iput-object v1, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mTextureTransform:[F

    const/4 v1, -0x1

    .line 48
    iput v1, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mQuadPositionHandle:I

    .line 53
    iput v1, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mTexPositionHandle:I

    .line 58
    iput v1, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mTextureUniformHandle:I

    .line 63
    iput v1, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mViewProjectionMatrixHandle:I

    .line 68
    iput v1, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mTextureTransformHandle:I

    .line 73
    iput v1, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mProgram:I

    .line 78
    iput v1, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mVertexShader:I

    .line 83
    iput v1, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mFragmentShader:I

    .line 95
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 96
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 97
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const-string v1, "allocateDirect(mQuadCoor\u2026)\n            }\n        }"

    .line 95
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mQuadrantCoordinatesBuffer:Ljava/nio/FloatBuffer;

    .line 103
    sget-object v0, Landroidx/graphics/opengl/QuadTextureRenderer;->Companion:Landroidx/graphics/opengl/QuadTextureRenderer$Companion;

    const v1, 0x8b31

    const-string v2, "\n            uniform mat4 uVPMatrix;\n            uniform mat4 tVPMatrix;\n            attribute vec4 aPosition;\n            attribute vec2 aTexCoord;\n            varying vec2 vTexCoord;\n\n            void main(void)\n            {\n                gl_Position = uVPMatrix * aPosition;\n                vTexCoord = vec2(tVPMatrix * vec4(aTexCoord.x, 1.0 - aTexCoord.y, 1.0, 1.0));\n            }\n            "

    invoke-virtual {v0, v1, v2}, Landroidx/graphics/opengl/QuadTextureRenderer$Companion;->loadShader$graphics_core_release(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mVertexShader:I

    const v1, 0x8b30

    const-string v2, "\n            #extension GL_OES_EGL_image_external : require\n            precision highp float;\n\n            uniform samplerExternalOES uTexture;\n\n            varying vec2 vTexCoord;\n\n            void main(void){\n                gl_FragColor = texture2D(uTexture, vTexCoord);\n            }\n            "

    .line 104
    invoke-virtual {v0, v1, v2}, Landroidx/graphics/opengl/QuadTextureRenderer$Companion;->loadShader$graphics_core_release(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mFragmentShader:I

    .line 105
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mProgram:I

    .line 107
    iget v1, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mVertexShader:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 108
    iget v0, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mProgram:I

    iget v1, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mFragmentShader:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 109
    iget v0, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 110
    iget v0, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 112
    iget v0, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mQuadPositionHandle:I

    .line 113
    iget v0, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mProgram:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mTexPositionHandle:I

    .line 115
    iget v0, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mProgram:I

    const-string/jumbo v1, "uTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mTextureUniformHandle:I

    .line 116
    iget v0, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mProgram:I

    const-string/jumbo v1, "uVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mViewProjectionMatrixHandle:I

    .line 117
    iget v0, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mProgram:I

    const-string/jumbo v1, "tVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mTextureTransformHandle:I

    const/16 v0, 0xbe2

    .line 120
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v0, 0x1

    const/16 v1, 0x303

    .line 122
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Landroidx/graphics/opengl/QuadTextureRenderer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final configureQuad(FF)Ljava/nio/FloatBuffer;
    .locals 5

    .line 147
    iget-object v0, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mQuadrantCoordinatesBuffer:Ljava/nio/FloatBuffer;

    .line 148
    iget-object v1, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mQuadCoords:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 149
    aput v3, v1, v2

    const/4 v4, 0x1

    .line 150
    aput p2, v1, v4

    const/4 v4, 0x2

    .line 151
    aput v3, v1, v4

    const/4 v4, 0x3

    .line 152
    aput v3, v1, v4

    const/4 v4, 0x4

    .line 153
    aput p1, v1, v4

    const/4 v4, 0x5

    .line 154
    aput v3, v1, v4

    const/4 v3, 0x6

    .line 155
    aput p1, v1, v3

    const/4 p1, 0x7

    .line 156
    aput p2, v1, p1

    .line 148
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 158
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method


# virtual methods
.method public final draw([FFF)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "mvpMatrix"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-boolean v2, v0, Landroidx/graphics/opengl/QuadTextureRenderer;->mIsReleased:Z

    if-eqz v2, :cond_0

    .line 171
    sget-object v1, Landroidx/graphics/opengl/QuadTextureRenderer;->TAG:Ljava/lang/String;

    const-string v2, "Attempt to render when TextureRenderer has been released"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 175
    :cond_0
    iget-object v2, v0, Landroidx/graphics/opengl/QuadTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v2, :cond_1

    .line 177
    sget-object v1, Landroidx/graphics/opengl/QuadTextureRenderer;->TAG:Ljava/lang/String;

    const-string v2, "Attempt to render without texture source"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 181
    :cond_1
    iget v3, v0, Landroidx/graphics/opengl/QuadTextureRenderer;->mProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 182
    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    const/16 v3, 0x2801

    const v4, 0x8d65

    const/16 v5, 0x2601

    .line 184
    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2800

    .line 186
    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 189
    iget v3, v0, Landroidx/graphics/opengl/QuadTextureRenderer;->mTextureUniformHandle:I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 192
    iget v3, v0, Landroidx/graphics/opengl/QuadTextureRenderer;->mViewProjectionMatrixHandle:I

    const/4 v5, 0x1

    .line 191
    invoke-static {v3, v5, v4, v1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 199
    iget v1, v0, Landroidx/graphics/opengl/QuadTextureRenderer;->mTextureTransformHandle:I

    .line 202
    iget-object v3, v0, Landroidx/graphics/opengl/QuadTextureRenderer;->mTextureTransform:[F

    .line 203
    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 204
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 198
    invoke-static {v1, v5, v4, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 209
    iget v6, v0, Landroidx/graphics/opengl/QuadTextureRenderer;->mQuadPositionHandle:I

    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0x8

    move/from16 v1, p2

    move/from16 v2, p3

    .line 214
    invoke-direct {v0, v1, v2}, Landroidx/graphics/opengl/QuadTextureRenderer;->configureQuad(FF)Ljava/nio/FloatBuffer;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/nio/Buffer;

    .line 208
    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 218
    iget v12, v0, Landroidx/graphics/opengl/QuadTextureRenderer;->mTexPositionHandle:I

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x8

    .line 223
    sget-object v1, Landroidx/graphics/opengl/QuadTextureRenderer;->TextureCoordinatesBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v17, v1

    check-cast v17, Ljava/nio/Buffer;

    .line 217
    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 226
    iget v1, v0, Landroidx/graphics/opengl/QuadTextureRenderer;->mQuadPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 227
    iget v1, v0, Landroidx/graphics/opengl/QuadTextureRenderer;->mTexPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 231
    sget-object v1, Landroidx/graphics/opengl/QuadTextureRenderer;->DrawOrder:[S

    array-length v1, v1

    .line 233
    sget-object v2, Landroidx/graphics/opengl/QuadTextureRenderer;->DrawOrderBuffer:Ljava/nio/ShortBuffer;

    check-cast v2, Ljava/nio/Buffer;

    const/4 v3, 0x4

    const/16 v4, 0x1403

    .line 229
    invoke-static {v3, v1, v4, v2}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 236
    iget v1, v0, Landroidx/graphics/opengl/QuadTextureRenderer;->mQuadPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 237
    iget v1, v0, Landroidx/graphics/opengl/QuadTextureRenderer;->mTexPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public final release()V
    .locals 2

    .line 126
    iget-boolean v0, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mIsReleased:Z

    if-nez v0, :cond_3

    .line 127
    iget v0, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mVertexShader:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 128
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 129
    iput v1, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mVertexShader:I

    .line 132
    :cond_0
    iget v0, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mFragmentShader:I

    if-eq v0, v1, :cond_1

    .line 133
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 134
    iput v1, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mFragmentShader:I

    .line 137
    :cond_1
    iget v0, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mProgram:I

    if-eq v0, v1, :cond_2

    .line 138
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 139
    iput v1, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mProgram:I

    :cond_2
    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mIsReleased:Z

    :cond_3
    return-void
.end method

.method public final setSurfaceTexture$graphics_core_release(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const-string/jumbo v0, "surfaceTexture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iput-object p1, p0, Landroidx/graphics/opengl/QuadTextureRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method
