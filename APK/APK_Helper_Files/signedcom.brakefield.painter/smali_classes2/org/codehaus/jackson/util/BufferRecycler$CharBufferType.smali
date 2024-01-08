.class public final enum Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;
.super Ljava/lang/Enum;
.source "BufferRecycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/util/BufferRecycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CharBufferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

.field public static final enum CONCAT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

.field public static final enum NAME_COPY_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

.field public static final enum TEXT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

.field public static final enum TOKEN_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;


# instance fields
.field private final size:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 36
    new-instance v0, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    const-string v1, "TOKEN_BUFFER"

    const/4 v2, 0x0

    const/16 v3, 0x7d0

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TOKEN_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    .line 37
    new-instance v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    const-string v2, "CONCAT_BUFFER"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->CONCAT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    .line 38
    new-instance v2, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    const-string v3, "TEXT_BUFFER"

    const/4 v4, 0x2

    const/16 v5, 0xc8

    invoke-direct {v2, v3, v4, v5}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    .line 39
    new-instance v3, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    const-string v4, "NAME_COPY_BUFFER"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->NAME_COPY_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    .line 35
    filled-new-array {v0, v1, v2, v3}, [Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->$VALUES:[Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->size:I

    return-void
.end method

.method static synthetic access$100(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)I
    .locals 0

    .line 35
    iget p0, p0, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->size:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;
    .locals 1

    .line 35
    const-class v0, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    return-object p0
.end method

.method public static values()[Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;
    .locals 1

    .line 35
    sget-object v0, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->$VALUES:[Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0}, [Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    return-object v0
.end method
