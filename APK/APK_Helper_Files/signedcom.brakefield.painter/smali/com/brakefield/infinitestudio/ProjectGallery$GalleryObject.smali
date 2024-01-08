.class public abstract Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;
.super Ljava/lang/Object;
.source "ProjectGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ProjectGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "GalleryObject"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ProjectGallery;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ProjectGallery;)V
    .locals 0

    .line 978
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindViewHolder(Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;)V
.end method

.method public abstract delete()V
.end method

.method public abstract deletePrompt()V
.end method

.method public abstract duplicate()V
.end method

.method public abstract exists()Z
.end method

.method public abstract export()V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected abstract getTypeIcon()I
.end method

.method public abstract open()V
.end method

.method public abstract rename(Ljava/lang/String;)V
.end method

.method public abstract toJSON()Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
