.class Lcom/brakefield/infinitestudio/account/UserFunctions$APICallTask;
.super Landroid/os/AsyncTask;
.source "UserFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/account/UserFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "APICallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final call:Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;

.field final resultHandler:Lcom/brakefield/infinitestudio/account/UserFunctions$APIResultHandler;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;)V
    .locals 0

    .line 290
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 291
    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$APICallTask;->call:Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;

    const/4 p1, 0x0

    .line 292
    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$APICallTask;->resultHandler:Lcom/brakefield/infinitestudio/account/UserFunctions$APIResultHandler;

    return-void
.end method

.method public constructor <init>(Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;Lcom/brakefield/infinitestudio/account/UserFunctions$APIResultHandler;)V
    .locals 0

    .line 295
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$APICallTask;->call:Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;

    .line 297
    iput-object p2, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$APICallTask;->resultHandler:Lcom/brakefield/infinitestudio/account/UserFunctions$APIResultHandler;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 285
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/account/UserFunctions$APICallTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    .line 302
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$APICallTask;->call:Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;->run()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 285
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/account/UserFunctions$APICallTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$APICallTask;->resultHandler:Lcom/brakefield/infinitestudio/account/UserFunctions$APIResultHandler;

    if-eqz v0, :cond_0

    .line 308
    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/account/UserFunctions$APIResultHandler;->handle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
