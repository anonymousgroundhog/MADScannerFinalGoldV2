.class Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$2;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;
.source "ColorWheelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setupView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;Landroid/view/View$OnClickListener;ILcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-direct {p0, p2, p3, p4}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    return-void
.end method


# virtual methods
.method protected handles(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)Z
    .locals 0

    .line 251
    instance-of p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$ColorDragView;

    return p1
.end method
