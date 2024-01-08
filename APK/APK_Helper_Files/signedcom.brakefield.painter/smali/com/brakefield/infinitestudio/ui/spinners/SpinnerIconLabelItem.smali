.class public Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;
.super Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;
.source "SpinnerIconLabelItem.java"


# instance fields
.field final iconResourceId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p3}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    iput p2, p0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;->iconResourceId:I

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 34
    sget v0, Lcom/brakefield/infinitestudio/R$layout;->spinner_icon_item:I

    return v0
.end method

.method public updateView(Landroid/view/View;)V
    .locals 2

    .line 25
    sget v0, Lcom/brakefield/infinitestudio/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 26
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    sget v1, Lcom/brakefield/infinitestudio/R$id;->icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 28
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 29
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerIconLabelItem;->iconResourceId:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
