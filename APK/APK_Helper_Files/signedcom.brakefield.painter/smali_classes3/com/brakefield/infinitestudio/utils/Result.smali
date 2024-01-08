.class public Lcom/brakefield/infinitestudio/utils/Result;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field private final message:I

.field private final success:Z


# direct methods
.method private constructor <init>(IZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p2, p0, Lcom/brakefield/infinitestudio/utils/Result;->success:Z

    .line 17
    iput p1, p0, Lcom/brakefield/infinitestudio/utils/Result;->message:I

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/utils/Result;->success:Z

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/brakefield/infinitestudio/utils/Result;->message:I

    return-void
.end method

.method public static Failed()Lcom/brakefield/infinitestudio/utils/Result;
    .locals 2

    .line 33
    new-instance v0, Lcom/brakefield/infinitestudio/utils/Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/utils/Result;-><init>(Z)V

    return-object v0
.end method

.method public static Failed(I)Lcom/brakefield/infinitestudio/utils/Result;
    .locals 2

    .line 37
    new-instance v0, Lcom/brakefield/infinitestudio/utils/Result;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/brakefield/infinitestudio/utils/Result;-><init>(IZ)V

    return-object v0
.end method

.method public static Success()Lcom/brakefield/infinitestudio/utils/Result;
    .locals 2

    .line 41
    new-instance v0, Lcom/brakefield/infinitestudio/utils/Result;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/utils/Result;-><init>(Z)V

    return-object v0
.end method

.method public static Success(I)Lcom/brakefield/infinitestudio/utils/Result;
    .locals 2

    .line 45
    new-instance v0, Lcom/brakefield/infinitestudio/utils/Result;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/brakefield/infinitestudio/utils/Result;-><init>(IZ)V

    return-object v0
.end method


# virtual methods
.method public getMessage()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/brakefield/infinitestudio/utils/Result;->message:I

    return v0
.end method

.method public hasMessage()Z
    .locals 1

    .line 21
    iget v0, p0, Lcom/brakefield/infinitestudio/utils/Result;->message:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public successful()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/utils/Result;->success:Z

    return v0
.end method
