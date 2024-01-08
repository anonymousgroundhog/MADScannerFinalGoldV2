.class Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$1;
.super Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteCollectionViewControllerDelegate;
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

.field final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/content/res/Resources;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$1;->val$res:Landroid/content/res/Resources;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteCollectionViewControllerDelegate;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$1;)V

    return-void
.end method


# virtual methods
.method public addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 3

    .line 224
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSection;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$100(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$1;->val$res:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSection;-><init>(Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;Landroid/content/res/Resources;Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteCollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    return-void
.end method

.method public getPalette()Lcom/brakefield/painter/nativeobjs/color/PaletteNative;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$300(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;)V
    .locals 0

    .line 228
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$200(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/infinitestudio/color/ColorPickerView;

    move-result-object p1

    iget p2, p3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;->rgba:I

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update(I)V

    return-void
.end method

.method public bridge synthetic onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 221
    check-cast p3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$1;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;)V

    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 221
    check-cast p3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$1;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;)Z

    move-result p1

    return p1
.end method
