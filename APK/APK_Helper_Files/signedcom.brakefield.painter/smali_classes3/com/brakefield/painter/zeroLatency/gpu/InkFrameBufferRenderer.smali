.class public Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;
.super Lcom/brakefield/painter/zeroLatency/gpu/GLRenderer;
.source "InkFrameBufferRenderer.java"


# static fields
.field private static final FRAG_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying vec2 v_texcoord;\nuniform sampler2D u_texture;\nvoid main() {\n  gl_FragColor = texture2D(u_texture, v_texcoord);\n}\n"

.field private static final VERTEX_BUFFER:Ljava/nio/FloatBuffer;

.field private static final VERTEX_POSITION_DIM:I = 0x2

.field private static final VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 a_position;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = vec4(a_position.xy, 0.0, 1.0);\n  v_texcoord = (a_position.xy / 2.0) + 0.5;\n}\n"

.field private static final VERTEX_STRIPE_SIZE:I = 0x8

.field private static final VERTICES_COUNT:I = 0x6

.field private static final VERTICES_FULL_SCREEN:[F

.field private static final VERTICES_SIZE:I = 0x30


# instance fields
.field private final mFrameBuffer:I

.field private final mHeight:I

.field private final mTexture:I

.field private final mTextureHandle:I

.field private final mVertexAttribHandle:I

.field private final mVertexBuffer:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 40
    fill-array-data v0, :array_0

    sput-object v0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->VERTICES_FULL_SCREEN:[F

    .line 53
    invoke-static {}, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->VERTEX_BUFFER:Ljava/nio/FloatBuffer;

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 12

    const-string v0, "attribute vec4 a_position;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = vec4(a_position.xy, 0.0, 1.0);\n  v_texcoord = (a_position.xy / 2.0) + 0.5;\n}\n"

    const-string v1, "precision mediump float;\nvarying vec2 v_texcoord;\nuniform sampler2D u_texture;\nvoid main() {\n  gl_FragColor = texture2D(u_texture, v_texcoord);\n}\n"

    .line 65
    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/zeroLatency/gpu/GLRenderer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput p2, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->mHeight:I

    .line 68
    iput p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->mWidth:I

    .line 69
    iget v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->mProgram:I

    const-string v1, "a_position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->mVertexAttribHandle:I

    .line 70
    iget v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->mProgram:I

    const-string/jumbo v1, "u_texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->mTextureHandle:I

    const-string v0, "GL Get Locations"

    .line 71
    invoke-static {v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->checkGlError(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 73
    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 74
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 75
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    move-result v1

    iput v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->mVertexBuffer:I

    .line 78
    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    .line 80
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    move-result v2

    iput v2, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->mFrameBuffer:I

    .line 83
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 84
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 85
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    iput v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->mTexture:I

    const v1, 0x8d40

    .line 87
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v2, 0xde1

    .line 88
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1908

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    const/4 v11, 0x0

    move v6, p1

    move v7, p2

    .line 90
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 p1, 0x2800

    const/high16 p2, 0x46180000    # 9728.0f

    .line 92
    invoke-static {v2, p1, p2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2801

    .line 93
    invoke-static {v2, p1, p2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2802

    const p2, 0x47012f00    # 33071.0f

    .line 94
    invoke-static {v2, p1, p2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2803

    .line 95
    invoke-static {v2, p1, p2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const p1, 0x8ce0

    const/4 p2, 0x0

    .line 97
    invoke-static {v1, p1, v2, v0, p2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 100
    invoke-static {v2, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 101
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method private static getVertexBuffer()Ljava/nio/FloatBuffer;
    .locals 2

    const/16 v0, 0x30

    .line 56
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 57
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 59
    sget-object v1, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->VERTICES_FULL_SCREEN:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method


# virtual methods
.method public draw()V
    .locals 11

    .line 117
    sget-object v0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->VERTEX_BUFFER:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    iget v2, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->mProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v2, 0x84c0

    .line 120
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v2, 0xde1

    .line 121
    iget v3, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->mTexture:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 122
    iget v2, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->mTextureHandle:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 124
    iget v2, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->mVertexBuffer:I

    const v3, 0x8892

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/16 v2, 0x30

    const v4, 0x88e4

    .line 125
    invoke-static {v3, v2, v0, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 128
    iget v5, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->mVertexAttribHandle:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 130
    iget v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->mVertexAttribHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v0, 0x4

    const/4 v2, 0x6

    .line 132
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 133
    iget v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->mVertexAttribHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public useFrameBuffer(Z)V
    .locals 2

    const v0, 0x8d40

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 107
    iget p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->mFrameBuffer:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 108
    iget p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->mWidth:I

    iget v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->mHeight:I

    invoke-static {v1, v1, p1, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 111
    iget p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->mWidth:I

    iget v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->mHeight:I

    invoke-static {v1, v1, p1, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    :goto_0
    return-void
.end method
