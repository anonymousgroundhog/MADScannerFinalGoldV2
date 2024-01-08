.class Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SwatchBar.java"

# interfaces
.implements Lcom/brakefield/painter/ui/SwatchBar$ItemTouchHelperContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/SwatchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaletteAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;",
        ">;",
        "Lcom/brakefield/painter/ui/SwatchBar$ItemTouchHelperContract;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

.field final synthetic this$0:Lcom/brakefield/painter/ui/SwatchBar;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/SwatchBar;Landroid/content/Context;Lcom/brakefield/painter/nativeobjs/color/PaletteNative;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;->this$0:Lcom/brakefield/painter/ui/SwatchBar;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 205
    iput-object p2, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;->context:Landroid/content/Context;

    .line 206
    iput-object p3, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;->palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;->palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 199
    check-cast p1, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;->onBindViewHolder(Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;I)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;->palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    invoke-virtual {v0, p2}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->colorAt(I)I

    move-result p2

    .line 219
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getColor()I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 220
    :goto_0
    invoke-virtual {p1, p2, v0}, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;->updateView(IZ)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 199
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;
    .locals 2

    .line 211
    iget-object p2, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d004d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 212
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 213
    new-instance p2, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;

    iget-object v0, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;->this$0:Lcom/brakefield/painter/ui/SwatchBar;

    invoke-direct {p2, v0, p1}, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;-><init>(Lcom/brakefield/painter/ui/SwatchBar;Landroid/view/View;)V

    return-object p2
.end method

.method public onItemClear(Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;)V
    .locals 0

    const-string p1, "ITEM CLEARED"

    .line 241
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    return-void
.end method

.method public onItemMoved(II)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;->palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->moveColor(II)V

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onItemSelected(Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;)V
    .locals 0

    const-string p1, "ITEM SELECTED"

    .line 236
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    return-void
.end method
