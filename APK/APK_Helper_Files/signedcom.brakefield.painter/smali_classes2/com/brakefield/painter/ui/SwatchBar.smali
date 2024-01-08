.class public Lcom/brakefield/painter/ui/SwatchBar;
.super Ljava/lang/Object;
.source "SwatchBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;,
        Lcom/brakefield/painter/ui/SwatchBar$ItemMoveCallback;,
        Lcom/brakefield/painter/ui/SwatchBar$ItemTouchHelperContract;,
        Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

.field private panel:Landroid/view/View;

.field private prevUpdateColor:I

.field private prevUpdateSize:I

.field private swatchAdapter:Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;

.field touchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/SwatchBar;)Landroid/app/Activity;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/brakefield/painter/ui/SwatchBar;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/painter/ui/SwatchBar;)Lcom/brakefield/painter/ui/SimpleUI;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/brakefield/painter/ui/SwatchBar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    return-object p0
.end method

.method static synthetic access$200(Lcom/brakefield/painter/ui/SwatchBar;)Lcom/brakefield/painter/nativeobjs/color/PaletteNative;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/brakefield/painter/ui/SwatchBar;->palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    return-object p0
.end method

.method static synthetic lambda$setup$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/brakefield/painter/ui/SwatchBar;->panel:Landroid/view/View;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$setup$1$com-brakefield-painter-ui-SwatchBar(Landroid/view/View;)V
    .locals 2

    .line 53
    iget-object p1, p0, Lcom/brakefield/painter/ui/SwatchBar;->palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getColor()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->addColor(II)V

    .line 54
    iget-object p1, p0, Lcom/brakefield/painter/ui/SwatchBar;->swatchAdapter:Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;

    invoke-virtual {p1, v1}, Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public setup(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 2

    .line 39
    iput-object p1, p0, Lcom/brakefield/painter/ui/SwatchBar;->activity:Landroid/app/Activity;

    .line 40
    iput-object p2, p0, Lcom/brakefield/painter/ui/SwatchBar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    .line 41
    iput-object p3, p0, Lcom/brakefield/painter/ui/SwatchBar;->panel:Landroid/view/View;

    .line 43
    new-instance p2, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->getColorPalette(Z)J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;-><init>(J)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/SwatchBar;->palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    .line 45
    new-instance p2, Lcom/brakefield/infinitestudio/ui/BarDrawable;

    invoke-direct {p2, p3}, Lcom/brakefield/infinitestudio/ui/BarDrawable;-><init>(Landroid/view/View;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 47
    new-instance p2, Lcom/brakefield/painter/ui/SwatchBar$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/brakefield/painter/ui/SwatchBar$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    const p2, 0x7f0a05c9

    .line 49
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 50
    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 51
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 52
    new-instance v0, Lcom/brakefield/painter/ui/SwatchBar$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/SwatchBar$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/SwatchBar;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    new-instance p2, Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;

    iget-object v0, p0, Lcom/brakefield/painter/ui/SwatchBar;->palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    invoke-direct {p2, p0, p1, v0}, Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;-><init>(Lcom/brakefield/painter/ui/SwatchBar;Landroid/content/Context;Lcom/brakefield/painter/nativeobjs/color/PaletteNative;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/SwatchBar;->swatchAdapter:Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;

    const p2, 0x7f0a05ce

    .line 59
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    iget-object p3, p0, Lcom/brakefield/painter/ui/SwatchBar;->swatchAdapter:Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 62
    new-instance p3, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v0, 0x1

    invoke-direct {p3, p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 63
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 65
    new-instance p1, Lcom/brakefield/painter/ui/SwatchBar$ItemMoveCallback;

    iget-object p3, p0, Lcom/brakefield/painter/ui/SwatchBar;->swatchAdapter:Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;

    invoke-direct {p1, p0, p3}, Lcom/brakefield/painter/ui/SwatchBar$ItemMoveCallback;-><init>(Lcom/brakefield/painter/ui/SwatchBar;Lcom/brakefield/painter/ui/SwatchBar$ItemTouchHelperContract;)V

    .line 66
    new-instance p3, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p3, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p3, p0, Lcom/brakefield/painter/ui/SwatchBar;->touchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 67
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/brakefield/painter/ui/SwatchBar;->panel:Landroid/view/View;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    return-void
.end method

.method public update()V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/brakefield/painter/ui/SwatchBar;->swatchAdapter:Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;

    if-eqz v0, :cond_2

    .line 72
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getColor()I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/brakefield/painter/ui/SwatchBar;->palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->size()I

    move-result v1

    .line 74
    iget v2, p0, Lcom/brakefield/painter/ui/SwatchBar;->prevUpdateColor:I

    const/4 v3, 0x1

    if-eq v2, v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 75
    iget v2, p0, Lcom/brakefield/painter/ui/SwatchBar;->prevUpdateSize:I

    if-eq v2, v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-eqz v3, :cond_2

    .line 77
    iget-object v0, p0, Lcom/brakefield/painter/ui/SwatchBar;->swatchAdapter:Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SwatchBar$PaletteAdapter;->notifyDataSetChanged()V

    .line 78
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getColor()I

    move-result v0

    iput v0, p0, Lcom/brakefield/painter/ui/SwatchBar;->prevUpdateColor:I

    .line 79
    iput v1, p0, Lcom/brakefield/painter/ui/SwatchBar;->prevUpdateSize:I

    :cond_2
    return-void
.end method
