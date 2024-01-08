.class synthetic Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$1;
.super Ljava/lang/Object;
.source "InfiniteStudioSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$brakefield$infinitestudio$apis$infinitestudio$InfiniteStudioSession$App:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    invoke-static {}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;->values()[Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$1;->$SwitchMap$com$brakefield$infinitestudio$apis$infinitestudio$InfiniteStudioSession$App:[I

    :try_start_0
    sget-object v1, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;->PAINTER:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$1;->$SwitchMap$com$brakefield$infinitestudio$apis$infinitestudio$InfiniteStudioSession$App:[I

    sget-object v1, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;->DESIGN:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
