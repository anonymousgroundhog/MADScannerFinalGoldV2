.class abstract Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferencesCollectionViewControllerDelegate;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.source "ReferencesViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ReferencesCollectionViewControllerDelegate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
        "Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferencesCollectionViewControllerDelegate;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$1;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferencesCollectionViewControllerDelegate;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;)V

    return-void
.end method


# virtual methods
.method public abstract onItemDeleteClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;)V
.end method

.method public abstract onItemVisibilityClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;)V
.end method
