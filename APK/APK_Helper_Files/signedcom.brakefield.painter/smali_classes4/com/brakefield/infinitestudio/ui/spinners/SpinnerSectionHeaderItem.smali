.class public Lcom/brakefield/infinitestudio/ui/spinners/SpinnerSectionHeaderItem;
.super Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;
.source "SpinnerSectionHeaderItem.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 15
    sget v0, Lcom/brakefield/infinitestudio/R$layout;->spinner_section_item:I

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
