.class Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceViewHolder$1;
.super Landroid/view/ViewOutlineProvider;
.source "ResourcesViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceViewHolder;

.field final synthetic val$radius:F


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceViewHolder;F)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceViewHolder$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceViewHolder;

    iput p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceViewHolder$1;->val$radius:F

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    .line 168
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceViewHolder$1;->val$radius:F

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
