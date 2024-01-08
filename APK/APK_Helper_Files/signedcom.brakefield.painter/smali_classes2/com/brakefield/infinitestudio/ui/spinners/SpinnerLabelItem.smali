.class public Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;
.super Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;
.source "SpinnerLabelItem.java"


# instance fields
.field final label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 16
    invoke-direct {p0, p2}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;-><init>(Ljava/lang/Object;)V

    .line 17
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 28
    sget v0, Lcom/brakefield/infinitestudio/R$layout;->spinner_item:I

    return v0
.end method

.method public updateView(Landroid/view/View;)V
    .locals 1

    .line 22
    sget v0, Lcom/brakefield/infinitestudio/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 23
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
