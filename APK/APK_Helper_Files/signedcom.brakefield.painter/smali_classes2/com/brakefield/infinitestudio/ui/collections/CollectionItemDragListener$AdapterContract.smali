.class public interface abstract Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;
.super Ljava/lang/Object;
.source "CollectionItemDragListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdapterContract"
.end annotation


# virtual methods
.method public abstract onItemDragEnded(Ljava/lang/Object;Landroid/graphics/Rect;II)V
.end method

.method public abstract onItemDragStarted()V
.end method

.method public abstract onItemInserted(Ljava/lang/Object;I)Z
.end method

.method public abstract onItemMoved(II)V
.end method

.method public abstract onItemRemoved(Ljava/lang/Object;)V
.end method
