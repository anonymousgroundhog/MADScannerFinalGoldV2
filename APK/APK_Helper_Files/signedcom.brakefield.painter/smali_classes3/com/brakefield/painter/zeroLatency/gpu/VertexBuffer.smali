.class public Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;
.super Ljava/lang/Object;
.source "VertexBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;,
        Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$VertexBufferRenderer;
    }
.end annotation


# static fields
.field private static DEFAULT_BUFFER_SIZE:I = 0x200


# instance fields
.field private mBuffer:Ljava/nio/FloatBuffer;

.field private mBufferSize:I

.field public mHeight:I

.field public mMVPMatrix:[F

.field public mModelMatrix:[F

.field private mPredictedVertex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;",
            ">;"
        }
    .end annotation
.end field

.field public mProjectionMatrix:[F

.field public mRotation:I

.field private mSize:I

.field public mViewMatrix:[F

.field public mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mRotation:I

    .line 55
    iput v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mWidth:I

    .line 56
    iput v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mHeight:I

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mPredictedVertex:Ljava/util/List;

    .line 60
    iput v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mSize:I

    .line 61
    sget v1, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->DEFAULT_BUFFER_SIZE:I

    iput v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mBufferSize:I

    mul-int/lit8 v1, v1, 0x14

    .line 62
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 63
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 64
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mBuffer:Ljava/nio/FloatBuffer;

    .line 65
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    invoke-direct {p0}, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->initMatrices()V

    return-void
.end method

.method private growSizeAndReallocate()V
    .locals 4

    .line 86
    iget v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mSize:I

    .line 87
    iget v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mBufferSize:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x14

    .line 90
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 91
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 95
    iget-object v2, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->position()I

    move-result v2

    .line 96
    iget-object v3, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 98
    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mBuffer:Ljava/nio/FloatBuffer;

    .line 99
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 101
    iget v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mBufferSize:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mBufferSize:I

    return-void
.end method

.method private initMatrices()V
    .locals 3

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 70
    iput-object v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mModelMatrix:[F

    const/4 v2, 0x0

    .line 71
    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    new-array v1, v0, [F

    .line 72
    iput-object v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mViewMatrix:[F

    .line 73
    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    new-array v1, v0, [F

    .line 74
    iput-object v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mProjectionMatrix:[F

    .line 75
    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    new-array v0, v0, [F

    .line 76
    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mMVPMatrix:[F

    return-void
.end method

.method private updateMVPMatrix()V
    .locals 7

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v2, 0x0

    .line 81
    iget-object v3, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mProjectionMatrix:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mViewMatrix:[F

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 82
    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mMVPMatrix:[F

    iget-object v5, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mModelMatrix:[F

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method


# virtual methods
.method public addPredictionVertex(Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mPredictedVertex:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVertex(Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mBuffer:Ljava/nio/FloatBuffer;

    iget-object p1, p1, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;->data:[F

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 107
    invoke-direct {p0}, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->growSizeAndReallocate()V

    return-void
.end method

.method public addVertices(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;",
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;

    .line 112
    invoke-virtual {p0, v0}, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->addVertex(Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearAll()V
    .locals 2

    .line 125
    invoke-virtual {p0}, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->clearPrediction()V

    .line 126
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 127
    iput v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mSize:I

    .line 129
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mModelMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public clearPrediction()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mPredictedVertex:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public drawBuffer(Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$VertexBufferRenderer;)V
    .locals 5

    .line 133
    invoke-direct {p0}, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->updateMVPMatrix()V

    .line 135
    iget v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mSize:I

    .line 137
    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->position()I

    move-result v1

    .line 138
    iget-object v2, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mPredictedVertex:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->addVertices(Ljava/util/List;)V

    .line 139
    iget-object v2, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 140
    iget-object v2, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mBuffer:Ljava/nio/FloatBuffer;

    iget v3, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mSize:I

    iget-object v4, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mMVPMatrix:[F

    invoke-interface {p1, v2, v3, v4}, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$VertexBufferRenderer;->draw(Ljava/nio/FloatBuffer;I[F)V

    .line 141
    iput v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mSize:I

    .line 142
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
