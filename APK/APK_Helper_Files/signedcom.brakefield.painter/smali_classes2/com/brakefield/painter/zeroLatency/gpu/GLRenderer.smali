.class public Lcom/brakefield/painter/zeroLatency/gpu/GLRenderer;
.super Ljava/lang/Object;
.source "GLRenderer.java"


# instance fields
.field protected final mFragmentShader:I

.field protected final mProgram:I

.field protected final mVertexShader:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 21
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/GLRenderer;->mProgram:I

    const v1, 0x8b31

    .line 22
    invoke-static {v1, p1}, Lcom/brakefield/painter/zeroLatency/gpu/GLRenderer;->loadShader(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/GLRenderer;->mVertexShader:I

    .line 23
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const v1, 0x8b30

    .line 24
    invoke-static {v1, p2}, Lcom/brakefield/painter/zeroLatency/gpu/GLRenderer;->loadShader(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/brakefield/painter/zeroLatency/gpu/GLRenderer;->mFragmentShader:I

    .line 25
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 26
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    .line 29
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 3

    .line 53
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ": glError "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 2

    .line 35
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    if-eqz p0, :cond_1

    .line 39
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 40
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    .line 42
    invoke-static {p1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    const v1, 0x8b81

    .line 43
    invoke-static {p0, v1, v0}, Landroid/opengl/GLES20;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    .line 44
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    if-ne v0, p1, :cond_0

    return p0

    .line 45
    :cond_0
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p0

    .line 46
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "glCreateShader failed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
