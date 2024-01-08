.class public Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelLockedItem;
.super Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;
.source "SpinnerLabelLockedItem.java"


# instance fields
.field final label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelLockedItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 22
    invoke-direct {p0, p2}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;-><init>(Ljava/lang/Object;)V

    .line 23
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelLockedItem;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 38
    sget v0, Lcom/brakefield/infinitestudio/R$layout;->spinner_locked_item:I

    return v0
.end method

.method public updateView(Landroid/view/View;)V
    .locals 2

    .line 28
    sget v0, Lcom/brakefield/infinitestudio/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 29
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelLockedItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    sget v0, Lcom/brakefield/infinitestudio/R$id;->lock:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 32
    sget v0, Lcom/brakefield/infinitestudio/color/Colors;->BLUE:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 33
    sget v0, Lcom/brakefield/infinitestudio/R$drawable;->pro_tag:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
