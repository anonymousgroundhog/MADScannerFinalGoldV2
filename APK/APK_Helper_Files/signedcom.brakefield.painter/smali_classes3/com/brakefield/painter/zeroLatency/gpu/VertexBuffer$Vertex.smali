.class public Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;
.super Ljava/lang/Object;
.source "VertexBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vertex"
.end annotation


# static fields
.field public static final COLOR_DIM:I = 0x3

.field public static final COLOR_OFFSET:I = 0x8

.field public static final COLOR_SIZE:I = 0xc

.field public static final FLOAT_SIZE:I = 0x4

.field public static final POSITION_DIM:I = 0x2

.field public static final POSITION_OFFSET:I = 0x0

.field public static final POSITION_SIZE:I = 0x8

.field public static final TOTAL_DIM:I = 0x5

.field public static final TOTAL_SIZE:I = 0x14


# instance fields
.field public data:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [F

    .line 22
    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;->data:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    const/4 p2, 0x0

    aput p2, v0, p1

    const/4 p1, 0x3

    aput p2, v0, p1

    const/4 p1, 0x4

    aput p2, v0, p1

    return-void
.end method


# virtual methods
.method public setColor(FFF)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;->data:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 p1, 0x3

    .line 34
    aput p2, v0, p1

    const/4 p1, 0x4

    .line 35
    aput p3, v0, p1

    return-void
.end method
