.class public Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;
.super Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;
.source "SpinnerIconLabelLockedItem.java"


# instance fields
.field final iconResourceId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p3}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    iput p2, p0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;->iconResourceId:I

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 40
    sget v0, Lcom/brakefield/infinitestudio/R$layout;->spinner_icon_locked_item:I

    return v0
.end method

.method public updateView(Landroid/view/View;)V
    .locals 2

    .line 27
    sget v0, Lcom/brakefield/infinitestudio/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 28
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    sget v1, Lcom/brakefield/infinitestudio/R$id;->icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 31
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 32
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelLockedItem;->iconResourceId:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    sget v0, Lcom/brakefield/infinitestudio/R$id;->lock:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 35
    sget v0, Lcom/brakefield/infinitestudio/color/Colors;->BLUE:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method
