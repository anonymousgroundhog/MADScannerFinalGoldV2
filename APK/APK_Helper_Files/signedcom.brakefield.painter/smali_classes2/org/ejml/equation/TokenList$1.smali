.class synthetic Lorg/ejml/equation/TokenList$1;
.super Ljava/lang/Object;
.source "TokenList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ejml/equation/TokenList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$ejml$equation$TokenList$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 355
    invoke-static {}, Lorg/ejml/equation/TokenList$Type;->values()[Lorg/ejml/equation/TokenList$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/ejml/equation/TokenList$1;->$SwitchMap$org$ejml$equation$TokenList$Type:[I

    :try_start_0
    sget-object v1, Lorg/ejml/equation/TokenList$Type;->FUNCTION:Lorg/ejml/equation/TokenList$Type;

    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/ejml/equation/TokenList$1;->$SwitchMap$org$ejml$equation$TokenList$Type:[I

    sget-object v1, Lorg/ejml/equation/TokenList$Type;->SYMBOL:Lorg/ejml/equation/TokenList$Type;

    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/ejml/equation/TokenList$1;->$SwitchMap$org$ejml$equation$TokenList$Type:[I

    sget-object v1, Lorg/ejml/equation/TokenList$Type;->VARIABLE:Lorg/ejml/equation/TokenList$Type;

    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/ejml/equation/TokenList$1;->$SwitchMap$org$ejml$equation$TokenList$Type:[I

    sget-object v1, Lorg/ejml/equation/TokenList$Type;->WORD:Lorg/ejml/equation/TokenList$Type;

    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
