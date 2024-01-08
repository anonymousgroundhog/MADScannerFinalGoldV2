.class public Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;
.super Lcom/brakefield/painter/zeroLatency/gpu/GLRenderer;
.source "InkStrokeRenderer.java"

# interfaces
.implements Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$VertexBufferRenderer;


# static fields
.field private static final FRAG_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying vec3 v_color;\nvoid main() {\n  gl_FragColor = vec4(v_color, 1.0);\n}\n"

.field private static final VERTEX_SHADER:Ljava/lang/String; = "attribute vec3 a_color;\nattribute vec4 a_position;\nvarying vec3 v_color;\nuniform mat4 u_mvp;\nvoid main() {\n  vec4 pointPos = u_mvp * a_position;\n  gl_Position = vec4(pointPos.xy, 0.0, 1.0);\n  v_color = a_color;\n}\n"


# instance fields
.field private mBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

.field private final mColorHandle:I

.field private final mMVPHandle:I

.field private final mVertexAttribHandle:I

.field private final mVertexBuffer:I


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;)V
    .locals 2

    const-string v0, "attribute vec3 a_color;\nattribute vec4 a_position;\nvarying vec3 v_color;\nuniform mat4 u_mvp;\nvoid main() {\n  vec4 pointPos = u_mvp * a_position;\n  gl_Position = vec4(pointPos.xy, 0.0, 1.0);\n  v_color = a_color;\n}\n"

    const-string v1, "precision mediump float;\nvarying vec3 v_color;\nvoid main() {\n  gl_FragColor = vec4(v_color, 1.0);\n}\n"

    .line 40
    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/zeroLatency/gpu/GLRenderer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;->mBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    .line 42
    iget p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;->mProgram:I

    const-string v0, "a_color"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;->mColorHandle:I

    .line 43
    iget p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;->mProgram:I

    const-string v0, "a_position"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;->mVertexAttribHandle:I

    .line 44
    iget p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;->mProgram:I

    const-string/jumbo v0, "u_mvp"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;->mMVPHandle:I

    const-string p1, "GL Get Locations"

    .line 45
    invoke-static {p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;->checkGlError(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 47
    invoke-static {p1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 48
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 49
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->get()I

    move-result p1

    iput p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;->mVertexBuffer:I

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;->mBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    invoke-virtual {v0, p0}, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->drawBuffer(Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$VertexBufferRenderer;)V

    return-void
.end method

.method public draw(Ljava/nio/FloatBuffer;I[F)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 61
    :cond_0
    iget v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 63
    iget v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;->mVertexBuffer:I

    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    mul-int/lit8 v0, p2, 0x14

    const v2, 0x88e4

    .line 64
    invoke-static {v1, v0, p1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 68
    iget v3, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;->mVertexAttribHandle:I

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x14

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 72
    iget p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;->mVertexAttribHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 74
    iget v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;->mColorHandle:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/16 v5, 0x8

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 76
    iget p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;->mColorHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 77
    iget p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;->mMVPHandle:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p3, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/high16 p1, 0x40200000    # 2.5f

    .line 79
    invoke-static {p1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 80
    invoke-static {v0, v1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 81
    iget p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;->mVertexAttribHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 82
    iget p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;->mColorHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method
