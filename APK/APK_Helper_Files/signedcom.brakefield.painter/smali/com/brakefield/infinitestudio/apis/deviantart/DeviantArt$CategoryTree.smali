.class public Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree;
.super Ljava/lang/Object;
.source "DeviantArt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryTree"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;
    }
.end annotation


# instance fields
.field root:Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree;->root:Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;

    return-void
.end method
