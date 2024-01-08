.class public abstract Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ParseResultUri;
.super Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ParseResultOutputFileUri;
.source "ImportIntentLaunchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ImportIntentLaunchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ParseResultUri"
.end annotation


# instance fields
.field protected contentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ParseResultOutputFileUri;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ParseResultUri;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public parseResult(ILandroid/content/Intent;)Landroid/net/Uri;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ParseResultUri;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;->getUriFromIntentData(Landroid/content/ContentResolver;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    .line 136
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ParseResultUri;->outputFileUri:Landroid/net/Uri;

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 0

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ParseResultUri;->parseResult(ILandroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
