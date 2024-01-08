.class public Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;
.super Ljava/lang/Object;
.source "CollectionItemDragListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragView"
.end annotation


# instance fields
.field public item:Ljava/lang/Object;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;->view:Landroid/view/View;

    .line 18
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;->item:Ljava/lang/Object;

    return-void
.end method
