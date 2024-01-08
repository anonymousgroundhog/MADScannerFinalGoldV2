.class Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSectionedRecyclerViewAdapter;
.super Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;
.source "ColorWheelViewController.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PaletteSectionedRecyclerViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)V
    .locals 0

    .line 1589
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSectionedRecyclerViewAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemDragEnded(Ljava/lang/Object;Landroid/graphics/Rect;II)V
    .locals 1

    const/high16 v0, 0x42400000    # 48.0f

    .line 1594
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    .line 1595
    invoke-virtual {p2, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 1596
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1597
    check-cast p1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$ColorDragView;

    .line 1598
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSectionedRecyclerViewAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$300(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    move-result-object p2

    iget-object p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$ColorDragView;->item:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->indexOf(J)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 1600
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSectionedRecyclerViewAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$300(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->removeColor(I)V

    .line 1601
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSectionedRecyclerViewAdapter;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method

.method public onItemDragStarted()V
    .locals 0

    return-void
.end method

.method public onItemInserted(Ljava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onItemMoved(II)V
    .locals 2

    .line 1607
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSectionedRecyclerViewAdapter;->getSectionForPosition(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSection;

    .line 1608
    new-instance v1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapterListUpdateCallback;

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSectionedRecyclerViewAdapter;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapterListUpdateCallback;-><init>(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;)V

    .line 1609
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSectionedRecyclerViewAdapter;->getPositionInSection(I)I

    move-result p1

    .line 1610
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSectionedRecyclerViewAdapter;->getPositionInSection(I)I

    move-result p2

    .line 1611
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSectionedRecyclerViewAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$300(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->moveColor(II)V

    .line 1612
    invoke-virtual {v1, p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapterListUpdateCallback;->onMoved(II)V

    return-void
.end method

.method public onItemRemoved(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
