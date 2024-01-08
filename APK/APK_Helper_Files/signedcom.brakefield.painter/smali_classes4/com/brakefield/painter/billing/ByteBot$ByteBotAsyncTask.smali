.class public Lcom/brakefield/painter/billing/ByteBot$ByteBotAsyncTask;
.super Landroid/os/AsyncTask;
.source "ByteBot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/billing/ByteBot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteBotAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final OAUTH_SCOPE:Ljava/lang/String; = "https://www.googleapis.com/auth/applicense.bytebot"


# instance fields
.field private final account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private final callback:Lcom/brakefield/painter/billing/ByteBot$ByteBotCallback;

.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Landroid/content/Context;Lcom/brakefield/painter/billing/ByteBot$ByteBotCallback;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/brakefield/painter/billing/ByteBot$ByteBotAsyncTask;->account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 67
    iput-object p2, p0, Lcom/brakefield/painter/billing/ByteBot$ByteBotAsyncTask;->context:Landroid/content/Context;

    .line 68
    iput-object p3, p0, Lcom/brakefield/painter/billing/ByteBot$ByteBotAsyncTask;->callback:Lcom/brakefield/painter/billing/ByteBot$ByteBotCallback;

    return-void
.end method

.method private checkIfUserHasLicense(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/brakefield/painter/billing/ByteBot$ByteBotAsyncTask;->context:Landroid/content/Context;

    const-string v1, "https://www.googleapis.com/auth/applicense.bytebot"

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->usingOAuth2(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v0

    .line 92
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getAccount()Landroid/accounts/Account;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setSelectedAccount(Landroid/accounts/Account;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 94
    new-instance p1, Lcom/google/api/client/http/javanet/NetHttpTransport;

    invoke-direct {p1}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    .line 95
    new-instance v1, Lcom/google/api/client/json/jackson2/JacksonFactory;

    invoke-direct {v1}, Lcom/google/api/client/json/jackson2/JacksonFactory;-><init>()V

    .line 97
    new-instance v2, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    invoke-direct {v2, p1, v1, v0}, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    const-string p1, "applications/infinitepainter"

    invoke-virtual {v2, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;->build()Lcom/google/api/services/bytebot/v1/ByteBot;

    move-result-object v0

    .line 99
    :try_start_0
    invoke-virtual {v0}, Lcom/google/api/services/bytebot/v1/ByteBot;->applications()Lcom/google/api/services/bytebot/v1/ByteBot$Applications;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Applications;->getLicenseStatus(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->execute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;
    .locals 0

    .line 73
    iget-object p1, p0, Lcom/brakefield/painter/billing/ByteBot$ByteBotAsyncTask;->account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-direct {p0, p1}, Lcom/brakefield/painter/billing/ByteBot$ByteBotAsyncTask;->checkIfUserHasLicense(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/billing/ByteBot$ByteBotAsyncTask;->doInBackground([Ljava/lang/Void;)Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/brakefield/painter/billing/ByteBot$ByteBotAsyncTask;->callback:Lcom/brakefield/painter/billing/ByteBot$ByteBotCallback;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/brakefield/painter/billing/ByteBot$ByteBotCallback;->onResults(ZLjava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {p1}, Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 85
    :cond_1
    invoke-virtual {p1}, Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;->getSkuName()Ljava/lang/String;

    move-result-object p1

    .line 86
    iget-object v1, p0, Lcom/brakefield/painter/billing/ByteBot$ByteBotAsyncTask;->callback:Lcom/brakefield/painter/billing/ByteBot$ByteBotCallback;

    invoke-interface {v1, v0, p1}, Lcom/brakefield/painter/billing/ByteBot$ByteBotCallback;->onResults(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/billing/ByteBot$ByteBotAsyncTask;->onPostExecute(Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;)V

    return-void
.end method
