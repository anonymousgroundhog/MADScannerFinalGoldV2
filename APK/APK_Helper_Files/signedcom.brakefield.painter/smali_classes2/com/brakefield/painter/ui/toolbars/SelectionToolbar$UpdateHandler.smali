.class Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler;
.super Ljava/lang/Object;
.source "SelectionToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateHandler"
.end annotation


# instance fields
.field private final observeErasing:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeSampleFrom:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observeToolType:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observeWandSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/brakefield/painter/databinding/SelectionToolbarBinding;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;)V
    .locals 2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v1, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/databinding/SelectionToolbarBinding;)V

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler;->observeSampleFrom:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 187
    new-instance v0, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v1, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p1}, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Lcom/brakefield/painter/databinding/SelectionToolbarBinding;)V

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler;->observeToolType:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 193
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/databinding/SelectionToolbarBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler;->observeWandSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 197
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/databinding/SelectionToolbarBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler;->observeErasing:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/brakefield/painter/databinding/SelectionToolbarBinding;Ljava/lang/Integer;)V
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->sampleFrom:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method static synthetic lambda$new$1(Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Lcom/brakefield/painter/databinding/SelectionToolbarBinding;Ljava/lang/Integer;)V
    .locals 1

    .line 188
    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;->getItemPositionFromReturnObject(Ljava/lang/Object;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 189
    iget-object v0, p1, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectionToolSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setSelection(I)V

    .line 190
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p2, 0xa

    if-ne p0, p2, :cond_1

    iget-object p0, p1, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectColorRangeSettings:Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;

    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object p0, p1, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectColorRangeSettings:Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;

    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$new$2(Lcom/brakefield/painter/databinding/SelectionToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 194
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->sampleFrom:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p0, p0, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->sampleFrom:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$new$3(Lcom/brakefield/painter/databinding/SelectionToolbarBinding;Ljava/lang/Boolean;)V
    .locals 1

    .line 198
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectionMode:Landroid/widget/ImageView;

    const v0, 0x7f080467

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    iget-object p0, p0, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectionMode:Landroid/widget/ImageView;

    const p1, 0x7f120ad9

    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectionMode:Landroid/widget/ImageView;

    const v0, 0x7f08046d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    iget-object p0, p0, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectionMode:Landroid/widget/ImageView;

    const p1, 0x7f120023

    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method update()V
    .locals 3

    .line 209
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getTargetLayerId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler;->observeSampleFrom:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const v1, 0x7f08044a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getSelectionWandSamplesAllLayers()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler;->observeSampleFrom:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const v1, 0x7f080448

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler;->observeSampleFrom:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const v1, 0x7f080449

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 213
    :goto_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler;->observeToolType:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 215
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler;->observeWandSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$UpdateHandler;->observeErasing:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isErasing()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    return-void
.end method
