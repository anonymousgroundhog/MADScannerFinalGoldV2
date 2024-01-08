.class public abstract Lcom/brakefield/infinitestudio/image/ImageReference;
.super Ljava/lang/Object;
.source "ImageReference.java"


# instance fields
.field deleted:Z

.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mHeight:F

.field protected mInvalidated:Z

.field protected mWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/image/ImageReference;->mInvalidated:Z

    .line 39
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/image/ImageReference;->deleted:Z

    return-void
.end method


# virtual methods
.method public abstract follow()Landroid/content/Intent;
.end method

.method public abstract get128ImageUrl()Ljava/lang/String;
.end method

.method public abstract get256ImageUrl()Ljava/lang/String;
.end method

.method public abstract getAuthor()Ljava/lang/String;
.end method

.method public abstract getBigImageUrl()Ljava/lang/String;
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/ImageReference;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getHeight()F
    .locals 1

    .line 36
    iget v0, p0, Lcom/brakefield/infinitestudio/image/ImageReference;->mHeight:F

    return v0
.end method

.method public abstract getID()Ljava/lang/String;
.end method

.method public abstract getImagePageUrl()Ljava/lang/String;
.end method

.method public abstract getInfo()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public final getWidth()F
    .locals 1

    .line 33
    iget v0, p0, Lcom/brakefield/infinitestudio/image/ImageReference;->mWidth:F

    return v0
.end method

.method public isDeleted()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/image/ImageReference;->deleted:Z

    return v0
.end method

.method public abstract parseInfo([Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public validate()V
    .locals 1

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/image/ImageReference;->mInvalidated:Z

    return-void
.end method
