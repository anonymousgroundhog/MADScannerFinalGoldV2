.class public Lcom/infinite/app/ui/Dropdown$DropdownLabelItem;
.super Lcom/infinite/app/ui/Dropdown$DropdownItem;
.source "Dropdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infinite/app/ui/Dropdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DropdownLabelItem"
.end annotation


# instance fields
.field final label:Ljava/lang/String;

.field final synthetic this$0:Lcom/infinite/app/ui/Dropdown;


# direct methods
.method public constructor <init>(Lcom/infinite/app/ui/Dropdown;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 205
    invoke-direct {p0, p1, p2, v0}, Lcom/infinite/app/ui/Dropdown$DropdownLabelItem;-><init>(Lcom/infinite/app/ui/Dropdown;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/infinite/app/ui/Dropdown;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/infinite/app/ui/Dropdown$DropdownLabelItem;->this$0:Lcom/infinite/app/ui/Dropdown;

    .line 209
    invoke-direct {p0, p1, p3}, Lcom/infinite/app/ui/Dropdown$DropdownItem;-><init>(Lcom/infinite/app/ui/Dropdown;Ljava/lang/Object;)V

    .line 210
    iput-object p2, p0, Lcom/infinite/app/ui/Dropdown$DropdownLabelItem;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 221
    sget v0, Lcom/infinite/app/R$layout;->dropdown_item:I

    return v0
.end method

.method public bridge synthetic isSelectable()Z
    .locals 1

    .line 200
    invoke-super {p0}, Lcom/infinite/app/ui/Dropdown$DropdownItem;->isSelectable()Z

    move-result v0

    return v0
.end method

.method public updateView(Landroid/view/View;)V
    .locals 1

    .line 215
    sget v0, Lcom/infinite/app/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 216
    iget-object v0, p0, Lcom/infinite/app/ui/Dropdown$DropdownLabelItem;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
