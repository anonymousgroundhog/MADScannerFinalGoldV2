.class public final Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;
.super Lcom/infinite/core/NativeObject;
.source "InfiniteStudioSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;
    }
.end annotation


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private getAppName(Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;)Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$1;->$SwitchMap$com$brakefield$infinitestudio$apis$infinitestudio$InfiniteStudioSession$App:[I

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string p1, "design"

    return-object p1

    :cond_1
    const-string p1, "painter"

    return-object p1
.end method

.method private native getUserAccessTokenInternal(J)Ljava/lang/String;
.end method

.method private native getUserEmailAddressInternal(J)Ljava/lang/String;
.end method

.method private native getUserIdInternal(J)Ljava/lang/String;
.end method

.method private native getUserNameInternal(J)Ljava/lang/String;
.end method

.method private native hasFullVersionInternal(JLjava/lang/String;)Z
.end method

.method private native isUserLoggedInInternal(J)Z
.end method

.method private native isUserVerifiedInternal(J)Z
.end method

.method private native loginUserInternal(JLjava/lang/String;)V
.end method

.method private native logoutUserInternal(J)V
.end method

.method private native updateUserVerifiedInternal(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native userHasCoreAccessInternal(J)Z
.end method


# virtual methods
.method public getUserAccessToken()Ljava/lang/String;
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->getUserAccessTokenInternal(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserEmailAddress()Ljava/lang/String;
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->getUserEmailAddressInternal(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->getUserIdInternal(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->getUserNameInternal(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasFullVersion(Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;)Z
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->nativePointer:J

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->getAppName(Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->hasFullVersionInternal(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isUserLoggedIn()Z
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->isUserLoggedInInternal(J)Z

    move-result v0

    return v0
.end method

.method public isUserVerified()Z
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->isUserVerifiedInternal(J)Z

    move-result v0

    return v0
.end method

.method public loginUser(Ljava/lang/String;)V
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->loginUserInternal(JLjava/lang/String;)V

    return-void
.end method

.method public logoutUser()V
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->logoutUserInternal(J)V

    return-void
.end method

.method public updateUserVerified(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->nativePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->updateUserVerifiedInternal(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public userHasCoreAccess()Z
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->userHasCoreAccessInternal(J)Z

    move-result v0

    return v0
.end method
