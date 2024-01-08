.class public abstract Lcom/brakefield/infinitestudio/account/UserFunctions$JSONResultHandler;
.super Ljava/lang/Object;
.source "UserFunctions.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/account/UserFunctions$APIResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/account/UserFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "JSONResultHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handle(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 31
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 39
    :cond_1
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/account/UserFunctions$JSONResultHandler;->handle(Lorg/json/JSONObject;)V

    return-void
.end method

.method public abstract handle(Lorg/json/JSONObject;)V
.end method
