.class public Lcom/brakefield/infinitestudio/ImportIntentLaunchers$GetImageFromClipboard;
.super Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ParseResultOutputFileUri;
.source "ImportIntentLaunchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ImportIntentLaunchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetImageFromClipboard"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ParseResultOutputFileUri;-><init>()V

    return-void
.end method


# virtual methods
.method public createIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .line 216
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$GetImageFromClipboard;->outputFileUri:Landroid/net/Uri;

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/brakefield/infinitestudio/activities/ClipboardActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "output"

    .line 218
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0

    .line 212
    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$GetImageFromClipboard;->createIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
