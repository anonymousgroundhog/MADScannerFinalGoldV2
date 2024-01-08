.class public Lcom/brakefield/infinitestudio/account/UserFunctions;
.super Ljava/lang/Object;
.source "UserFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/account/UserFunctions$APICallTask;,
        Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;,
        Lcom/brakefield/infinitestudio/account/UserFunctions$APIResultHandler;,
        Lcom/brakefield/infinitestudio/account/UserFunctions$SendUserEmailVerification;,
        Lcom/brakefield/infinitestudio/account/UserFunctions$CheckUserVerified;,
        Lcom/brakefield/infinitestudio/account/UserFunctions$AdminDeleteBrush;,
        Lcom/brakefield/infinitestudio/account/UserFunctions$AdminDeletePalette;,
        Lcom/brakefield/infinitestudio/account/UserFunctions$AdminDeletePattern;,
        Lcom/brakefield/infinitestudio/account/UserFunctions$AdminDeleteUser;,
        Lcom/brakefield/infinitestudio/account/UserFunctions$AdminDeleteArtwork;,
        Lcom/brakefield/infinitestudio/account/UserFunctions$DeleteArtwork;,
        Lcom/brakefield/infinitestudio/account/UserFunctions$LoveArtwork;,
        Lcom/brakefield/infinitestudio/account/UserFunctions$UnreportArtwork;,
        Lcom/brakefield/infinitestudio/account/UserFunctions$ReportArtwork;,
        Lcom/brakefield/infinitestudio/account/UserFunctions$ResetPassword;,
        Lcom/brakefield/infinitestudio/account/UserFunctions$RegisterUser;,
        Lcom/brakefield/infinitestudio/account/UserFunctions$LoginUser;,
        Lcom/brakefield/infinitestudio/account/UserFunctions$JSONResultHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callAsync(Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;)V
    .locals 2

    .line 278
    new-instance v0, Lcom/brakefield/infinitestudio/account/UserFunctions$APICallTask;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/account/UserFunctions$APICallTask;-><init>(Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Lcom/brakefield/infinitestudio/account/UserFunctions$APICallTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static callAsync(Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;Lcom/brakefield/infinitestudio/account/UserFunctions$APIResultHandler;)V
    .locals 1

    .line 282
    new-instance v0, Lcom/brakefield/infinitestudio/account/UserFunctions$APICallTask;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/infinitestudio/account/UserFunctions$APICallTask;-><init>(Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;Lcom/brakefield/infinitestudio/account/UserFunctions$APIResultHandler;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Lcom/brakefield/infinitestudio/account/UserFunctions$APICallTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static getScope()Ljava/lang/String;
    .locals 1

    const-string v0, "app"

    return-object v0
.end method
