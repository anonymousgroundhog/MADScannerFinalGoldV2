.class synthetic Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC$3;
.super Ljava/lang/Object;
.source "FillReductionFactory_DSCC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$ejml$sparse$FillReducing:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    invoke-static {}, Lorg/ejml/sparse/FillReducing;->values()[Lorg/ejml/sparse/FillReducing;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC$3;->$SwitchMap$org$ejml$sparse$FillReducing:[I

    :try_start_0
    sget-object v1, Lorg/ejml/sparse/FillReducing;->NONE:Lorg/ejml/sparse/FillReducing;

    invoke-virtual {v1}, Lorg/ejml/sparse/FillReducing;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC$3;->$SwitchMap$org$ejml$sparse$FillReducing:[I

    sget-object v1, Lorg/ejml/sparse/FillReducing;->RANDOM:Lorg/ejml/sparse/FillReducing;

    invoke-virtual {v1}, Lorg/ejml/sparse/FillReducing;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC$3;->$SwitchMap$org$ejml$sparse$FillReducing:[I

    sget-object v1, Lorg/ejml/sparse/FillReducing;->IDENTITY:Lorg/ejml/sparse/FillReducing;

    invoke-virtual {v1}, Lorg/ejml/sparse/FillReducing;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
