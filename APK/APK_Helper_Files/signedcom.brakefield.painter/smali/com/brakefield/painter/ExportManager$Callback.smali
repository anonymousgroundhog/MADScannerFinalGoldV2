.class public interface abstract Lcom/brakefield/painter/ExportManager$Callback;
.super Ljava/lang/Object;
.source "ExportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ExportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onSavedToExternalStorage(Ljava/lang/String;)V
.end method

.method public abstract onSavedToSharedStorage(Landroid/net/Uri;)V
.end method
